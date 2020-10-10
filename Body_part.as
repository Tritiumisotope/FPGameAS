package  {
	import flash.display.Sprite;
	import flash.display.Bitmap;
		
	public class Body_part extends Dynamic_object{
		public static const display_front:int = 0;
		public static const display_bottom:int = 1;
		public static const display_top:int = 2;
		public static const display_left:int = 3;
		public static const display_right:int = 4;
		public static const display_bottom_left:int = 5;
		public static const display_bottom_right:int = 6;
		public static const display_bottom_back:int = 7;
		public static const display_back:int = 8;
		public static const display_top_back:int = 9;
		public static const display_mid_top:int = 10;
		
		//multiple descriptions based on stats?
		public var part_id:int;
		public var race:Race;
		public var description:String;
		public var pair_name:String;
		public var pair_description:String;
		public var stat_id:Array;
		public var stat_description:Array;
		public var equip:Array;
		public var hold:Weapon;
		public var hold_slots:int;
		public var get_pregnant:Boolean;
		public var critical_part:Boolean;
		public var actions:Array;
		public var attacks:Array;
		public var covered_by:Array;
		public var part_state:Body_part_state;
		public var current_part_state:String;
		public var part_upkeep:Array;
		public var part_count:int;
		
		public var can_connect_to:Array;
		public var connected_to:Array;
		
		public var connect_direction:int;
		
		public var display_length_stat_id:int;
		public var display_length_mod:Number;
		
		public var display_width_stat_id:int;
		public var display_width_mod:Number;
		public var display_width_stat_id2:int;
		public var display_width_mod2:Number;
		
		public var mirror_display:Boolean;
		
		public function Body_part():void{
			name = "";
			pair_name = "";
			description = "";
			pair_description = "";
			current_part_state = "";
			stat_id = new Array();
			stat_description = new Array();
			race = null;
			hold = null;
			hold_slots = 0;
			actions = new Array();
			attacks = new Array();
			equip = new Array();
			covered_by = new Array();
			get_pregnant = false;
			critical_part = false;
			part_upkeep = new Array();
			part_count = 0;
			
			can_connect_to = new Array();
			connected_to = new Array();
			
			connect_direction = 0;
			display_length_stat_id = -1;
			display_length_mod = 1;
			
			display_width_stat_id = -1;
			display_width_mod = 1;
			display_width_stat_id2 = -1;
			display_width_mod2 = 1;
			
			mirror_display = false;
		}
		
		public function set_mirror_display():void{
			mirror_display = !mirror_display;
		}
		
		public function get_part_image():Array{
			var ret:Array = null;
						
			if(race.get_part_image(part_id) >= 0){
				ret = new Array();
				ret[ret.length] = FPalace_helper.get_image_by_id(race.get_part_image(part_id));
			}
						
			var i:int = 0;
			for(i;i<covered_by.length;i++){
				var image_id:int = covered_by[i].get_part_image(part_id);
				if(image_id >=0){
					var temp_bmp:Bitmap = FPalace_helper.get_image_by_id(image_id);
					if(ret == null)ret = new Array();
										
					ret[ret.length] = temp_bmp;
				}else if(image_id == Equipment.hide_part){
					return new Array();
				}
			}
			
			return ret;
		}
		
		public function set_display_length_stat(stat_id:int):void{
			display_length_stat_id = stat_id;
		}
		
		public function set_display_length_mod(i:Number):void{
			display_length_mod = i;
		}
		
		public function set_display_width_stat(stat_id:int):void{
			display_width_stat_id = stat_id;
		}
		
		public function set_display_width_mod(i:Number):void{
			display_width_mod = i;
		}
		
		public function set_display_width2_stat(stat_id:int):void{
			display_width_stat_id2 = stat_id;
		}
		
		public function set_display_width2_mod(i:Number):void{
			display_width_mod2 = i;
		}
		
		public function set_display_direction(i:int):void{
			connect_direction = i;
		}
		
		public function new_connect_slot(slot_id:int):void{
			can_connect_to[can_connect_to.length] = slot_id;
		}
		
		public function connect_to_part(bp:Body_part, good_on_my_end:Boolean = false, force_connect:Boolean = false):Boolean{
			var ret:Boolean = false;
			if(bp == this)return ret;
			var i:int = 0;
			for(i;i<can_connect_to.length;i++){
				if(bp.get_part_id() == can_connect_to[i] && (connected_to[i] == null || force_connect)){
					if(good_on_my_end){
						ret = true;
					}else{
						ret = bp.connect_to_part(this, true, force_connect);
					}
					if(ret){
						if(connected_to[i] == null)connected_to[i] = new Array();
						connected_to[i][connected_to[i].length] = bp;
						break;
					}
				}
			}
			
			return ret;
		}
		
		public function remove_part_connection(bp:Body_part):void{
			if(bp != null){
				var i:int = 0;
				for(i;i<=connected_to.length;i++){
					if(connected_to[i] != null){
						var j:int = 0;
						for(j;j<connected_to[i].length;j++){
							if(connected_to[i][j] == bp){
								connected_to[i] = connected_to[i].slice(0,j).concat(connected_to[i].slice(j+1,connected_to[i].length));
								if(connected_to[i].length == 0)connected_to[i] = null;
								break;
							}
						}
					}
				}
			}			
		}
		
		override public function get_name():String{
			var ret:String = name;
			if(part_count == 0){
				
			}else if(part_count == 1){
				ret = (part_count) + "st " + name;
			}else if(part_count == 2){
				ret = (part_count) + "nd " + name;
			}else if(part_count == 3){
				ret = (part_count) + "rd " + name;
			}else{
				ret = (part_count) + "th " + name;
			}
			
			return ret;
		}
		
		public function get_pair_name():String{
			var ret:String = pair_name;
			if(part_count == 0){
				
			}else if(part_count == 1){
				ret = (part_count) + "st " + pair_name;
			}else if(part_count == 2){
				ret = (part_count) + "nd " + pair_name;
			}else if(part_count == 3){
				ret = (part_count) + "rd " + pair_name;
			}else{
				ret = (part_count) + "th " + pair_name;
			}
			
			return ret;
		}
		
		public function set_part_count(i:int):void{
			part_count = i;			
		}
		
		public function set_pair_name(s:String):void{
			pair_name = s;
		}
		
		public function crit_part():Boolean{
			return critical_part;
		}
		
		public function set_crit_part():void{
			critical_part = !critical_part;
		}
		
		public function get_incap_stat_ids(c:Character):Array{
			var ret:Array = new Array();
			var i:int = 0;
			for(i;i<stat_description.length;i++){
				var ps:int = stat_description[i].check_combat_status(c, this);
				if(ps <= Stat.status_confired_incapacitated){
					ret[ret.length] = stat_description[i].get_id();
				}
			}
			return ret;
		}
		
		public function check_combat_status(c:Character):int{
			var ret:int = 1;//everything is a-ok
			//0 can't move, but still alive
			//-1 somebody killed me
			var i:int = 0;
			for(i;i<stat_description.length;i++){
				var ps:int = stat_description[i].check_combat_status(c, this);
				if(ret > ps)ret = ps;
			}
			return ret;
		}
		
		public function check_overworld_status(c:Character):int{
			var ret:int = 1;//everything is a-ok
			//0 can't move, but still alive
			//-1 somebody killed me
			var i:int = 0;
			for(i;i<stat_description.length;i++){
				var ps:int = stat_description[i].check_overworld_status(c, this);
				if(ret > ps)ret = ps;
			}
			return ret;
		}
		
		public function get_combat_status(c:Character):String{
			var ret:String = "";
			var i:int = 0;
			for(i;i<stat_description.length;i++){
				var ps:int = stat_description[i].check_combat_status(c, this);
				if(ps <= Stat.status_confired_incapacitated){
					ret += stat_description[i].get_combat_status(c, this);
				}
			}
			return ret;
		}
		
		public function get_overworld_status(c:Character):String{
			var ret:String = "";
			var i:int = 0;
			for(i;i<stat_description.length;i++){
				var ps:int = stat_description[i].check_overworld_status(c, this);
				if(ps <= Stat.status_confired_incapacitated){
					ret += stat_description[i].get_overworld_status(c, this);
				}
			}
			return ret;
		}
		
		public function add_upkeep(tf:Tick_Effect):void{
			part_upkeep[part_upkeep.length] = tf;
		}
		
		public function set_get_pregnant():void{
			get_pregnant = !get_pregnant;
		}
		
		public function gets_pregnant():Boolean{
			return get_pregnant;
		}
		
		public function state_check(c:Character):String{
			if (part_state != null){
				var new_part_state:String = part_state.get_state_description(c, this);
				if(current_part_state == new_part_state)return "";
				if(new_part_state != "")current_part_state = new_part_state;
				return new_part_state;
			}
			
			return "";
		}
		
		public function set_part_state(p:Body_part_state):void{
			part_state = p;
		}
		
		
		public function add_description(s:String):void{
			description = s;
		}
		
		public function add_pair_description(s:String):void{
			pair_description = s;
		}
		
		public function set_part_id(i:int):void{
			part_id = i;
		}
		
		public function get_part_id():int{
			return part_id;
		}
		
		public function get_perception_difficulty(c:Character):int{
			var ret:int = 0;
			var i:int = 0;
			for(i;i<covered_by.length;i++){
				ret += covered_by[i].covered_difficulty(c, part_id, this);				
			}
			
			return ret;
		}
		
		private function get_covered_desc(c:Character):String{
			var ret:String = null;
			if(covered_by[covered_by.length -1] != null) {
				var cover_equip:Equipment = covered_by[covered_by.length -1];
				if(cover_equip.show_other_cover() && covered_by[covered_by.length -2] != null){
					ret = covered_by[covered_by.length -2].covered_description(c, part_id,this) + cover_equip.covered_description(c, part_id,this) + stat_descriptions(c,1);
				}else{
					ret = cover_equip.covered_description(c, part_id,this) + stat_descriptions(c,1);
				}
				
			}
			return ret;
		}
		
		public function pair_appearance(other_bp:Body_part, c:Character):String{
			var ret:String = "";
			if(pair_description != ""){
				ret = pair_description;
			}
			
			var cover:String = get_covered_desc(c);
			var other_cover:String = other_bp.get_covered_desc(c);
			if(cover != null){
				if(other_cover != cover){
					while(cover.indexOf("</bpn>") >= 0)cover = cover.replace("</bpn>", get_name());
					if(other_cover != null){
						while(other_cover.indexOf("</bpn>") >= 0)other_cover = other_cover.replace("</bpn>", other_bp.get_name());
						ret = cover + other_cover;
					}else{
						ret += cover;
					}
				}else{
					ret = cover;
					while(ret.indexOf("</bpn>") >= 0)ret = ret.replace("</bpn>", get_pair_name());
				}
			}else if(other_cover != null){
				trace("(Body_part.pair_appearance)Should be outputing the other parts cover I think... it actually has some. Ignoring cover instead.");
			}
			
			if(other_bp.stat_descriptions(c) == stat_descriptions(c)){
				ret += stat_descriptions(c);
				while(ret.indexOf("</bpn>") >= 0)ret = ret.replace("</bpn>", get_pair_name());
			}else if(other_bp.stat_descriptions(c) != "" || stat_descriptions(c) != ""){
				ret += stat_descriptions(c);
				while(ret.indexOf("</bpn>") >= 0)ret = ret.replace("</bpn>", get_name());
				ret += other_bp.stat_descriptions(c);
				while(ret.indexOf("</bpn>") >= 0)ret = ret.replace("</bpn>", other_bp.get_name());
			}
			
			if(hold != null){
				if(other_bp.hold != null){
					if(other_bp.hold == hold){
						ret += "</pronoun> is holding a " + hold.get_name() + " in </noun> </bpn>. ";
						while(ret.indexOf("</bpn>") >= 0)ret = ret.replace("</bpn>", get_pair_name());
					}else{
						ret += "</pronoun> is holding a " + hold.get_name() + " in </noun> </bpn>. ";
						while(ret.indexOf("</bpn>") >= 0)ret = ret.replace("</bpn>", get_name());	
						ret += "</pronoun> is holding a " + other_bp.hold.get_name() + " in </noun> </bpn>. ";
						while(ret.indexOf("</bpn>") >= 0)ret = ret.replace("</bpn>", other_bp.get_name());
					}
				}else{
					ret += "</pronoun> is holding a " + hold.get_name() + " in </noun> </bpn>. ";
					while(ret.indexOf("</bpn>") >= 0)ret = ret.replace("</bpn>", get_name());
				}
			}else if(other_bp.hold != null){
				ret += "</pronoun> is holding a " + other_bp.hold.get_name() + " in </noun> </bpn>. ";
				while(ret.indexOf("</bpn>") >= 0)ret = ret.replace("</bpn>", other_bp.get_name());
			}
			
			
			if(part_state != null && covered_by[covered_by.length -1] == null && other_bp.part_state != null && other_bp.covered_by[covered_by.length -1] == null){
				trace("(Body_part.pair_appearance)Should be outputing some sort of paired part state. Doing nothing.");
			}else{
				if(part_state != null && covered_by[covered_by.length -1] == null){
					if(part_state.get_current_state_description(c, this) != ""){
						ret += part_state.get_current_state_description(c, this);
						while(ret.indexOf("</bpn>") >= 0)ret = ret.replace("</bpn>", get_name());
					}
				}
				if(other_bp.part_state != null && other_bp.covered_by[covered_by.length -1] == null){
					if(other_bp.part_state.get_current_state_description(c, this) != ""){
						ret += other_bp.part_state.get_current_state_description(c, this);
						while(ret.indexOf("</bpn>") >= 0)ret = ret.replace("</bpn>", other_bp.get_name());
					}
				}
			}
			
			if(race != null){
				while(ret.indexOf("</r>") >= 0)ret = ret.replace("</r>", race.get_description(part_id, this));
				while(ret.indexOf("</rn>") >= 0)ret = ret.replace("</rn>", race.get_name());
			}
			
			return ret;
		}
		
		override public function appearance(i:int = 0, c:Character = null):String{
			var s:String = "";
			if(description != ""){
				s = description + stat_descriptions(c);
			}else{
				s += stat_descriptions(c);
			}
			var cover:String = get_covered_desc(c);
			if(cover != null) s = cover;
			if(part_state != null && covered_by[covered_by.length -1] == null){
				if(part_state.get_current_state_description(c, this) != "")s += part_state.get_current_state_description(c, this);
			}
			if(hold != null) s += "</pronoun> is holding a " + hold.get_name() + " in </noun> </bpn>. ";
			if(race != null){
				while(s.indexOf("</r>") >= 0)s = s.replace("</r>", race.get_description(part_id, this));
				while(s.indexOf("</rn>") >= 0)s = s.replace("</rn>", race.get_name());
			}
			while(s.indexOf("</bpn>") >= 0)s = s.replace("</bpn>", get_name());
			
			return s;
		}
		
		public function set_race(r:Race):void{
			//remove the racial stats if we already had a race
			if(race != null){
				var i:int = 0;
				for(i;i<race.stats.length;i++){
					remove_stat(race.stats[i].get_id());
				}
			}
			
			race = r;
			if(race == null) return;
			//add the new racial stats (if there are any)
			i = 0;
			for(i;i<race.stats.length;i++){
				var c_stat:Stat = new Stat(race.stats[i].get_id());
				c_stat.clone(race.stats[i]);
				new_stat(c_stat.get_id(),c_stat);			
			}
		}
		
		public function new_stat(id:int, s:Stat, c:Number = 0):void{
			if(race != null){
				var count:int = 0;
				for(count;count<race.max_part.length;count++){
					if(race.max_part[count] == part_id && race.stat_max_id[count] == id){
						if(c > race.stat_max[count]){
							c = race.stat_max[count];
							break;
						}
					}
				}
			}
			s.set_stat_value(c);
			stat_id[stat_id.length] = id;
			stat_description[stat_description.length] = s;
			
		}
		
		public function remove_stat(id:int):void{
			var i:int = 0;
			for(i;i<stat_id.length;i++){
				if(stat_id[i] == id){
					stat_id = stat_id.slice(0, i).concat(stat_id.slice(i+1, stat_id.length));
					stat_description = stat_description.slice(0, i).concat(stat_description.slice(i+1, stat_description.length));
				}
			}
		}
		
		public function add_stat_action(id:int, a:Action):void{
			var i:int = 0;
			for(i;i<stat_id.length;i++){
				if(stat_id[i] == id){
					stat_description[i].new_stat_action(a);
				}
			}
		}
		
		public function get_stat_actions(id:int):Array{
			var ret:Array = new Array();
			var i:int = 0;
			for(i;i<stat_id.length;i++){
				if(stat_id[i] == id){
					ret = ret.concat(stat_description[i].get_actions());
				}
			}
			return ret;
		}
		
		public function remove_stat_action(id:int, a:Action):void{
			var i:int = 0;
			for(i;i<stat_id.length;i++){
				if(stat_id[i] == id){
					stat_description[i].remove_stat_action(a);
				}
			}
		}
		
		public function set_equip(e:Equipment):void{
			equip[equip.length] = e;
		}
		
		public function set_cover(e:Equipment):void{
			covered_by[covered_by.length] = e;
		}
		
		public function get_equip():Array{
			return equip;
		}
		
		public function set_num_hold_slots(i:int):void{
			hold_slots = i;
		}
		
		public function get_num_hold_slots():int{
			return hold_slots;
		}
		
		public function set_hold(w:Weapon, c:Character):void{
			if(hold != null){
				c.unhold(hold)
			}
			hold = w;
		}
		
		public function get_hold():Weapon{
			return hold;
		}
		
		public function stat_descriptions(c:Character, always_show_only:int = 0):String{
			var i:int = 0;
			var s:String = "";
			for (i;i<stat_description.length;i++){
				if (stat_description[i] != null) {
					if(always_show_only != 0 && !stat_description[i].get_always_show()){
						continue;
					}
					if(!stat_description[i].stat_desc_ttl_or_indiv){
						s += stat_description[i].get_description(c, get_stat(c, stat_id[i]));
					}else{
						if(c == null)continue;
						var p:Body_part = null;
						var found_array:Array = new Array();
						var j:int = 0;
						var parts_count:int = 0;
						if(stat_description[i].stat_desc_ttl_part_limit.length > 0){
							var show_desc:Boolean = false;
							var stat_total:Number = 0;
							for (j;j<c.body.parts.length;j++){
								p = c.body.parts[j] as Body_part;
								var part_check:Number = p.get_stat(c, stat_id[i]);
								if(part_check > -1){
									var k:int = 0;
									if(parts_count == 0 && p == this){
										show_desc = true;
										stat_total += part_check;
										for(k;k<stat_description[i].stat_desc_ttl_part_limit.length;k++){
											if(stat_description[i].stat_desc_ttl_part_limit[k] == part_id){
												found_array[k] = part_check;
												break;
											}
										}
									}else if(show_desc){
										for(k;k<stat_description[i].stat_desc_ttl_part_limit.length;k++){
											if(stat_description[i].stat_desc_ttl_part_limit[k] == p.part_id){
												if(found_array[k] != null && found_array[k] < part_check){
													stat_total -= found_array[k];
													found_array[k] = part_check;
												}else if(found_array[k] == null){
													found_array[k] = part_check;
												}else{
													part_check = 0;
												}
												break;
											}
										}
										if(k<stat_description[i].stat_desc_ttl_part_limit.length)stat_total += part_check;
									}else if(parts_count > 0){
										break;
									}
									parts_count++;
								}				
							}
							if(show_desc){
								s += stat_description[i].get_description(c, stat_total);
							}
						}else{
							for (j;j<c.body.parts.length;j++){
								p = c.body.parts[j] as Body_part;
								if(p.get_stat(c, stat_id[i]) > -1){
									if(parts_count == 0 && p == this){
										s += stat_description[i].get_description(c, c.get_stat(stat_id[i]));
										break;
									}else if(parts_count > 0){
										break;
									}
									parts_count++;
								}				
							}
						}
					}
				}
			}
			return s;
		}
		
		public function apply_equip_effect(id:int, change_amt:Number, c:Character):String{
			var ret:String = "";
			var i:int = 0;
			for(i;i<stat_id.length;i++){
				if(id == stat_id[i]){
					ret += stat_description[i].get_equip_change(change_amt, c);
				}
			}
			
			return ret;
		}
		
		public function apply_effect(i:int,k:Number,c:Character, temp:int = 0, effect_type:int = -1):String{
			if(effect_type > -1){
				k *= race.get_damage_mod(effect_type);
				var cover_count:int = 0;
				for(cover_count;cover_count<covered_by.length;cover_count++){
					k *= covered_by[cover_count].get_damage_mod(effect_type);
				}
			}
			
			var j:int = 0;
			var s:String = "";
			for (j;j<stat_id.length;j++){
				if(i == stat_id[j]){
					if(race != null && temp == 0){
						var count:int = 0;
						for(count;count<race.max_part.length;count++){
							if(race.max_part[count] == part_id && race.stat_max_id[count] == i){
								if(stat_description[j].stat_value + k > race.stat_max[count]){
									k = race.stat_max[count] - stat_description[j].stat_value;
									break;
								}
							}
						}
					}					
					
				    s += stat_description[j].get_change_magnitude(k,c,temp,this);
					//if(temp == 0 && stat_description[j].stat_value < 0){
						//if not a temp, and we're setting less than 0, should we destroy the part? 
						
					//}
				    break;
				}
			}
			return s;
		}
		
		public function get_stat(c:Character, i:int, get_hard_value:int = 1,add_equip:Boolean = true, skip_calc:Boolean = false):Number{
			var j:int = 0;
			var ret:Number = -1;
			for (j;j<stat_id.length;j++){
				if(i == stat_id[j] && stat_description[j] != null){
					if (part_state != null && get_hard_value == 1){
						ret = stat_description[j].get_stat_value(c, get_hard_value, add_equip, skip_calc)*part_state.get_state_mod(stat_id[j]);
						break;
					}else{
						ret = stat_description[j].get_stat_value(c, get_hard_value, add_equip, skip_calc);
						break;
					}					
				}
			}
			return ret;
		}
		
		public function get_stat_min_max(s_id:int, c:Character, min_max:Boolean = false):Boolean{
			var ret:Boolean = false;
			var i:int = 0;
			for(i;i<stat_id.length;i++){
				if(stat_id[i] == s_id){
					if(min_max){
						//check if it's against the max
						ret = stat_description[i].at_max(c, this);
					}else{
						//check if it's against the min
						ret = stat_description[i].at_min(c, this);
					}
				}
			}
			
			return ret;
		}
		
		public function reset_stat(c:Character, i:int = -1, k:int = -1):void{
			var j:int = 0;
			if (i == -1){
				for (j;j<stat_description.length;j++){
					stat_description[j].reset_stat(c, k, this);
				}
			}else{
				for (j;j<stat_description.length;j++){
					if(stat_description[j].get_stat() == i)stat_description[j].reset_stat(c, k, this);
				}
			}
		}
		
		public function new_attack(a:Action):void{
			attacks[attacks.length] = a;
		}
		
		public function new_action(a:Action):void{
			actions[actions.length] = a;
		}
		
		public function get_attack_action(i:int):Action{
			if (i>=0 && i<attacks.length){
				return attacks[i];
			}else{
				trace("(BODY_PART)Should be getting racial attack");
			}
			return null;
		}
		
		public function get_attack_actions():Array{
			var ret:Array = new Array();
			
			ret = attacks.concat(race.get_attacks(this));
			
			return ret;
		}
		
		public function get_action(i:int):Action{
			if (i>=0 && i<actions.length){
				return actions[i];
			}else{
				trace("(BODY_PART)Should be getting racial action");
			}
			return null;
		}
		
		public function get_actions():Array{
			var ret:Array = new Array();
			
			ret = actions.concat(race.actions);
			
			return ret;
		}
		
		public function tick(c:Character):String{
			var ret:String = "";
			var i:int = 0;
			for(i;i<part_upkeep.length;i++){
				ret += part_upkeep[i].tick(c) + "\n";
			}
			return ret;
		}
		
		//Shouldn't be used, except by Body.clone
			//and maybe Character.impregnate
		public function jiggle_stats(body:Body, set_display:Number = -1):void{
			var i:int = 0;
			for(i;i<stat_description.length;i++){
				if(stat_description[i].get_id() == display_length_stat_id && set_display > -1){
					stat_description[i].set_stat_value(set_display);
				}else if(!stat_description[i].stat_desc_ttl_or_indiv){
					var new_val:Number =  Math.random()*stat_description[i].stat_value + stat_description[i].stat_value/2;
					if(race != null){
						var count:int = 0;
						for(count;count<race.max_part.length;count++){
							if(race.max_part[count] == part_id && race.stat_max_id[count] == stat_description[i].get_id()){
								if(new_val > race.stat_max[count]){
									new_val = race.stat_max[count];
									break;
								}
							}
						}
					}
					stat_description[i].set_stat_value(new_val);
				}else{
					if(body.get_part_by_stat(stat_description[i].get_id()) == this){
						new_val =  Math.random()*body.get_stat_by_id(null, stat_description[i].get_id())/4 - body.get_stat_by_id(null,stat_description[i].get_id())/8;
						body.get_effects(stat_description[i].get_id(), new_val, null, 0, Body.change_stats_total);
					}
				}
			}
		}
		
		public function clone(b:Body_part):void{
			if (b != null){
				set_name(b.name);
				
				description = b.description;
				pair_description = b.pair_description;
				set_pair_name(b.pair_name);
				
				part_id = b.part_id;
				var i:int = 0;
				if(b.equip != null){
					for(i;i<b.equip.length;i++){
						equip[i] = b.equip[i];
					}
				}
								
				if(b.covered_by != null){
					i = 0;
					for(i;i<b.covered_by.length;i++){
						covered_by[i] = b.covered_by[i];
					}
				}
				
				if(b.hold != null){
					hold = b.hold;
				}
				
				hold_slots = b.hold_slots;

				actions = b.actions;
				attacks = b.attacks;
				get_pregnant = b.get_pregnant;
				
				critical_part = b.critical_part;
				
				if(b.part_state != null){
					part_state = new Body_part_state();
					part_state.clone(b.part_state);
				}
				var temp_race:Race = b.race;
				b.set_race(null);
				
				i = 0;
				for (i;i<b.stat_description.length;i++){
					stat_description[i] = new Stat(b.stat_description[i].id);
					stat_description[i].clone(b.stat_description[i]);
				}
				
				i = 0;
				for(i;i<b.stat_id.length;i++){
					stat_id[i] = b.stat_id[i];
				}
				b.set_race(temp_race);
				set_race(temp_race);
				
				i = 0;
				for(i;i<part_upkeep.length;i++){
					var temp:Tick_Effect = part_upkeep[i].clone();
					part_upkeep[i] = temp;
				}
				
				can_connect_to = b.can_connect_to;
				
				part_count = 0;
				
				connect_direction = b.connect_direction;
				display_length_stat_id = b.display_length_stat_id;
				display_length_mod = b.display_length_mod;
				
				display_width_stat_id = b.display_width_stat_id;
				display_width_mod = b.display_width_mod;
				
				display_width_stat_id2 = b.display_width_stat_id2;
				display_width_mod2 = b.display_width_mod2;
				
				mirror_display = b.mirror_display;
			}
		}
	}
}
