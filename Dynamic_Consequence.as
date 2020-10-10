package  {
	
	public class Dynamic_Consequence extends Consequence{
		
		public static var list_nolist:int = -1;
		public static var list_parts:int = 0;
		public static var list_noncrit_parts:int = 1;
		public static var list_inventory:int = 2;
		public static var list_inventory_alchemy:int = 3;
		public static var list_forage:int = 4;
		public static var list_hunt:int = 5;
		
		public static var list_noaction:int = -1;
		public static var list_removepart:int = 0;
		public static var list_removeandaddpart:int = 1;
		public static var list_useitem:int = 2;
		public static var list_useitemonother:int = 3;
		public static var list_target_part:int = 4;
		public static var list_dilute:int = 5;
		public static var list_refine:int = 6;
		public static var list_remove_alchemy:int = 7;
		public static var list_halvepart:int = 8;
		
		public var consequence_list_type:int;
		public var consequence_list_action:int;
		public var consequence_list_text:String;
		
		public function Dynamic_Consequence() {
			// constructor code
			super();
			consequence_list_type = Dynamic_Consequence.list_nolist;
			consequence_list_action = Dynamic_Consequence.list_noaction;
			consequence_list_text = "";
		}
		
		public function set_consequence_list(list_text:String, list_type:int = -1, list_action:int = -1):void{
			consequence_list_text = list_text;
			consequence_list_type = list_type;
			consequence_list_action = list_action;
		}
		
		override public function trigger(r:Number, c:Character = null, c2:Character = null):String{
			var ret:String = super.trigger(r,c,c2);
			ret += dynamic_choices(c, c2);
			return ret;
		}
		
		public function dynamic_choices(c:Character, c2:Character = null):String{
			var s:String = "";
			if(c2 == null) c2 = c;
			var temp_bp:Body_part;
			var con_count:int = 0;
			if(consequence_list_type == Dynamic_Consequence.list_parts){
				for(con_count;con_count < c.body.parts.length;con_count++){
					temp_bp = c.body.parts[con_count];
					s += "<dc" + con_count + ">" + temp_bp.get_name() + "</dc" + con_count + ">\n";
				}
			}else if(consequence_list_type == Dynamic_Consequence.list_noncrit_parts){
				for(con_count;con_count < c.body.parts.length;con_count++){
					temp_bp = c.body.parts[con_count];
					if(!temp_bp.crit_part()){
						s += "<dc" + con_count + ">" + temp_bp.get_name() + "</dc" + con_count + ">\n";
					}
				}
			}else if(consequence_list_type == Dynamic_Consequence.list_inventory){
				//right in combat, don't know about overworld
				for(con_count;con_count < c2.possessions.length ;con_count++){
					var temp_item:Item = c2.possessions[con_count];
					s += "<dc" + con_count + ">" + temp_item.get_name() + "</dc" + con_count + ">\n";
				}
			}else if(consequence_list_type == Dynamic_Consequence.list_inventory_alchemy){
				for(con_count;con_count < c2.possessions.length ;con_count++){
					var temp_aitem:Item = c2.possessions[con_count];
					if(temp_aitem is Alchemy_item)s += "<dc" + con_count + ">" + temp_aitem.get_name() + "</dc" + con_count + ">\n";
				}
			}else if(consequence_list_type == Dynamic_Consequence.list_forage){
				var skill_amt:Number = c.get_skill_by_id(FPalace_skills.adventure_id)/100;
				if(c.location != null && c.location.template != null){
					var i:int = c.location.template.item.length - 1;
					for(i;i>=0;i--){
						temp_item = c.location.template.item[i];
						if(temp_item != null && Math.random() < c.location.template.item_chance[i] + skill_amt){
							break;
						}
					}
					if(consequence_list_text != "") s += consequence_list_text;
					if(temp_item != null){
						while(s.indexOf("</choice>") > -1) s = s.replace("</choice>", temp_item.get_name());
						temp_item = temp_item.clone();
						c.add_to_possessions(temp_item);
					}else{
						while(s.indexOf("</choice>") > -1) s = s.replace("</choice>", "nothing");
					}
				}
			}else if(consequence_list_type == Dynamic_Consequence.list_hunt){
				//could just use template, but they aren't the characters I want to be able to "Hunt"... or spawn more of
				if(consequence_list_text != "") s += consequence_list_text;
				if(c.location.exit_actions[0] != null && c.location.exit_actions[0].consequences[0].char_effect != null){
					var char_template_list:Array = new Array();
					for(con_count;con_count<c.location.exit_actions[0].consequences.length;con_count++){
						char_template_list = char_template_list.concat(c.location.exit_actions[0].consequences[con_count].char_effect);
					}
					var rand:int = Math.round(Math.random()*char_template_list.length-1);
					while(char_template_list[rand] == null && char_template_list.length > 0){
						char_template_list = char_template_list.slice(0,rand).concat(char_template_list.slice(rand+1,char_template_list.length));
						rand = Math.round(Math.random()*char_template_list.length-1);
					}
					if(char_template_list[rand] != null && !(char_template_list[rand] is Array && char_template_list[rand][0] == null)){
						var new_char:Character = null;
						if(char_template_list[rand] is Character_template){
							new_char = char_template_list[rand].gen_char();
						}else if(char_template_list[rand] is Array){
							new_char = char_template_list[rand][Math.round(Math.random()*(char_template_list[rand].length-1))].gen_char();
						}else{
							trace("(Dynamic_Consequence.dynamic_choices)I don't know how to hunt this...");
						}
						
						if(c.location != null){
							new_char.new_location(c.location);
							if(c.location.cm == null) c.location.cm = new Combat_manager();
							c.location.cm.add_participant(c);
							c.location.cm.add_participant(new_char);
						}
						//Start combat
						c.personality.new_relationship(new_char,c,Relationship.aggressive_change);
						c.personality.make_aggressive(new_char);
						new_char.personality.new_relationship(c,new_char,Relationship.aggressive_change);
						new_char.personality.make_aggressive(c);
						while(s.indexOf("</choice>") > -1) s = s.replace("</choice>", "<a href=\"event:combat,"+c.location.get_content_id(c)+",-1,-1\"><i>"+new_char.get_short_description(c)+"</i></a>");
					}else{
						while(s.indexOf("</choice>") > -1) s = s.replace("</choice>", "nothing");
					}
				}else{
					while(s.indexOf("</choice>") > -1) s = s.replace("</choice>", "nothing");
				}
			}else{
				if(consequence_list_type != Dynamic_Consequence.list_nolist)trace("(Dynamic_Consequence.dynamic_choices)Got an unknown choice type. id: " + consequence_list_type);
			}
			
			return s;
		}
		
		public function trigger_dynamic(choice:Array, roll:int, c:Character = null, c2:Character = null):String{
			var ret:String = "";
			
			if(consequence_list_text != "") ret += consequence_list_text;
			
			if(choice == null || choice[0] == null) return ret;
			
			var temp_stat:Stat;
			var temp_bp:Body_part;
			var temp_item:Item;
			var temp_aitem:Alchemy_item;
			
			if(consequence_list_action == Dynamic_Consequence.list_removepart){
				//wrong in combat, right in overworld...
				temp_bp = c.body.parts[choice[0]];
				while(ret.indexOf("</choice>") > -1) ret = ret.replace("</choice>", temp_bp.get_name());
				c.body.remove_part_by_count(choice[0], c);
				if(temp_bp.crit_part()) ret += c.die();				
			}else if(consequence_list_action == Dynamic_Consequence.list_removeandaddpart){
				//wrong in combat, right in overworld...
				temp_bp = c.body.parts[choice[0]];
				while(ret.indexOf("</choice>") > -1) ret = ret.replace("</choice>", temp_bp.get_name());
				c.body.remove_part_by_count(choice[0], c);
				if(temp_bp.crit_part()) ret += c.die();
				c2.apply_change_effect(temp_bp);
			}else if(consequence_list_action == Dynamic_Consequence.list_useitem){
				//right in combat, don't know about overworld
				temp_item = c2.possessions[choice[0]];
				while(ret.indexOf("</choice>") > -1) ret = ret.replace("</choice>", temp_item.get_name());
				if(temp_item is Weapon){
					ret += c2.hold(temp_item as Weapon, 0, -1, true);
				}else if(temp_item is Equipment){
					ret += c2.equip(temp_item as Equipment, 0, -1, true);
				}else{
					if(temp_item != null){
						ret += temp_item.use_item(c2,choice[0]);
						if(!temp_item.still_usable())c2.drop(choice[0]);
					}
				}
			}else if(consequence_list_action == Dynamic_Consequence.list_useitemonother){
				//right in combat, don't know about overworld
				temp_item = c2.possessions[choice[0]];
				while(ret.indexOf("</choice>") > -1) ret = ret.replace("</choice>", temp_item.get_name());
				if(temp_item is Weapon || temp_item is Equipment){
					trace("(Dynamic_Consequence.trigger_dynamic)Using some sort of equipment/weapon on another character... not sure what to do");
				}else{
					if(temp_item != null){
						if(choice[1] != null){
							if(temp_item.change_effects[0] is Action){
								var temp_a:Action = temp_item.change_effects[0];
								if(temp_item.num_uses>0)temp_item.num_uses--;
								ret += temp_a.challenge(0,c,c,1,choice.slice(1,choice.length));
							}
						}else{
							ret += temp_item.use_item(c,choice[0],1);
						}
						if(!temp_item.still_usable())c2.drop(choice[0]);
					}
				}
			}else if(consequence_list_action == Dynamic_Consequence.list_target_part){
				//right in combat, don't know about overworld
				temp_bp = c.body.parts[choice[0]];
				var count:int = 0;
				for(count;count<target_part.length;count++){
					if(!consequence_target[count])target_part[count] = temp_bp.get_part_id();
				}
				ret += trigger(roll, c, c2);
				while(ret.indexOf("</choice>") > -1) ret = ret.replace("</choice>", temp_bp.get_name());
			}else if(consequence_list_action == Dynamic_Consequence.list_dilute){
				temp_aitem = c2.possessions[choice[0]];
				while(ret.indexOf("</choice>") > -1) ret = ret.replace("</choice>", temp_aitem.get_name());
				if(temp_aitem != null){
					//Should go through the use and alchemy effects of the item, and halving them
					if(temp_aitem.get_name().indexOf("Diluted") < 0)temp_aitem.set_name("Diluted " + temp_aitem.get_name());
					var i:int = 0;
					for(i;i<temp_aitem.types.length;i++){
						//go through and randomly remove types...
						if(Math.random() < 0.5){
							temp_aitem.types = temp_aitem.types.slice(0,i).concat(temp_aitem.types.slice(i+1,temp_aitem.types.length));
							i--;
						}
					}
					i = 0;
					for(i;i<temp_aitem.effects.length;i++){
						//go through and halve effects...
						if(temp_aitem.effects[i] != null)temp_aitem.effects[i] = temp_aitem.effects[i]/2;
					}
					i = 0;
					for(i;i<temp_aitem.change_effects.length;i++){
						//go through and randomly remove change effects...
						if(Math.random() < 0.5){
							temp_aitem.change_effects = temp_aitem.change_effects.slice(0,i).concat(temp_aitem.change_effects.slice(i+1,temp_aitem.change_effects.length));
							i--;
						}
					}
					i = 0;
					for(i;i<temp_aitem.stat_action_add.length;i++){
						//go through and randomly remove action adds...
						if(Math.random() < 0.5){
							temp_aitem.stat_action_add = temp_aitem.stat_action_add.slice(0,i).concat(temp_aitem.stat_action_add.slice(i+1,temp_aitem.stat_action_add.length));
							i--;
						}
					}
					if(temp_aitem.get_propogate())temp_aitem.set_propogate();
				}
			}else if(consequence_list_action == Dynamic_Consequence.list_refine){
				//need to list the types available to refine...
				temp_aitem = c2.possessions[choice[0]];
				var alch_ident:int = 0;
				var char_for_chal:Character = c2;
				if(c2.party != null)char_for_chal = c2.party.get_best_at_skill(FPalace_skills.item_alchemy_effects_id);
				var alch_ident_challenge:Challenge = new Challenge(true);
				alch_ident_challenge.set_attack_stat(FPalace_skills.item_alchemy_effects_id);
				alch_ident_challenge.set_defense_stat(-1,temp_aitem.get_identify_difficulty());
				alch_ident_challenge.set_variability(temp_aitem.get_identify_difficulty()/2);
				
				var result:int = alch_ident_challenge.roll(char_for_chal);
	
				if(result >= 0){
					alch_ident += Math.round((char_for_chal.get_skill_by_id(FPalace_skills.item_alchemy_effects_id)+result)/temp_aitem.get_identify_difficulty());
				}
				i = 0;
				for(i;i<temp_aitem.types.length;i++){
					if(temp_aitem.types[i] != null){
						var name_string:String = "";
						if(Math.random() <= alch_ident){
							if(temp_aitem.types[i] >= 0){
								name_string = FPalace_helper.get_stat_name_by_id(temp_aitem.types[i]);
							}else{
								name_string = FPalace_helper.get_stat_name_by_id(-temp_aitem.types[i]);
							}
						}
						if(name_string == "")name_string = "?";
						ret += "<dc" + i + ">" + name_string + "</dc" + i + ">\n";
					}
				}
			}else if(consequence_list_action == Dynamic_Consequence.list_remove_alchemy){
				temp_aitem = c2.possessions[choice[0]];
				var alch_challenge:Challenge = new Challenge(true);
				alch_challenge.set_attack_stat(FPalace_skills.alchemy_id);
				alch_challenge.set_defense_stat(-1,temp_aitem.get_identify_difficulty());
				alch_challenge.set_variability(temp_aitem.get_identify_difficulty()/2);
				
				result = alch_challenge.roll(c2);
	
				var type_to_remove:int = choice[1];
				while(ret.indexOf("</choice>") > -1) ret = ret.replace("</choice>", temp_aitem.get_name());
				if(result < 0){
					temp_aitem.types = temp_aitem.types.slice(0,(type_to_remove>0) ? type_to_remove-1:0).concat(temp_aitem.types.slice(type_to_remove+2,temp_aitem.types.length));
				}else{
					temp_aitem.types = temp_aitem.types.slice(0,type_to_remove).concat(temp_aitem.types.slice(type_to_remove+1,temp_aitem.types.length));
				}
				if(temp_aitem.get_name().indexOf("Refined") < 0)temp_aitem.set_name("Refined " + temp_aitem.get_name());
				if(temp_aitem.get_propogate())temp_aitem.set_propogate();
			}else if(consequence_list_action == Dynamic_Consequence.list_halvepart){
				temp_bp = c.body.parts[choice[0]];
				i = 0;
				for(i;i<temp_bp.stat_description.length;i++){
					temp_stat = temp_bp.stat_description[i];
					ret += temp_bp.apply_effect(temp_stat.get_id(),-temp_stat.stat_value/2,c);
				}
				while(ret.indexOf("</choice>") > -1) ret = ret.replace("</choice>", temp_bp.get_name());				
			}else{
				if(consequence_list_action != Dynamic_Consequence.list_noaction){
					trace("(Dynamic_Consequence.trigger_dynamic)Got an unknown action id... " + consequence_list_action + " came with choices: " + choice);
				}
			}
			return ret;
		}
		
		override public function clone():Consequence{
			var ret:Dynamic_Consequence = new Dynamic_Consequence();
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
			ret.consequence_target = this.consequence_target;
			ret.make_party = this.make_party;
			ret.remove_party = this.remove_party;
			ret.max_damage = this.max_damage;
			ret.target_part = this.target_part;
			ret.remove_effect_ids = this.remove_effect_ids;
			ret.interupt_chal = this.interupt_chal;
			ret.char_effect = this.char_effect;
			
			ret.consequence_list_type = this.consequence_list_type;
			ret.consequence_list_action = this.consequence_list_action;
			ret.consequence_list_text = this.consequence_list_text;
			return ret;
		}

	}
	
}
