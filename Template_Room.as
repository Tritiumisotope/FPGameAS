package  {
	
	public class Template_Room extends Static_object{

		public var container:Array;
		public var container_chance:Array;
		public var action_objects:Array;
		public var action_chance:Array;
		public var item:Array;
		public var item_chance:Array;
		public var characters:Array;
		public var characters_chance:Array;
		public var parties:Array;
		public var parties_chance:Array;
		public var other_rooms:Array;
		public var no_connect_template:Array;
		public var unconnected:Boolean;
		public var max_exits:int;
		public var max_same_exits:int;
		public var same_exit_offset:int;
		public var map_room_colour:uint;
		public var hidden_exit_action:Action;
		public var hidden_exit_challenge:Challenge;
		public var hidden_exit_consequence:Consequence;
		public var prop_description:String;
		public var prop_desc_dist:int;
		public var prop_to_same_template:Boolean;
		public var filler_connect:Boolean;
		public var no_area_exit:Boolean;
		public var show_area_effects:Boolean;
		public var discovered_difficulty:int;
		public var sight_difficulty:int;
		public var locate_difficulty:int;
		public var background_image_id:int;
		public var combat_image_id:int;
		public var room_actions:Array;
		public var exit_actions:Array;
		public var exit_challenges:Array;
		public var exit_consequences:Array;		
				
		public function Template_Room(d:String = null, i:int = -1, descs:Array = null, c:Array = null, cc:Array = null, it:Array = null, itc:Array = null, ch:Array = null, chc:Array = null):void {
			set_description(d);
			id = i;
			if(descs == null){
				descriptions = new Array();
			}else{
				descriptions = descs;
			}
			if(c == null){
				container = new Array();
			}else{
				container = c;
			}
			if(cc == null){
				container_chance = new Array();
			}else{
				container_chance = cc;
			}
			if(it == null){
				item = new Array();
			}else{
				item = it;
			}
			if(itc == null){
				item_chance = new Array();
			}else{
				item_chance = itc;
			}
			if(ch == null){
				characters = new Array();
			}else{
				characters = ch;
			}
			if(chc == null){
				characters_chance = new Array();
			}else{
				characters_chance = chc;
			}
			
			no_connect_template = new Array();
			parties = new Array();
			parties_chance = new Array();
			other_rooms = new Array();
			
			map_room_colour = 0xFFFFFF;
			max_same_exits = -1;
			max_exits = -1;
			same_exit_offset = 0;
			hidden_exit_action = null;
			hidden_exit_challenge = null;
			hidden_exit_consequence = null;
			prop_description = "";
			prop_desc_dist = 0;
			prop_to_same_template = false;
			show_area_effects = false;
			filler_connect = true;
			no_area_exit = false;
			room_actions = new Array();
			exit_actions = new Array();
			exit_challenges = new Array();
			exit_consequences = new Array();
			
			discovered_difficulty = 10;
			sight_difficulty = 10;
			locate_difficulty = 10;
			background_image_id = -1;
			combat_image_id = -1;
			
			unconnected = false;
			
			action_objects  = new Array();
			action_chance  = new Array();
		}
		
		public function set_background_img(i:int):void{
			background_image_id = i;
		}
		
		public function set_combat_img(i:int):void{
			combat_image_id = i;
		}
		
		public function set_area_effects():void{
			show_area_effects = !show_area_effects;
		}
		
		public function set_unconnected():void{
			unconnected = !unconnected;
		}
		
		public function add_action(a:Action):void{
			room_actions[room_actions.length] = a;
		}
		
		public function add_exit_action(ea:Action, echall:Challenge, econs:Consequence):void{
			exit_actions[exit_actions.length] = ea;
			exit_challenges[exit_challenges.length] = echall;
			exit_consequences[exit_consequences.length] = econs;
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
		
		public function set_no_area_exit():void{
			no_area_exit = !no_area_exit;
		}
		
		public function get_no_area_exit():Boolean{
			return no_area_exit;
		}
		
		public function add_no_connect_template(t:Template_Room):void{
			no_connect_template[no_connect_template.length] = t;
		}
		
		public function check_template_connect(t:Template_Room):Boolean{
			var ret:Boolean = true;
			var i:int = 0;
			for(i;i<no_connect_template.length;i++){
				if(t == no_connect_template[i]){
					ret = false;
					break;
				}
			}
			
			return ret;
		}
		
		public function set_map_room_colour(i:uint):void{
			map_room_colour = i;
		}
		
		public function get_map_room_colour():uint{
			return map_room_colour;
		}
		
		public function set_filler_connect():void{
			filler_connect = !filler_connect;
		}
		
		public function get_filler_connect():Boolean{
			return filler_connect;
		}
		
		public function set_propagating_to_template():void{
			prop_to_same_template = !prop_to_same_template;
		}
		
		public function get_propagating_to_template():Boolean{
			return prop_to_same_template;
		}
		
		public function set_propagating_description_distance(i:int):void{
			prop_desc_dist = i;
		}
		
		public function get_propagating_description_distance():int{
			return prop_desc_dist;
		}
		
		public function set_propagating_description(s:String):void{
			prop_description = s;
			if(prop_desc_dist < 1) prop_desc_dist = 1;
		}
		
		public function get_propagating_description():String{
			return prop_description;
		}
		
		
		public function get_same_exit_offset():int{
			return same_exit_offset;
		}
		
		public function set_same_exit_offset(i:int):void{
			same_exit_offset = i;
		}
		
		public function get_max_same_exits():int{
			return max_same_exits;
		}
		
		public function set_max_same_exits(i:int):void{
			max_same_exits = i;
		}
		
		public function get_max_exits():int{
			return max_exits;
		}
		
		public function set_max_exits(i:int):void{
			max_exits = i;
		}
		
		public function get_hidden_exit_action():Action{
			return hidden_exit_action;
		}
		
		public function set_hidden_exit_action(a:Action, ch:Challenge, con:Consequence):void{
			hidden_exit_action = a;
			hidden_exit_challenge = ch;
			hidden_exit_consequence = con;
		}
		
		public function get_avail_exits(r:Room):Array{
			var ret_arr:Array = new Array("North", "North-East", "East", "South-East", "South", "South-West", "West", "North-West");
			var i:int = 0;
			for(i;i<r.exit_names.length;i++){
				var k:int = 0;
				for(k;k<ret_arr.length;k++){
					if(r.exit_names[i] == ret_arr[k]){
						if(k-same_exit_offset < 0 || k+1+same_exit_offset >= ret_arr.length){
							if(k-same_exit_offset < 0){
								ret_arr = ret_arr.slice(k+1+same_exit_offset,ret_arr.length - k-same_exit_offset);
							}
							if(k+1+same_exit_offset >= ret_arr.length){
								ret_arr = ret_arr.slice(k+1+same_exit_offset - ret_arr.length,k-same_exit_offset);
							}
						}else{
							ret_arr = ret_arr.slice(0,k-same_exit_offset).concat(ret_arr.slice(k+1+same_exit_offset,ret_arr.length));
						}
						break;
					}
				}
				if(ret_arr.length<=0) break;
			}
			return ret_arr;
		}
		
		public function add_other_room(t:Template_Room):void{
			other_rooms[other_rooms.length] = t;
		}
		
		public function add_container(c:Container, n:Number = 0.3):void{
			container[container.length] = c;
			container_chance[container_chance.length] = n;
		}
		
		public function add_action_object(ao:Action_object, n:Number = 0.3):void{
			action_objects[action_objects.length]  = ao;
			action_chance [action_chance.length] = n;
		}
		
		public function add_item(c:Item, n:Number = 0.3):void{
			item[item.length] = c;
			item_chance[item_chance.length] = n;
		}
		
		public function add_character(c:Character_template, n:Number = 0.3):void{
			characters[characters.length] = c;
			characters_chance[characters_chance.length] = n;
		}
		
		public function add_character_list(c_list:Array, n:Number = 0.3):void{
			characters[characters.length] = c_list;
			characters_chance[characters_chance.length] = n;
		}
		
		public function add_party(party:Array, n:Number = 0.3):void{
			parties[characters.length] = party;
			parties_chance[characters_chance.length] = n;
		}
		
		public function spawn_creatures(r:Room, level_adjust:int = 0):void{
			var family_array:Array = new Array();
			var clonech1:Character;
			var k:int = 0;
			for(k;k<characters.length;k++){
				if (Math.random() <= characters_chance[k] && characters[k] != null){
					if(characters[k] is Character_template){
						clonech1 = characters[k].gen_char(level_adjust, r);
					}else{
						var rand_char:int = Math.round(Math.random()*(characters[k].length-1));
						clonech1 = characters[k][rand_char].gen_char(level_adjust, r);
					}
					clonech1.new_location(r, true);
					family_array[family_array.length] = clonech1;
				}
			}
			
			k = 1;//Looking for a male/female pair
			for(k;k<family_array.length;k++){
				if(family_array[k].sex != family_array[0].sex){
					family_array[k].impregnate(family_array[0],true);
					family_array[0].impregnate(family_array[k],true);
					family_array[k].surname = family_array[0].surname;
					family_array[k].personality.new_relationship(family_array[0], family_array[k], Relationship.initial_reaction_change, Personality.true_love, Relationship.married_type);
					family_array[0].personality.new_relationship(family_array[k], family_array[0], Relationship.initial_reaction_change, Personality.true_love, Relationship.married_type);
					break;
				}
			}
			
			k = 0;
			for(k;k<parties.length;k++){
				if (Math.random() <= parties_chance[k] && parties[k] != null){
					var clone_pty:Party = new Party();
					//parties[k].clone();
					var i:int = 0;
					for(i;i<parties[k].length;i++){
						clonech1 = parties[k][i].gen_char(level_adjust, r);
						clone_pty.add_member(clonech1);
						clonech1.set_party(clone_pty);
					}
					i = 0;
					for(i;i<clone_pty.members.length;i++){
						clone_pty.members[i].new_location(r, true);
					}
					
				}
				
			}
		}
		
		public function make_room(level_adjust:int = 0):Room{
			var new_room:Room = new Room(description);
			new_room.set_template(this);
			var k:int = 0;
			for(k;k<descriptions.length;k++){
				new_room.add_sub_descriptions(descriptions[k]);
			}
			k = 0;
			for(k;k<room_actions.length;k++){
				new_room.add_action(room_actions[k]);
			}
			k = 0;
			for(k;k<container.length;k++){
				if (Math.random() <= container_chance[k] && container[k] != null){
					var cloneCont1:Container = new Container();
					cloneCont1.clone(container[k],Math.abs(level_adjust));
					new_room.new_static_content(cloneCont1);
				}
			}
			k = 0;
			for(k;k<action_objects.length;k++){
				if(Math.random() <= action_chance[k] && action_objects[k] != null){
					var cloneAction:Action_object = new Action_object();
					cloneAction.clone(action_objects[k]);
					new_room.new_static_content(cloneAction);
				}				
			}
			k = 0;
			for(k;k<item.length;k++){
				if (Math.random() <= item_chance[k] && item[k] != null){
					var cloneit1:Item = item[k].clone();
					new_room.new_content(cloneit1);
				}
			}
			spawn_creatures(new_room,level_adjust);
			k = 0;
			for(k;k<other_rooms.length;k++){
				if(other_rooms[k] != null){
					var temp_room:Room = other_rooms[k].make_room();
					
					//get the new direction
					var rand_x:int = 0;
					var rand_y:int = 0;
					var rand_z:int = 0;
					
					while(rand_x == 0 && rand_y == 0 && rand_z == 0){
						rand_x = Math.round(Math.random()*2) - 1;
						rand_y = Math.round(Math.random()*2) - 1;
						//rand_z = Math.round(Math.random()*2) - 1;
					}
					
					var to_name:String = Area.get_direction(0, 0, 0, rand_x, rand_y, rand_z);
					var from_name:String = Area.get_direction(rand_x, rand_y, rand_z, 0, 0, 0);
					
					if(new_room.new_exit(temp_room, to_name) == 1){
						temp_room.new_exit(new_room, from_name);
					}else{
						k--;
					}
				}
			}
				
			new_room.set_discovery_difficulty(discovered_difficulty);
		
			new_room.set_sight_difficulty(sight_difficulty);
			
			new_room.set_locate_difficulty(locate_difficulty);
			
			if(show_area_effects)new_room.set_area_effects();
			
			new_room.set_background_img(background_image_id);
			
			new_room.set_combat_img(combat_image_id);
			
			return new_room;
		}

	}
	
}
