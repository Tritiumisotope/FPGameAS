package  {
	public class Consequence {

		public static var amt_from_roll_const:int = -999999;
		
		public var stat_effected:Array;
		public var consequence:Array;
		public var consequence_description:Array;
		public var roll_required:Array;
		public var show_effects:Array;
		public var temp_flag:Array;
		public var consequence_challenge:Array;
		public var consequence_target:Array;
		public var consequence_tick_effect:Array;
		public var amt_by_roll:Boolean;
		public var amt_formula:Array;
		public var random_effect:Boolean;
		public var change_on_success:Boolean;
		public var always_change:Boolean;
		public var never_change:Boolean;
		public var change_effects:Array;
		public var action_for_stat:Array;
		public var xp_reward:uint;
		public var un_equip_slots:Array;
		public var un_equip_target:Array;
		public var target_part:Array;
		public var impregnate:int;
		public var consume:int;
		public var extract:int;
		public var damage_type_id:int;
		public var make_party:Boolean;
		public var remove_party:Boolean;
		public var max_damage:Number;
		public var change_skills:Boolean;
		public var remove_effect_ids:Array;
		public var advance_effect_by:Array;
		public var interupt_chal:Challenge;
		public var replace_action:Action;
		public var char_effect:Array;
		public var start_combat:Boolean;

		public function Consequence():void {
			// constructor code
			stat_effected = new Array();
			consequence = new Array();
			consequence_description = new Array();
			roll_required = new Array();
			show_effects = new Array();
			temp_flag = new Array();
			consequence_challenge = new Array();
			consequence_target = new Array();
			consequence_tick_effect = new Array();
			amt_by_roll = false;
			amt_formula = null;
			random_effect = false;
			change_on_success = false;
			always_change = false;
			never_change = false;
			change_effects = new Array();
			action_for_stat = new Array();
			xp_reward = 0;
			un_equip_slots = new Array();
			un_equip_target = new Array();
			target_part = new Array();
			impregnate = 0;
			consume = 0;
			extract = 0;
			damage_type_id = -1;
			make_party = false;
			remove_party = false;
			max_damage = 0;
			change_skills = false;
			remove_effect_ids = new Array();
			advance_effect_by = new Array();
			interupt_chal = null;
			replace_action = null;
			char_effect = new Array();	
			start_combat = false;
		}
		
		public static function name_swap(swap_string:String):String{
			while(swap_string.indexOf("</n2>") >= 0) swap_string = swap_string.replace("</n2>","</n0>");
			while(swap_string.indexOf("</noun2>") >= 0) swap_string = swap_string.replace("</noun2>","</noun0>");
			while(swap_string.indexOf("</pronoun2>") >= 0) swap_string = swap_string.replace("</pronoun2>","</pronoun0>");
			while(swap_string.indexOf("</objnoun2>") >= 0) swap_string = swap_string.replace("</objnoun2>","</objnoun0>");
			
			while(swap_string.indexOf("</n>") >= 0) swap_string = swap_string.replace("</n>","</n2>");
			while(swap_string.indexOf("</noun>") >= 0) swap_string = swap_string.replace("</noun>","</noun2>");
			while(swap_string.indexOf("</pronoun>") >= 0) swap_string = swap_string.replace("</pronoun>","</pronoun2>");
			while(swap_string.indexOf("</objnoun>") >= 0) swap_string = swap_string.replace("</objnoun>","</objnoun2>");
			
			while(swap_string.indexOf("</n0>") >= 0) swap_string = swap_string.replace("</n0>","</n>");
			while(swap_string.indexOf("</noun0>") >= 0) swap_string = swap_string.replace("</noun0>","</noun>");
			while(swap_string.indexOf("</pronoun0>") >= 0) swap_string = swap_string.replace("</pronoun0>","</pronoun>");
			while(swap_string.indexOf("</objnoun0>") >= 0) swap_string = swap_string.replace("</objnoun0>","</objnoun>");
			
			return swap_string;
		}
	
		public function set_replace_action(a:Action):void{
			replace_action = a;
		}
		
		public function set_interupt_chal(c:Challenge):void{
			interupt_chal = c;
		}
		
		public function add_remove_status(status_id:int, tick_count:int = -1):void{
			remove_effect_ids[remove_effect_ids.length] = status_id;
			advance_effect_by[advance_effect_by.length] = tick_count;
		}
		
		public function set_change_skills():void{
			change_skills = !change_skills;
		}
		
		public function add_char_effect(char:Character_template, start_fight:Boolean = true):void{
			char_effect[char_effect.length] = char;
			start_combat = start_fight;
		}
		
		public function add_char_list(char_list:Array, start_fight:Boolean = true):void{
			char_effect[char_effect.length] = char_list;
			start_combat = start_fight;
		}
		
		public function set_max_damage(i:Number):void{
			max_damage = i;
		}
		
		public function join_party():void{
			make_party = !make_party;
		}			
		
		public function leave_party():void{
			remove_party = !remove_party;
		}
		
		public function amt_by_roll_flag(a:Array = null):void{
			amt_by_roll = !amt_by_roll;
			if(a != null){
				amt_formula = a;
			}else{
				amt_formula = null;
			}
		}
		
		public function set_reward(i:uint):void{
			xp_reward = i;
		}
		
		public function set_impregnate(i:int = 1):void{
			impregnate = i;
		}
		
		public function set_consume(i:int):void{
			consume = i;
		}
		
		public function set_extract(i:int):void{
			extract = i;
		}
		
		public function set_damage_type(id:int):void{
			damage_type_id = id;
		}
		
		public function add_change_effect(o:Object, stat_id:int = -1):void{
			change_effects[change_effects.length] = o;
			action_for_stat[action_for_stat.length] = stat_id;
		}
		
		public function add_disrobe(i:int, target:Boolean = false):void{
			un_equip_slots[un_equip_slots.length] = i;
			un_equip_target[un_equip_target.length] = target;
		}
		
		public function apply_random_effect():void{
			random_effect = !random_effect;
		}
		
		public function set_change_on_success():void{
			change_on_success = !change_on_success;
		}
		
		public function set_always_change():void{
			always_change = !always_change;
		}
		
		public function set_never_change():void{
			never_change = !never_change;
		}
		
		private function calculate_amt(r:Number):Number{
			var ret:Number = 0;
			if(amt_formula != null){
				var count:int = 0;
				var temp_calc:Array = new Array();
				for(count;count < amt_formula.length;count++){
					if(amt_formula[count] is String){
						if(amt_formula[count].indexOf("r") >= 0){
							temp_calc[count] = r;
						}else{
							temp_calc[count] = amt_formula[count];
						}
					}else{
						temp_calc[count] = amt_formula[count];
					}
				}
				
				var char_stack:Array = new Array();
				var num_stack:Array = new Array();
				
				count = 0;
				for(count; count <= temp_calc.length; count ++){
					if(temp_calc[count] is String || temp_calc[count] == null){
						var temp_char:String = "";
						var num1:Number;
						var num2:Number;
						if(temp_calc[count] == "("){
							char_stack.push(temp_calc[count]);
						}else if(temp_calc[count] == ")" || temp_calc[count] == null){
							temp_char = char_stack.pop();
							if(temp_char != "("){
								char_stack.pop();
								num2 = num_stack.pop();
								num1 = num_stack.pop();
								if(temp_char == "*"){
									num_stack.push(num1*num2);
								}else if(temp_char == "/"){
									num_stack.push(num1/num2);
								}else if(temp_char == "+"){
									num_stack.push(num1+num2);
								}else if(temp_char == "-"){
									num_stack.push(num1-num2);
								}else{
									num_stack.push(num1);
									num_stack.push(num2);
								}
							}
						}else{
							temp_char = char_stack.pop();
							if(temp_char == "("){
								char_stack.push(temp_char);
								char_stack.push(temp_calc[count]);
							}else{
								char_stack.push(temp_calc[count]);
								num2 = num_stack.pop();
								num1 = num_stack.pop();
								if(temp_char == "*"){
									num_stack.push(num1*num2);
								}else if(temp_char == "/"){
									num_stack.push(num1/num2);
								}else if(temp_char == "+"){
									num_stack.push(num1+num2);
								}else if(temp_char == "-"){
									num_stack.push(num1-num2);
								}else{
									if(temp_char != null)num_stack.push(num1);
									num_stack.push(num2);
								}
							}
						}
					}else{
						num_stack.push(temp_calc[count]);
					}
					
				}
				if(char_stack.length == 0 && num_stack.length == 1){
					ret += num_stack[0];
				}else{
					trace("(Consequence)We got a calculation gone wrong here....\n calc array:" + amt_formula + "\n temp_calc:" + temp_calc);
					
				}
			}
			
			return ret;
		}
		
		public function trigger(r:Number, c:Character = null, c2:Character = null):String{
			var s:String = "";
			var dont_break_me:int = 0;
			var found:Boolean;
			var next_challenge_id:int = -1;
			var temp_char:Character;
			var temp_char2:Character;
			if(c != null){
				temp_char = c;
				temp_char2 = c2;
			}			
			
			var i:int = 0;
			for (i;i<consequence_description.length;i++){
				if(c == null) break;
				var name_swap:Boolean = false;
				if(consequence_target[i] && c2 != null){
					c = temp_char2;
					c2 = temp_char;
					name_swap = true;
				}else{
					c = temp_char;
					c2 = temp_char2;
				}
				if(c.location == null)continue;
				found = false;
				if (random_effect && r >= 0) i = Math.round(Math.random()*consequence_description.length-1);
				
				var stat_id:int = stat_effected[i];
				var multiplyer:int = -1;
								
				if((stat_id < 0 && stat_id != Character.relations_affect_id) || stat_id == -Character.relations_affect_id){
					stat_id = -stat_id;
					 multiplyer *= -1;
				}
				
				var amt_value:Number = r * multiplyer;
				
				if(amt_by_roll && amt_formula != null){
					amt_value = calculate_amt(amt_value);
				}
				
				if(max_damage > 0 && (amt_value > max_damage || amt_value < -max_damage)){
					if(amt_value > max_damage){
						amt_value = max_damage;
					}else{
						amt_value = -max_damage;
					}
				}
				
				var part_id:int = target_part[i];
								
				var affects_string:String = "";
					
				if(r >= roll_required[i] && roll_required[i] >= 0 && (change_skills || c.get_stat(stat_id,1,Body.get_stat_total, part_id) > -1)){
					
					s += consequence_description[i];
					
					if(xp_reward > 0){
						if(c.party == null){
							c.set_xp(xp_reward);
						}else{
							c.party.give_xp(xp_reward);
						}
					}
					//really shouldn't write this out ALL the time.... - dealt with via se flag when adding consequence
					if (show_effects[i] == 0){
						if (amt_by_roll && consequence[i] == Consequence.amt_from_roll_const){
							//sometimes we want to increase something by the roll...
							if(change_skills){
								affects_string += c.set_skill_bonus(stat_id, amt_value);
							}else{
								affects_string += c.apply_affect_by_id(stat_id, amt_value,temp_flag[i], c2, Body.change_stats_total, false, part_id,damage_type_id);
							}
						}else{
							if(change_skills){
								affects_string += c.set_skill_bonus(stat_id, consequence[i]);
							}else{
								affects_string += c.apply_affect_by_id(stat_id, consequence[i],temp_flag[i], c2, Body.change_stats_total, false, part_id,damage_type_id);
							}
						}
					}else{
						if (amt_by_roll  && consequence[i] == Consequence.amt_from_roll_const){
							if(change_skills){
								c.set_skill_bonus(stat_id, amt_value);
							}else{
								c.apply_affect_by_id(stat_id, amt_value, temp_flag[i], c2, Body.change_stats_total, false, part_id,damage_type_id);
							}
						}else{
							if(change_skills){
								c.set_skill_bonus(stat_id, consequence[i]);
							}else{
								c.apply_affect_by_id(stat_id, consequence[i] ,temp_flag[i], c2, Body.change_stats_total, false, part_id,damage_type_id);
							}
						}
					}
					
					if(consequence_challenge[i] > -1){
						next_challenge_id = consequence_challenge[i];
					}
					
					if(consequence_tick_effect[i] != null)c.apply_tick_effect(consequence_tick_effect[i].clone());
					
					found = true;
					
				}
				if(r <= roll_required[i] && roll_required[i] < 0 && (change_skills || c.get_stat(stat_id,1,Body.get_stat_total, part_id) > -1)){
					
					s += consequence_description[i];
					
					if(xp_reward/10 > 0)c.set_xp(xp_reward/10);
					
					amt_value *= -1;
					
					if (show_effects[i] == 0){
						if (amt_by_roll  && consequence[i] == Consequence.amt_from_roll_const){
							if(change_skills){
								affects_string += c.set_skill_bonus(stat_id, amt_value);
							}else{
								affects_string += c.apply_affect_by_id(stat_id, amt_value,temp_flag[i],c2, Body.change_stats_total, false, part_id,damage_type_id);
							}
						}else{
							if(change_skills){
								affects_string += c.set_skill_bonus(stat_id, consequence[i]);
							}else{
								affects_string += c.apply_affect_by_id(stat_id, consequence[i],temp_flag[i],c2, Body.change_stats_total, false, part_id,damage_type_id);
							}
						}
					}else{
						if (amt_by_roll  && consequence[i] == Consequence.amt_from_roll_const){
							if(change_skills){
								c.set_skill_bonus(stat_id, amt_value);
							}else{
								c.apply_affect_by_id(stat_id,amt_value,temp_flag[i],c2, Body.change_stats_total, false, part_id,damage_type_id);
							}
						}else{
							if(change_skills){
								c.set_skill_bonus(stat_id, consequence[i]);
							}else{
								c.apply_affect_by_id(stat_id, consequence[i],temp_flag[i],c2, Body.change_stats_total, false, part_id,damage_type_id);
							}
						}
					}
					if(consequence_tick_effect[i] != null)c.apply_tick_effect(consequence_tick_effect[i]);
					
					if(consequence_challenge[i] > -1){
						next_challenge_id = consequence_challenge[i];
					}
					
					found = true;
				}
				if(name_swap){
					affects_string = Consequence.name_swap(affects_string);
				}
				
				s += affects_string;
				
				if (random_effect && dont_break_me < consequence_description.length && !found){
					
					dont_break_me ++;
					i = 0;
					if (dont_break_me >= consequence_description.length) r = -1;
					continue;
				}
				
				if (random_effect && found)break;
				
			}
		 	
			c = temp_char;
			c2 = temp_char2;
			
			if((  !never_change && ((!change_on_success && r >= 0) || (change_on_success && r < 0))  || always_change)){
				i = 0;
				for (i;i<change_effects.length;i++){
					if(action_for_stat[i] == -1){
						s += c.apply_change_effect(change_effects[i]);
					}else{
						s += c.apply_change_effect(change_effects[i], action_for_stat[i]);
					}
				}
				i = 0;
				for(i;i<remove_effect_ids.length;i++){
					s += c.remove_status_effect_by_id(remove_effect_ids[i],advance_effect_by[i]);
				}
				i = 0;
				for(i;i<un_equip_slots.length;i++){
					var temp_array:Array = new Array();
					var char_to_unequip:Character = c;
					if(un_equip_target[i]){
						char_to_unequip = c2;
					}
					
					if(char_to_unequip.body.get_part_by_id(un_equip_slots[i]) != null){
						if(char_to_unequip.body.get_part_by_id(un_equip_slots[i]).covered_by[0] != null){
							temp_array = temp_array.concat(char_to_unequip.body.get_part_by_id(un_equip_slots[i]).covered_by);
						}
						if(char_to_unequip.body.get_part_by_id(un_equip_slots[i]).get_equip()[0] != null){
							temp_array = temp_array.concat(char_to_unequip.body.get_part_by_id(un_equip_slots[i]).get_equip());
						}
						
						//make_sure no duplicates
						var j:int = 0;
						for(j;j<temp_array.length;j++){
							var item_found:Boolean = false;
							var k:int = j + 1;
							for(k;k<temp_array.length;k++){
								if(temp_array[j] == temp_array[k]){
									item_found = true;
									break;
								}
							}
							if(item_found)temp_array[j] = null;
						}
						
						var item_count:int = 0;
						for(item_count;item_count<temp_array.length;item_count++){
							if(temp_array[item_count] != null)char_to_unequip.unequip(temp_array[item_count]);
						}
					}
					//should we destroy it?
					//leave it in the characters inventory as it is now?
					//maybe drop it to the ground?
					//Lets just let character decide for now...
				}
				
				if(interupt_chal != null){
					var next_attack:String = c.get_next_attack();
					if(next_attack != ""){
						var interupt_roll:int = interupt_chal.roll(c, c);
						var num_to_beat:int = 0;
						if(amt_by_roll)num_to_beat = r;
						if(interupt_roll >= num_to_beat){
							s += "</n> stops what </pronoun> was doing. ";
						}else{
							c.set_next_attack(next_attack);
						}
					}
				}				
				
				if(impregnate > 0){
					if(impregnate == 1){
						s += c.impregnate(c2);
					}else{
						//should swap the names
						s += Consequence.name_swap(c2.impregnate(c));
					}
				}
				
				if(consume != 0){
					if(consume > 0){
						s += c.consume(consume, c2);
					}else{
						//should swap the names
						s += Consequence.name_swap(c2.consume(-consume, c));
					}
				}
				
				if(extract != 0){
					if(extract > 0){
						s += c.fluid_extraction(extract);
					}else{
						//should swap the names
						s += Consequence.name_swap(c2.fluid_extraction(-extract));
					}
				}
				
				if(make_party){
					if(c2 == null) trace("(Consequence)Should be making/joining a character party ... and freaking out a bit because we only have one character");
					
					var p:Party;
					
					if(c.get_party() != null) p = c.get_party();
					if(p == null) p = new Party();
					if(c2.get_party() != null){
						c2.get_party().remove_member(c2);
					}
					
					p.add_member(c);
					p.add_member(c2);
					c.set_party(p);
					c2.set_party(p);
										
				}
				
				if(remove_party){
					if(c2 == null) trace("(Consequence)Should be leaving a character party ... and freaking out a bit because we only have one character");
					if(c2.party != null){
						c2.party.remove_member(c2);
						c2.set_party(null);						
					}
				}
				
				if(char_effect[0] != null){
					i = 0;
					var clone_pty:Party = new Party();
					for(i;i<char_effect.length;i++){
						if(start_combat && c2 != null && c2.location != null){
							if(c.location.cm == null) c.location.cm = new Combat_manager();
							c.location.cm.add_participant(c);
							c.location.cm.add_participant(c2);
							c.personality.new_relationship(c2, c, Relationship.aggressive_change);
							c.personality.make_aggressive(c2);
							c2.personality.new_relationship(c, c2, Relationship.aggressive_change);
							c2.personality.make_aggressive(c);
						}
						var spawn_loc:Room = c.location;
						var level_mod:int = 0;
						
						if(spawn_loc != null)level_mod = Math.abs(spawn_loc.area.find_room(spawn_loc)[2]);
						
						if(char_effect[0] is Character_template){
							c2 = char_effect[i].gen_char(level_mod);
						}else{
							var rand_char:int = Math.round(Math.random()*(char_effect[i].length-1));
							c2 = char_effect[i][rand_char].gen_char(level_mod);
							if(Math.random() > 0.9)i--;
						}
						clone_pty.add_member(c2);
						c2.set_party(clone_pty);
						if(spawn_loc != null){
							c2.new_location(spawn_loc,true);
						}else{
							trace("(Consequence)Should be generating a character, but can't figure out *where*");
						}
					}
				}
				
				if(start_combat && c2.location != null){
					//Start combat
					if(c.location.cm == null) c.location.cm = new Combat_manager();
					c.location.cm.add_participant(c);
					c.location.cm.add_participant(c2);
					c.personality.new_relationship(c2, c, Relationship.aggressive_change);
					c.personality.make_aggressive(c2);
					c2.personality.new_relationship(c, c2, Relationship.aggressive_change);
					c2.personality.make_aggressive(c);	
					s += "\n<a href=\"event:combat,"+c.location.get_content_id(c)+",-1,-1\">BEGIN COMBAT</a>";
				}
			}
			
			if(next_challenge_id > -1){
				//do something to trigger the next challenge!
				//cheating... but still
				s += "</trigger" + next_challenge_id + ">";
			}
			
			return s;
		}
		
		public function add_consequence(stat_id:int, conseq_amt:Number, desc:String, require_roll:int, show_changes:int = 0, temp:int = 0, trigger_challenge:int = -1, flip_target:Boolean = false, tf:Tick_Effect = null, target_part_id:int = -1/*Body.target_all_parts*/):void{
			stat_effected[stat_effected.length] = stat_id;
			consequence[consequence.length] = conseq_amt;
			consequence_description[consequence_description.length] = desc;
			roll_required[roll_required.length] = require_roll;
			show_effects[show_effects.length] = show_changes;
			temp_flag[temp_flag.length] = temp;
			consequence_challenge[consequence_challenge.length] = trigger_challenge;
			consequence_target[consequence_target.length] = flip_target;
			consequence_tick_effect[consequence_tick_effect.length] = tf;
			target_part[target_part.length] = target_part_id;
		}
		
		public function clone():Consequence{
			var ret:Consequence = new Consequence();
			ret.stat_effected = this.stat_effected;
			ret.consequence = this.consequence;
			var i:int = 0;
			for(i;i<this.consequence_description.length;i++){
				ret.consequence_description[i] = this.consequence_description[i];
			}
			
			ret.roll_required = this.roll_required;
			ret.show_effects = this.show_effects;
			ret.temp_flag = this.temp_flag;
			ret.amt_by_roll = this.amt_by_roll;
			ret.amt_formula = this.amt_formula;
			ret.random_effect = this.random_effect;
			ret.consequence_tick_effect = this.consequence_tick_effect;
			ret.change_on_success = this.change_on_success;
			ret.always_change = this.always_change;
			ret.never_change = this.never_change;
			ret.change_effects = this.change_effects;
			ret.action_for_stat = this.action_for_stat;
			ret.consequence_challenge = this.consequence_challenge;
			ret.xp_reward = this.xp_reward;
			ret.un_equip_slots = this.un_equip_slots;
			ret.un_equip_target = this.un_equip_target;
			ret.impregnate = this.impregnate;
			ret.consume = this.consume;
			ret.extract = this.extract;
			ret.damage_type_id = this.damage_type_id;
			ret.consequence_target = this.consequence_target;
			ret.make_party = this.make_party;
			ret.remove_party = this.remove_party;
			ret.max_damage = this.max_damage;
			ret.target_part = this.target_part;
			ret.remove_effect_ids = this.remove_effect_ids;
			ret.advance_effect_by = this.advance_effect_by;
			ret.interupt_chal = this.interupt_chal;
			ret.char_effect = this.char_effect;
			ret.start_combat = this.start_combat;
			
			return ret;
		}

	}
	
}
