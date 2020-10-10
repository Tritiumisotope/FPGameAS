package {
	
	public class Area extends Static_object{
		
		public static var fully_connected_filler:int = 0;
		public static var single_connected_filler:int = 1;
		
		public var rooms:Array;
		public var room_list:Array;
		public var map:String;
		public var legend:Array;
		public var legend_floor:Array;		
		public var filler_template:Array;//Template_Room;
		public var filler_type:Array;//int;
		public var filler_floor_range:Array;
		public var dynamic_build_template:Array;//Template_Room;
		public var dynamic_build_floor_range:Array;
		public var dynamic_build_up:Boolean;		
		public var template_rooms:Array;
		public var template_floor_range:Array;		
		public var temp_offset:Array;
		public var total_actions_taken:Number = 0;
		public var connect_rooms:Array;
		public var world:World;
		public var player_discovered:Boolean;
		public var map_colour:uint;		
		public var spawn_creatures:Array;
		public var npc_spawn_threshold:int;		
		public var weathers:Array;
		public var current_weather:int;
		public var current_weather_length:int;		
		public var conversations:Array;		
		public var background_image_id:int;		
		public var move_time_mod:int;
		
		private var already_checked_placeholder:Array;
		private var base_floor_z:int;
				
		public function Area(d:String = ""):void {
			set_description(d);
			rooms = new Array();
			map = "";
			room_list = new Array();
			template_rooms = new Array();
			template_floor_range = new Array();
			legend = new Array();
			legend_floor = new Array();
			connect_rooms = new Array();
			world = null;
			player_discovered = false;
			map_colour = 0xFFFFFF;
			temp_offset = null;
			filler_template = new Array();
			filler_type = new Array();
			dynamic_build_template = new Array();
			dynamic_build_up = true;
			dynamic_build_floor_range = new Array();
			filler_floor_range = new Array();
			temp_offset = null;
			
			spawn_creatures = new Array();
			npc_spawn_threshold = -1;
			
			weathers = new Array();
			current_weather = 0;
			current_weather_length = 0;
			total_actions_taken = Main.t1_day/4 - 1;
			
			conversations = new Array();
			
			background_image_id = -1;
			move_time_mod = 1;
			base_floor_z = 0;
		}
		
		public function set_move_time(i:int):void{
			if(i>=1)move_time_mod = i;
		}
		
		public function set_background_img(i:int):void{
			background_image_id = i;
		}
		
		public function get_background_img():int{
			return background_image_id;
		}
		
		public function get_base_floor():int{
			return base_floor_z;
		}
		
		public function new_conversation_topic(ct:Conversation_topic):void{
			conversations[conversations.length] = ct;
		}
		
		public function get_topics():Array{
			return conversations;
		}
		
		public function new_weather(aw:Area_weather):void{
			weathers[weathers.length] = aw;
		}
		
		public function get_outdoor_description():String{
			var ret:String = "";
			
			if(weathers[current_weather] != null){
				ret = weathers[current_weather].get_description(total_actions_taken%Main.t1_day);
			}
			
			return ret;
		}
		
		public function add_creature_spawn(c:Character_template):void{
			spawn_creatures[spawn_creatures.length] = c;
		}
		
		public function set_spawn_threshold(i:int):void{
			npc_spawn_threshold = i;
		}
		
		public function set_player_discovered():void{
			player_discovered = true;
		}
		
		public function set_colour(i:uint):void{
			map_colour = i;
		}
		
		public function get_player_discovered():Boolean{
			return player_discovered;
		}
		
		public function get_map_colour():uint{
			return map_colour;
		}
		
		public function add_connect_room(r:Room):void{
			//make sure the room is actually part of this area
			r.area = this;
			connect_rooms[connect_rooms.length] = r;
		}
		
		public function get_connect_room():Room{
			var r:Room = null;
			if(connect_rooms[connect_rooms.length - 1] != null) r = connect_rooms[connect_rooms.length - 1];
			connect_rooms = connect_rooms.slice(0, connect_rooms.length - 1);
			return r;
		}
		
		public function find_room(fr:Room):Array{
			var x:int = 0;
			var y:int = 0;
			var z:int = 0;
			var found:Boolean = false;
			for (x;x<rooms.length;x++){
				if (rooms[x] != null){
					y = 0;
					for(y;y<rooms[x].length;y++){
						if(rooms[x][y] != null){
							z = 0;
							for(z;z<rooms[x][y].length;z++){
								if(rooms[x][y][z] != null && rooms[x][y][z] == fr){
									found = true;
									break;
								}
							}
						}
						if(found) break;
					}
				}
				if(found) break;
			}
			
			if(found)return [x,y,z];
			return null;
		}
		
		public function place_room(r:Room, lr:Room = null, max_same_room:int = -1, exempt_rooms:Array = null, restrict_edges:Boolean = false):int{
			if (r == null) return 1;
			var temp:Array;
			temp_offset = null;
			if (rooms[0] == null){
				rooms[0] = new Array();
				rooms[0][0] = new Array();
				rooms[0][0][0] = r;
				if(r.exits.length > 0){
					if(existing_exit_check(r, 0, 0, 0, max_same_room)){
						temp = find_room(r);
						existing_exit_add(r, lr, temp[0], temp[1], 0, "");
					}else{
						trace("(Area)Well bugger. Failed to place the very first room.");
					}					
				}
				return 1;
			}
			
			if(lr == null && exempt_rooms == null){
				lr = this.get_random_room();
				exempt_rooms = new Array();
			}else if(lr == null){
				if(exempt_rooms == null) exempt_rooms = new Array();
				if (exempt_rooms.length >= room_list.length){
					//There is no one to attach to for our poor friend. Guess he gets to be a loner
					var placed:Boolean = false
					var max:int = 0;
					var counter:int = 0;
					for(counter;counter<rooms.length;counter++){
						if(rooms[counter].length-1 > max) max = rooms[counter].length-1;
					}
					counter = 0;
					while (!placed){
						counter++; 
						var rand_x:int = Math.round(Math.random() * (rooms.length-1));
						var rand_y:int = Math.round(Math.random() * max);
						var rand_z:int = 0;
						if(rooms[rand_x][rand_y] == null)rooms[rand_x][rand_y] = new Array();
						   
						if(rooms[rand_x][rand_y][rand_z] == null){
							if(r.exits.length > 0){
								if(existing_exit_check(r, rand_x, rand_y, rand_z, max_same_room)){
									existing_exit_add(r, lr, rand_x, rand_y, rand_z, null);
									placed = true;
								}
							}else{
								existing_exit_add(r, null, rand_x, rand_y, rand_z, null);
								placed = true;
							}
						}
						if(counter > 25)break;
					}
					
					if(!placed){
						trace("(AREA.place_room)failed to place room.");
						return -1;
					}
					trace("(AREA.place_room)Placed room randomly.");
					return 1;
				}
				
				var temp_room_list:Array = new Array();
				
				var i:int = 0;
				i = 0;
				for(i;i<room_list.length;i++){
					var k:int = 0;
					var check:Boolean = false;
					for(k;k<exempt_rooms.length;k++){
						if(room_list[k] == exempt_rooms[i]){
							check = true;
							break;
						}
					}
					
					if(!check){
						temp_room_list[temp_room_list.length] = i;
					}
					
				}
				
				var wakka:int = temp_room_list[Math.round(Math.random()*(temp_room_list.length-1))];
				lr = room_list[wakka];
			}
			
			if (lr != null) {
				//We have to find the room we want to link to
				//but only if it's in the same area as the first
				if(r.area == lr.area && r.area == this){
					temp = find_room(lr);
					if(temp != null){
						var x:int = temp[0];
						var y:int = temp[1];
						var z:int = temp[2];
						
						var connect_status:Array = is_good_connect(x, y, z, r, lr, max_same_room, -1, -1, -1, restrict_edges);
						
						if(connect_status[0] == -1){
							return place_room(r, null, max_same_room, exempt_rooms.concat(lr), restrict_edges);
						}else if(connect_status[0] == -2){
							return place_room(r, null, max_same_room, exempt_rooms, restrict_edges);
						}
						
						temp = find_room(lr);
						x = temp[0];
						y = temp[1];
						z = temp[2];
						
						var new_x:int = connect_status[1];
						var new_y:int = connect_status[2];
						var new_z:int = connect_status[3];
						var other_rooms_ok:Boolean = true;
						
						var to_path:String = get_direction(new_x, new_y, new_z, x, y, z);
						var from_path:String = get_direction(x, y, z, new_x, new_y, new_z);
						
						if(r.exits.length > 0){
							other_rooms_ok = existing_exit_check(r, new_x, new_y, new_z, max_same_room);
							if(other_rooms_ok){
								temp = find_room(lr);
								x = temp[0];
								y = temp[1];
								z = temp[2];
								var offset:Array = get_offset_by_name(from_path);
								new_x = x + offset[0];
								new_y = y + offset[1];
								new_z = z + offset[2];
							}
						}
						
						if(!other_rooms_ok){
							return place_room(r, null, max_same_room, exempt_rooms.concat(lr), restrict_edges);
						}
						
						if(lr.new_exit(r, from_path) > -1){
							r.new_exit(lr, to_path);
							
							//need to add r's existing exits to the rooms, room_list, and map_pieces arrays
							existing_exit_add(r, lr, new_x, new_y, new_z, to_path);
							
							return 1;
						}else{
							return place_room(r, null, max_same_room, exempt_rooms, restrict_edges);
						}
					}else{
						trace("(Area)Failed to find a room while placing...");
						return place_room(r, null, max_same_room, exempt_rooms, restrict_edges);
					}
				}
			}
			return 1;
		}
		
		public function existing_exit_add(r:Room, lr:Room, new_x:int, new_y:int, new_z:int, to_path:String):void{
			if(new_x < 0 || new_y < 0 || new_z < 0){
				if(new_x < 0){ 
					if(new_x < -1)trace("(Area.existing_exit_add)Shifting on the x-axis... but not enough.");
					new_x = rooms.length;
					for(new_x;new_x >= 1;new_x--){
						rooms[new_x] = rooms[new_x - 1];
					}
					new_x = 0;
					rooms[new_x] = null;
				}
				var x:int = 0;
				if(new_y < 0){ 
					if(new_y < -1)trace("(Area.existing_exit_add)Shifting on the y-axis... but not enough.");
					for(x;x<rooms.length;x++){
						if(rooms[x] != null){
							new_y = rooms[x].length;//should this be max y?
							for(new_y;new_y >= 1;new_y--){
								rooms[x][new_y] = rooms[x][new_y - 1];
							}
							new_y = 0;
							rooms[x][new_y] = null;
						}
					}
				}
				
				if(new_z < 0){
					new_z = 0;
					base_floor_z++;
					x = 0;
					for(x;x<rooms.length;x++){
						if(rooms[x] != null){
							var y:int = 0;
							for(y;y<rooms[x].length;y++){
								if(rooms[x][y] != null)rooms[x][y].unshift(null);
							}
						}
					}
				}				
			}
			
			if(rooms[new_x] == null)rooms[new_x] = new Array();
			if(rooms[new_x][new_y] == null)rooms[new_x][new_y] = new Array();
			if(rooms[new_x][new_y][new_z] != null){
				if(rooms[new_x][new_y][new_z] != r)trace("(Area.existing_exit_add)Over-writing a room on the map at co-ordinates " + new_x + "," + new_y + "," + new_z + " existing_exit_check() has failed us!");
			}
			rooms[new_x][new_y][new_z] = r;
			
			if(r.exits.length > 0){
				var counter:int = 0;
				for(counter;counter<r.exits.length;counter++){
					//figure out the offset based on the name
					if(r.exits[counter].area == null && r.exits[counter] != lr){
						var offset:Array = get_offset_by_name(r.exit_names[counter]);
						var figured_new_x:int = new_x + offset[0];
						var figured_new_y:int = new_y + offset[1];
						var figured_new_z:int = new_z + offset[2];
						
						r.exits[counter].area = this;
						r.exits[counter].set_id(room_list.length);
						room_list[room_list.length] = r.exits[counter];
						
						existing_exit_add(r.exits[counter], r, figured_new_x, figured_new_y, figured_new_z, r.exit_names[counter]);
						var temp_arr:Array = find_room(r);
						if(temp_arr != null){
							new_x = temp_arr[0];
							new_y = temp_arr[1];
							new_z = temp_arr[2];
						}else{
							trace("(Area)I literally just placed this room, and now I can't find it...");
						}
					}
				}
			}
		}
		
		public function existing_exit_check(r:Room, new_x:int, new_y:int, new_z:int, max_same_room:int, already_checked:Array = null):Boolean{
			var other_rooms_ok:Boolean = true;
			if(rooms[new_x] != null){
				if(rooms[new_x][new_y] != null){
					if(rooms[new_x][new_y][new_z] != null){
						if(rooms[new_x][new_y][new_z] != r)other_rooms_ok = false;
					}
				}
			}
			if(r.exits.length > 0 && other_rooms_ok){
				var counter:int = 0;
				if(already_checked == null){
					already_checked = new Array();
				}else{
					for(counter;counter<already_checked.length;counter++){
						if(already_checked[counter] == r) return other_rooms_ok;
					}
				}
				already_checked = already_checked.concat(r);
				set_already_checked(already_checked);
				counter = 0;
				for(counter;counter<r.exits.length;counter++){
					if(r.exits[counter].area != null) continue;
					//figure out the offset based on the name
					var offset:Array = get_offset_by_name(r.exit_names[counter]);
					//need to check if we need to assign a new offset
					if(offset[0] == 0 && offset[1] == 0 && offset[2] == 0){
						var loop_flag:Boolean = true;
						while(loop_flag){
							loop_flag = false;
							var rand_direct:int = Math.random()*26 + 1;
							if(int(rand_direct/9) > 0){
								if(int(rand_direct/9) > 1){
									offset[0]++;
								}else{
									offset[0]--;
								}
								rand_direct = rand_direct - (int(rand_direct / 9)*9);
							}
							
							if(int(rand_direct/3) > 0){
								if(int(rand_direct/3) > 1){
									offset[1]++;
								}else{
									offset[1]--;
								}
								rand_direct = rand_direct - (int(rand_direct / 3)*3);
							}
							
							if(rand_direct > 0){
								if(rand_direct > 1){
									offset[2]++;
								}else{
									offset[2]--;
								}
							}
							//should check to see if this is actually a good exit... just go through the exits OWN exits to make sure none of their offsets is the same as this one
							var exit_exits:int = 0;
							for(exit_exits;exit_exits<r.exits[counter].exits.length;exit_exits++){
								if(r.exits[counter].exits[exit_exits] == r)continue;
								var exit_exit_offset:Array = get_offset_by_name(r.exits[counter].exit_names[exit_exits]);
								if(offset[0] == -exit_exit_offset[0] && offset[1] == -exit_exit_offset[1] && offset[2] == -exit_exit_offset[2]){
									loop_flag = true;
									break;
								}
								
							}
						}
						this.temp_offset = offset;
						//trace("(Area.existing_exit_check)Assigned direction " + offset + " to exit named " + r.exit_names[counter]);
					}
					
					var figured_new_x:int = new_x + offset[0];
					var figured_new_y:int = new_y + offset[1];
					var figured_new_z:int = new_z + offset[2];
					
					if(rooms[figured_new_x] != null){
						if(rooms[figured_new_x][figured_new_y] != null){
							if(rooms[figured_new_x][figured_new_y][figured_new_z] != null){
								other_rooms_ok = false;
							}
						}
						
						//check for an "overpass" exit
						if(rooms[new_x] != null && rooms[figured_new_x][new_y] != null && rooms[new_x][figured_new_y] != null && rooms[figured_new_x][new_y][figured_new_z] != null && rooms[new_x][figured_new_y][figured_new_z] != null){
							if(rooms[new_x][figured_new_y][figured_new_z].get_exit_id(rooms[figured_new_x][new_y][figured_new_z]) >= 0 ){
								other_rooms_ok = false;
							}
						}
					}
					
					if(r.exits[counter].exits.length > 0 && other_rooms_ok){
						other_rooms_ok = existing_exit_check(r.exits[counter], figured_new_x, figured_new_y, figured_new_z, max_same_room, already_checked);
						already_checked = get_already_checked();
					}
					
					if(!other_rooms_ok){
						break;
					}
				}
			}
			return other_rooms_ok;
		}
		
		private function set_already_checked(a:Array):void{
			already_checked_placeholder = a;
		}
		
		private function get_already_checked():Array{
			return already_checked_placeholder;
		}
		
		public function is_good_connect(x:int, y:int, z:int, r:Room, lr:Room, max_same_room:int, new_x:int = -1, new_y:int = -1, new_z:int = -1, restrict_edges:Boolean = false):Array{
			if(new_z == -1) new_z = z;
			
			if(new_x == -1 || new_y == -1){
				new_x = x;
				new_y = y;
			}
			
			var max_y:int = -1;
			var count:int = 0;
			if(restrict_edges){
				for(count;count<rooms.length;count++){
					if(rooms[count].length > max_y) max_y = rooms[count].length;
				}
			}
			
			var x_jiggle:int;
			var y_jiggle:int;
			var z_jiggle:int;
			count = 0;
			while(new_x == x && new_y == y){
				count++;
				x_jiggle = int(Math.random()*3);
				y_jiggle = int(Math.random()*3);
				z_jiggle = int(Math.random()*3);
				
				switch (x_jiggle){
					case 0:
					new_x--;
					break;
					case 2:
					new_x++;
					break;
					default:
					break;
				}
				switch (y_jiggle){
					case 0:
					new_y--;
					break;
					case 2:
					new_y++;
					break;
					default:
					break;
				}
				/*switch (z_jiggle){
					case 0:
					new_z--;
					break;
					case 2:
					new_z++;
					break;
					default:
					break;
				}*/
				
				if(new_x < 0 && !restrict_edges){ 
					new_x = rooms.length;
					for(new_x;new_x >= 0;new_x--){
						rooms[new_x] = rooms[new_x - 1];
					}
					new_x = 0;
					if(rooms[new_x] == null){
						rooms[new_x] = new Array();
					}
					var temp:Array = find_room(lr);
					x = temp[0];
					y = temp[1];
					z = temp[2];
				}
				if(new_y < 0 && !restrict_edges){ 
					x = 0;
					for(x;x<rooms.length;x++){
						if(rooms[x] == null) rooms[x] = new Array();
						new_y = rooms[x].length;
						for(new_y;new_y >= 0;new_y--){
							rooms[x][new_y] = rooms[x][new_y - 1];
						}
					}
					new_y = 0;
					temp = find_room(lr);
					x = temp[0];
					y = temp[1];
					z = temp[2];
				}
				
				if(restrict_edges && (new_y < 0 || new_x < 0 || new_x >= rooms.length || (new_y >= max_y && max_y > -1))){
					return [-1];
				}
				
				if(rooms[new_x] == null) rooms[new_x] = new Array();
				if(rooms[new_x][new_y] == null)rooms[new_x][new_y] = new Array();
				
				if(rooms[new_x][new_y][new_z] != null){
					//Let's join them... if they aren't already joined
					if(new_x != x || new_y != y || new_z != z){
						var to_path:String = get_direction(new_x, new_y, new_z, x, y, z);
						var from_path:String = get_direction(x, y, z, new_x, new_y, new_z);
						
						if(rooms[new_x] != null){
							//check to see if the existing room already has enough exits
							var same_room_count:int = 1;
							var temp_room_count:int = 0;
							var temp_max_same:int = -1;
							if(lr.template != null)temp_max_same = lr.template.get_max_same_exits();
							if (temp_max_same > -1){
								if (rooms[new_x][new_y][new_z].description == lr.description || (rooms[new_x][new_y][new_z].template != null && rooms[new_x][new_y][new_z].template == lr.template)){
									for(temp_room_count;temp_room_count<lr.exits.length;temp_room_count++){
										if (lr.exits[temp_room_count].description == lr.description || (lr.exits[temp_room_count].template != null && lr.exits[temp_room_count].template == lr.template)) same_room_count++;
									}
								}
							}
							var good_exit:Boolean = true;
							if (lr.template != null){
								if(lr.template == rooms[new_x][new_y][new_z].template){
									if (rooms[new_x][new_y][new_z].template.get_same_exit_offset() > 0 && good_exit){
										good_exit = false;
										var avail_exits:Array = lr.template.get_avail_exits(lr);
										var temp_str_count:int = 0;
										for(temp_str_count;temp_str_count<avail_exits.length;temp_str_count++){
											if(from_path == avail_exits[temp_str_count]){
												good_exit = true;
												break;
											}
										}
										
										if(good_exit){
											good_exit = false;
											avail_exits = rooms[new_x][new_y][new_z].template.get_avail_exits(rooms[new_x][new_y][new_z]);
											temp_str_count = 0;
											for(temp_str_count;temp_str_count<avail_exits.length;temp_str_count++){
												if(to_path == avail_exits[temp_str_count]){
													good_exit = true;
													break;
												}
											}
										}
									}
								}else{
									if(!lr.template.check_template_connect(rooms[new_x][new_y][new_z].template) || (rooms[new_x][new_y][new_z].template != null && !rooms[new_x][new_y][new_z].template.check_template_connect(lr.template))){
										good_exit = false;
									}		
								}
								
								if(lr.template.get_max_exits() > -1 && lr.exits.length-1 >= lr.template.get_max_exits()){
									good_exit = false;
								}
							}
							
							if(rooms[x] == null) rooms[x] = new Array();
							if(rooms[new_x] == null) rooms[new_x] = new Array();
							
							
							
							if(rooms[x][new_y] != null && rooms[x][new_y][z] != null && rooms[new_x][y] != null && rooms[new_x][y][z] != null && (same_room_count < temp_max_same || temp_max_same == -1) && good_exit){
								if(rooms[x][new_y][z].get_exit_id(rooms[new_x][y][z]) == -1){
									rooms[new_x][new_y][new_z].new_exit(lr, to_path);
									lr.new_exit(rooms[new_x][new_y][new_z], from_path);
								}
							}else if((same_room_count < temp_max_same || temp_max_same == -1) && good_exit){
								rooms[new_x][new_y][new_z].new_exit(lr, to_path);
								lr.new_exit(rooms[new_x][new_y][new_z], from_path);
							}
						}
						
					}
					
					//need to be able to tell when can't move to current lr
					new_x = x;
					new_y = y;
					new_z = z;
					if (count > 10){
						if (rooms[x+1] == null) rooms[x+1] = new Array();
						if (rooms[x-1] == null) rooms[x-1] = new Array();
						//fine, i'll pick the damn room
						if(rooms[x+1][y] == null && existing_exit_check(r,  x+1, y, new_z, max_same_room)){
								new_x = x+1;
						}
						if(rooms[x+1][y+1] == null && existing_exit_check(r,  x+1, y+1, new_z, max_same_room)){
								new_x = x+1;
								new_y = y+1;
						}
						if(rooms[x][y+1] == null && existing_exit_check(r,  x, y+1, new_z, max_same_room)){
								new_y = y+1;
						}
						
						if(x-1 >=0){
							if(rooms[x-1][y+1] == null && existing_exit_check(r,  x-1, y+1, new_z, max_same_room)){
									new_y = y+1;
									new_x = x-1;
							}else if(rooms[x-1][y] == null && existing_exit_check(r,  x-1, y, new_z, max_same_room)){
									new_x = x-1;
							}else if(y-1>=0){
								if(rooms[x-1][y-1] == null && existing_exit_check(r,  x-1, y-1, new_z, max_same_room)){
									new_x = x-1;
									new_y = y -1;
								}
							}
						}
						
						if(y-1 >= 0){
							if(rooms[x][y-1] == null && existing_exit_check(r,  x, y-1, new_z, max_same_room)){
								new_y = y -1;
							}else if(rooms[x+1][y-1] == null && existing_exit_check(r,  x+1, y-1, new_z, max_same_room)){
								new_x = x+1;
								new_y = y -1;
							}
						}
						
						if(new_x == x && new_y == y && new_z == z){
							//after all that if up there, nothing can be done for our poor little room...
							return [-1];
						}
					}
				}
				
				if(r.exits.length > 0){
					if(!existing_exit_check(r,  new_x, new_y, new_z, max_same_room)){
						new_x = x;
						new_y = y;
						new_z = z;
					}
				}
				
				if(rooms[x] != null && rooms[new_x] != null){
					if(rooms[x][new_y] != null && rooms[new_x][y] != null){
						if(rooms[x][new_y][z] != null && rooms[new_x][y][z] != null){
							if(rooms[x][new_y][z].get_exit_id(rooms[new_x][y][z]) >= 0){
								new_x = x;
								new_y = y;
								new_z = z;
							}
						}
					}
				}
			}
			
			if(rooms[new_x] == null) rooms[new_x] = new Array();
			if(rooms[new_x][new_y] == null) rooms[new_x][new_y] = new Array();
			
			to_path = get_direction(new_x, new_y, new_z, x, y, z);
			from_path = get_direction(x, y, z, new_x, new_y, new_z);
			
			if (max_same_room > -1){
				if (r.description == lr.description || (r.template != null && lr.template!= null && r.template == lr.template)){
					same_room_count = 1;
					temp_room_count = 0;
					for(temp_room_count;temp_room_count<lr.exits.length;temp_room_count++){
						if (lr.exits[temp_room_count].description == lr.description || (lr.exits[temp_room_count].template != null && lr.template!= null && lr.exits[temp_room_count].template == lr.template)) same_room_count++;
					}
					if (same_room_count > max_same_room){
						//sorry bud, better try another room
						return [-1];
					}
					
				}
			}
			
			if (lr.template != null){
				if(lr.template == r.template){
					if (r.template.get_same_exit_offset() > 0){
						
						good_exit= false;
						avail_exits = lr.template.get_avail_exits(lr);
						temp_str_count = 0;
						for(temp_str_count;temp_str_count<avail_exits.length;temp_str_count++){
							if(from_path == avail_exits[temp_str_count]){
								good_exit = true;
								break;
							}
						}
						
						if(!good_exit && avail_exits.length <= 0){
							return [-1];
							
						}else if(!good_exit){
							return [-2];
						}
						
					}
				}else if(r.template != null){
					if(!lr.template.check_template_connect(r.template) || !r.template.check_template_connect(lr.template)){
						return [-1];
					}
				}
						 
			}
			
			return [1,new_x, new_y, new_z];
		}
		
		public static function get_direction(x1:int, y1:int, z1:int, x2:int, y2:int, z2:int):String{
				var to_path:String = "";
				if (x1 > x2){
					to_path += "North"; 
				}else if(x1 < x2){
					to_path += "South";
				}
				if (y1 != y2 && x1 != x2){
					to_path += "-";
				}
				if (y1 > y2){
					to_path += "East"; 
				}else if(y1 < y2){
					to_path += "West"; 
				}
				
				if (z1 != z2 && (y1 != y2 || x1 != x2)){
					to_path += " and ";
				}
				
				if (z1 > z2){
					to_path += "Up"; 
				}else if(z1 < z2){
					to_path += "Down"; 
				}
				
				return to_path;
		}
		
		public function get_offset_by_name(s:String):Array{
			var ret_array:Array = [0,0,0];
			
			if(s==null)return ret_array;
			
			if(s.indexOf("North") >= 0){
				ret_array[0]--;
			}else if(s.indexOf("South") >= 0){
				ret_array[0]++;
			}
			
			if(s.indexOf("East") >= 0){
				ret_array[1]--;
			}else if(s.indexOf("West") >= 0){
				ret_array[1]++;
			}
			
			if(s.indexOf("Up") >= 0){
				ret_array[2]++;
			}else if(s.indexOf("Down") >= 0){
				ret_array[2]--;
			}
			
			if(ret_array[0] == 0 && ret_array[1] == 0 && ret_array[2] == 0){
				if(temp_offset != null){
					ret_array = temp_offset;
				}
			}
			
			return ret_array;
		}
		
		public function random_area(num_rooms:int = 10, tr:Template_Room = null):void{
			var i:int;
			if(tr == null){
				i = Math.round(Math.random() * (template_rooms.length - 1));
				tr = template_rooms[i];
			}
			
			if(tr == null) return;
			for (i = 1; i<=num_rooms;i++){
				var new_room:Room = tr.make_room();
				add_room(new_room, tr.get_max_same_exits());
			}
			
		}
		
		public function filler_area(floor_to_build:int = -2):void{
			if(floor_to_build < -1)floor_to_build = base_floor_z;
			var filler_template_t:Template_Room;
			var filler_type_t:int = -1;
			var x:int = 0;
			for(x;x<filler_template.length;x++){
				if(filler_floor_range[x] == null){
					filler_template_t = filler_template[x];
					filler_type_t = filler_type[x];
				}else{
					if(filler_floor_range[x][0] < 0 || Math.abs(base_floor_z - floor_to_build) >= filler_floor_range[x][0]){
						if(filler_floor_range[x][1] < 0 || Math.abs(base_floor_z - floor_to_build) <= filler_floor_range[x][1]){
							filler_template_t = filler_template[x];
							filler_type_t = filler_type[x];
						}
					}
				}
			}
			
			if(filler_template_t == null && filler_type_t != -1) filler_template_t = new Template_Room("");
			
			if(filler_template_t != null){		
				
				var dynamic_build:Boolean = false;
				var dynamic_build_template_t:Template_Room = dynamic_build_template[0];
				x = 0;
				for(x;x<dynamic_build_template.length;x++){
					if(dynamic_build_floor_range[x] == null){
						dynamic_build_template_t = dynamic_build_template[x];
					}else{
						if(dynamic_build_floor_range[x][0] < 0 || Math.abs(base_floor_z - floor_to_build) >= dynamic_build_floor_range[x][0]){
							if(dynamic_build_floor_range[x][1] < 0 || Math.abs(base_floor_z - floor_to_build) <= dynamic_build_floor_range[x][1]){
								dynamic_build_template_t = dynamic_build_template[x];
							}
						}
					}
				}			
				if(dynamic_build_template_t != null)dynamic_build = true;
				
				var max_y:int = 0;
				x = 0;
				var y:int = 0;
				var z:int = floor_to_build;
				for(x;x<rooms.length;x++){
					if(rooms[x].length >= max_y) max_y = rooms[x].length;
				}
				if(z < 0){
					z = 0;
					floor_to_build = 0;
					base_floor_z++;
					x = 0;
					for(x;x<rooms.length;x++){
						y = max_y - 1;
						for(y;y>=0;y--){
							rooms[x][y].unshift(null);
						}
					}
				}
				var double_up:Boolean = false;
				x = 0;
				for(x;x<rooms.length;x++){
					y = max_y - 1;					
					for(y;y>=0;y--){
						if(rooms[x][y] == null)	rooms[x][y] = new Array();
						
						if(rooms[x][y][z] == null){
							var new_room:Room;
							var temp_x:int;
							var temp_y:int;
							var temp_z:int;
							if(dynamic_build && Math.random()*2 <= Math.pow((x*max_y + max_y - y)/(max_y*rooms.length-1),2)){//shouldn't always be the first room i place...
								new_room = dynamic_build_template_t.make_room(Math.abs(base_floor_z - floor_to_build));
								new_room.template = filler_template_t;
								var next_floor_room:Room = dynamic_build_template_t.make_room((Math.abs(base_floor_z - floor_to_build)));
								next_floor_room.area = this;
								next_floor_room.set_id(room_list.length);
								room_list[room_list.length] = next_floor_room;
								
								var a:Action = new Action();
								a.set_name("");
								a.set_dialogue("",0);
								
								var c:Challenge = new Challenge();
								c.set_attack_stat(-1,1);
								c.set_defense_stat(-1,0);
								c.set_variability(0);
								c.set_text("");
								var rcon:Room_Consequence = new Room_Consequence();
								rcon.add_consequence(FPalace_helper.curr_hp_id,0, "",0);
								rcon.add_room_effect(next_floor_room);
								if(dynamic_build_up){
									new_room.new_exit(next_floor_room,"Up");
									next_floor_room.new_exit(new_room,"Down");
									rcon.generate_new_floor(z+1);
									rooms[x][y][z+1] = next_floor_room;
								}else{
									new_room.new_exit(next_floor_room,"Down");
									next_floor_room.new_exit(new_room,"Up");
									if(z-1 < 0){
										z++;
										floor_to_build++;
										base_floor_z++;
										temp_x = 0;
										for(temp_x;temp_x<rooms.length;temp_x++){
											if(rooms[temp_x] != null){
												temp_y = max_y -1;
												for(temp_y;temp_y>=0;temp_y--){
													if(rooms[temp_x][temp_y] != null)rooms[temp_x][temp_y].unshift(null);
												}
											}
										}
									}		
									rcon.generate_new_floor(z-1);
									rooms[x][y][z-1] = next_floor_room;
								}
								
								a.add_challenge(c,rcon);
					
								new_room.add_exit_action(next_floor_room, a);
								
								dynamic_build = false;
							}else{
								new_room = filler_template_t.make_room((Math.abs(base_floor_z - floor_to_build)));
							}
							
							new_room.area = this;
							new_room.set_id(room_list.length);
							room_list[room_list.length] = new_room;
							rooms[x][y][z] = new_room;
							//if(z < -rooms[x][y].length) rooms[x][y][-z] = null;
							
							temp_x = x-1;
							temp_z = z;
							var to_path:String;
							var from_path:String;
							var filler_connect:Boolean;
							var temp_room:Room;
							
							//filler room does single connect to other rooms
							if(filler_type_t == single_connected_filler){
								var connect_room_array:Array = new Array();
								var found:Boolean = false;
								for(temp_x;temp_x<=x+1;temp_x++){
									temp_y = y - 1;
									if(rooms[temp_x] != null){
										for(temp_y;temp_y<=y+1;temp_y++){
											if(rooms[temp_x][temp_y] != null && rooms[temp_x][temp_y][temp_z] != null && rooms[temp_x][temp_y][temp_z] != new_room){
												if(temp_x != x && temp_y != y && rooms[temp_x][y] != null && rooms[temp_x][y][z] != null && rooms[x][temp_y] != null && rooms[x][temp_y][temp_z] != null && rooms[temp_x][y][z].get_exit_id(rooms[x][temp_y][temp_z]) >= 0){
													//no overpass exits!
												}else{
													temp_room = rooms[temp_x][temp_y][temp_z];
													filler_connect = true;
													if(temp_room.template != null){
														filler_connect = temp_room.template.get_filler_connect()
													}
													if(filler_connect){
														connect_room_array[connect_room_array.length] = temp_room;
													}
												}
											}
										}
									}
								}
								var rand_room:int = -1;
								if(double_up){
									temp_x = 0;
									for(temp_x;temp_x<connect_room_array.length;temp_x++){
										if(connect_room_array[temp_x].template != new_room.template){
											rand_room = temp_x;
											break;
										}
									}
								}
								if(rand_room<0)rand_room = Math.round(Math.random()*(connect_room_array.length-1));
								
								while(connect_room_array.length > 0 && !found){
									var connect_room:Room = connect_room_array[rand_room];
									var temp:Array = find_room(connect_room);
									to_path = get_direction(temp[0], temp[1], temp[2], x, y, z);
									from_path = get_direction(x, y, z, temp[0], temp[1], temp[2]);
									
									if(connect_room.new_exit(new_room, to_path) != -1){
										new_room.new_exit(connect_room, from_path);
										if(double_up && new_room.template != connect_room.template){
											double_up = false;
										}else{
											found = true;
										}
									}else{
										connect_room_array = connect_room_array.slice(0,rand_room).concat(connect_room_array.slice(rand_room+1,connect_room_array.length));
									}
									rand_room = Math.round(Math.random()*(connect_room_array.length-1));
									if(new_room.exits.length > 0 && !found){ 
										while(connect_room_array.length > 0 && connect_room_array[rand_room].template != new_room.template){
											connect_room_array = connect_room_array.slice(0,rand_room).concat(connect_room_array.slice(rand_room+1,connect_room_array.length));
											rand_room = Math.round(Math.random()*(connect_room_array.length-1));
										}
									}							
								}
								
								if(!found){
									//thinking our next room to have 2 options takes both, instead of just one...
									double_up = true;
								}							
							}else if(filler_type_t == fully_connected_filler){
								//filler room completely connects to other filler rooms
								var all_populated:Boolean = true;
								for(temp_x;temp_x<=x+1;temp_x++){
									temp_y = y - 1;
									if(rooms[temp_x] != null){
										for(temp_y;temp_y<=y+1;temp_y++){
											if(rooms[temp_x][temp_y] != null){
												if(rooms[temp_x][temp_y][temp_z] != null){
													temp_room = rooms[temp_x][temp_y][temp_z];
													filler_connect = true;
													if(temp_room.template != null){
														filler_connect = temp_room.template.get_filler_connect()
													}
													if(temp_room != new_room && filler_connect){
														to_path = get_direction(temp_x, temp_y, temp_z, x, y, z);
														from_path = get_direction(x, y, z, temp_x, temp_y, temp_z);
														//these exits are coming out wrong when we have multiple z levels on the edge of a map
														if(filler_template_t.hidden_exit_action != null){
															if(temp_room.description == filler_template_t.description || (temp_room.template != null && temp_room.template.description == filler_template_t.description)){
																//check if we're making an overpass exit over a nonfiller path...
																if(temp_x != x && temp_y != y && rooms[temp_x][y] != null && rooms[temp_x][y][z] != null && rooms[x][temp_y] != null && rooms[x][temp_y][temp_z] != null && rooms[temp_x][y][z].description != filler_template_t.description && rooms[x][temp_y][temp_z].description != filler_template_t.description && rooms[temp_x][y][z].get_exit_id(rooms[x][temp_y][temp_z]) >= 0){
																	
																}else{
																	if(temp_room.new_exit(new_room, to_path) != -1){
																		new_room.new_exit(temp_room, from_path);
																		if(temp_x < 0)trace("(Area)Failed to create a filler room at " + x + "," + y + "," + z + ":" + temp_x + "," + temp_y + "," + temp_z);
																	}
																}
															}else{
																//check to see if the exit is already populated
																var good_exit:Boolean = false;
																var avail_exits:Array = new_room.template.get_avail_exits(temp_room);
																var temp_str_count:int = 0;
																for(temp_str_count;temp_str_count<avail_exits.length;temp_str_count++){
																	if(to_path == avail_exits[temp_str_count]){
																		good_exit = true;
																		break;
																	}
																}
																
																if (good_exit){
																	if(temp_x != x && temp_y != y && rooms[temp_x][y] != null && rooms[temp_x][y][z] != null && rooms[x][temp_y] != null && rooms[x][temp_y][temp_z] != null && rooms[temp_x][y][z].description != filler_template_t.description && rooms[x][temp_y][temp_z].description != filler_template_t.description && rooms[temp_x][y][z].get_exit_id(rooms[x][temp_y][temp_z]) >= 0){
																	
																	}else{
																		if(temp_room.template != null && (temp_room.template.exit_actions[0] != null || temp_room.template.hidden_exit_action != null)){
																		   if(temp_room.template.exit_actions[0] != null){
																			   if(new_room.new_exit(temp_room, from_path) != -1){
																					temp_room.new_exit(new_room, to_path);
																				}
																		   }else{
																			   trace("(Area.filler_area)Should be connecting two filler rooms via hidden exits... doing nothing instead");
																		   }
																		}else{
																			if(new_room.new_exit(temp_room, from_path) != -1){
																				//add the hidden exit to the non-filler room
																				Area.generate_filler_exit_action(temp_room, new_room, to_path, filler_template_t.hidden_exit_action, filler_template_t.hidden_exit_challenge, filler_template_t.hidden_exit_consequence);
																			}
																		}
																	}
																}																
															}															
														}else{
															if(temp_room.new_exit(new_room, to_path) != -1){
																new_room.new_exit(temp_room, from_path);
																
															}
														}														
													}													
												}												
											}											
										}										
									}else if(temp_y < max_y && temp_x<rooms.length && temp_y >= 0 && temp_x >= 0 && rooms[temp_x][temp_y] == null){
										all_populated = false;
									}									
								}								
							}							
						}						
						if(rooms[x][y][z] == null)trace("(Area.filler_area)Ok, I've messed up trying to place a room at " + x + "," + y + "," + z);
					}					
				}				
				check_connections(floor_to_build);
			}else{
				trace("(Area.filler_area)Huh... just tried to make a filler area for " + this.get_description() + " but couldn't find a template.");
			}
		}
		
		public static function generate_filler_exit_action(r:Room, move_room:Room, path:String, exit_action:Action, exit_challenge:Challenge, exit_consequence:Consequence):Action{
			var act:Action = new Action();
			act.clone(exit_action);
			
			//check if the action already exists
			var count:int = 0;
			if(r!= null){
				for(count;count<r.actions.length;count++){
					if(act.name.indexOf("</path>") > -1){
						/*may not want to do this if the exits are meant to be unique....
						if(rooms[temp_x][temp_y].actions[count].name.indexOf(act.name.slice(0,act.name.indexOf("</path>"))) > -1){
							act = rooms[temp_x][temp_y].actions[count];
							break;
						}*/
					}else{
						if(r.actions[count].name == act.name){
							act = r.actions[count];
							break;
						}
					}
				}
			}
			
			var chall:Challenge = new Challenge();
			chall.clone(exit_challenge);
			
			chall.set_text(chall.get_text().replace("</path>", path));
			
			var conseq:Consequence = exit_consequence.clone();
			if(conseq is Room_Consequence){
				(conseq as Room_Consequence).add_room_effect(move_room);
			}
			
			var con_count:int = 0;
			for(con_count;con_count<conseq.consequence_description.length;con_count++){
				conseq.consequence_description[con_count] = conseq.consequence_description[con_count].replace("</path>", path);
			}
																																	
			act.add_challenge(chall, conseq);
			
			act.name = act.name.replace("</path>", path);
			if(act.dialogue == null || act.dialogue == "null"){
				act.set_dialogue("</c" + (act.challenges.length - 1) + ">");
			}else{
				act.dialogue = act.dialogue.replace("</path>", path);
			}
			if(r != null){
				if(act != r.actions[count]){
					r.add_action(act);
					r.set_description(r.description + "<a" + (r.actions.length - 1) +">");
				}else{
					act.set_dialogue(act.dialogue + "\n</c" + (act.challenges.length - 1) + ">");
				}
			}			
			return act;
		}
		
		public function remove_empty_edges():void{
			var top_x_good:Boolean = false;
			var bottom_x_good:Boolean = false;
			var left_y_good:Boolean = false;
			var right_y_good:Boolean = false;
			var max_y:int = 0;
			var x:int = 0;
			for(x;x<rooms.length;x++){
				if(rooms[x] != null){
					if(rooms[x].length >= max_y) max_y = rooms[x].length;
				}
			}
			x = 0;
			for(x;x<rooms.length;x++){
				if(x == 0 || x == rooms.length - 1){
					var y:int = 0;
					for(y;y<max_y;y++){
						if(rooms[x] != null && rooms[x][y] != null){
							var z:int = 0;
							for(z;z<rooms[x][y].length;z++){
								if(rooms[x][y][z] != null){
									if(x == 0){
										left_y_good = true;
									}else{
										right_y_good = true;
									}
									break;
								}
							}
							if(left_y_good && right_y_good)break;
						}
					}
				}
				if(rooms[x] != null && rooms[x][0] != null){
					z = 0;
					for(z;z<rooms[x][0].length;z++){
						if(rooms[x][0][z] != null){
							bottom_x_good = true;
							break;
						}
					}
				}
				if(rooms[x] != null && rooms[x][max_y-1] != null){
					z = 0;
					for(z;z<rooms[x][max_y-1].length;z++){
						if(rooms[x][max_y-1][z] != null){
							top_x_good = true;
							break;
						}
					}
				}
			}
			
			if(!top_x_good){
				x = 0;
				for(x;x<rooms.length;x++){
					if(rooms[x] != null && rooms[x].length > max_y-1)rooms[x].pop();
				}
			}
			
			if(!bottom_x_good){//actually right side of the map
				x = 0;
				for(x;x<rooms.length;x++){
					if(rooms[x] != null)rooms[x].shift();
				}
			}
			
			if(!left_y_good){
				rooms.shift();
			}
			
			if(!right_y_good){
				rooms.pop();
			}
		}
		
		public function check_connections(floor_to_check:int = -2, connected_rooms:Array = null, unconnected_rooms:Array = null):void{
			if(connected_rooms == null){
				connected_rooms = new Array();
				unconnected_rooms = new Array();
				if(floor_to_check < 0){
					unconnected_rooms = unconnected_rooms.concat(room_list);
				}else{
					var x:int = 0;
					for(x;x<rooms.length;x++){
						var y:int = 0;
						for(y;y<rooms[x].length;y++){
							if(rooms[x][y][floor_to_check] != null)unconnected_rooms[unconnected_rooms.length] = rooms[x][y][floor_to_check];
						}
					}
				}
				
				var j:int = 0;
				for(j;j<unconnected_rooms.length;j++){
					if(unconnected_rooms[j].template != null && (unconnected_rooms[j].template.unconnected || !unconnected_rooms[j].template.get_filler_connect())){
						unconnected_rooms = unconnected_rooms.slice(0,j).concat(unconnected_rooms.slice(j+1,unconnected_rooms.length));
						j--;
					}
				}			
				
				connected_rooms[connected_rooms.length] = unconnected_rooms.pop();
			}else if(unconnected_rooms == null){
				unconnected_rooms = new Array();
			}		
		
			var current_room:int = connected_rooms.length - 1;
			while(current_room < connected_rooms.length){
				var i:int = 0;
				for(i;i<connected_rooms[current_room].exits.length;i++){
					j = 0;
					for(j;j<unconnected_rooms.length;j++){
						if(unconnected_rooms[j] == connected_rooms[current_room].exits[i]){
							connected_rooms[connected_rooms.length] = unconnected_rooms[j];
							unconnected_rooms = unconnected_rooms.slice(0,j).concat(unconnected_rooms.slice(j+1,unconnected_rooms.length));
							break;
						}						
					}
				}
				current_room++;
			}		
		
			if(unconnected_rooms.length>0){
				//connect a room from connected_rooms and unconnected_rooms, then run check_connections() again
				var found:Boolean = false;
				i = 0;
				for(i;i<connected_rooms.length;i++){
					var temp_loc1:Array = find_room(connected_rooms[i]);
					j = 0;
					for(j;j<unconnected_rooms.length;j++){
						var temp_loc2:Array = find_room(unconnected_rooms[j]);
						if(temp_loc1[2] == temp_loc2[2] && Math.abs(temp_loc1[0] - temp_loc2[0]) <= 1 && Math.abs(temp_loc1[1] - temp_loc2[1]) <= 1){
							if(unconnected_rooms[j].get_exit_id(connected_rooms[i]) < 0 && (rooms[temp_loc1[0]][temp_loc2[1]][temp_loc1[2]]!= null && rooms[temp_loc2[0]][temp_loc1[1]][temp_loc1[2]] != null && rooms[temp_loc1[0]][temp_loc2[1]][temp_loc1[2]].get_exit_id(rooms[temp_loc2[0]][temp_loc1[1]][temp_loc1[2]]) < 0)){
								//need a new connection
								connected_rooms[i].new_exit(unconnected_rooms[j], get_direction(temp_loc1[0],temp_loc1[1],temp_loc1[2],temp_loc2[0],temp_loc2[1], temp_loc2[2]));
								unconnected_rooms[j].new_exit(connected_rooms[i], get_direction(temp_loc2[0],temp_loc2[1], temp_loc2[2],temp_loc1[0],temp_loc1[1],temp_loc1[2]));
							}
							connected_rooms[connected_rooms.length] = unconnected_rooms[j];
							unconnected_rooms = unconnected_rooms.slice(0,j).concat(unconnected_rooms.slice(j+1,unconnected_rooms.length));
							found = true;							
						}
					}
					if(found)break;
				}				
				if(found)check_connections(floor_to_check, connected_rooms, unconnected_rooms);				
			}
		}
		
		public function finalize():void{
			var max_y:int = 0;
			var x:int = 0;
			var y:int = 0;
			var z:int = base_floor_z;
			for(x;x<rooms.length;x++){
				if(rooms[x] != null){
					if(rooms[x].length >= max_y) max_y = rooms[x].length;
				}
			}
			
			x = 0;
			for(x;x<rooms.length;x++){
				y = max_y - 1;
				for(y;y>=0;y--){
					if(rooms[x][y] != null){
						if(rooms[x][y][z] == null){
							if(filler_template[0] != null){
								trace("(AREA) found an empty space in area " + get_description() + " despite a filler template at " + x + "," + y + "," + z);
							}else{
								
							}
						}else{
							var r:Room = rooms[x][y][z];
							if(r.template != null){
								if(r.template.get_propagating_description_distance() > 0){
									var temp_x:int = x - r.template.get_propagating_description_distance();
									for(temp_x;temp_x <= x + r.template.get_propagating_description_distance();temp_x++){
										var temp_y:int = y - r.template.get_propagating_description_distance(); 
										var temp_z:int = 0;
										for(temp_y;temp_y <= y + r.template.get_propagating_description_distance();temp_y++){
											if(temp_x == x && temp_y == y) continue;
											if(rooms[temp_x] != null){
												if(rooms[temp_x][temp_y] != null){
													if(rooms[temp_x][temp_y][temp_z] != null){
														var prop_room:Room = rooms[temp_x][temp_y][temp_z];
														var to_path:String = get_direction(temp_x, temp_y, temp_z, x, y, z);
														
														if(r.template.get_propagating_to_template()){
															if(prop_room.template == r.template){
																//need to check and make sure the exit actually exists in this case
																if(prop_room.get_exit_id(r) >= 0){
																	
																	//we can have multiples of this... just to make things fun...
																	var temp_string:String = r.template.get_propagating_description();
																	temp_string = temp_string.slice(0, temp_string.indexOf("</path>"));
																	
																	if(prop_room.description.indexOf(temp_string) >=0){
																		var multi_desc:String = prop_room.description.slice(0,prop_room.description.indexOf(temp_string));
																		
																		//need to find out what the previous path was....
																		temp_string = prop_room.description.slice(multi_desc.length + temp_string.length, prop_room.description.length);
																		var template_end:String = r.template.get_propagating_description();
																		template_end = template_end.slice(template_end.indexOf("</path>") + 7, template_end.length);
																		
																		var previous_path:String = temp_string.slice(0, temp_string.indexOf(template_end));
																		
																		if(previous_path.indexOf(to_path) < 0){
																			if(previous_path.indexOf("and") >= 0){
																				temp_string = previous_path.slice(0, previous_path.indexOf(" and ")) + ", " + previous_path.slice(previous_path.indexOf(" and ") + 5, previous_path.length) + " and " + to_path;
																			}else{
																				temp_string = previous_path + " and " + to_path;
																			}
																																		
																			prop_room.set_description(multi_desc + r.template.get_propagating_description().replace("</path>", temp_string) + prop_room.description.slice(prop_room.description.indexOf(template_end,multi_desc.length)+template_end.length,prop_room.description.length));
																		}
																	}else{
																		prop_room.set_description(rooms[temp_x][temp_y][temp_z].description + "\n" + r.template.get_propagating_description().replace("</path>", to_path));
																	}
																	
																}
															}
														}else{
															
															if(prop_room.template != r.template){
																temp_string = r.template.get_propagating_description();
																temp_string = temp_string.slice(0, temp_string.indexOf("</path>"));
																
																if(prop_room.description.indexOf(temp_string) >=0){
																	multi_desc = prop_room.description.slice(0,prop_room.description.indexOf(temp_string));
																	
																	//need to find out what the previous path was....
																	temp_string = prop_room.description.slice(multi_desc.length + temp_string.length, prop_room.description.length);
																	template_end = r.template.get_propagating_description();
																	template_end = template_end.slice(template_end.indexOf("</path>") + 7, template_end.length);
																	
																	previous_path = temp_string.slice(0, temp_string.indexOf(template_end));
																	
																	if(previous_path.indexOf(to_path) < 0){
																		if(previous_path.indexOf("and") >= 0){
																			temp_string = previous_path.slice(0, previous_path.indexOf(" and ")) + ", " + previous_path.slice(previous_path.indexOf(" and ") + 5, previous_path.length) + " and " + to_path;
																		}else{
																			temp_string = previous_path + " and " + to_path;
																		}
																																	
																		prop_room.set_description(multi_desc + r.template.get_propagating_description().replace("</path>", temp_string) + prop_room.description.slice(prop_room.description.indexOf(template_end,multi_desc.length)+template_end.length,prop_room.description.length));
																	}
																}else{
																	prop_room.set_description(rooms[temp_x][temp_y][temp_z].description + "\n" + r.template.get_propagating_description().replace("</path>", to_path));
																}
															}
															
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
			
			//check for duplicate rooms in room_list
			var i:int = 0;
			for(i;i<room_list.length;i++){
				if(room_list[i].id != i)room_list[i].id = i;
				var j:int = i + 1;
				for(j;j<room_list.length;j++){
					if(room_list[i] == room_list[j]){
						trace("(Area)We have the same room multiple times in room list in Area " + get_description() + ". " + i + " " + j);
						if(room_list[i].template == filler_template) trace("And it looks like a filler room");
						trace("(Area)Doing absolutely nothing about it");
					}
				}
			}
		}
		
		public function create_map_piece(r:Room = null,c:Character = null, mini_map:Boolean = false, floor_num = 0):String{
			var k:int = 0;
			var temp:Array = new Array(" "," "," ","\n"," "," "," ","\n"," "," "," ");			
			
			if(r != null){
				var colour:uint;
				if(r.template != null){
					colour = r.template.get_map_room_colour();
				}else{
					colour = 0xFFFFFF;
				}
				
				var room_symbol:String = "O";
				if(get_legend_id(r.custom_name,floor_num,true) != "#")room_symbol = get_legend_id(r.custom_name,floor_num,true);
				
				temp[5] = "<colour=" + String(colour) + ">" + room_symbol;
				
				if(r.found() && !mini_map){
					temp[5] = "<a href=\"event:quickmove," + String(r.id) +"," + String(world.get_area_id(this)) +"\" colour=" + String(colour) + ">"+ room_symbol+ "</a>";
				}else if(c != null && mini_map){
					if(c.location.get_exit_id(r) >= 0){
						temp[5] = "<a href=\"event:go_to_new_room," + c.location.get_exit_id(r) +"\" colour=" + String(colour) + ">"+ room_symbol+ "</a>";
					}
				}
				
				if(filler_template != null){
					if(r.description == filler_template.description){
						room_symbol = "F";
						temp[5] = "<colour=" + String(colour) + ">" + room_symbol;
						if(r.found()&& !mini_map){
							temp[5] = "<a href=\"event:quickmove," + String(r.id)  +"," + String(world.get_area_id(this)) +"\" colour=" + String(colour) + ">"+ room_symbol+ "</a>";
						}else if(c != null && mini_map){
							if(c.location.get_exit_id(r) >= 0){
								temp[5] = "<a href=\"event:go_to_new_room," + c.location.get_exit_id(r) +"\" colour=" + String(colour) + ">"+ room_symbol+ "</a>";
							}
						}
					}
				}
				
				for (k;k<r.exit_names.length;k++){
					if(r.exit_names[k] == "North"){
						temp[1] = "|";
						if(r.area != r.exits[k].area && r.exits[k].area != null){
							temp[1] = get_legend_id(r.exits[k].area.description,floor_num);
						}
					}else if(r.exit_names[k] == "East"){
						temp[6] = "-";
						if(r.area != r.exits[k].area && r.exits[k].area != null){
							temp[6] = get_legend_id(r.exits[k].area.description,floor_num);
						}
					}else if(r.exit_names[k] == "West"){
						temp[4] = "-";
						if(r.area != r.exits[k].area && r.exits[k].area != null){
							temp[4] = get_legend_id(r.exits[k].area.description,floor_num);
						}
					}else if(r.exit_names[k] == "North-East"){
						temp[2] = "/";
						if(r.area != r.exits[k].area && r.exits[k].area != null){
							temp[2] = get_legend_id(r.exits[k].area.description,floor_num);
						}
					}else if(r.exit_names[k] == "North-West"){
						temp[0] = "\\";
						if(r.area != r.exits[k].area && r.exits[k].area != null){
							temp[0] = get_legend_id(r.exits[k].area.description,floor_num);
						}
					}else if(r.exit_names[k] == "South-West"){
						temp[8] = "/";
						if(r.area != r.exits[k].area && r.exits[k].area != null){
							temp[8] = get_legend_id(r.exits[k].area.description,floor_num);
						}
					}else if(r.exit_names[k] == "South-East"){
						temp[10] = "\\";
						if(r.area != r.exits[k].area && r.exits[k].area != null){
							temp[10] = get_legend_id(r.exits[k].area.description,floor_num);
						}
					}else if(r.exit_names[k] == "South"){
						temp[9] = "|";
						if(r.area != r.exits[k].area && r.exits[k].area != null){
							temp[9] = get_legend_id(r.exits[k].area.description,floor_num);
						}
					}else{
						room_symbol = "@";
						temp[5] = "<colour=" + String(colour) + ">" + room_symbol;
						if(r.found()&& !mini_map){
							temp[5] = "<a href=\"event:quickmove," + String(r.id) +"," + String(world.get_area_id(this)) +"\" colour=" + String(colour) + ">"+ room_symbol+ "</a>";
						}else if(c != null && mini_map){
							if(c.location.get_exit_id(r) >= 0){
								temp[5] = "<a href=\"event:go_to_new_room," + c.location.get_exit_id(r) +"\" colour=" + String(colour) + ">"+ room_symbol+ "</a>";
							}
						}
					}
				}
				if(c != null && r.get_content_id(c) >= 0){
					room_symbol = "P";
					temp[5] = "<colour=" + String(colour) + ">" + room_symbol;
				}
			}
			var j:int = 0;
			var ret:String = "";
			for (j;j<temp.length;j++){
				ret += temp[j];
			}
						
			return ret;
		}
		
		public function get_legend(floor_num:int, c:Character):String{
			var ret:String = "";
			var i:int = 0;
			for(i;i<legend.length;i++){
				if(legend_floor[i] == floor_num)ret += (i+1) +": "+ legend[i]+"\n";
			}
			if(c != null && c.location != null){
				if(get_legend_id(c.location.custom_name,floor_num,true)!= "#"){
					ret += "\n<font color='#0000FF'><a href=\"event:remove_legend_mark\">Remove Custom Marker</a></font>";
				}else{
					ret += "\n<font color='#0000FF'><a href=\"event:new_legend_mark\">Create Custom Marker</a></font>";
				}
			}
			
			return ret;
		}
		
		public function get_legend_id(s:String, floor_num:int,no_create:Boolean = false):String{
			if(s != ""){
				var found:Boolean = false
				var j:int = 0;
				for(j;j<legend.length;j++){
					if(legend[j] == s){
						found = true;
						break;
					}
				}
				if(found){
					return String(j + 1);
				}else{
					if(!no_create){
						legend[legend.length] = s;
						legend_floor[legend_floor.length] = floor_num;
						return String(legend.length);
					}
				}
			}
			
			return "#";
		}
		
		public function create_legend_mark(c:Character, s:String = "Custom Mark"):String{
			var ret:String = "";
			
			if(get_legend_id(s,find_room(c.location)[2])!="#"){
				ret = "Custom marker created.";
				c.location.set_custom_name(s);
			}else{
				ret = "Custom marker creation failed!";
			}
			
			ret += "\n\n<font color='#0000FF'><a href=\"event:show_map\">back</a></font>";
			return ret;
		}
		
		public function remove_legend_mark(c:Character):String{
			var ret:String = "";
			
			ret = "Custom Marker Removed.\n\n<font color='#0000FF'><a href=\"event:show_map\">back</a></font>";
			//may need to remove entry from legend and legend_floor arrays... only real way to know is to check if this rooms custom name is used anywhere else on the floor
			var no_remove:Boolean = false;
			var i:int = 0;
			for(i;i<room_list.length;i++){
				if(c.location != room_list[i] && room_list[i].custom_name == c.location.custom_name){
					no_remove = true;
					break;
				}
			}
			
			if(!no_remove){
				i = 0;
				for(i;i<legend.length;i++){
					if(legend[i] == c.location.custom_name){
						var j:int = i;
						for(j;j<legend.length-1;j++){
							legend[j] = legend[j+1];
						}
						legend.length--;
						break;
					}
				}
			}
			
			c.location.set_custom_name("");
			
			return ret;
		}
		
		//now we need to make it so the map makes sense, make a map, etc.
		public function get_map(gen_flag:int = 0, c:Character = null, sight:int = -1, show_location:int = 0, mini_map:Boolean = false):String{
			if (map != "" && gen_flag == 0) return map;
			
			var map_pieces:Array = new Array();
			map = "";
			var x:int;// = map_pieces.length-1;
			var y:int;
			var z:int = base_floor_z;
			var place_holder:int = 0;
			
			var max_y:int = 0;
			x = 0;
			for(x;x<rooms.length;x++){
				map_pieces[x] = new Array();
				map_pieces[x][rooms[x].length - 1] = null;
				if(rooms[x].length >= max_y) max_y = rooms[x].length;
			}
			
			var char_x:int = -1;
			var char_y:int = -1;
			var char_z:int = -1;
			var max_x:int = rooms.length - 1;
			var min_x:int = 0;
			var min_y:int = 0;
			var start_again:Boolean = false;
			
			if(sight == -1) sight = Math.max(max_x, max_y);
			
			if(c != null){
				if(c.location != null){
					var temp_a:Array = find_room(c.location);
						if(temp_a != null){
						char_x = temp_a[0];
						char_y = temp_a[1];
						char_z = temp_a[2];
						//trace("(Area)Found Character at " + char_x + "," + char_y + "," + char_z);
						if(char_z != z) z = char_z;
					}
				}
			}
			
			x = min_x;
			
			for (x;x<rooms.length;x++){
						
				y = max_y;
				
				for(y;y>=min_y;y--){
					var map_array:Array = new Array();
					var map_piece_array:Array = new Array();
					map_array = map.split("\n");
					if(rooms[x] == null){
						start_again = true;
						break;
					}
					
					if (rooms[x][y] == null){
						map_piece_array = create_map_piece().split("\n");
					}else{
						if(rooms[x] != null){
							if(rooms[x][y] != null){
								map_pieces[x][y] = new Array();
								if(rooms[x][y][z] != null){
									//if(char_y != -1){
										if((char_x - sight < x && x < char_x + sight && char_y - sight < y && y < char_y + sight) || (rooms[x][y][z].found() && !mini_map )){
											if(gen_flag == 1 &&  show_location != 0){
												map_pieces[x][y][z] = create_map_piece(rooms[x][y][z],c,mini_map,z);
											}else if(gen_flag == 1){
												if(show_location == 0){
													map_pieces[x][y][z] = create_map_piece(rooms[x][y][z],null,true,z);
												}else{
													map_pieces[x][y][z] = create_map_piece(rooms[x][y][z],null,false,z);
												}
											}else{
												map_pieces[x][y][z] = create_map_piece();
											}
										}else{
											map_pieces[x][y][z] = create_map_piece();											
										}
									/*}else{
										map_pieces[x][y][z] = create_map_piece();
									}*/
								}else{
									map_pieces[x][y][z] = create_map_piece();
								}
							}
						}
						if(map_pieces[x][y] != null && map_pieces[x][y][z] != null){
							map_piece_array = map_pieces[x][y][z].split("\n");
						}else{
							map_piece_array = create_map_piece().split("\n");
						}
					}
					var count:int = 0;
					
					for (count;count<3;count++){
						if(map_array[count + place_holder] != null)	{
							map_array[count + place_holder] += map_piece_array[count];
						}else{
							map_array[count + place_holder] = map_piece_array[count];
						}
					}
					map = "";
					count = 0;
					for(count;count<3 + place_holder;count++){
						map += map_array[count] + "\n";
					}
				}
				if(start_again){
					start_again = !start_again;
					continue;
				}
				place_holder += 3;
				
			}
			
			
			var temp_map:String = "";
			
			temp_map += map;
			
			//add the legend
			if(!mini_map){
				temp_map += "\n\n\n"
				if(z >= base_floor_z){
					temp_map += "Floor "+(z-base_floor_z + 1)+"\n\n";
				}else if(z < base_floor_z){
					temp_map += "Basement "+(base_floor_z-z)+"\n\n";
				}				
				temp_map += get_legend(z,c);
			}
			
			return temp_map;
		}
		
		public function add_room(e:Room,max_num_room:int = -1):void{
			e.area = this;
			e.set_id(room_list.length);
			if(place_room(e, null, max_num_room) >= 0){
				room_list[room_list.length] = e;
			}
			
		}
		
		public function get_random_room(for_area_connect:Boolean = false):Room{
			var room_num:int;
			var min_room:int = 0;
			//choose rooms from that later half of the list to spread the area out - doesn't matter if you don't control the directions!
			//min_room = Math.floor((room_list.length-1)*0.6);
			room_num = min_room + int(Math.random()*(room_list.length-1 - min_room));
			
			if(for_area_connect){
				if(room_list[room_num].template != null){
					if(room_list[room_num].template.get_no_area_exit()) return get_random_room(true);
				}
				if(room_list[room_num].attached_to_other_area()) return get_random_room(true);
			}
			
			return room_list[room_num];
		}
		
		public function get_edge_rooms(indent:int = 0, skip_area_check:Boolean = false):Array{
			var list:Array = new Array();
			var x:int = 0;
			var y:int = 0;
			var z:int = base_floor_z;
			
			var max_y:int = 0;
			for(x;x<rooms.length;x++){
				if(rooms[x].length > max_y) max_y = rooms[x].length - 1;
			}
			
			x = 0;
			for(x;x<rooms.length;x++){
				if(rooms[x - 1] == null || rooms[x + 1] == null){ 
					var temp:int = indent;
					if(rooms[x+1] == null) temp = -indent;
					y = 0;
					for(y;y<=max_y;y++){
						if(rooms[x + temp][y] != null){
							if(rooms[x + temp][y][z] != null && (!rooms[x + temp][y][z].attached_to_other_area() || skip_area_check)){
								if(rooms[x + temp][y][z].template != null){
									if(!rooms[x + temp][y][z].template.get_no_area_exit())list[list.length] = rooms[x + temp][y][z];
								}else{
									list[list.length] = rooms[x + temp][y][z];
								}
							}							
						}
					}
				}else{
					if(rooms[x][0 + indent] != null){
						if(rooms[x][0 + indent][z] != null  && (!rooms[x][0 + indent][z].attached_to_other_area() || skip_area_check)){
							if(rooms[x][0 + indent][z].template != null){
								if(!rooms[x][0 + indent][z].template.get_no_area_exit())list[list.length] = rooms[x][0 + indent][z];
							}else{
								list[list.length] = rooms[x][0 + indent][z];
							}
						}
					}
					if(rooms[x][max_y - indent] != null){
						if(rooms[x][max_y - indent][z] != null && (!rooms[x][max_y - indent][z].attached_to_other_area() || skip_area_check)){
							if(rooms[x][max_y - indent][z].template != null){
								if(!rooms[x][max_y - indent][z].template.get_no_area_exit())list[list.length] = rooms[x][max_y - indent][z];
							}else{
								list[list.length] = rooms[x][max_y - indent][z];
							}
						}
					}
				}
			}
			
			if(list[0] == null){
				if(indent>0){
					if(indent>1){
						trace("Area being naughty in get_edge_rooms...");
						return list;
					}
					return get_edge_rooms(2,skip_area_check);
				}
				return get_edge_rooms(1,skip_area_check);
			}
			return list;
		}
		public function get_edge_room(skip_area_check:Boolean = false):Room{
			var list:Array = get_edge_rooms(0,skip_area_check);
			var room_num:int;
			
			room_num = Math.round(Math.random()*(list.length-1));
			
			if(list[room_num] != null)return list[room_num];
			trace("(Area.get_edge_room)If you thought you were getting an edge room, you're probably wrong");
			return get_random_room();
		}
		
		public function add_room_template(tr:Template_Room, min_max_floor:Array = null):void{
			template_rooms[template_rooms.length] = tr;
			template_floor_range[template_floor_range.length] = min_max_floor;
		}
		
		public function set_filler_template(ft:Template_Room, type:int = 0, min_max_floor:Array = null):void{
			filler_template[filler_template.length] = ft;
			filler_type[filler_type.length] = type;
			filler_floor_range[filler_floor_range.length] = min_max_floor;
		}
		
		public function set_dynamic_build_template(tr:Template_Room, min_max_floor:Array = null):void{
			dynamic_build_template[dynamic_build_template.length] = tr;			
			dynamic_build_floor_range[dynamic_build_floor_range.length] = min_max_floor;
		}
		
		public function set_dynamic_build_direction():void{
			dynamic_build_up = !dynamic_build_up;
		}
		
		public function get_all_rooms():String{
			var output:String;
			var i:int;
			output = "";
			for (i = 0; i<rooms.length;i++){
				output += rooms[i].get_room_description();
			}
			return output;
		}
		
		public function tick(c:Character):void{
			current_weather_length++;
			if(weathers[current_weather] != null && current_weather_length > weathers[current_weather].get_min_length()){
				current_weather = Math.round(Math.random()*(weathers.length-1));
				current_weather_length = 0;
			}
			
			var npc_count:int = 0;
			var q:int;
			var i:int = 0;
			for(i;i<room_list.length;i++){
				if(room_list[i] != null){
					var tick_happenings:String = "";
					room_list[i].last_area_tick = total_actions_taken;
					if(room_list[i].cm != null){
						if(!room_list[i].cm.active_combat()){
							room_list[i].cm = null;
						}else if(room_list[i].cm.get_init(c) == -1){//see if the player is one of the participants... if not, have the fight proceed.
							var temp_cm:Combat_manager = room_list[i].cm;
							tick_happenings += temp_cm.fire_combat_round();
						}
					}
					if(room_list[i].contents != null){
						q = 0;
						for(q;q<room_list[i].contents.length;q++){
							if (room_list[i].contents[q] is Character){
								var temp:Character;
								temp = room_list[i].contents[q];
								if(temp != c){
									npc_count++;
									var already_busy:Boolean = false;
									if(room_list[i].cm != null){
										if(room_list[i].cm.get_init(temp) >= 0){
											already_busy = true;
										}
									}
									if(!temp.ai_already_moved && !already_busy){
										tick_happenings += temp.tick();
									}
									temp.ai_already_moved = !temp.ai_already_moved;//should only be doing this if moving into room[i+n]
								}
								
							}else if(room_list[i].contents[q] is Item){
								var temp_i:Item = room_list[i].contents[q];
								temp_i.tick(room_list[i]);
							}
						}
						q = 0;
						for(q;q<room_list[i].static_contents.length;q++){
							if(room_list[i].static_contents[q] is Container){
								//need to clean up bodies
								var temp_cont:Container = room_list[i].static_contents[q];
								if(total_actions_taken%Main.t1_day == 0 && temp_cont.name == "Body"){
									tick_happenings += "A body deteriorates into the ground.\n";
									//doesn't drop gold, but that makes sense... whoever took the body took the gold
									var z:int = 0;
									for(z;z<temp_cont.contents.length;z++){
										room_list[i].new_content(temp_cont.contents[z]);
									}
									
									room_list[i].remove_static_contents(q);
									
									//only clean up the oldest one
									break;
								}
							}
						}
					}
					
					room_list[i].set_last_tick(tick_happenings);
				}
			}
			
			//trace("(Area)Ticking area with NPC count: " + npc_count);
			if(npc_count <= npc_spawn_threshold){
				if(spawn_creatures.length > 0){
					var spawn_choice:int = 0;
					if(spawn_creatures.length > 1)spawn_choice = Math.round(Math.random() *(spawn_creatures.length - 1))
					var new_char:Character = spawn_creatures[spawn_choice].gen_char();
					new_char.new_location(get_random_room(), true);
					
				}else{
					//use the template_rooms spawns
					var temp_room:Room = get_random_room();
					if(temp_room.template != null){
						temp_room.template.spawn_creatures(temp_room);
					}
				}
			}
			
			total_actions_taken++;
		}

	}
	
	
	
}
