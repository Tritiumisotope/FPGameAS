package  {
	
	public class Action {
		
		public static const attack_type_single_target:int = 0;//single target
		public static const attack_type_all_enemy_target_single_conseq:int = 1;//all enemies, consequnce is on initiator
		public static const attack_type_party_target_party_conseq:int = 2;//party of target, consequence on party of target
		public static const attack_type_all_enemy_target_all_enemy_conseq:int = 3;//all enemies, consequence on all enemies
		public static const attack_type_all_target_all_conseq:int = 4;//everyone in combat, consequence on everyone in combat
		public static const attack_type_all_target_no_user_conseq:int = 5;//everyone in combat, consequence on everyone in combat except the user
		public static const attack_type_self_target:int = 6;
		
		public var name:String;
		public var challenges:Array;
		public var dialogue:String;
		public var status_change:String;
		public var auto_trigger_id:int;
		public var originator:Dynamic_object;
		public var id:int;
		public var consequences:Array;
		public var requirement:Array;
		public var requirement_amount:Array;
		public var requirement_remove:Array;
		public var blowback:int;
		public var blowback_amount:int;
		public var item_req:Item;
		public var force_failure:Boolean = false;
		public var alchemy_flag:Boolean = false;
		public var enchant_flag:Boolean = false;
		public var sewing_flag:Boolean = false;
		public var craft_flag:Boolean = false;
		public var trade_flag:Boolean = false;
		public var dismantle_flag:Boolean = false;
		public var trader_item:Item = null;
		public var personal:Boolean = false;
		public var party_use:Boolean = false;
		public var rest_flag:Boolean = false;
		public var attack_flag:int = -1;
		public var attack_type:String = "";
		public var attack_order:int = -1;
		public var attack_desc:String = "";
		public var fire_weapon_challenge:Boolean = false;
		public var talk_flag:Boolean = false;
		public var delayed_trigger:Boolean = false;
		public var consume_action:Boolean = false;
		public var impreg_action:Boolean = false;
		public var extract_action:Boolean = false;
		public var bury_action:Boolean = false;
		public var cclass_origin:String;
		public var cclass_level:int;
		
		public function Action():void {
			challenges = new Array();
			dialogue = "null";
			status_change = "";
			auto_trigger_id = -1;
			consequences = new Array();
			requirement = new Array();
			requirement_amount = new Array();
			requirement_remove = new Array();
			item_req = null;
			blowback = -1;
			blowback_amount = 0;
			cclass_origin = "";
			cclass_level = 0;
			delayed_trigger = false;
		}
		
		public function set_consume_action():void{
			consume_action = !consume_action;
		}
		
		public function set_impreg_action():void{
			impreg_action = !impreg_action;
		}
		
		public function set_extract_action():void{
			extract_action = !extract_action;
		}
		
		public function set_bury_action():void{
			bury_action = !bury_action;
		}
		
		public function get_consume():Boolean{
			return consume_action;
		}
		
		public function get_impreg():Boolean{
			return impreg_action;
		}
		
		public function get_extract():Boolean{
			return extract_action;
		}
		
		public function get_bury():Boolean{
			return bury_action;
		}
		
		public function set_delayed_trigger():void{
			delayed_trigger = !delayed_trigger;
		}
		
		public function set_attack_order(i:int):void{
			if(i>=0) attack_order = i;
		}
		
		public function get_attack_order():int{
			return attack_order;
		}
		
		public function set_talk_flag():void{
			talk_flag = !talk_flag;
		}
		
		public function set_trade_flag():void{
			trade_flag = !trade_flag;
		}
		
		public function set_dismantle_flag():void{
			dismantle_flag = !dismantle_flag;
		}
		
		public function set_trade_item(i:Item):void{
			trader_item = i;
		}
		
		public function set_rest_flag():void{
			rest_flag = !rest_flag;
		}
		
		public function get_rest_flag():Boolean{
			return rest_flag;
		}
		
		public function get_trade_flag():Boolean{
			return trade_flag;
		}
		
		public function get_dismantle_flag():Boolean{
			return dismantle_flag;
		}
		
		public function set_name(s:String):void{
			name = s;
		}
		
		public function get_name():String{
			return name;
		}
		
		public function set_originator(d:Dynamic_object):void{
			originator = d;
		}
		
		public function set_id(i:int):void{
			id = i;
		}
		
		public function set_alchemy_flag():void{
			alchemy_flag = !alchemy_flag;
		}
		
		public function set_enchant_flag():void{
			enchant_flag = !enchant_flag;
		}
		
		public function set_sewing_flag():void{
			sewing_flag = !sewing_flag;
		}
		
		public function set_craft_flag():void{
			craft_flag = !craft_flag;
		}
		
		public function add_challenge(c:Challenge, con:Consequence = null):void{
			if (con == null) con = new Consequence();
			consequences[challenges.length] = con;
			challenges[challenges.length] = c;
			
		}
		
		public function set_dialogue(s:String, auto_trigger_chal_id:int = -1):void{
			dialogue = s;
			auto_trigger_id = auto_trigger_chal_id;
		}
		
		public function set_status_change(s:String):void{
			status_change = s;
		}
		
		public function set_attack_description(s:String):void{
			attack_desc = s;
		}
		
		public function get_attack_description(c:Character):String{
			var ret:String = "";
			if(attack_flag >= 0){
				ret += get_name() + "\n";
				
				var i:int = 0;
				if(requirement[0] != null){
					for(i;i<requirement.length;i++){
						if(requirement_amount[i] > 0 && requirement_remove[i]){
							ret += "Requires " + requirement_amount[i] + " " + FPalace_helper.get_stat_name_by_id(requirement[i]) + "\n";
						}
					}
				}
				
				var damage_types:Array = new Array();
				i = 0;
				for(i;i<consequences.length;i++){
					if(consequences[i].damage_type_id > -1){
						var already_exists:Boolean = false;
						var count2:int = 0;
						for(count2;count2<damage_types.length;count2++){
							if(damage_types[count2] == consequences[i].damage_type_id){
								already_exists = true;
								break
							}
						}
						if(!already_exists)damage_types[damage_types.length] = consequences[i].damage_type_id;
					}
				}
			
				var showing:Boolean = false;
				i = 0;
				if(damage_types.length > 0){
					for(i;i<damage_types.length;i++){
						if(!showing){
							showing = true;
							ret += "Does damage of type: ";
						}
						ret += FPalace_helper.get_type_name_by_id(damage_types[i]) + " "					
					}
				}
				
				if(showing)ret+="\n";
				
				if(attack_desc != ""){
					ret += attack_desc;
				}else{
					i = 0;
					for(i;i<challenges.length;i++){
						var chall:Challenge = challenges[i];
						if(!(chall.static_attack && chall.static_defense)){
							if(!chall.stats_or_skills){
								if(!chall.static_attack){
									ret += FPalace_helper.get_stat_name_by_id(chall.attack_stat);
								}else{
									ret += chall.attack_stat;
								}
								ret += " vs ";
								if(!chall.static_defense){
									 ret += FPalace_helper.get_stat_name_by_id(chall.defense_stat) + "\n";
								}else{
									ret += chall.defense_stat + "\n";
								}
							}else{
								if(!chall.static_attack){
									ret += FPalace_skills.get_skill_name(chall.attack_stat);
								}else{
									ret += chall.attack_stat;
								}
								ret += " vs ";
								if(!chall.static_defense){
									 ret += FPalace_skills.get_skill_name(chall.defense_stat) + "\n";
								}else{
									ret += chall.defense_stat + "\n";
								}
							}
						}
						break;
					}
				}
			}
			return ret;			
		}
		
		public function trigger(c:Character, force_tags:int = 0, sanitize_for:Character = null):String{			
			var s:String = dialogue;
			
			c.set_busy();
			if(status_change != "")c.status = status_change;
			
			var temp_char:Character = originator as Character;
			
			if(sanitize_for != null){
				s = temp_char.sanitize(c.sanitize(s,sanitize_for),sanitize_for);
			}
			
			if (s == "null"){
				if(temp_char != null)temp_char.set_busy();
				if(alchemy_flag){
					s = "<a href=\"event:alchemy\">Begin Alchemy</a>";
					if(temp_char != null && temp_char.previous_action_output == "" && temp_char != c){
						temp_char.previous_action_output = c.get_name() + " is looking to use your <a href=\"event:alchemy\">alchemy</a> skills.";
					}
				}else if(enchant_flag){
					s = "<a href=\"event:enchant\">Begin Enchanting</a>";					
				}else if(sewing_flag){
					s = "<a href=\"event:sew\">Begin Sewing</a>";					
				}else if(craft_flag){
					s = "<a href=\"event:craft\">Begin Crafting</a>";
				}else if(trade_flag){
					s = "<a href=\"event:buy,"+ c.location.get_content_id(temp_char) +"\">Buy</a>\t<a href=\"event:sell,"+ c.location.get_content_id(temp_char) +"\">Sell</a>";
					s += "\n\n<font color='#0000FF'><a href=\"event:look," + c.location.get_content_id(temp_char) +"\">Back</a></font>";
				}else if(dismantle_flag){
					s = "<a href=\"event:dismantle\">Begin Dismantling</a>";					
				}else if(talk_flag){
					s = temp_char.sanitize(c.sanitize(temp_char.talk(c),c),c);
					if(temp_char.previous_action_output == ""){
						
						temp_char.previous_action_output = c.sanitize(temp_char.sanitize("</n2> walks up and interrupts what you were doing.\n\n"+c.talk(temp_char),temp_char),temp_char);
						
						if(status_change != "")temp_char.status = status_change;
					}
				}else{
					//show combat options
					if(temp_char.get_combat_status()){
						if(c.location.cm == null) c.location.cm = new Combat_manager();
						c.location.cm.add_participant(c);
						c.location.cm.add_participant(temp_char);
						
						//One of these characters (c) does not like the other...
						if(c.personality.relationship_exists(temp_char)){
							if(c.personality.check_relationship(temp_char,c) >= 0)c.personality.make_aggressive(temp_char);
						}else{
							c.personality.new_relationship(temp_char,c, Relationship.aggressive_change);
							c.personality.make_aggressive(temp_char);
							//temp_char.personality.new_relationship(c,temp_char, Relationship.aggressive_change);
							//temp_char.personality.make_aggressive(c);
						}
						c.set_busy();
						temp_char.set_busy();
												
						s = "<a href=\"event:combat,"+c.location.get_content_id(c)+",-1,-1\">BEGIN COMBAT</a>";
					}else{
						s = temp_char.sanitize(temp_char.get_combat_failures(),c) + "\n\n";
						//should give the option to start combat anyway...
						s += "<a href=\"event:combat,"+c.location.get_content_id(c)+",-1,"+c.location.get_content_id(temp_char)+"\">BEGIN COMBAT</a>";
					}
				}
			}else{
				//here we weave the challenges in replacing their tags (</c1></c2>...</cn>) in the dialogue
				if(force_tags == 0){
					var i:int = 0;
					for(i;i<challenges.length;i++){
						var cont_id:int = c.location.get_content_id(temp_char);
						if(temp_char == null) cont_id = -1;
						var temp:Challenge = challenges[i];
						while(s.indexOf("</c"+ String(i) +">") > -1)s = s.replace("</c"+ String(i) +">", "<a href=\"event:challenge,"+ cont_id +","+ String(id) +"," + String(i) +"," + c.location.get_content_id(c) + "\"><i>" + temp.get_text() + "</i></a>");
					}
				}
			}
			
			if(auto_trigger_id > -1){
				s += challenge(auto_trigger_id,c, temp_char, force_tags,null,false,sanitize_for);
			}
			
			if(rest_flag){
				rest_action(c);
			}
			
			return s;
		}
		
		public static function rest_action(c:Character):void{
			if(c.party != null){
				var i:int = 0;
				for(i;i<c.party.members.length;i++){
					var temp_char:Character = c.party.members[i];
					temp_char.reset_stats(-1, c.get_stat(FPalace_helper.con_id)/10);
					temp_char.apply_affect_by_id(FPalace_helper.curr_hp_id, temp_char.get_stat(FPalace_helper.max_hp_id),0, null, Body.change_stats_total);
					temp_char.apply_affect_by_id(FPalace_helper.curr_mp_id, temp_char.get_stat(FPalace_helper.max_mp_id),0, null, Body.change_stats_total);
					temp_char.apply_affect_by_id(FPalace_helper.curr_fatigue_id, temp_char.get_stat(FPalace_helper.max_fatigue_id),0, null, Body.change_stats_total);
					temp_char.set_busy(Main.t1_hour*8);
					temp_char.wait_time = -Main.t1_hour*8;
				}
			}else{
				c.reset_stats(-1, c.get_stat(FPalace_helper.con_id)/10);
				c.apply_affect_by_id(FPalace_helper.curr_hp_id, c.get_stat(FPalace_helper.max_hp_id),0, null, Body.change_stats_total);
				c.apply_affect_by_id(FPalace_helper.curr_mp_id, c.get_stat(FPalace_helper.max_mp_id),0, null, Body.change_stats_total);
				c.apply_affect_by_id(FPalace_helper.curr_fatigue_id, c.get_stat(FPalace_helper.max_fatigue_id),0, null, Body.change_stats_total);
				c.set_busy(Main.t1_hour*8);
				c.wait_time = -Main.t1_hour*8;
			}
		}
		
		public function set_requirement(stat_id:int, req:int, req_rmv:Boolean = true):void{
			requirement[requirement.length] = stat_id;
			requirement_amount[requirement_amount.length] = req;
			requirement_remove[requirement_remove.length] = req_rmv;
		}
		
		public function set_blowback(stat_id:int, req:int):void{
			blowback = stat_id;
			blowback_amount = req;
		}
		
		public function set_item_requirement(i:Item):void{
			item_req = i;
		}
		
		public function set_force_failure():void{
			force_failure = !force_failure;
		}
		
		public function set_attack_flag(i:int = attack_type_single_target, at:String = ""):void{
			attack_flag = i;
			attack_type = at;
		}
		
		
		public function set_fire_weapon_challenge():void{
			fire_weapon_challenge = !fire_weapon_challenge;
		}
		
		public function trigger_consequence(c1:Character, origin:Character, c2:Character, roll:int, consequence_id:int):String{
			var cont:Boolean = false;
			var con:Consequence = consequences[consequence_id];
			var s:String = ""
			if (item_req != null){
				var j:int = 0;
				for (j;j<c1.possessions.length;j++){
					if (c1.possessions[j].name == item_req.name){
						cont = true;
						break;
					}
				}
			}else{
				cont = true;
			}
			
			var temp_blowback:int = 0;
			
			if (cont || (force_failure && consequence_id > 0)){
				if(blowback > -1 && con.amt_by_roll){
					if(roll > c1.get_stat(blowback) && c1.get_stat(blowback) > 0) temp_blowback = c1.get_stat(blowback);
				}
				s += con.trigger(roll, c1,c2);
			}else{
				if(force_failure){
					s+= con.trigger(-100,c1,c2);
				}else{
					s += origin.get_name() + " doesn't seem to have the right item to do that.";
				}
			}
			
			if(roll >= 0 && blowback > -1){
				var blowback_text:String = "";
				if(blowback_amount > 0) temp_blowback = blowback_amount;
				if (con.amt_by_roll){
					blowback_text += origin.apply_affect_by_id(blowback,  Math.min(roll,temp_blowback));
				}else{
					blowback_text += origin.apply_affect_by_id(blowback, temp_blowback);
				}
				blowback_text = Consequence.name_swap(blowback_text);
				s += blowback_text;
			}
			return s;
		}
		
		public function roll_challenge(chall_id:int, c1:Character, c2:Character):int{
			var ret:int = 0;//success by default....
			var c:Challenge = challenges[chall_id];
			
			if(c.get_room_challenge() > 0){
				var con:Consequence = consequences[chall_id];
				if(con != null && con is Room_Consequence){
					if((con as Room_Consequence).join_area > -1 || (con as Room_Consequence).move_area > -1){
						trace("(Action.roll_challenge)Join or Move area detected... may be an issue, but just passing in the move and join rooms anyway.");
					}
					ret = c.roll(c1, c2, (con as Room_Consequence).move_room, (con as Room_Consequence).join_room);					
				}else{
					ret = c.roll(c1,c2);
				}
			}else{
				ret = c.roll(c1, c2);
			}
			
			return ret;
		}
		
		public function challenge(i:int,c1:Character = null, c2:Character = null, force_tags:int = 0, dynamic_choice:Array = null, no_requirement:Boolean = false, sanitize_for:Character = null):String{
			//I'm pretty sure c1 is always the instigator (aka player) here
			//what a terrible assumption
			var s:String = "";

			if (i < 0 || i >= challenges.length){
				trace("(Action.challenge)Got a bad challenge id");
				return "";
			}
			
			var origin:Character = originator as Character;			
			
			if(origin == null && c2 != null){
				origin = c2;
			}else if(origin == null && c1 != null){
				origin = c1;
			}
			
			if(c2 == null || c2 == c1){
				if(challenges[i].room_challenge == Challenge.get_non_party_target){
					c2 = c1;
					c1 = c1.location.get_random_character(c1);
					origin = c2;
				}
			}
			//in the case of a normal attack, we need to check if we should be firing off a weapon challenge instead
			var found:Boolean = false;
			if(fire_weapon_challenge){
				var k:int = 0;
				var hand_hold:int = 0;
				var temp_c:Character;
				var weapon:Weapon = null;
				
				if(attack_flag >= 0){
					temp_c = origin;
				}else{
					temp_c = c1;
				}
				
				for(k;k<temp_c.body.parts.length;k++){
					if(temp_c.body.parts[k].hold != null){
						weapon = temp_c.body.parts[k].hold;
						if(weapon.attack_action != null){
							if(weapon.attack_action.challenges[0] != null){
								if(hand_hold == 0){
									hand_hold = weapon.get_num_hold();
								}
								//only fire off the action once per weapon
								if(hand_hold == 1){
									//always fire off the weapons first challenge
									found = true;
									s += weapon.attack_action.challenge(0, c1, c2,force_tags,dynamic_choice,no_requirement,sanitize_for);
								}
								hand_hold--;
							}
						}
					}
				}
			}
			
			if(found) return s;
			
			//Challenge consequences
			if (consequences[i] != null){
				var con:Consequence = consequences[i];
				if(dynamic_choice == null || dynamic_choice[0] == null || !(con is Dynamic_Consequence)){
					var pass_requirements:Boolean = false;
					if(requirement[0] != null && !no_requirement){
						var req_count:int = 0;
						for(req_count;req_count<requirement.length;req_count++){
							if(origin.get_stat(requirement[req_count]) >= requirement_amount[req_count]){
								if(req_count > 0 && !pass_requirements){
									
								}else{
									pass_requirements = true;
								}
							}else{
								pass_requirements = false;
							}
						}
					}else{
						pass_requirements = true;
					}
					
					if (pass_requirements){						
						var roll:int = 0;
						if (attack_flag >= 0){
							var target_list:Array							
							if(attack_flag == attack_type_all_enemy_target_single_conseq){
								if(origin.location == null){
									trace("(Action.challenge)A character without a location is trying to attack....");
									return "";
								}
								if(origin.location.cm == null){
									trace("(Action.challenge)A character without a combat manager is trying to attack....");
									return "";
								}
								target_list = origin.location.cm.get_enemies(origin);
								//trace roll against all of the targets
								var count:int = 0;
								for(count;count<target_list.length;count++){
									var temp_roll:int = roll_challenge(i, origin, target_list[count]);
									if(temp_roll < roll)roll = temp_roll;
								}
								if(sanitize_for != null){
									s += c2.sanitize(c1.sanitize(trigger_consequence(c1, origin, c2, roll, i),sanitize_for),sanitize_for);
								}else{
									s += trigger_consequence(c1, origin, c2, roll, i);									
								}
							}else if(attack_flag == attack_type_party_target_party_conseq){
								if(c2.party == null){
									target_list[target_list.length] = c2;
								}else{
									target_list = c2.party.get_members();
								}
								count = 0;
								for(count;count<target_list.length;count++){
									roll = roll_challenge(i, origin, target_list[count]);
									if(sanitize_for != null){
										s += c2.sanitize(target_list[count].sanitize(trigger_consequence(target_list[count], origin, c2, roll, i) + "\n",sanitize_for),sanitize_for);
									}else{
										s += trigger_consequence(target_list[count], origin, c2, roll, i) + "\n";
									}
								}								
							}else if(attack_flag == attack_type_all_enemy_target_all_enemy_conseq){
								if(origin.location == null){
									trace("(Action.challenge)A character without a location is trying to attack....");
									return "";
								}
								target_list = origin.location.cm.get_enemies(origin);
								count = 0;
								for(count;count<target_list.length;count++){
									roll = roll_challenge(i, origin, target_list[count]);
									if(sanitize_for != null){
										s += c2.sanitize(target_list[count].sanitize(trigger_consequence(target_list[count], origin, c2, roll, i) + "\n",sanitize_for),sanitize_for);
									}else{
										s += trigger_consequence(target_list[count], origin, c2, roll, i) + "\n";
									}
								}								
							}else if(attack_flag == attack_type_all_target_all_conseq){
								if(origin.location == null){
									trace("(Action.challenge)A character without a location is trying to attack....");
									return "";
								}
								target_list = origin.location.cm.participants;
								count = 0;
								for(count;count<target_list.length;count++){
									roll = roll_challenge(i, origin, target_list[count]);
									if(sanitize_for != null){
										s += c2.sanitize(target_list[count].sanitize(trigger_consequence(target_list[count], origin, c2, roll, i) + "\n",sanitize_for),sanitize_for);
									}else{
										s += trigger_consequence(target_list[count], origin, c2, roll, i) + "\n";
									}
								}								
							}else if(attack_flag == attack_type_all_target_no_user_conseq){
								if(origin.location == null){
									trace("(Action.challenge)A character without a location is trying to attack....");
									return "";
								}
								target_list = origin.location.cm.participants;
								count = 0;
								for(count;count<target_list.length;count++){
									if(target_list[count] != origin){
										roll = roll_challenge(i, origin, target_list[count]);
										if(sanitize_for != null){
											s += c2.sanitize(target_list[count].sanitize(trigger_consequence(target_list[count], origin, c2, roll, i) + "\n",sanitize_for),sanitize_for);
										}else{
											s += trigger_consequence(target_list[count], origin, c2, roll, i) + "\n";
										}
									}
								}								
							}else if(attack_flag == attack_type_self_target){
								roll = roll_challenge(i, origin, origin);
								if(sanitize_for != null){
									s += origin.sanitize(c1.sanitize(trigger_consequence(c1, origin, origin, roll, i),sanitize_for),sanitize_for);
								}else{
									s += trigger_consequence(c1, origin, origin, roll, i);
								}
							}else{
								roll = roll_challenge(i, origin, c1);
								if(sanitize_for != null){
									s += origin.sanitize(c1.sanitize(trigger_consequence(c1, origin, origin, roll, i),sanitize_for),sanitize_for);
								}else{
									s += trigger_consequence(c1, origin, c2, roll, i);
								}
							}
						}else{
							if(c1 == origin && c2 != null)origin = c2;
							roll = roll_challenge(i, c1, origin);
							if(sanitize_for != null){
								s += c2.sanitize(c1.sanitize(trigger_consequence(c1, origin, c2, roll, i),sanitize_for),sanitize_for);
							}else{
								s += trigger_consequence(c1, origin, c2, roll, i);
							}
						}						
					}else{
						if(sanitize_for != null){
							s += c2.sanitize(c1.sanitize("</n2> tried to " + name + " but couldn't! ",sanitize_for),sanitize_for);
						}else{
							s += "</n2> tried to " + name + " but couldn't! ";
						}
					}				
				}else if(dynamic_choice[0] != null){
					var dynamic_con:Dynamic_Consequence = con as Dynamic_Consequence;
					if(dynamic_con.consequence_list_type == Dynamic_Consequence.list_nolist){
						if (attack_flag >= 0){
							roll = roll_challenge(i, origin, c1);							
						}else{
							roll = roll_challenge(i, c1, origin);							
						}
						if(dynamic_con.consequence_list_action != Dynamic_Consequence.list_target_part)s += trigger_consequence(c1, origin, c2, roll, i);
					}
					if(sanitize_for != null){
						s += c2.sanitize(c1.sanitize(dynamic_con.trigger_dynamic(dynamic_choice,roll,c1, c2),sanitize_for),sanitize_for);
					}else{
						s += dynamic_con.trigger_dynamic(dynamic_choice,roll,c1, c2);
					}
				}
				
				if (roll >= 0 && requirement[0] != null && !no_requirement){
					//need to meet the item requirement
					//s += origin.apply_affect_by_id(requirement, -requirement_amount);
					//don't know if we should print this
					req_count = 0;
					for(req_count;req_count < requirement.length; req_count++){
						if( requirement_remove[req_count] && requirement_amount[req_count] > 0 && origin.get_stat(requirement[req_count]) >= requirement_amount[req_count]){
							origin.apply_affect_by_id(requirement[req_count], -requirement_amount[req_count],0,null,Body.change_stats_total);
						}
					}
				}
				
				var next_challenge:int = -1;
				var j:int = 0;
				for(j;j<challenges.length;j++){
					var temp:Challenge = challenges[j];
					if(force_tags == 0){
						while(s.indexOf("</c"+ String(j) +">") > -1){
							if (originator == null){
								s = s.replace("</c"+ String(j) +">", "<a href=\"event:challenge,-1,"+ String(id) +"," + String(j) +"\"><i>" + temp.get_text() + "</i></a>");
							}
							if (temp != null && origin != null && c1.location != null){
								s = s.replace("</c"+ String(j) +">", "<a href=\"event:challenge,"+ c1.location.get_content_id(origin) +","+ String(id) +"," + String(j) +"," + c1.location.get_content_id(c1) + "\"><i>" + temp.get_text() + "</i></a>");
							}
						}
					}
					if(s.replace("</trigger"+j+">","") != s){
						   s = s.replace("</trigger"+j+">","");
						   next_challenge = j;
					}
				}
				
				var dynamic_challenge:int = 0;
				if(force_tags == 0){
					while(s.indexOf("</dc") > -1){
						while(s.indexOf("</dc" + dynamic_challenge + ">") > -1){
							if(attack_flag >= 0){
								s = s.replace("<dc" + dynamic_challenge + ">", "<a href=\"event:combat,"+ c1.location.get_content_id(c2) +"," + String(id) +","  + c1.location.get_content_id(c1) +","+ ((next_challenge>-1)?String(next_challenge):String(i)) +((dynamic_choice!=null&&dynamic_choice[0]!=null)?","+ dynamic_choice:"") +"," +String(dynamic_challenge) + "\">");
								s = s.replace("</dc" + dynamic_challenge + ">", "</a>");
							}else if (originator == null){
								s = s.replace("<dc" + dynamic_challenge + ">", "<a href=\"event:challenge,-1,"+ String(id) + "," + ((next_challenge>-1)?String(next_challenge):String(i)) + ((dynamic_choice!=null&&dynamic_choice[0]!=null)?","+ dynamic_choice:"") +"," +String(dynamic_challenge) +"\">");//this probably isn't right...
								s = s.replace("</dc" + dynamic_challenge + ">", "</a>");
							}else if (origin != null && c1.location != null){
								s = s.replace("<dc" + dynamic_challenge + ">", "<a href=\"event:challenge,"+ c1.location.get_content_id(origin) +","+ String(id) +"," + ((next_challenge>-1)?String(next_challenge):String(i)) +"," + c1.location.get_content_id(c1) +((dynamic_choice!=null&&dynamic_choice[0]!=null)?","+ dynamic_choice:"") +"," +String(dynamic_challenge) + "\">");//this probably isn't right...
								s = s.replace("</dc" + dynamic_challenge + ">", "</a>");
							}
						}
						dynamic_challenge++;
					}
				}
			}
			
			if(next_challenge > -1 && dynamic_challenge <= 0){
				//disable the requirement for the following challenges
				if(!delayed_trigger){
					
					if(consequences[next_challenge] is Room_Consequence && consequences[i] is Room_Consequence
					&& consequences[next_challenge].join_room == null && consequences[next_challenge].move_area == -1
					&& consequences[next_challenge].join_area == -1 && consequences[next_challenge].actions_to_add[0] == null
					&& consequences[i].move_room != null && consequences[i].join_room == null && consequences[i].move_area == -1
					&& consequences[i].join_area == -1 && consequences[i].actions_to_add[0] == null){
						consequences[next_challenge].add_room_effect(consequences[i].move_room);
					}
					
					s += challenge(next_challenge,c1, c2,force_tags, dynamic_choice, true,sanitize_for);				
				}else{
					var attack_id:int = -1;
					count = 0;
					var char_attack_array:Array = origin.get_attack_actions();
					for(count;count<char_attack_array.length;count++){
						if(char_attack_array[count] == this){
							attack_id = count;
							break;
						}
					}
					if(attack_id != -1 && c1 != null && c1.location != null)origin.set_next_attack(c1.location.get_content_id(origin) +","+ String(attack_id) +"," + String(next_challenge) +"," + c1.location.get_content_id(c1));
				}
			}
			
			/*if(s == ""){
				trace("(Action)Just did a whole challenge without ANY output. Given inputs: " + i + "," + c1 + "," + c2 + "," + force_tags + "," + dynamic_choice + "," + no_requirement);
				trace("Action name: " + name);
				if(c1 != null)trace("Character 1: "+ c1.get_name());
				if(c2 != null)trace("Character 2: "+ c2.get_name());
			}*/
			
			return s;
		}
		
		public function set_personal():void{
			//nothing personal
			personal = !personal;
		}
		
		public function set_party_use():void{
			party_use = !party_use;
		}
		
		public function get_personal():Boolean{
			return personal;
		}
		
		public function get_party_use():Boolean{
			return party_use;
		}
		
		public function get_cclass_origin():String{
			return cclass_origin;
		}
		
		public function set_cclass_origin(s:String):void{
			if(cclass_origin == ""){
				cclass_origin = s;
			}
		}
		
		public function get_cclass_level():int{
			return cclass_level;
		}
		
		public function set_cclass_level(i:int):void{
			if(cclass_level < i){
				cclass_level = i;
			}
		}
		
		public function clone(a:Action):void{
			name = a.name;
			//This... probably isn't the right way to clone these
			
			var i:int = 0;
			for(i;i<a.challenges.length;i++){
				challenges[i] = a.challenges[i];
			}
			i = 0;
			for(i;i<a.consequences.length;i++){
				consequences[i] = a.consequences[i];
			}			
			dialogue = a.dialogue;
			status_change = a.status_change;
			auto_trigger_id = a.auto_trigger_id;
			requirement = a.requirement;
			requirement_amount = a.requirement_amount;
			requirement_remove = a.requirement_remove;
			blowback = a.blowback;
			blowback_amount = a.blowback_amount;
			item_req = a.item_req;
			force_failure = a.force_failure;
			alchemy_flag = a.alchemy_flag;
			enchant_flag = a.enchant_flag;
			trade_flag = a.trade_flag;
			dismantle_flag = a.dismantle_flag;
			talk_flag = a.talk_flag;
			personal = a.personal;
			party_use = a.party_use;
			cclass_origin = a.cclass_origin;
			cclass_level = a.cclass_level;
			trader_item = a.trader_item;
			attack_order = a.attack_order;
			attack_desc = a.attack_desc;
			delayed_trigger = a.delayed_trigger;
			consume_action = a.consume_action;
			impreg_action = a.impreg_action;
			extract_action = a.extract_action;
			bury_action = a.bury_action;
			sewing_flag = a.sewing_flag;
			rest_flag = a.rest_flag;
			attack_flag = a.attack_flag;
			attack_type = a.attack_type;
			fire_weapon_challenge = a.fire_weapon_challenge;
			cclass_origin = a.cclass_origin;
			cclass_level = a.cclass_level;
		}
		


	}
	
	
	
}
