package {
	
	public class Room extends Static_object{
		
		public var exits:Array;
		public var exit_names:Array;
		public var contents:Array;
		public var static_contents:Array;
		public var area:Area;
		public var template:Template_Room;
		
		public var actions:Array;
		public var action_max_times:Array;
		public var action_current_num_times:Array;
		public var exit_actions:Array;
		
		public var player_discovered:Boolean;
		public var show_area_effects:Boolean;
		
		public var discovered_difficulty:int;
		public var sight_difficulty:int;
		public var locate_difficulty:int;
		
		public var last_tick:String;
		public var next_tick:String;
		
		public var custom_name:String;
		
		public var cm:Combat_manager = null;
		
		public var last_area_tick:int;
		
		public var background_image_id:int;
		public var combat_image_id:int;
				
		public function Room(d:String = null, i:int = -1, descs:Array = null, conts:Array = null, e:Array = null, en:Array = null, sc:Array = null, ar:Area = null, ac:Array = null, amt:Array = null, act:Array = null, ea:Array = null, pd:Boolean = false):void {
			set_description(d);
			id = i;
			if(descs == null){
				descriptions = new Array();
			}else{
				descriptions = descs;
			}
			
			if(conts == null){
				contents = new Array();
			}else{
				var count:int = 0;
				for(count;count>conts.length;count++){
					var temp:Dynamic_object = conts[count];
					if(temp is Character){
						(temp as Character).new_location(this);
					}else{
						new_content(temp);
					}
				}
			}
			
			if(e == null){
				exits = new Array();
			}else{
				exits = e;
			}
			
			if(en == null){
				exit_names = new Array();
			}else{
				exit_names = en;
			}
			
			if(sc == null){
				static_contents = new Array();
			}else{
				static_contents = sc;
			}
			
			area = ar;
			
			if(ac == null){
				actions = new Array();
			}else{
				actions = ac;
			}
			
			if(amt == null){
				action_max_times = new Array();
			}else{
				action_max_times = amt;
			}
			
			if(act == null){
				action_current_num_times = new Array();
			}else{
				action_current_num_times = act;
			}
			
			if(ea == null){
				exit_actions = new Array();
			}else{
				exit_actions = ea;
			}
			
			player_discovered = pd;
			
			show_area_effects = false;
			
			discovered_difficulty = 10;
			sight_difficulty = 10;
			locate_difficulty = 10;
			
			template = null;
			
			last_tick = "";
			next_tick = "";
			last_area_tick = 0;
			background_image_id = -1;
			combat_image_id = -1;
			custom_name = "";
		}
		
		public function set_custom_name(s:String):void{
			custom_name = s;
		}
		
		public function set_background_img(i:int):void{
			background_image_id = i;
		}
		
		public function get_background_img():int{
			var ret:int = background_image_id;
			if(ret >= 0){
				return background_image_id;
			}else if(area != null){
				return area.get_background_img();
			}
			return ret;
		}
		
		public function set_combat_img(i:int):void{
			combat_image_id = i;
		}
		
		public function get_combat_img():int{
			var ret:int = combat_image_id;
			if(ret >= 0){
				return combat_image_id;
			}else{
				return get_background_img();
			}
		}
		
		public function set_area_effects():void{
			show_area_effects = !show_area_effects;
		}
		
		public function set_discovery_difficulty(i:int):void{
			discovered_difficulty = i;
		}
		
		public function set_sight_difficulty(i:int):void{
			sight_difficulty = i;
		}
		
		public function set_locate_difficulty(i:int):void{
			locate_difficulty = i;
		}
		
		public function get_discovery_difficulty():int{
			return discovered_difficulty;
		}
		
		public function get_sight_difficulty():int{
			return sight_difficulty;
		}
		
		public function get_locate_difficulty():int{
			return locate_difficulty;
		}
		
		public function get_last_tick():String{
			return last_tick;
		}
		
		public function set_last_tick(s:String):void{
			last_tick = next_tick + s;
			next_tick = "";
		}
		
		public function spread_reaction(c_effected:Character, c_acted:Character, i:int, k:Number):void{
			var count:int = 0;
			for(count;count<contents.length;count++){
				if(contents[count] is Character){
					var temp_char:Character = contents[count];
					if(temp_char != c_effected && temp_char != c_acted){
						temp_char.personality.determine_reaction_to_other(temp_char, c_effected, c_acted, i, k);
					}
				}
			}
		}
		
		public function get_random_character(c:Character = null):Character{
			var ret:Character = null;
			var tempArray:Array = new Array();
			var count:int = 0;
			for(count;count<contents.length;count++){
				if(contents[count] is Character){
					if(contents[count] != c){
						if(c != null){
							if(c.party == null){
								tempArray[tempArray.length] = contents[count];
							}else{
								if(!c.party.member_of(contents[count]))tempArray[tempArray.length] = contents[count];
							}
						}else{
							tempArray[tempArray.length] = contents[count];
						}
					}
				}
			}
			ret = tempArray[Math.round(Math.random()*(tempArray.length-1))];
			return ret;
		}
		
		public function get_character_count(c:Character = null):int{
			var ret:int = 0;
			var count:int = 0;
			for(count;count<contents.length;count++){
				if(contents[count] is Character){
					if(contents[count] != c){
						if(c != null){
							if(c.party == null){
								ret++;
							}else{
								if(!c.party.member_of(contents[count]))ret++;
							}
						}else{
							ret++;
						}
					}
				}
			}
			return ret;
		}
		
		public function get_exit_id(r:Room):int{
			var i:int = 0;
			for(i;i<exits.length;i++){
				if(exits[i] == r){
					return i;
				}
			}
			return -1;
		}
		
		public function set_template(t:Template_Room):void{
			template = t;	
		}
		
		public function get_template():Template_Room{
			return template;	
		}
		
		public function player_found():void{
			player_discovered = true;
			if(area != null)area.set_player_discovered();
		}
		
		public function found():Boolean{
			return player_discovered;
		}
		
		public function attached_to_other_area():Boolean{
			var ret:Boolean = false;
			var i:int = 0;
			for(i;i<exits.length;i++){
				if(exits[i].area != area) ret = true;
			}
			
			return ret;
		}
		
		public function add_exit_action(r:Room, a:Action):void{
			var i:int = 0;
			for (i;i<exits.length;i++){
				if(exits[i] == r){
					a.set_id(actions.length + i);
					exit_actions[i] = a;
				}
			}
		}
		
		public function get_room_description(c:Character = null):String{
			var output:String;
			var i:int;
			
			output =  "\n" + description + "\n" 
			
			for (i=0;i<static_contents.length;i++){
				if (static_contents[i] != null){
					output = output + static_contents[i].get_description();
					if (i == static_contents.length -1){
						output = output + "\n";
					}
				}
			}
			
			if(show_area_effects){
				output += area.get_outdoor_description();
			}
			
			for(i=0; i<descriptions.length;i++){
			 	while (output != output.replace("<s"+i+">","<a href=\"event:inspect,-1," + String(i) +"\"><i>")) output = output.replace("<s"+i+">","<a href=\"event:inspect,-1," + String(i) +"\"><i>");
				while (output != output.replace("</s"+i+">","</i></a>")) output = output.replace("</s"+i+">","</i></a>");
			}
						
			output +=  get_exits();
			
			if (contents.length > 0) output = output + "\nThe room contains: ";
			var content_string:String = "";
			var nothing:Boolean = false;
			for (i=0;i<contents.length;i++){
				
				if(contents[i] != null){
					if (contents[i] is Character){
						var temp:Character;
						temp = contents[i];
						
						if(temp == c)continue;
						if(c.party != null){
							if(c.party.member_of(temp))continue;
						}
						var already_in_combat:Boolean = false;
						if(cm != null){
							if(cm.get_init(temp) >= 0) already_in_combat = true;
							if(cm.get_init(c) >= 0) already_in_combat = false;
						}
						
						if((temp.get_aggresive(c)/*||c.get_aggresive(temp)*/) && c.get_combat_status() && temp.get_combat_status() && (temp.busy <= 0 || !already_in_combat)){
							var rand_enemy:int = c.location.get_content_id(c);
							var rand:int = temp.personality.determine_action(c, temp);
							if(rand >= 0){
								if(cm == null) cm = new Combat_manager();
								cm.add_participant(temp);
								cm.add_participant(c);
								c.set_busy();
								temp.set_busy();
								var dynamic_choice:int = -1;
								var chall_id:int = -1;
								var temp_action:Action = temp.get_attack_action(rand);
								if(temp_action.consequences[0] is Dynamic_Consequence && temp_action.consequences[0].consequence_list_type != Dynamic_Consequence.list_nolist){
									chall_id = 0;
									dynamic_choice = temp.personality.determine_dynamic(rand_enemy, rand, temp);
								}
								
								if(dynamic_choice == -1){
									output = "\n<a href=\"event:combat,"+c.location.get_content_id(temp)+","+rand+","+rand_enemy+"\"><i>" + temp.personality.get_name(c,temp) + " is attacking.</i></a>";
								}else{
									output = "\n<a href=\"event:combat,"+c.location.get_content_id(temp)+","+rand+","+rand_enemy+","+chall_id+","+dynamic_choice+"\"><i>" + temp.personality.get_name(c,temp) + " is attacking.</i></a>";
								}
								
								return output;
							}else{
								trace("(Room.get_room_description)That's odd... should be starting combat, but couldn't figure out an attack");
							}
						}
						
						if(cm != null && cm.get_init(temp) > -1 && cm.active_combat()){
							//character is part of combat... skip 'em
							continue;
						}else if(temp.party == null){
							
							if (nothing){
								content_string = content_string + ", ";
								//if(i == contents.length -3) output += " and";
							}
							
							content_string += "<a href=\"event:look," + String(i) +"\">" +temp.get_status(c) + "</a>";
						}else{
							if(temp.party.get_leader() == temp){
								
								if (nothing){
									content_string = content_string + ", ";
									//if(i == contents.length -3) output += " and";
								}
								
								content_string += temp.party.get_status(c);
							}else{
								continue;
							}
						}
					}else if(contents[i] is Item){
						var temp2:Item;
						temp2 = contents[i];
						if(content_string.indexOf(temp2.get_dropped_description()) >= 0){
							if(content_string.charAt(content_string.indexOf(temp2.get_dropped_description())-2) == "x"){
								var char_loc:int;
								char_loc = content_string.indexOf(temp2.get_dropped_description())-1;
								
								while(content_string.charAt(char_loc) != ">" && char_loc >= 0){
									char_loc--;
								}
								char_loc++;
								
								var item_count:int = int(content_string.substr(char_loc, content_string.indexOf(temp2.get_dropped_description())-2-char_loc));
								item_count ++;
								
								content_string = content_string.substr(0,char_loc) + item_count + "x " + content_string.substr(content_string.indexOf(temp2.get_dropped_description()),content_string.length - content_string.indexOf(temp2.get_dropped_description()));
							}else{
								content_string = content_string.substr(0,content_string.indexOf(temp2.get_dropped_description())) + "2x " + content_string.substr(content_string.indexOf(temp2.get_dropped_description()),content_string.length - content_string.indexOf(temp2.get_dropped_description()));
							}
						}else{
							if (nothing){
								content_string = content_string + ", ";
								//if(i == contents.length -3) output += " and";
							}
							content_string = content_string + "<a href=\"event:pick_up," + String(i) +"\">" + temp2.get_dropped_description() + "</a>";
						}
					}
					nothing = true;
				}
			}
			
			if(cm != null && cm.active_combat()){
				if (nothing){
					content_string = cm.get_description(c)  + ", " + content_string;
					//if(i == contents.length -3) output += " and";
				}else{
					nothing = true;
					content_string = cm.get_description(c) + content_string;
				}
			}
			
			if (!nothing){
				content_string += "Nothing!";
			}else{
				content_string += ".";
			}
			
			output += content_string;
			
			var j:int = 0;
			for (j;j<actions.length;j++){
				 if(actions[j] != null) {					
					if (action_max_times[j] > action_current_num_times[j] || action_max_times[j] == -1){
						output = output.replace("<a"+j+">","<a href=\"event:action,-1," + String(j) +"\"><i>"+actions[j].get_name() +"</i></a>"); 						
					}else{
						output = output.replace("<a"+j+">",actions[j].get_name()); 
					}
				 }
			 }
						
			return output;
		}
		
		public function add_action(a:Action, num_times:int = -1):void{
			a.set_id(actions.length);
			actions[actions.length] = a;
			action_max_times[action_max_times.length] = num_times;
			action_current_num_times[action_current_num_times.length] = 0;
			
			var i:int = 0;
			for(i;i<exit_actions.length;i++){
				if(exit_actions[i] != null)exit_actions[i].set_id(i + actions.length);
			}
		}
		
		public function get_action(i:int):Action{
			if(i>=0 && i< actions.length){
				action_current_num_times[i]++;
				return actions[i];
			}else if(i>=0){
				return exit_actions[i - actions.length];
			}
			return null;
		}
		
		public function fire_challenge(action_id:int, challenge_id:int, char:Character, dynamic_choice:Array = null):String{
			var ret:String = "";
			var temp_action:Action = get_action(action_id);
			if(temp_action != null){
				ret = temp_action.challenge(challenge_id,char,null,0,dynamic_choice);
				if(ret.indexOf("</replace>") >= 0){
				   temp_action = temp_action.consequences[challenge_id].replace_action;
				   if(temp_action != null){
					   actions[action_id] = temp_action;
				   }
				   
				   while(ret.indexOf("</replace>") >= 0)ret = ret.replace("</replace>", "");
				}
			}
			return ret;
		}
		
		public function get_content_id(o:Dynamic_object):int{
			var i:int = 0;
			for (i;i<contents.length;i++){
				if (contents[i] == o) return i;
			}
			return -1;
		}
		
		public function get_content_sub_description(i:int, k:int):String{
			var s:String = "";
			if (i == -1 && k >= 0 && k < descriptions.length){
				s = get_sub_description(k,i);
				var j:int = 0;
				for (j;j<actions.length;j++){
					 if(actions[j] != null){
						 if (action_max_times[j] > action_current_num_times[j] || action_max_times[j] == -1){
							s = s.replace("<a"+j+">","<a href=\"event:action,-1," + String(j) +"\"><i>"+actions[j].get_name() +"</i></a>"); 
						 }else{
							 s = s.replace("<a"+j+">",actions[j].get_name());
						 }
					 }
				 }
				 return s;
			}
			
			
			if (static_contents.length > i && i >= 0) return static_contents[i].get_sub_description(k,i);
			
			return s;
			
		}
		
		public function get_content(i:int):Dynamic_object{
			if (contents.length > i && i >= 0) return contents[i];
			return null;
		}
		
		public function remove_exit(e:Room):void{
			var i:int = 0;
			for(i;i<exits.length;i++){
				if(exits[i] == e){
					exit_names = exit_names.slice(0,i).concat(exit_names.slice(i+1,exit_names.length));
					exits = exits.slice(0,i).concat(exits.slice(i+1,exits.length));
					exit_actions = exit_actions.slice(0,i).concat(exit_actions.slice(i+1,exit_actions.length));
					break;
				}
			}
		}
		
		public function remove_static_contents(i:int):void{
			static_contents = static_contents.slice(0, i).concat(static_contents.slice(i+1, static_contents.length));
			
			var count:int = 0;
			for(count;count<static_contents.length;count++){
				static_contents[count].set_id(count);
			}
		}
		
		public function new_exit(e:Room, d:String = null):int{
			var i:int = 0;
			var k:int = 0;
			var dir_list:Array = new Array("North", "East", "West", "North-East", "North-West", "South-West",  "South-East", "South");
			var not_dir_list:Array = new Array("South", "West", "East", "South-West", "South-East", "North-East", "North-West", "North");
			
			if(e == null) return -1;
			
			if (d == null){
				for (i=0;i<dir_list.length;i++){
					var b:Boolean = false;
					k = 0;
					for (k;k<exit_names.length;k++){
						if (dir_list[i] == exit_names[k]){
							b = true;
							break;
						}
					}
					if (b) continue;
					
					if (e.new_exit(this,not_dir_list[i]) != -1){
						exit_names[exit_names.length] = dir_list[i];
						exits[exits.length] = e;
						if(template != null && template.exit_actions[0] != null){
							add_exit_action(e, Area.generate_filler_exit_action(null, e, dir_list[i], template.exit_actions[0], template.exit_challenges[0], template.exit_consequences[0]));
						}
						break;
					}
				}
			}else{
				for (i=0;i<exit_names.length;i++){
					if (d == exit_names[i] || e == exits[i]) return -1;
				}
				
				i = 0;
				for(i;i<=exit_names.length;i++){
					if(exit_names[i] == null){
						exit_names[i] = d;
						exits[i] = e;
						if(template != null && template.exit_actions[0] != null){
							add_exit_action(e, Area.generate_filler_exit_action(null, e, d, template.exit_actions[0], template.exit_challenges[0], template.exit_consequences[0]));
						}
						break;
					}
					
					if(arbitrary_value_generator(d) < arbitrary_value_generator(exit_names[i])){
						exit_names = exit_names.slice(0,i).concat(d).concat(exit_names.slice(i,exit_names.length));
						exits = exits.slice(0,i).concat(e).concat(exits.slice(i,exits.length));
						exit_actions = exit_actions.slice(0,i).concat(null).concat(exit_actions.slice(i,exit_actions.length));
						if(template != null && template.exit_actions[0] != null){
							add_exit_action(e, Area.generate_filler_exit_action(null, e, d, template.exit_actions[0], template.exit_challenges[0], template.exit_consequences[0]));
						}
						k = 0;
						for(k;k<exit_actions.length;k++){
							if(exit_actions[k] != null)exit_actions[k].set_id(k + actions.length);
						}
						break;
					}
					
				}				
			}
			
			if(e == this) trace("(Room.new_exit)Linked Room to self");
									
			return 1;
		}
		
		public function arbitrary_value_generator(s:String):int{
			if(s == "North"){
				return 0;
			}else if(s == "North-East"){
				return 1;
			}else if(s == "East"){
				return 2;
			}else if(s == "South-East"){
				return 3;
			}else if(s == "South"){
				return 4;
			}else if(s == "South-West"){
				return 5;
			}else if(s == "West"){
				return 6;
			}else if(s == "North-West"){
				return 7;
			}else if(s == "Up"){
				return 8;
			}else if(s == "Down"){
				return 9;
			}else{
				return exit_names.length;
			}
		}
		
		public function new_content(o:Dynamic_object, prev_room:Room = null):void{
			var i:int = 0;
			for(i;i<=contents.length;i++){
				if(contents[i] == null){
					contents[i] = o;
					break;
				}
			}
			
			if(o is Character){
				var temp_char:Character = o as Character;
				var from_name:String = "somewhere";
				
				if(prev_room != null){
					
					from_name = get_exit_name(prev_room);
					if(from_name != "somewhere")from_name = "the "+ from_name;
					
					if(prev_room.last_area_tick > last_area_tick){
						next_tick += temp_char.get_name() + " arrives from "+from_name+".\n";
					}else{
						set_last_tick(get_last_tick() + temp_char.get_name() + " arrives from "+from_name+".\n");
					}
				}else{
					set_last_tick(get_last_tick() + temp_char.get_name() + " arrives from "+from_name+".\n");
				}
			}
		}
		
		public function get_exit_name(r:Room):String{
			var i:int = 0;
			for(i;i<exits.length;i++){
				if(exits[i] == r) return exit_names[i];
			}
			
			return "somewhere";
		}
		
		public function remove_content(o:Dynamic_object):void{
			var i:int;
			//var found:Boolean;
			//found = false;
			for (i=0;i<contents.length;i++){
				if(contents[i]==o){
					contents[i] = null;
					//if(i == contents.length - 1)found = true;
					break;
				}
			}
			//if(found) contents = contents.slice(0,contents.length-1);
		}
		
		public function item_loss(i:int):Item{
			if( 0 <= i && i < contents.length){
				
				if (contents[i] is Item){
					var item:Item = contents[i];
					remove_content(contents[i]);
					return item;
				}
			}
			return null;
		}
		
		public function open(i:int):String{
			if( 0 <= i && i < static_contents.length){
				
				if (static_contents[i] is Container){
					var cont:Container = static_contents[i];
					return cont.open();
				}
			}
			return "";
						
		}
		
		public function new_static_content(o:Static_object):void{
			//lets make sure we don't already have this particular object...
			var found:Boolean = false;
			var i:int = 0;
			for(i;i<static_contents.length;i++){
				if(static_contents[i] == o){
					found = true;
					break;
				}
			}
			
			if(!found){
				o.set_id(static_contents.length);
				static_contents[static_contents.length] = o;
			}
			
		}
		
		public function take_from_sub_content(i:int,k:int):Item{
			if( 0 <= i && i < static_contents.length && static_contents[i] is Container){
				var temp:Container = static_contents[i];
				return temp.item_loss(k);
			}
			return null;
		}
		
		public function get_exit_by_name(s:String):int{
			var i:int = 0;
			for(i;i<exit_names.length;i++){
				if(exit_names[i] == s) return i;
			}
			return -1;
		}
		
		public function get_exits():String{
			var i:int;
			var output:String;
			
			output = "There are " + exits.length + " visible exits: ";
			
			for (i=0;i<exits.length;i++){
				
				output = output + "<a href=\"event:go_to_new_room," + String(i) +"\"><font color='#4CC417'>"+ exit_names[i]+"</font></a>";

				if (i<exits.length - 1){
					output = output + ",";
				}
				output = output + " ";
			}


			return output;
		}
		
		public function get_exit(i:int):Room{
			if(i<exits.length && i >= 0) return exits[i];
			return null;
		}
		
		public function get_exit_direction(i:int):String{
			if(i<exit_names.length && i >= 0) return exit_names[i];
			return "";
		}
		
		override public function get_sub_description(j:int, k:int):String{
			var ret:String = "";
			var i:int;
			
			if (j < descriptions.length && j >= 0){
				ret = descriptions[j];
			} else {
				return ret;
			}
			
			for(i=0; i<descriptions.length;i++){
			 	ret = ret.replace("<s"+i+">","<a href=\"event:inspect,-1," + String(i) +"\"><i>");
				ret = ret.replace("</s"+i+">","</i></a>");
			}
			
			return ret;
		}

	}
	
}
