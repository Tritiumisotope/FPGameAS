package  {
	
	public class Challenge {
		
		public static const exit_check:int = 1;
		public static const content_count:int = 2;
		public static const content_check:int = 3;
		public static const non_party_count:int = 4;
		public static const get_non_party_target:int = 5;

		public var tag:String;
		public var stats_or_skills:Boolean;
		public var hard_stats:Boolean;
		public var room_challenge:int;
		
		public var variability:int;
		public var ticks_to_pass:int;
		
		public var attack_stat:int;
		public var attack_part_process:int;
		public var static_attack:Boolean;
		public var attack_equip_slot:int;
		public var attack_equip_slot_count:Boolean;
		public var attack_status_id:int;
		public var attack_hold:Boolean;
		public var attack_item:Item;
		public var attack_quest:Quest;
		public var attack_quest_step:int;
		
		public var defense_stat:int;
		public var defense_part_process:int;
		public var static_defense:Boolean;
		public var defense_increment:int;
		public var defense_equip_slot:int;
		public var defense_equip_slot_count:Boolean;
		public var defense_status_id:int;
		public var defense_hold:Boolean;
		public var defense_item:Item;
		
		public function Challenge(use_skills:Boolean = false):void {
			tag = "";
			variability = 20;
			static_defense = false;
			static_attack = false;
			defense_increment = 0;
			attack_equip_slot = -1;
			attack_equip_slot_count = false;
			defense_equip_slot = -1;
			defense_equip_slot_count = false;
			attack_status_id = -1;
			defense_status_id = -1;
			attack_hold = false;
			defense_hold = false;
			attack_stat = -1;
			defense_stat = -1;
			attack_part_process = Body.get_stat_total;
			defense_part_process = Body.get_stat_total;
			stats_or_skills = use_skills;
			hard_stats = false;
			room_challenge = 0;
			ticks_to_pass = 0;
			attack_item = null;
			attack_quest = null;
			attack_quest_step = -1;
			
			defense_item = null;
		}
		
		public function set_hard_stat():void{
			hard_stats = !hard_stats;
		}
		
		public function set_defense_status_id(i:int):void{
			defense_status_id = i;
		}
		
		public function set_attack_status_id(i:int):void{
			attack_status_id = i;
		}
		
		public function set_tick_cost(i:int):void{
			ticks_to_pass = i;
		}
		
		public function set_attack_hold_check():void{
			attack_hold = !attack_hold;
		}
		
		public function set_attack_item(i:Item):void{
			attack_item = i;
		}
		
		public function set_attack_quest(q:Quest, quest_step:int = -1):void{
			attack_quest = q;
			attack_quest_step = quest_step;
		}
		
		public function set_defense_item(i:Item):void{
			defense_item = i;
		}
		
		public function set_defense_hold_check():void{
			defense_hold = !defense_hold;
		}
		
		public function set_room_challenge(chall_type:int):void{
			room_challenge = chall_type;
		}
		
		public function get_room_challenge():int{
			return room_challenge;
		}
		
		public function set_attack_stat(stat_id:int, static_atk:int = -1, multi_part_process:int =0):void{
			if (stat_id != -1){
				attack_stat = stat_id;
				attack_part_process = multi_part_process;
			}else{
				attack_stat = static_atk
				static_attack = true;
			}
		}
		
		public function set_attack_equip_slot_check(i:int,part_count:Boolean = false):void{
			attack_equip_slot = i;
			attack_equip_slot_count = part_count;
		}
		
		
		public function set_defense_stat(stat_id:int, static_atk:int = -1, multi_part_process:int = 0):void{
			if (stat_id != -1){
				defense_stat = stat_id;
				defense_part_process = multi_part_process;
			}else{
				defense_stat = static_atk;
				static_defense = true;
			}
		}
		
		public function set_defense_equip_slot_check(i:int,part_count:Boolean = false):void{
			defense_equip_slot = i;
			defense_equip_slot_count = part_count;
		}
		
		public function static_defense_climb(i:int):void{
			defense_increment = i;
		}
		
		public function set_variability(i:int):void{
			variability = i;
		}
		
		public function set_text(s:String):void{
			tag = s;
		}
		
		public function get_text():String{
			return tag;
		}
		
		public function roll(c1:Character = null, c2:Character = null, r1:Room = null, r2:Room = null):int{
			//need to get the stat in question
			var c1_attack:int = 0;
			var c2_defense:int = 0;
			
			if(room_challenge > 0){
				if(r1 == null && r2 == null){
					r1 = c1.location;
					r2 = c2.location;
				}
				if(room_challenge == Challenge.exit_check){
					if(!static_attack){
						if(r1 != null)c1_attack = r1.get_exit_id(r2);						
					}
					if(!static_defense){
						if(r2 != null)c2_defense = r2.get_exit_id(r1);
					}
				}else if(room_challenge == Challenge.content_count){
					if(!static_attack){
						if(r1 != null){
							c1_attack = r1.get_character_count();
						}
					}
					if(!static_defense){
						if(r2 != null){
							c2_defense = r2.get_character_count();
						}
					}
				}else if(room_challenge == Challenge.content_check){
					trace("(Challenge.roll)Should be checking content in a room... doing nothing");
				}else if(room_challenge == Challenge.non_party_count){
					if(!static_attack){
						if(r1 != null){
							c1_attack = r1.get_character_count(c1);
						}
					}
					if(!static_defense){
						if(r2 != null){
							c2_defense = r2.get_character_count(c2);
						}
					}
				}else if(room_challenge == Challenge.get_non_party_target){
					//dealt with by Action
				}
			}
			var get_temp_stat:int = 1;
			if(hard_stats)get_temp_stat = 0;
			if( attack_stat != -1){
				if(attack_stat == Character.relations_affect_id){
					if(c1 != c2 && c2 != null){
						c1_attack = c1.personality.check_relationship(c2,c1);
					}else{
						c1_attack = 0;
					}
				}else if(attack_stat == Character.attraction_id){
					if(c1 != c2 && c2 != null){
						c1_attack = c1.personality.determine_attraction_challenge(c2,c1);
					}else{
						c1_attack = 0;
					}
				}else{
					if (static_attack){
						c1_attack = attack_stat;
					}else{
						if(c1 != null){
							if(!stats_or_skills){
								c1_attack = c1.get_stat(attack_stat,get_temp_stat,attack_part_process);
							}else{
								c1_attack = c1.get_skill_by_id(attack_stat);
							}
						}
					}
				}
			}
			if(defense_stat != -1){
				if(defense_stat == Character.relations_affect_id){
					if(c1 != c2 && c1 != null){
						c2_defense = c2.personality.check_relationship(c1,c2); 
					}else{
						c2_defense = 0;
					}
				}else if(defense_stat == Character.attraction_id){
					if(c1 != c2 && c1 != null){
						c2_defense = c2.personality.determine_attraction_challenge(c1,c2); 
					}else{
						c2_defense = 0;
					}
				}else{
					if (static_defense){
						c2_defense = defense_stat;
						defense_stat += defense_increment;
					}else{
						if(c2 != null){
							if(!stats_or_skills){
								c2_defense = c2.get_stat(defense_stat,get_temp_stat,defense_part_process);
							}else{
								c2_defense = c2.get_skill_by_id(defense_stat);
							}
						}
					}
				}
			}
			
			//then we roll
			var attack_roll:int = Math.round(Math.random()* variability) + c1_attack;
			var defense_roll:int = Math.round(Math.random()* variability) + c2_defense;
						
			if(attack_equip_slot > -1){
				if(c1.body.get_part_by_id(attack_equip_slot) != null){
					if(attack_equip_slot_count){
						attack_roll+=c1.body.part_count_by_id(attack_equip_slot);
					}else if(c1.body.get_part_by_id(attack_equip_slot).get_equip()[0] != null || c1.body.get_part_by_id(attack_equip_slot).covered_by[0] != null){
						attack_roll ++;						
					}
				}
			}
			
			if(attack_status_id > -1){
				var temp_array:Array = c1.get_status_effects();
				var count:int = 0;
				for(count;count<temp_array.length;count++){
					if(temp_array[count] == attack_status_id) attack_roll++;
				}
			}
			
			if(attack_hold){
				if(c1.body.holding_weapon_or_shield()) attack_roll++;
			}
			
			if(attack_item != null){
				count = 0;
				for(count;count<c1.possessions.length;count++){
					if(c1.possessions[count].name == attack_item.name){
						attack_roll++;
					}
				}
			}
			
			if(attack_quest != null){
				count = 0;
				for(count;count<c1.personality.objectives.length;count++){
					if(c1.personality.objectives[count].name == attack_quest.name){
						if(attack_quest_step == -1 || c1.personality.curr_obj_step[count][c1.personality.curr_obj_step[count].length-1] == attack_quest_step){
							attack_roll++;
							break;
						}
					}
				}
			}			
			
			if(defense_equip_slot > -1){
				if(c2.body.get_part_by_id(defense_equip_slot) != null){
					if(defense_equip_slot_count){
						defense_roll+=c2.body.part_count_by_id(defense_equip_slot);						 
					}else if(c2.body.get_part_by_id(defense_equip_slot).get_equip()[0] != null || c2.body.get_part_by_id(defense_equip_slot).covered_by[0] != null){
						defense_roll ++;
					}
				}
			}
			
			if(defense_status_id > -1){
				temp_array = c2.get_status_effects();
				count = 0;
				for(count;count<temp_array.length;count++){
					if(temp_array[count] == defense_status_id) defense_roll++;
				}
			}
			
			if(defense_hold){
				if(c2.body.holding_weapon_or_shield()) defense_roll++;
			}
			
			if(defense_item != null){
				count = 0;
				for(count;count<c2.possessions.length;count++){
					if(c2.possessions[count].name == defense_item.name){
						defense_roll++;
						break;
					}
				}
			}
			
			var success_level:int = attack_roll - defense_roll;
			
			//determine probability of outcome, and give out xp and (far more rarely) skill/stat points
			var prob_c1:Number = 0.00;
			var prob_c2:Number = 0.00;
			if(variability > 0){
				if(c1_attack < c2_defense){
					if(c1_attack + variability >= c2_defense){
						prob_c1 = (((c1_attack+variability+1-c2_defense)*(c1_attack+variability+2-c2_defense))/2)/((variability+1)*(variability+1));
						prob_c2 = 1 - prob_c1;
					}else{
						prob_c2 = 1;
					}
				}else if(c2_defense < c1_attack){
					if(c2_defense + variability > c1_attack){
						prob_c2 = (((c2_defense+variability+1-c1_attack)*(c2_defense+variability+2-c1_attack))/2)/((variability+1)*(variability+1));
						prob_c1 = 1 - prob_c2;
					}else{
						prob_c1 = 1;
					}
				}else{
					prob_c1 = prob_c2 = 0.5;
				}
			}
			
			if(success_level >= 0){
				//c1 wins!
				if(!static_attack && prob_c1 < 1 && prob_c1 > 0 && c1 != null){//NO XP FOR SURE THINGS!
					c1.set_challenge_output(c1.set_xp(Math.ceil(1/prob_c1)));
					//chance for skill/stat increase
					if(!stats_or_skills){//stat increase
						prob_c1 = 1/(100 * prob_c1 * 2 * Math.pow(2, c1.get_stat(attack_stat,1,attack_part_process)));
						if(prob_c1 < 1/1000000) prob_c1 = 1/1000000;
						if(Math.random() <= prob_c1){
							c1.set_challenge_output(c1.apply_affect_by_id(attack_stat, 1));
						}
					}else{//skill increase
						prob_c1 = 1/(prob_c1 * 2 * c1.skills.get_skill_cost(c1,attack_stat,1));//Math.pow(4, c1.get_skill_rank_by_id(attack_stat)));
						
						if(prob_c1 < 1/1000000) prob_c1 = 1/1000000;
						if(Math.random() <= prob_c1){
							c1.set_challenge_output(c1.set_skills_by_id(attack_stat, 1));
						}
					}
					
				}
				if(!static_defense && prob_c2 < 1 && prob_c2 > 0 && c2 != null && c1 != c2){//you failed, but still deserve something
					c2.set_challenge_output(c2.set_xp(Math.ceil(1/(10*prob_c2))));
					
					if(!stats_or_skills){//stat increase
						prob_c2 = 1/(100 * prob_c2 * 2 * Math.pow(2, c2.get_stat(defense_stat,1,defense_part_process)));
						if(prob_c2 < 1/1000000) prob_c2 = 1/1000000;
						if(Math.random() <= prob_c2){
							c2.set_challenge_output(c2.apply_affect_by_id(defense_stat, 1));
						}
					}else{//skill increase
						prob_c2 = 1/(prob_c2 * 2 * c2.skills.get_skill_cost(c2,defense_stat,1));//Math.pow(4, c2.get_skill_rank_by_id(defense_stat)));
						if(prob_c2 < 1/1000000) prob_c2 = 1/1000000;
						if(Math.random() <= prob_c2){
							c2.set_challenge_output(c2.set_skills_by_id(defense_stat, 1));
						}
					}
				}
			}else{
				//c2 wins!
				if(!static_defense && prob_c2 < 1 && prob_c2 > 0 && c2 != null){
					c2.set_challenge_output(c2.set_xp(Math.ceil(1/prob_c2)));
					//chance for skill/stat increase
					if(!stats_or_skills){//stat increase
						prob_c2 = 1/(100 * prob_c2 * 2 * Math.pow(2, c2.get_stat(defense_stat,1,defense_part_process)));
						if(prob_c2 < 1/1000000) prob_c2 = 1/1000000;
						if(Math.random() <= prob_c2){
							c2.set_challenge_output(c2.apply_affect_by_id(defense_stat, 1));
						}
					}else{//skill increase
						prob_c2 = 1/(prob_c2 * 2 * c2.skills.get_skill_cost(c2,defense_stat,1));//Math.pow(4, c2.get_skill_rank_by_id(defense_stat)));
						if(prob_c2 < 1/1000000) prob_c2 = 1/1000000;
						if(Math.random() <= prob_c2){
							c2.set_challenge_output(c2.set_skills_by_id(defense_stat, 1));
						}
					}
				}
				if(!static_attack && prob_c1 < 1 && prob_c1 > 0 && c1 != null && c1 != c2){
					c1.set_challenge_output(c1.set_xp(Math.ceil(1/(10*prob_c1))));
					
					if(!stats_or_skills){//stat increase
						prob_c1 = 1/(100 * prob_c1 * 2 * Math.pow(2, c1.get_stat(attack_stat,1,attack_part_process)));
						if(prob_c1 < 1/1000000) prob_c1 = 1/1000000;
						if(Math.random() <= prob_c1){
							c1.set_challenge_output(c1.apply_affect_by_id(attack_stat, 1));
						}
					}else{//skill increase
						prob_c1 = 1/(prob_c1 * 2 * c1.skills.get_skill_cost(c1,attack_stat,1));//Math.pow(4, c1.get_skill_rank_by_id(attack_stat)));
						if(prob_c1 < 1/1000000) prob_c1 = 1/1000000;
						if(Math.random() <= prob_c1){
							c1.set_challenge_output(c1.set_skills_by_id(attack_stat, 1));
						}
					}
				}
			}
			
			if(ticks_to_pass > 0){
				if(c1 == c2){
					if(c1 != null)c1.set_busy(ticks_to_pass);
				}else{
					if(c1 != null)c1.set_busy(ticks_to_pass);
					if(c2 != null)c2.set_busy(ticks_to_pass);
				}
			}
						
			return success_level;
			
		}
		
		public function clone(c:Challenge):void{
			tag = c.tag
			attack_stat = c.attack_stat;
			attack_part_process = c.attack_part_process;
			defense_stat = c.defense_stat;
			variability = c.variability;
			static_defense = c.static_defense;
			defense_increment = c.defense_increment;
			defense_part_process = c.defense_part_process;
			static_attack = c.static_attack;
			attack_equip_slot = c.attack_equip_slot;
			attack_equip_slot_count = c.attack_equip_slot_count;
			defense_equip_slot = c.defense_equip_slot;
			defense_equip_slot_count = c.defense_equip_slot_count;
			attack_status_id = c.attack_status_id;
			defense_status_id = c.defense_status_id;
			attack_hold = c.attack_hold;
			defense_hold = c.defense_hold;			
			stats_or_skills = c.stats_or_skills;
			room_challenge = c.room_challenge;
			hard_stats = c.hard_stats;
			attack_item = c.attack_item;
			attack_quest = c.attack_quest;
			attack_quest_step = c.attack_quest_step;
			
			defense_item = c.defense_item;
		}
	}
	
}
