﻿package {
	
	import flash.display.Sprite;
	import flash.display.Graphics;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.display.BitmapData;
	import flash.display.Bitmap;
		
	public class Character extends Dynamic_object{
		
		public static var relations_affect_id:int = -99999;
		public static var gold_id:int = -99998;
		public static var attraction_id:int = -99997;
		public static var introduced_id:int = -99996;
		
		public var possessions:Array;
		
		public var mother:Character;
		public var father:Character;
		
		public var surname:String;
		
		public var location:Room;
		public var status:String;
		
		public var actions:Array;
		
		public var body:Body;
		public var sex:Sex;
		public var cclass:Array;
		
		public var skills:Skill_set;
		
		public var equip_state:int = 0;
		
		public var personality:Personality;
		
		public var ai_move:int = 0;
		public var busy:int;
		public var wait_time:int;
		//ONLY USED BY AREA
		public var ai_already_moved:Boolean = false;
		//ONLY USED BY AREA
		public var total_actions_taken:int;
		public var previous_action_output:String;
		
		public var gold:uint;
		public var xp:uint;
		public var nxt_lvl_xp:uint;
		public var lvl:uint;
		public var stat_points:uint;

		public var stat_id:Array;
		public var stat:Array;
		public var party:Party;
		
		public var current_tick_effects:Array;
		
		public var challenge_output:String;
		public var next_attack:String;
		
		public var char_sprite_id:int;
		public var char_34sprite_id:int;

		public function Character(_name:String = ""):void {
			set_name(set_surname(_name,true));
			possessions = new Array();
			actions = new Array();
			stat_id = new Array();
			stat = new Array();
			current_tick_effects = new Array();
			
			personality = new Personality();
			personality.new_relationship(this, this, Relationship.initial_reaction_change);
			personality.relationships[0].set_introduced();
			
			gold = 0;
			xp = 0;
			lvl = 1;
			stat_points = 0;
			nxt_lvl_xp = 100;
			total_actions_taken = 0;
			wait_time = busy = 0;
			previous_action_output = "";
						
			new_stat(FPalace_helper.age_id, FPalace_helper.stat_age(), 23);//probably won't move this one
			
			new_stat(FPalace_helper.weight_id, FPalace_helper.stat_weight(), 0);
			new_stat(FPalace_helper.max_weight_id, FPalace_helper.stat_max_weight(), 0);
			
			body = new Body();
			sex = new Sex();
			cclass = new Array();
			
			skills = new Skill_set();
			
			challenge_output = "";
			next_attack = "";
			
			var a:Action = new Action();
			a.set_name("Attack");
			add_action(a);
			
			a = new Action();
			a.set_name("Talk");
			a.set_talk_flag();
			add_action(a);
			
			char_sprite_id = -1;
			char_34sprite_id = -1;
		}
		
		public function set_surname(s:String, full_name:Boolean = false):String{
			var ret:String = s;
			if(full_name){
				if(s.indexOf(" ") > 0){
					ret = s.substr(0,s.indexOf(" "));
					surname = s.substr(s.indexOf(" ")+1,s.length);
				}else{
					surname = "";
				}
			}else{
				surname = s;
			}
			return ret;
		}
		
		public function get_surname():String{
			return surname;
		}
		
		public function remove_status_effect_by_id(status_id:int, tick_count:int = -1):String{
			var ret:String = "";
			var i:int = 0;
			for(i;i<current_tick_effects.length;i++){
				if(current_tick_effects[i].get_id() == status_id){
					if(tick_count == -1){
						personality.advance_objectives(Quest.status_remove_action, [status_id],this);
						current_tick_effects = current_tick_effects.slice(0,i).concat(current_tick_effects.slice(i+1,current_tick_effects.length));
						if(ret.indexOf(Tick_Effect.get_status_effect_name(status_id))<0)ret += get_name() + " is cured of " + Tick_Effect.get_status_effect_name(status_id);
						i--;
					}else{
						var count:int = 0;
						for(count;count<tick_count;count++){
							var temp_string:Array = current_tick_effects[i].tick(this).split(".");
							var effect_count:int = 0;
							for(effect_count;effect_count<temp_string.length;effect_count++){
								if(ret.indexOf(temp_string[effect_count]) < 0) ret += temp_string[effect_count]+".";
							}
							if(current_tick_effects[i].ticks_left() <= 0){//this effect is done
								current_tick_effects = current_tick_effects.slice(0, i).concat(current_tick_effects.slice(i+1, current_tick_effects.length));
								i--;
								break;
							}
						}
					}
				}
			}
			return ret;
		}
		
		public function set_challenge_output(s:String):void{
			//attempt to remove duplicate warnings and empty space
			if(s.indexOf("<sid") >= 0){
				var stat_id:String = s.slice(s.indexOf("<sid"), s.indexOf(",",s.indexOf("<sid")));
				if(challenge_output.indexOf(stat_id) >= 0){
					var chall_out_index:int = challenge_output.indexOf(stat_id);
					//OK, we've already got some output for this stat... let's modify the quantity
					var new_quant:Number = Number(s.slice(s.indexOf(",",s.indexOf("<sid"))+1, s.indexOf(",", s.indexOf(",",s.indexOf("<sid")) + 1)));
					var old_quant:Number = Number(challenge_output.slice(challenge_output.indexOf(",",chall_out_index)+1, challenge_output.indexOf(",", challenge_output.indexOf(",",chall_out_index)+1)));
					
					if((old_quant > 0 && new_quant < 0) || (old_quant < 0 && new_quant > 0)){
						if(!(challenge_output.indexOf(stat_id,chall_out_index+1) >= 0)){
							challenge_output += s + "~\n~";
						}else{
							chall_out_index = challenge_output.indexOf(stat_id,chall_out_index+1)
							old_quant = Number(challenge_output.slice(challenge_output.indexOf(",",chall_out_index)+1, challenge_output.indexOf(",", challenge_output.indexOf(",",chall_out_index)+1)));
							old_quant = old_quant + new_quant;
							challenge_output = challenge_output.slice(0,challenge_output.indexOf(",",chall_out_index)+1) + old_quant + challenge_output.slice(challenge_output.indexOf(",", challenge_output.indexOf(",",chall_out_index)+1),challenge_output.length);
						}
					}else{
						old_quant = old_quant + new_quant;
						challenge_output = challenge_output.slice(0,challenge_output.indexOf(",",chall_out_index)+1) + old_quant + challenge_output.slice(challenge_output.indexOf(",", challenge_output.indexOf(",",chall_out_index)+1),challenge_output.length);
					}
				}else{
					challenge_output += s + "~\n~";
				}
			}else{
				var temp_array:Array = s.split("\n");
				var i:int = 0;
				for(i;i<temp_array.length;i++){
					if(!(challenge_output.indexOf(temp_array[i]) >= 0) && temp_array[i] != null && temp_array[i] != ""){
						challenge_output += temp_array[i] + "~\n~";   
					}else if(challenge_output.indexOf(temp_array[i]) >= 0){
						//we may need to tick up the count for this stat...
						if(challenge_output.charAt(challenge_output.indexOf(temp_array[i]) - 1) == "\""){
							var start_string:int = challenge_output.indexOf(temp_array[i]) - 3;
							while(challenge_output.charAt(start_string) != "," && start_string >= 0)start_string--;
							if(start_string >= 0){
								start_string++;
								var curr_count:int = int(challenge_output.slice(start_string, challenge_output.indexOf(temp_array[i]) - 2));
								curr_count++;
								if(curr_count == 0){
									while(challenge_output.charAt(start_string) != "\n" && start_string >= 0)start_string--;
									start_string++;
									challenge_output = challenge_output.slice(0, start_string) + challenge_output.slice(challenge_output.indexOf("\n",start_string), challenge_output.length);
								}else{
									challenge_output = challenge_output.slice(0, start_string) + curr_count + challenge_output.slice(challenge_output.indexOf(temp_array[i]) - 2, challenge_output.length);
								}
							}
						}
					}
				}
			}
		}
		
		public function get_challenge_output():String{
			var ret:String = "";
			var temp_array:Array = challenge_output.split("~\n~");
			var i:int = 0;
			for(i;i<temp_array.length;i++){
				if(temp_array[i] != null && temp_array[i].indexOf("<sid") >= 0){
					var first_comma:int = temp_array[i].indexOf(",",temp_array[i].indexOf("<sid"));
					var sid:String = temp_array[i].slice(temp_array[i].indexOf("<sid")+1, first_comma);
					var second_comma:int = temp_array[i].indexOf(",",first_comma+1);
					var quant:Number = Number(temp_array[i].slice(first_comma+1, second_comma));
					first_comma = second_comma;
					second_comma = temp_array[i].indexOf(",",first_comma+1);
					var curr_count:int = int(temp_array[i].slice(first_comma+1, second_comma));
					if(curr_count > 0){
						var k:int = i + 1;
						for(k;k<temp_array.length;k++){
							if(temp_array[k] != null && temp_array[k].indexOf(sid) >= 0){
								first_comma = temp_array[k].indexOf(",",temp_array[k].indexOf("<sid"));
								second_comma = temp_array[k].indexOf(",",first_comma+1);
								var second_quant:Number = Number(temp_array[k].slice(first_comma+1, second_comma));
								first_comma = second_comma;
								second_comma = temp_array[k].indexOf(",",first_comma+1);
								curr_count = int(temp_array[k].slice(first_comma+1, second_comma));
								if(curr_count > 0){
									if( (quant > 0 && quant + second_quant >= 0) || (quant < 0 && quant + second_quant <= 0) )temp_array[k] = null;
									if((second_quant > 0 && quant + second_quant >= 0) || (second_quant < 0 && quant + second_quant <= 0))temp_array[i] = null;
								}
							}
						}
						if(temp_array[i] != null){
							first_comma = temp_array[i].indexOf(",",temp_array[i].indexOf("<sid"));
							second_comma = temp_array[i].indexOf(",",first_comma+1);
							first_comma = second_comma;
							second_comma = temp_array[i].indexOf(",",first_comma+1);
							ret += temp_array[i].slice(second_comma + 2, temp_array[i].indexOf("\"", second_comma + 2));
						}
					}
				}else{
					if(temp_array[i] != null && temp_array[i] != "")ret += temp_array[i];
				}
			}
			if(ret!="")ret += "\n\n";
			if(location == null)ret = "</n> has died. \n\n";
			challenge_output = "";
			return ret;
		}
		
		public function set_next_attack(s:String = ""):void{
			next_attack = s;
		}
		
		public function get_next_attack():String{
			var ret:String = next_attack;
			set_next_attack();
			return ret;
		}
		
		public function get_status_effects():Array{
			var ret:Array = new Array();
			var i:int = 0;
			for(i;i<current_tick_effects.length;i++){
				if(current_tick_effects[i].get_id() >= 0){
					var found:Boolean = false;
					var k:int = 0;
					for(k;k<ret.length;k++){
						if(ret[k] == current_tick_effects[i].get_id()){
							found = true;
							break;
						}
					}
					if(!found)ret[ret.length] = current_tick_effects[i].get_id();
				}
			}
			return ret;
		}
				
		public function get_inventory_weight():Number{
			var ret:Number = 0;
			var i:int = 0;
			for(i;i<possessions.length;i++){
				var item:Item = possessions[i] as Item;
				ret += item.get_weight();
			}
			return ret;
		}
		
		public function get_equip_weight():Number{
			var ret:Number = 0;
			var equip_array:Array = body.get_equip_array(true);
			var i:int = 0;
			for(i;i<equip_array.length;i++){
				var item:Item = equip_array[i] as Item;
				ret += item.get_weight();
			}
			
			return ret;
		}
		
		public function judge_relative_skill(c:Character):String{
			var my_skill_tot:int = FPalace_skills.get_total_skill_value(this, FPalace_skills.fight_id);
			var other_skill_tot:int = FPalace_skills.get_total_skill_value(c, FPalace_skills.fight_id);
			
			
			var ratio:Number = 1;
			if(other_skill_tot > 0){
				ratio = my_skill_tot/other_skill_tot;
			}else{
				ratio = my_skill_tot/1;
			}
			
			var ret:String = "";
			
			if(ratio < 0.90){
				ret = "<font color='#8C1717'></pronoun> looks tougher than you.</font>";
			}else if(ratio > 1.1){
				ret = "<font color='#7CFC00'></pronoun> looks weaker than you.</font>";
			}else{
				ret = "<font color='#66CCCC'></pronoun> looks about equal with you.</font>";
			}
			
			return ret;
		}
		
		public function get_skill_by_id(skill_id:int):int{
			return skills.get_skill_value(this, skill_id);
		}
		
		public function get_skill_rank_by_id(skill_id:int):int{
			return skills.get_skill_ranks(skill_id);
		}
		
		public function set_skills_by_id(skill_id:int, change_amount:int):String{
			var ret:String = "";
			if(FPalace_skills.get_skill_by_id(skill_id) != null){
				personality.advance_objectives(Quest.skill_action, [skill_id], this);
				ret += sanitize(skills.set_skill_value(this, skill_id, change_amount));
			}
			return ret;
		}
		
		public function increase_skill_by_id(skill_id:int, change_amount:int = 1):String{
			var ret:String = "";
			var cost:int = skills.get_skill_cost(this, skill_id, change_amount);
			xp = xp - cost;
			ret += skills.set_skill_value(this, skill_id, change_amount);
			set_busy();
			return ret;
		}
		
		public function set_skill_bonus(skill_id:int, change_amt:int):String{
			var ret:String = "";
			if(FPalace_skills.get_skill_by_id(skill_id) != null){
				ret += skills.set_bonus(skill_id, change_amt);
			}			
			
			return ret;
		}
		
		public function determine_sex(c:Character = null):Sex{
			if(c == null){
				var temp:Sex = body.get_sex();
				if(temp.get_name() != sex.get_name())set_sex(temp);
			}else{
				var look_sex:Sex = c.body.get_sex(this, c);
				return look_sex;
			}
			return sex;
		}
		
		public function fire_action(i:int, k:int, j:String = null):String{
			var ret:String = "";
			if(location == null) return ret;
			var temp_action:Action;
			if (i < 0){
				if(i == -1){
					temp_action = location.get_action(k);//location.actions[k];
					ret = sanitize(temp_action.trigger(this), null);
				}else{
					temp_action = location.static_contents[-i-2].get_action(k,location);
					ret = sanitize(temp_action.trigger(this), null);
				}
			}else{
				if(location.contents[i] != null && location.contents[i] is Character){
					temp_action = location.contents[i].get_action(k);
					if(temp_action != null){
						if(temp_action.get_bury()){
							location.remove_static_contents(int(j));
							j = null;
						}
							
						if(j!=null){
							if(int(j) == -1 && party != null){
								ret = "choose target:\n";
								var member_count:int = 0;
								for(member_count;member_count<party.members.length;member_count++){
									 if(temp_action.auto_trigger_id > -1){
										ret += "<a href=\"event:challenge,"+ String(i) +","+ String(k) +"," + temp_action.auto_trigger_id +"," + location.get_content_id(party.members[member_count]) + "\"><font color='#0000FF'>"+party.members[member_count].get_name() +"</font></a>    ";
									 }else{
									 	ret += "<a href=\"event:action," + String(i) + "," + String(k) + ","+location.get_content_id(party.members[member_count])+"\"><font color='#0000FF'>"+party.members[member_count].get_name() +"</font></a>    "; 
									 }
								}
							}else{
								ret = (location.get_content(int(j)) as Character).sanitize(temp_action.trigger(location.get_content(int(j)) as Character),this);
							}
						}else{
							ret = sanitize(temp_action.trigger(this), null);
						}
					}
				}
			}
			return sanitize(ret);
		}
		
		public function fire_challenge(i:int, k:int, j:int, l:String = null, m:Array = null):String{
			var ret:String = "";
			if (i == -1){	
				ret = location.fire_challenge(k, j, this, m);
				if(challenge_output != ""){
					ret += get_challenge_output();
				}
				ret = this.sanitize(ret);
			}else{
				var temp_char:Character;
				if(l!= null){
					temp_char = location.get_content(int(l)) as Character;
				}else{
					temp_char = this;
				}
				if(temp_char != null && temp_char.location != null && temp_char.location.get_content(i) != null){
					var i_char:Character = (temp_char.location.get_content(i) as Character);
					var temp_action:Action = i_char.get_action(k);
					if(temp_action != null){
						ret = temp_char.sanitize(temp_action.challenge(j,i_char,temp_char,0, m));
						ret = i_char.sanitize(ret);
						if(temp_char.challenge_output != ""){
							ret += temp_char.sanitize(temp_char.get_challenge_output());
						}
						if(i_char.challenge_output != ""){
							ret += i_char.sanitize(i_char.get_challenge_output());
						}
					}
				}
			}
			return ret;
		}
		
		public function apply_tick_effect(tf:Tick_Effect):void{
			if(!get_primary_race().check_immunity(tf.status_id)){
				personality.advance_objectives(Quest.status_add_action, [tf], this);
				current_tick_effects[current_tick_effects.length] = tf;
			}
		}
		
		public function new_stat(id:int, s:Stat, c:Number = 0):void{
			stat_id[stat_id.length] = id;
			s.set_stat_value(c);
			stat[stat.length] = s;
		}
		
		public function set_party(p:Party):void{
			personality.advance_objectives(Quest.party_action, [p], this);
			party = p;
		}
		
		public function get_party():Party{
			return party;
		}
		
		public function talk(c:Character, topic:int = -1, topic_step:int = 0, challenge_num:int = -1, dynamic_choice:Array = null):String{
			set_busy();
			return personality.talk(c, this, topic, topic_step, challenge_num, dynamic_choice);			
		}
		
		//gets called from apply_affect_by_id
		public function character_reaction(c:Character, stat_id:int, quant:Number):Number{
			return personality.determine_reaction(c, stat_id, quant, this);
		}
		
		public function get_aggresive(c:Character, party_check:int = 0, c_party_check:int = 0):Boolean{
			var agg:Boolean = false;
			if(c == this) return agg;
			
			if(c.party != null && c_party_check == 0){
				var i:int = 0;
				var party_mem:Array = c.party.get_members();
				for(i;i<party_mem.length;i++){
					if(get_aggresive(party_mem[i], 0, 1)) agg = get_aggresive(party_mem[i], 0, 1);
				}
			}
			
			if(personality.check_relationship(c,this) < 0) agg = true;
			if(party != null && !agg && party_check == 0){
				agg = party.get_aggressive(c, c_party_check);
			}
			
			if(!get_combat_status()) agg = false;
			
			return agg;
		}
		
		public function get_all_overworld_actions():Array{
			var ret:Array = new Array();
			ret = ret.concat(actions);
			ret = ret.concat(skills.get_skill_actions(this));
			ret = ret.concat(body.get_actions_array(this));
			if(personality.job != null)ret = ret.concat(personality.job.get_actions(this));
			return ret;
		}
		
		public function get_overworld_actions_by_type(type_name:String, init_char:Character):String{
			var ret:String = "";
			var temp_array:Array = get_all_overworld_actions();
			var i:int = 0;
			for(i;i<temp_array.length;i++){
				if(temp_array[i] != null && temp_array[i].attack_type == type_name){
					if(ret.indexOf(">"+temp_array[i].get_name() +"<") >= 0)continue;
					if(temp_array[i].get_party_use() && party != null){
						ret += "<a href=\"event:action," + location.get_content_id(this) + "," + String(i) + ",-1\"><font color='#0000FF'>"+temp_array[i].get_name() +"</font></a>    "; 
					}else{
						if(init_char == this){
							ret += "<a href=\"event:action," + location.get_content_id(this) + "," + String(i) +"\"><font color='#0000FF'>"+ temp_array[i].get_name() +"</font></a>    "; 
						}else{
							ret += "<a href=\"event:action," + location.get_content_id(this) + "," + String(i) + "," + location.get_content_id(this) + "\"><font color='#0000FF'>"+temp_array[i].get_name() +"</font></a>    "; 
						}
					}
				}
			}
			
			return ret;
		}
		
		public function get_party_actions():String{
			var s:String = "";
			var k:int = 0;
			var temp_array:Array = get_all_overworld_actions()
			for (k;k<temp_array.length;k++){
				 if(temp_array[k] != null && location != null){
					if(temp_array[k].get_name() != "" && !temp_array[k].get_bury()){
						if(s.indexOf(">"+temp_array[k].get_name() +"<") >= 0)continue;
						if(temp_array[k].get_party_use() || temp_array[k].get_personal()){
							if(temp_array[k].attack_type != ""){
								if(s.indexOf(temp_array[k].attack_type) < 0){
									s += "<a href=\"event:act_by_type," + location.get_content_id(this) + "," + temp_array[k].attack_type + "\"><font color='#0000FF'>"+ temp_array[k].attack_type +"</font></a>    "; 
								}
							}else{
								if(temp_array[k].get_party_use() && party != null){
									s += "<a href=\"event:action," + location.get_content_id(this) + "," + String(k) + ",-1\"><font color='#0000FF'>"+temp_array[k].get_name() +"</font></a>    "; 
								}else{
									s += "<a href=\"event:action," + location.get_content_id(this) + "," + String(k) + "," + location.get_content_id(this) + "\"><font color='#0000FF'>"+temp_array[k].get_name() +"</font></a>    "; 
								}
							}
						}else{
							s += "<a href=\"event:action," + location.get_content_id(this) + "," + String(k) +"\"><font color='#0000FF'>"+temp_array[k].get_name() +"</font></a>    "; 
						}
					}
				}
			}			
			return s;
		}
		
		public function get_personal_actions():String{
			var s:String = "";
			var temp_array:Array = get_all_overworld_actions();
			var k:int = 0;
			for (k;k<temp_array.length;k++){
				 if(temp_array[k] != null && location != null){
					if(temp_array[k].get_name() != "" && !temp_array[k].get_bury()){
						if(s.indexOf(">"+temp_array[k].get_name() +"<") >= 0)continue;
						if(get_name() != "" && (temp_array[k].get_personal() || temp_array[k].get_party_use())){
							if(temp_array[k].attack_type != ""){
								if(s.indexOf(temp_array[k].attack_type) < 0){
									s += "<a href=\"event:act_by_type," + location.get_content_id(this) + "," + temp_array[k].attack_type + "\"><font color='#0000FF'>"+ temp_array[k].attack_type +"</font></a>    "; 
								}
							}else{
								if(temp_array[k].get_party_use() && party != null){
									s += "<a href=\"event:action," + location.get_content_id(this) + "," + String(k) +",-1\"><font color='#0000FF'>"+ temp_array[k].get_name() +"</font></a>    "; 
								}else{
									s += "<a href=\"event:action," + location.get_content_id(this) + "," + String(k) +"\"><font color='#0000FF'>"+ temp_array[k].get_name() +"</font></a>    "; 
								}
							}
						}
					}
				 }
			}
			return s;
		}
		
		public function get_lvl():int{
			return lvl;
		}
		
		public function set_busy(i:int = 1):void{
			busy+=i;
			wait_time = 0;
		}
		
		public function get_move():Boolean{
			if (ai_move > 0)return true;
			return false;
		}
		
		public function set_move(i:int=1):void{
			ai_move+=i;
		}
		
		public function get_short_description(c:Character):String{
			var ret:String = "";
			var determined_sex:Sex = c.determine_sex(this);
			var temp_string:String = "";
			if(get_primary_race().get_name() != c.get_primary_race().get_name()){
				if(personality.job == null){
					temp_string = determined_sex.get_age_name(this);
					if(temp_string == ""){
						temp_string = determined_sex.get_name() + " " + get_primary_race().get_name();
					}else{
						if(get_primary_race().get_anthro()){
							temp_string = get_primary_race().get_name() + " " + temp_string;
						}else{
							temp_string = get_primary_race().get_name();
						}
					}
				}else{
					temp_string = get_primary_race().get_name() + " " + personality.job.get_name();
				}
			}else{
				if(personality.job == null){
					temp_string = determined_sex.get_age_name(this);
					if(temp_string == ""){
						temp_string = determined_sex.get_name() + " " + get_primary_race().get_name();
					}
				}else{
					temp_string = get_primary_race().get_name() + " " + personality.job.get_name();
				}
			}
			
			if(temp_string.charAt(0) == "a" || temp_string.charAt(0) == "e" || temp_string.charAt(0) == "i" || temp_string.charAt(0) == "o" || temp_string.charAt(0) == "u"){
				ret = "an " + temp_string;
			}else if(temp_string != ""){
				ret = "a " + temp_string;
			}
				
			return ret;
		}
		
		override public function appearance(i:int = 0, c:Character = null):String{
			 var s:String = "";
			 s += get_status(c) + ".\n";
			 
			 if(c != null)s += c.judge_relative_skill(this) + "\n";
			 
			 var k:int = 0;
			 if (i != 0){
				for (k;k<stat.length;k++){
					if(stat[k].get_description(this).length > 0) s += stat[k].get_description(this);
			 	}
				s += body.get_parts_appearance(this) + "\n"; 
				if(c != null)s += "\n\n<font color='#0000FF'><a href=\"event:look," + location.get_content_id(this) +"\">Back</a></font>";
			 }else{
				var temp_array:Array = get_all_overworld_actions();
				for (k;k<temp_array.length;k++){
					 if(temp_array[k] != null && location != null){
						if(temp_array[k].get_name() != "" && !temp_array[k].get_personal() && !temp_array[k].get_bury())s += "<a href=\"event:action," + location.get_content_id(this) + "," + String(k) +"\"><font color='#0000FF'>"+temp_array[k].get_name() +"</font></a>    "; 
					 }
			 	}
			 }
			 		 
			 if (i == 0 && location != null) s += "<a href=\"event:look," + location.get_content_id(this) +",1\"><font color='#0000FF'>Appearance</font></a>";
			 
			 return sanitize(s, c);
		}
		
		public function sanitize(s:String, c:Character = null):String{
			s = body.sanitize(s, c, this);
			
			var sex_to_use:Sex = sex;
			if(c != null){
				sex_to_use = c.determine_sex(this);
			}
			
			while(s.indexOf("</noun>") >= 0){
			 	s = s.replace("</noun>",sex_to_use.get_noun());
			 }
			 while(s.indexOf("</pronoun>") >= 0){
			 	s = s.replace("</pronoun>",sex_to_use.get_pronoun());
			 }
			 
			 while(s.indexOf("</objnoun>") >= 0){
			 	s = s.replace("</objnoun>",sex_to_use.get_objnoun());
			 }
			 
			 s = replace_name(s, c);
			 
			 while(s.indexOf("</n2>") >= 0){
				 s = s.replace("</n2>","</n>");
			 }
			 while(s.indexOf("</noun2>") >= 0){
			 	s = s.replace("</noun2>","</noun>");
			 }
			 while(s.indexOf("</pronoun2>") >= 0){
			 	s = s.replace("</pronoun2>","</pronoun>");
			 }
			 
			 while(s.indexOf("</objnoun2>") >= 0){
			 	s = s.replace("</objnoun2>","</objnoun>");
			 }
			 
			 return s;
		}
		
		public function add_action(a:Action):void{	
			var i:int = 0;
			for(i;i<actions.length;i++){
				if(actions[i].get_cclass_origin() == a.get_cclass_origin() && a.get_cclass_level() == actions[i].get_cclass_level()
				   	&& actions[i].get_name() == a.get_name() && actions[i].trader_item == a.trader_item){
					return;
				}
			}
			
			a.set_id(actions.length);
			actions[actions.length] = a;
			a.set_originator(this);
		}
		
		public function add_stat_action(id:int, a:Action):void{
			var i:int = 0;
			for(i;i<stat.length;i++){
				if(stat_id[i] == id)stat[i].add_stat_action(a);
			}
			body.add_stat_action(id, a);
		}
		
		public function remove_stat_action(id:int, a:Action):void{
			var i:int = 0;
			for(i;i<stat.length;i++){
				if(stat_id[i] == id)stat[i].remove_stat_action(a);
			}
			body.remove_stat_action(id, a);
		}
		
		public function get_stat_actions(id:int):Array{
			var ret:Array = new Array();
			var i:int = 0;
			for(i;i<stat.length;i++){
				if(stat_id[i] == id)ret = ret.concat(stat[i].get_actions());
			}
			ret = ret.concat(body.get_stat_actions(id));
			
			//remove duplicates
			i = 0;
			for(i;i<ret.length;i++){
				if(ret[i] != null){
					var k:int = i + 1;
					for(k;k<ret.length;k++){
						if(ret[i] == ret[k]){
							ret[k] = null;
						}
					}
				}
			}
			
			return ret;
		}
		
		public function set_sex(s:Sex):String{
			var ret:String = "";
			if(sex != null && location != null){
				sex.reverse_bonuses(this, true);
				sex = s;
				s.apply_bonuses(this, true);
				personality.determine_orient(sex);
			}else{
				if(sex != null)sex.reverse_bonuses(this);
				sex = s;
				s.apply_bonuses(this);
			}
			personality.advance_objectives(Quest.sex_action, [s], this);
			return ret;
		}
		
		public function new_body_part(p:Body_part, give_bonus:Boolean = true):String{
			var ret:String = "";
			
			if(p.get_name() != "")ret += "</n> now has " + p.get_name() + ". ";
			
			if(p.race == null) p.set_race(this.get_primary_race());
			
			body.add_part(p,this);
			if(give_bonus)p.race.apply_bonuses(this,p);
			
			determine_sex();
			
			personality.advance_objectives(Quest.part_action, [p], this);
			
			return ret;
		}
		
		public function re_equip(curr_state:int = 0):String{
			if(curr_state != 0) return "";
			if(equip_state == 1) return "";
			equip_state = 1;
			var s:String = ""
			var i:int = 0;
			for(i;i<body.parts.length;i++){
				var j:int = 0;
				if(body.parts[i].get_hold() != null){
					var w:Weapon = body.parts[i].get_hold();
					for(j;j<w.stat_req.length;j++){
						if(w.stat_min[j] > get_stat(w.stat_req[j])){
							set_challenge_output("<b></n>s change has caused </noun> " + w.get_name() + " to fall from </noun> " + body.parts[i].get_name() + "!</b> ");
							if(location!= null){
								unhold(w);
								var k:int = 0;
								for(k;k<possessions.length;k++){
									if(possessions[k] == w){
										drop(k);
										break;
									}
								}
								location.new_content(w);
							}   
						}
					}
				}
				
				if(body.parts[i].equip != null){
					for(j;j<body.parts[i].equip.length;j++){
						var e:Equipment = body.parts[i].equip[j];
						if(e != null){
							var count:int = 0;					
							for (count;count<e.stat_req.length;count++){
								if( e.stat_min[count] > get_stat(e.stat_req[count]) || get_stat(e.stat_req[count]) > e.stat_max[count]) {
									//Need to figure out what happened... did we outgrow the garment, or shrink below it's requirement?
									k = 0;
									if(get_stat(e.stat_req[count]) > e.stat_max[count]){						
										set_challenge_output("<b></n>s change has torn </noun> " + e.get_name() + " to shreds! </b>")
										unequip(e);
										for(k;k<possessions.length;k++){
											if(possessions[k] == e){
												drop(k);
												break;
											}
										}
									}else{
										set_challenge_output("<b></n>s change has caused </noun> " + e.get_name() + " to fall from </noun> " + body.parts[i].get_name() + "! </b>")
										unequip(e);
										if(location!= null){
											for(k;k<possessions.length;k++){
												if(possessions[k] == e){
													drop(k);
													break;
												}
											}
											location.new_content(e);
										}
									}
									break;
								}
							}
						}
						if(body.parts[i] == null) break;
					}
				}
			}
			equip_state = 0;
			return s;
		}
		
		public function new_race(i:int, r:Race):String{
			var ret:String = "\n";
			if (i >= 0 && i < body.parts.length) {
				if(body.parts[i].race != null){
					body.parts[i].race.reverse_bonuses(this, body.parts[i],true);
					body.parts[i].set_race(r);
					body.parts[i].race.apply_bonuses(this, body.parts[i],true);
					if(body.parts[i].get_name() != "" && r.get_name() != "") ret += "</n>s " + body.parts[i].get_name() + " appears more " + r.get_name()+". ";
					
				}else{
					body.parts[i].race.reverse_bonuses(this, body.parts[i]);
					body.parts[i].set_race(r);
					body.parts[i].race.apply_bonuses(this, body.parts[i]);
					if(body.parts[i].get_name() != "" && r.get_name() != "") ret += "</n>s " + body.parts[i].get_name() + " appears more " + r.get_name()+". ";
				}
			}
			return ret;
		}
		
		public function new_location(r:Room, skip_check:Boolean = false, is_player:Boolean = false, ignore_party:Boolean = false):String{
			var ret:String = "";
			var init_r:Room = null;
			if(location == null)skip_check = true;
			var move_flag:Boolean = true;
			if(this.party != null){
				if(this.party.get_leader() != this){
					if(party.get_leader().location == location || party.get_leader().location == r){
						//ret += sanitize("</n> stays with </noun> party.\n");
						if(party.get_leader().location == location)move_flag = false;
					}
				}
			}
			
			if(move_flag){
				if(location != null){
					location.remove_content(this);
					init_r = location;
				}
				location = r;
				if(r != null){
					r.new_content(this,init_r);
					if(location.area != null){
						if((init_r != null && location.area != init_r.area) || init_r == null)personality.advance_objectives(Quest.area_action, [location.area.id], this);
					}
					personality.advance_objectives(Quest.room_action, [location], this);
				}
				status = " is standing here";							
			}
			
			if(this.party != null && !ignore_party){
				if(this.party.get_leader() == this){
					var k:int = 1;
					move_flag = true;
					for(k;k<this.party.members.length;k++){
						if(this.party.members[k].location == init_r){
							ret += this.party.members[k].new_location(r, skip_check, is_player);
							if(this.party.members[k].location != location){
								move_flag = false;
							}
						}
					}
					if(!move_flag){
						k = 0;
						for(k;k<this.party.members.length;k++){
							if(this.party.members[k].location != init_r){
								this.party.members[k].new_location(init_r, true, is_player, true);
							}
						}
						ret += "the party stops.\n";
					}
				}
			}
			return ret;
		}
		
		public function go_to_new_location(i:int,is_player:int = 0,no_look:int = 0):String{	
			var ret:String = "";
			var look_flag:Boolean = true;
			if(no_look > 0) look_flag = false;
			if(location != null){
				if(get_overworld_status()){
					if(location.area != null){
						set_busy(location.area.move_time_mod);
					}else{
						set_busy();
					}
					var s:Room = location.get_exit(i);
					if (s != null){
						ret += "</n> moves " + location.get_exit_direction(i) + ". ";
						if(location.exit_actions[i] != null){						
							ret += location.exit_actions[i].trigger(this);						
							look_flag = false;
						}else{					
							ret += "The trip takes " + Main.get_time(location.area.move_time_mod) + ".\n"
							ret += new_location(s);
						}
						
						if(location != null && is_player == 1){
							if(!location.player_discovered && location.get_discovery_difficulty() >= 0){
								var char_for_chal:Character = this;
								if(party != null) char_for_chal = party.get_best_at_skill(FPalace_skills.map_making_id);
								
								var discovery_chal:Challenge = new Challenge(true);
								discovery_chal.set_attack_stat(FPalace_skills.map_making_id);
								discovery_chal.set_defense_stat(-1,location.get_discovery_difficulty());
								discovery_chal.set_variability(5);
								
								var result:int = discovery_chal.roll(char_for_chal);
					
								if(result >= 0){
									location.player_found();
								}
							}
						}
						
						if(look_flag){
							ret += look();
						}						
					}
				}else{
					ret += sanitize(get_overworld_failures())+"\n";
				}
			}			
			
			return sanitize(ret, null);
		}
		
		public function get_stat(i:int, get_hard_value:int = 1, multi_part_process:int = 0/*Body.get_stat_total*/, part_id:int = -1/*Body.target_all_parts*/, add_equip:Boolean = true):Number{
			if(i == 0) return 0;
			var ret:Number = -1;
			
			if(part_id < 0){
				var k:int = 0;
				for(k;k<stat_id.length;k++){
					if(i == stat_id[k]){
						ret += stat[k].get_stat_value(this, get_hard_value,add_equip) + 1;
					}
				}
				
				var body_stat:Number = -1;
				if(body != null){
					body_stat = body.get_stat_by_id(this, i,get_hard_value,multi_part_process,part_id,add_equip);
				}
				
				if(body_stat > -1 && ret > -1){
					ret += body_stat; 
				}else if(body_stat > - 1){
					ret += body_stat + 1; 
				}
			}else{
				
				var part_stat:Number =body.get_stat_by_id(this, i, get_hard_value, multi_part_process, part_id,add_equip);
				if(part_stat > - 1){
					ret += part_stat + 1; 
				}
			}
						
			if(ret < 0){
				ret = -1;//stat not found
			}
			
			if(i == Character.relations_affect_id){
				//only one thing should ever do this, and it's just to see if the "stat" exists over in Challenge
				return 1;
			}
			
			if(i == Character.gold_id){
				return gold;
			}
						
			return ret;
		}
		
		public function apply_change_effect(o:Object, id:int = -1):String{
			var ret:String = "";
			
			if (o is Sex){
				var new_sex:Sex = o as Sex;
				new_sex = new_sex.clone();
				ret += set_sex(new_sex);
			}else if(o is Character_job){
				var new_job:Character_job = o as Character_job;
				ret += personality.set_job(new_job, this);
			}else if(o is Character_class){
				var new_cc:Character_class = o as Character_class;
				new_cc = new_cc.clone();
				ret += set_character_class(new_cc);
			}else if(o is Body_part){
				var new_bp:Body_part = new Body_part();
				if(id != -1  && body.get_part_by_id(id) != null){
					var temp_e:Equipment;
					var equip_array:Array = body.get_equip_array();
					var count:int = 0;
					equip_state = 1;
					for(count;count<equip_array.length;count++){
						temp_e = equip_array[count];
						temp_e.remove_effects(this);
					}
					equip_state = 0;
					
					new_bp.clone(body.get_part_by_id(id) as Body_part);
					
					equip_state = 1;
					count = 0;
					for(count;count<equip_array.length;count++){
						temp_e = equip_array[count];
						temp_e.equip_effects(this);
					}
					equip_state = 0;
					
					ret += new_body_part(new_bp,false);
				}else{
					new_bp.clone(o as Body_part);
					ret += new_body_part(new_bp);
				}
			}else if(o is Race){
				var part_array:Array = new Array;
				var temp_race:Race = o as Race;
				var i:int = 0;
				var j:int = 0;
				var desc_exists:Boolean = false;
				if(id != -1){
					for(i;i<body.parts.length;i++){
						if(body.parts[i].race.get_name() != temp_race.get_name() && body.parts[i].get_part_id() == id){
							j = 0;
							desc_exists = false;
							for(j;j<temp_race.desc_part.length;j++){
								if(temp_race.desc_part[j] == body.parts[i].get_part_id()){
									desc_exists = true;
									break;
								}
							}
							if(desc_exists){
								part_array[part_array.length] = i;
							}
						}
					}
				}else{
					for(i;i<body.parts.length;i++){
						if(body.parts[i].race.get_name() != temp_race.get_name()){
							j = 0;
							desc_exists = false;
							for(j;j<temp_race.desc_part.length;j++){
								if(temp_race.desc_part[j] == body.parts[i].get_part_id()){
									desc_exists = true;
									break;
								}
							}
							if(desc_exists){
								part_array[part_array.length] = i;
							}
						}
					}
					part_array = part_array.concat(temp_race.get_new_parts(this));
				}
				i = Math.round(Math.random()*(part_array.length-1));
				if(part_array[i] != null && part_array[i] is Body_part){
					ret += apply_change_effect(part_array[i]);
				}else if(part_array[i] != null){
					ret += new_race(part_array[i], o as Race);
				}
			}else if(o is Room){
				ret += new_location(o as Room);
			}else if(o is Action){
				if(id != -1){
					add_stat_action(id, o as Action);
				}
			}
			
			ret += re_equip();
			
			return ret;
		}
		
		public function apply_equip_affect_by_id(id:int, change_amt:Number):String{
			var ret:String = "";
			
			var count:int = 0;
			var i:int = 0;
			for(i;i<stat_id.length;i++){
				if(stat_id[i] == id)count++;
			}
			count += body.part_count_by_stat(this, id);
			
			change_amt = change_amt/count;
			i = 0;
			for(i;i<stat_id.length;i++){
				if(stat_id[i] == id){
					ret += stat[i].get_equip_change(change_amt, this);
				}
			}
			
			ret += body.get_equip_effects(id, change_amt, this);
			
			if(equip_state == 0){
				get_combat_status();//will remove dead parts, if there are any
				if(!body.alive(this) && location != null)ret += die();
				ret += re_equip(equip_state);
				ret += body.check_state(this);
			}
			
			if(ret != ""){
				set_challenge_output("<sid"+id+","+change_amt+",0,\""+ret+"\">");
				
			}
			
			return ret;
		}
		
		public function apply_affect_by_id(i:int,k:Number,temp:int = 0, c:Character = null, body_app_method:int = 0 /*Body.change_stats_individual*/, char_only:Boolean = false, part_id:int = -1 /*Body.target_all_parts*/, effect_type:int = -1):String{
			var s:String = "";
			var found:Boolean = false;
			var count:int = 0;
			if (k == 0) i = -1;
			if(effect_type > -1){
				k *= sex.get_damage_mod(effect_type);
				k *= personality.get_damage_mod(effect_type);
			}
			var j:int = 0;
			if(part_id == Body.target_all_parts){
				for(j;j<stat_id.length;j++){
					if(i == stat_id[j]){
						count++;
						if(stat[j].age){
							k = Math.ceil(k/get_primary_race().get_aging_mod());
							sex.age(this,k);
							s += stat[j].get_change_magnitude(k,this,temp);
						}
						
						if(body_app_method == Body.change_stats_individual){
							s += stat[j].get_change_magnitude(k,this,temp);				
						}else if(body_app_method == Body.change_first_stat && !found){
							s += stat[j].get_change_magnitude(k,this,temp);
							found = true;
						}
					}
				}
				
				/*if(body_app_method == Body.change_stats_total && !char_only && count > 0){
					if(temp == 0){
						if(k > 0){
							count += body.part_count_by_stat(this, i, 1);
						}else{
							count += body.part_count_by_stat(this, i, 0);
						}
					}else{
						count += body.part_count_by_stat(this, i);
					}
					
					var start_amt:Number = get_stat(i,temp);
					var change_by:Number = k/count;
					s += apply_affect_by_id(i,change_by,temp,c,Body.change_stats_individual,true,-1,effect_type);
					var end_amt:Number = get_stat(i,temp);
					change_by = k - (end_amt - start_amt);
					if((change_by >= 0.05 || change_by <= -0.05) && temp == 0 && change_by.toFixed(2) != k.toFixed(2) && change_by.toFixed(2) != (-k).toFixed(2)){
						//We've run into mins or maxes... need to do... something
						apply_affect_by_id(i,change_by,temp,c,Body.change_stats_total,false, -1, effect_type);
					}
				}else{		*/			
					s += body.get_effects(i,k,this, temp,body_app_method,count,Body.target_all_parts,effect_type);
				/*}*/
			}else if(part_id == Body.target_parts_one_by_one){
				trace("(Character) Should be eroding stat from part by part, instead of all at once.. doing nothing");
				//not sure what to do here yet...
			}else if(part_id >= 0){
				//we have a specific part id to apply this affect to...
				if(!char_only)s += body.get_effects(i,k,this, temp,body_app_method,0, part_id,effect_type);
			}else{
				trace("(Character) got passed a part id of "+ part_id + " and I have no idea what to do with it");
			}
			
			//deal with the relationship garbage - this should really happen when an action is attempted, not when it's successful....
			if(c != null){
				personality.new_relationship(c, this, Relationship.stat_change, character_reaction(c, i, k));
				c.personality.determine_reaction_to_other(c, this, c, i, k);
				if(location == null){
 					if(c.location != null){
						c.location.spread_reaction(this, c, i, k);
					}else{
						//character died from previous action...
					}
				}else{
					location.spread_reaction(this, c, i, k);
				}
			}
			
			if(equip_state == 0){
				get_combat_status();//will remove dead parts, if there are any
				if(!body.alive(this) && location != null && !char_only)s += die();
				s += re_equip(equip_state);
				s += body.check_state(this);
			}
			
			if(s != "" && !char_only){
				set_challenge_output("<sid"+i+","+k+",0,\""+s+"\">");
				
			}
			
			return s;
		}
		
		public function equip(e:Equipment, k:int = -1, j:int = -1, no_back_string:Boolean = false):String{
			var party_id:int = 0;
			var count:int;
			if(party != null){
				count = 0;
				for(count;count<party.members.length;count++){
					if(party.members[count] == this){
						party_id = count;
						break;
					}
				}
			}
			var back_string:String = "\n<font color='#0000FF'><a href=\"event:inventory,"+party_id+"\">Back</a></font>";
			if(no_back_string) back_string = "";
			
			var i:int = -1;
			for(i;i<possessions.length;i++){
				if(possessions[i] == e) break;
			}
			
			var char_for_chal:Character = this;
			var equip_ident:int = 0;
			char_for_chal = this;
			if(party != null)char_for_chal = party.get_best_at_skill(FPalace_skills.equipment_effects_id);
			var equip_ident_challenge:Challenge = new Challenge(true);
			equip_ident_challenge.set_attack_stat(FPalace_skills.equipment_effects_id);
			equip_ident_challenge.set_defense_stat(-1,e.get_identify_difficulty());
			equip_ident_challenge.set_variability(5);
			
			var result:int = equip_ident_challenge.roll(char_for_chal);

			if(result >= 0){
				equip_ident += Math.round(char_for_chal.get_skill_by_id(FPalace_skills.equipment_effects_id)/e.get_identify_difficulty());
			}
			
			var weight_ident:int = 0;
			char_for_chal = this;
			
			if(party != null)char_for_chal = party.get_best_at_skill(FPalace_skills.weighing_id);
				
			var weight_challenge:Challenge = new Challenge(true);
			weight_challenge.set_attack_stat(FPalace_skills.weighing_id);
			weight_challenge.set_defense_stat(-1,e.get_identify_difficulty());
			weight_challenge.set_variability(5);
			
			result = weight_challenge.roll(char_for_chal);

			if(result >= 0){
				weight_ident += Math.round((char_for_chal.get_skill_by_id(FPalace_skills.weighing_id) + result)/e.get_identify_difficulty());
			}
			
			var ret:String = e.get_description(this, [equip_ident, weight_ident]);
			
			if(k == -1){
				var attach_option:Boolean = false;
				if(e.upgrade_slot_ids.length > 0){
					count = 0;
					for(count;count<e.upgrade_slot_ids.length;count++){
						if(e.upgrade_items[count] == null){
							attach_option = true;
							break;
						}
					}
				}
				if(attach_option){
					if(party != null){
						return ret + "\nWould you like to <a href=\"event:equip," + String(i) +","+party_id+",0\">equip</a>, <a href=\"event:equip," + String(i) +","+party_id+",4,-1\">attach mod</a>, <a href=\"event:equip," + String(i) +","+party_id+",1\">drop</a>, <a href=\"event:equip," + String(i) +","+party_id+",2\">throw away</a>, or <a href=\"event:equip," + String(i) +","+party_id+",3,-1\">give</a>?";
					}else{
						return ret + "\nWould you like to <a href=\"event:equip," + String(i) +","+party_id+",0\">equip</a>, <a href=\"event:equip," + String(i) +","+party_id+",4,-1\">attach mod</a>, <a href=\"event:equip," + String(i) +","+party_id+",1\">drop</a>, or <a href=\"event:equip," + String(i) +","+party_id+",2\">throw away</a>?";
					}
				}else{
					if(party != null){
						return ret + "\nWould you like to <a href=\"event:equip," + String(i) +","+party_id+",0\">equip</a>, <a href=\"event:equip," + String(i) +","+party_id+",1\">drop</a>, <a href=\"event:equip," + String(i) +","+party_id+",2\">throw away</a>, or <a href=\"event:equip," + String(i) +","+party_id+",3,-1\">give</a>?";
					}else{
						return ret + "\nWould you like to <a href=\"event:equip," + String(i) +","+party_id+",0\">equip</a>, <a href=\"event:equip," + String(i) +","+party_id+",1\">drop</a>, or <a href=\"event:equip," + String(i) +","+party_id+",2\">throw away</a>?";
					}
				}
			}
			
			if(k == 0){
				var slot_array:Array = e.get_equip_slots();
				count = 0;
				for(count;count<slot_array.length;count++){
					if(!body.has_part(slot_array[count])) return sanitize("</n> can't equip that!", null) + back_string;
				}
				
				count = 0;
				for (count;count<e.stat_req.length;count++){
					if(get_stat(e.stat_req[count]) > e.stat_max[count])return sanitize("</n>s " +FPalace_helper.get_stat_name_by_id(e.stat_req[count]) + " is too large to equip that!", null) + back_string;
					if(e.stat_min[count] > get_stat(e.stat_req[count]))return sanitize("</n>s " +FPalace_helper.get_stat_name_by_id(e.stat_req[count]) + " is too small to equip that!", null) + back_string;
				}
				
				ret = body.equip(e,this);
				drop(i);
				set_busy();
				personality.advance_objectives(Quest.equip_action, [e], this);
				return sanitize("</n> equips the " + e.get_name() + "\n" + ret, null) + back_string;
			}else if(k == 1){
				drop(i);
				location.new_content(e);
				set_busy();
				return "You place the " + e.get_name() + " on the ground here." + back_string;
			}else if( k == 2){
				drop(i);
				set_busy();
				return "You throw away the " + e.get_name() + " never to see it again." + back_string;
			}else if( k == 3 && j == -1){
				var s:String = "Who do you want to give it to?\n";
				count = 0;
				for(count;count<party.members.length;count++){
					if(party_id != count){
						s += " <a href=\"event:equip," + String(i) +","+party_id+",3,"+count+"\">"+ party.members[count].get_name() +"</a>\n";
					}
				}
				return s + back_string;
			}else if(k == 3 && j >= 0){
				drop(i);
				party.members[j].add_to_possessions(e);
				set_busy();
				return "Gave item" + back_string;
			}else if(k == 4){
				s = "";
				if(j == -1){
					s += "Choose a mod:\n";
					var avail_mods:Array = new Array();
					count = 0;
					for(count;count<e.upgrade_slot_ids.length;count++){
						if(e.upgrade_items[count] == null){
							avail_mods[avail_mods.length] = e.upgrade_slot_ids[count];
						}
					}
					
					count = 0;
					for(count;count<possessions.length;count++){
						if(possessions[count] is Upgrade_Item){
							var count2:int = 0;
							for(count2;count2< avail_mods.length;count2++){
								if(possessions[count].upgrade_type_id == avail_mods[count2]){
									 s += " <a href=\"event:equip," + String(i) +","+party_id+",4,"+count+"\">"+ possessions[count].get_name() +"</a>";
								}
							}
						}
					}
				}else{
					s += e.attach_upgrade_item(possessions[j],this);					
				}
				
				return sanitize(s) + back_string;
			}
			return "";
		}
		
		public function unequip(e:Equipment):String{
			set_busy();
			var party_id:int = 0;
			var count:int;
			if(party != null){
				count = 0;
				for(count;count<party.members.length;count++){
					if(party.members[count] == this){
						party_id = count;
						break;
					}
				}
			}
			var back_string:String = "\n<font color='#0000FF'><a href=\"event:inventory,"+party_id+"\">Back</a></font>";
			personality.advance_objectives(Quest.unequip_action, [e], this);
			return sanitize(body.unequip(e,this) + back_string, null);
		}
		
		public function hold(w:Weapon, k:int = -1, j:int = -1, no_back_string:Boolean = false):String{
			var party_id:int = 0;
			var count:int;
			if(party != null){
				count = 0;
				for(count;count<party.members.length;count++){
					if(party.members[count] == this){
						party_id = count;
						break;
					}
				}
			}
			var back_string:String = "\n<font color='#0000FF'><a href=\"event:inventory,"+party_id+"\">Back</a></font>";
			if(no_back_string) back_string = "";
			
			var i:int = -1;
			for(i;i<possessions.length;i++){
				if(possessions[i] == w) break;
			}
			
			var weapon_ident:int = 0;
			var char_for_chal:Character = this;
			if(party != null)char_for_chal = party.get_best_at_skill(FPalace_skills.weapon_effects_id);
			var weapon_ident_challenge:Challenge = new Challenge(true);
			weapon_ident_challenge.set_attack_stat(FPalace_skills.weapon_effects_id);
			weapon_ident_challenge.set_defense_stat(-1,w.get_identify_difficulty());
			weapon_ident_challenge.set_variability(5);
			
			var result:int = weapon_ident_challenge.roll(char_for_chal);

			if(result >= 0){
				weapon_ident += Math.round(char_for_chal.get_skill_by_id(FPalace_skills.weapon_effects_id)/w.get_identify_difficulty());
			}
			
			var weight_ident:int = 0;
			char_for_chal = this;
			
			if(party != null)char_for_chal = party.get_best_at_skill(FPalace_skills.weighing_id);
				
			var weight_challenge:Challenge = new Challenge(true);
			weight_challenge.set_attack_stat(FPalace_skills.weighing_id);
			weight_challenge.set_defense_stat(-1,w.get_identify_difficulty());
			weight_challenge.set_variability(5);
			
			result = weight_challenge.roll(char_for_chal);

			if(result >= 0){
				weight_ident += Math.round((char_for_chal.get_skill_by_id(FPalace_skills.weighing_id) + result)/w.get_identify_difficulty());
			}
						
			var ret:String = w.get_description(this, [weapon_ident, weight_ident]);
			
			if(k == -1){
				var attach_option:Boolean = false;
				if(w.upgrade_slot_ids.length > 0){
					count = 0;
					for(count;count<w.upgrade_slot_ids.length;count++){
						if(w.upgrade_items[count] == null){
							attach_option = true;
							break;
						}
					}
				}
				if(attach_option){
					if(party != null){
						return ret + "\nWould you like to <a href=\"event:hold," + String(i) +","+party_id+",0\">hold</a>, <a href=\"event:hold," + String(i) +","+party_id+",4,-1\">attach mod</a>, <a href=\"event:hold," + String(i) +","+party_id+",1\">drop</a>, <a href=\"event:hold," + String(i) +","+party_id+",2\">throw away</a>, or <a href=\"event:hold," + String(i) +","+party_id+",3,-1\">give</a>?";
					}else{
						return ret + "\nWould you like to <a href=\"event:hold," + String(i) +","+party_id+",0\">hold</a>, <a href=\"event:hold," + String(i) +","+party_id+",4,-1\">attach mod</a>, <a href=\"event:hold," + String(i) +","+party_id+",1\">drop</a>, or <a href=\"event:hold," + String(i) +","+party_id+",2\">throw away</a>?";
					}
				}else{
					if(party != null){
						return ret + "\nWould you like to <a href=\"event:hold," + String(i) +","+party_id+",0\">hold</a>, <a href=\"event:hold," + String(i) +","+party_id+",1\">drop</a>, <a href=\"event:hold," + String(i) +","+party_id+",2\">throw away</a>, or <a href=\"event:hold," + String(i) +","+party_id+",3,-1\">give</a>?";
					}else{
						return ret + "\nWould you like to <a href=\"event:hold," + String(i) +","+party_id+",0\">hold</a>, <a href=\"event:hold," + String(i) +","+party_id+",1\">drop</a>, or <a href=\"event:hold," + String(i) +","+party_id+",2\">throw away</a>?";
					}
				}
			}
			
			if(k == 0){
				set_busy();
				if(body.hold(w,this)> 0){
					drop(i);
					personality.advance_objectives(Quest.hold_action, [w], this);
					return sanitize("</n> holds the " + w.get_name() + back_string, null);
				}else{
					return sanitize("</n> can't hold that!" + back_string, null);
				}
			}else if(k == 1){
				drop(i);
				location.new_content(w);
				set_busy();
				return "You place the " + w.get_name() + " on the ground here." + back_string;
			}else if( k == 2){
				drop(i);
				set_busy();
				return "You throw away the " + w.get_name() + " never to see it again." + back_string;
			}else if( k == 3 && j == -1){
				var s:String = "Who do you want to give it to?\n";
				count = 0;
				for(count;count<party.members.length;count++){
					if(party_id != count){
						s += " <a href=\"event:hold," + String(i) +","+party_id+",3,"+count+"\">"+ party.members[count].get_name() +"</a>";
					}
				}
				return s + back_string;
			}else if(k == 3 && j >= 0){
				drop(i);
				party.members[j].add_to_possessions(w);
				set_busy();
				return "Gave item" + back_string;
			}else if(k == 4){
				s = "";
				if(j == -1){
					s += "Choose a mod:\n";
					var avail_mods:Array = new Array();
					count = 0;
					for(count;count<w.upgrade_slot_ids.length;count++){
						if(w.upgrade_items[count] == null){
							avail_mods[avail_mods.length] = w.upgrade_slot_ids[count];
						}
					}
					
					count = 0;
					for(count;count<possessions.length;count++){
						if(possessions[count] is Upgrade_Item){
							var count2:int = 0;
							for(count2;count2< avail_mods.length;count2++){
								if(possessions[count].upgrade_type_id == avail_mods[count2]){
									 s += " <a href=\"event:hold," + String(i) +","+party_id+",4,"+count+"\">"+ possessions[count].get_name() +"</a>";
								}
							}
						}
					}
				}else{
					s += w.attach_upgrade_item(possessions[j], this);
				}
				
				return sanitize(s) + back_string;
			}
			return "";
		}
		
		public function unhold(w:Weapon):String{
			set_busy();
			
			var party_id:int = 0;
			var count:int;
			if(party != null){
				count = 0;
				for(count;count<party.members.length;count++){
					if(party.members[count] == this){
						party_id = count;
						break;
					}
				}
			}
			var back_string:String = "\n<font color='#0000FF'><a href=\"event:inventory,"+party_id+"\">Back</a></font>";
			personality.advance_objectives(Quest.unhold_action, [w], this);
			return sanitize(body.unhold(w,this) + back_string, null);
		}
		
		public function get_item_description(item:Item, keep_tags:Boolean = false):String{
			var identification:int = 0;
			var char_for_chal:Character = this;
			
			if(party != null)char_for_chal = party.get_best_at_skill(FPalace_skills.item_effects_id);
				
			var ident_challenge:Challenge = new Challenge(true);
			ident_challenge.set_attack_stat(FPalace_skills.item_effects_id);
			ident_challenge.set_defense_stat(-1,item.get_identify_difficulty());
			ident_challenge.set_variability(5);
			
			var result:int = ident_challenge.roll(char_for_chal);

			if(result >= 0){
				identification += result;
			}
			
			var item_desc:String = "";
			var ident_array:Array = [identification];
			
			identification = 0;
			char_for_chal = this;
			
			if(party != null)char_for_chal = party.get_best_at_skill(FPalace_skills.weighing_id);
				
			var weight_challenge:Challenge = new Challenge(true);
			weight_challenge.set_attack_stat(FPalace_skills.weighing_id);
			weight_challenge.set_defense_stat(-1,item.get_identify_difficulty());
			weight_challenge.set_variability(5);
			
			result = weight_challenge.roll(char_for_chal);

			if(result >= 0){
				identification += result;
			}
			
			ident_array[ident_array.length] = identification;
			
			if(item is Alchemy_item){
				var alch_ident:int = 0;
				char_for_chal = this;
				if(party != null)char_for_chal = party.get_best_at_skill(FPalace_skills.item_alchemy_effects_id);
				var alch_ident_challenge:Challenge = new Challenge(true);
				alch_ident_challenge.set_attack_stat(FPalace_skills.item_alchemy_effects_id);
				alch_ident_challenge.set_defense_stat(-1,item.get_identify_difficulty());
				alch_ident_challenge.set_variability(5);
				
				result = alch_ident_challenge.roll(char_for_chal);
	
				if(result >= 0){
					alch_ident += result;
				}
				ident_array[ident_array.length] = alch_ident;
			}
			
			item_desc += item.get_description(this, ident_array, keep_tags);
			return item_desc;
		}
		
		public function use_item(i:int, k:int = -1, j:int = -1, num_to_move:int = -1):String{
			var party_id:int = 0;
			var count:int;
			if(party != null){
				count = 0;
				for(count;count<party.members.length;count++){
					if(party.members[count] == this){
						party_id = count;
						break;
					}
				}
			}
			var back_string:String = "\n<font color='#0000FF'><a href=\"event:inventory,"+party_id+"\">Back</a></font>";
			
			
			var item:Item;
			if( 0 <= i && i <possessions.length){
				item = possessions[i] as Item;
			}
			
			var item_desc:String = get_item_description(item);
			
			if(k == -1){
				if(party != null){
					if( item.get_use_description() != ""){
						return item_desc + "\nWould you like to <a href=\"event:use_item," + String(i) +",0,"+party_id+"\">use</a>, <a href=\"event:use_item," + String(i) +",1,"+party_id+"\">drop</a>, <a href=\"event:use_item," + String(i) +",2,"+party_id+"\">throw away</a>, or <a href=\"event:use_item," + String(i) +",3,"+party_id+"\">give</a>?";
					}else{
						return item_desc + "\nWould you like to <a href=\"event:use_item," + String(i) +",1,"+party_id+"\">drop</a>, <a href=\"event:use_item," + String(i) +",2,"+party_id+"\">throw away</a>, or <a href=\"event:use_item," + String(i) +",3,"+party_id+"\">give</a>?";
					}
				}else{
					if( item.get_use_description() != ""){
						return item_desc + "\nWould you like to <a href=\"event:use_item," + String(i) +",0,"+party_id+"\">use</a>, <a href=\"event:use_item," + String(i) +",1,"+party_id+"\">drop</a>, or <a href=\"event:use_item," + String(i) +",2,"+party_id+"\">throw away</a>?";
					}else{
						return item_desc + "\nWould you like to <a href=\"event:use_item," + String(i) +",1,"+party_id+"\">drop</a>, or <a href=\"event:use_item," + String(i) +",2,"+party_id+"\">throw away</a>?";
					}
				}
			}
			
			var move_array:Array = new Array();
			var found_num:int = 0;
			count = 0;
			for(count;count < possessions.length;count++){
				if(possessions[count].get_name() == item.get_name()){
					move_array[count] = possessions[i];
					found_num++;
				}else{
					move_array[count] = null;
				}
			}
			//found_num--;
			var ret:String = "";
			if(k == 0){
				if(found_num > 1 && num_to_move == -1){
					ret += "How many would you like to use?\n<a href=\"event:use_item," + String(i) +",0,"+party_id+",-1,1\">x1</a>";
					if(Math.floor(found_num/2) > 1)ret += "\t<a href=\"event:use_item," + String(i) +",0,"+party_id+",-1,"+Math.floor(found_num/2)+"\">x"+Math.floor(found_num/2)+"</a>";
					ret += "\t<a href=\"event:use_item," + String(i) +",0,"+party_id+",-1,"+found_num+"\">x"+found_num+"</a>";
				}else{
					if(num_to_move > 1){
						found_num = 0;
						count = 0;
						for(count;count<move_array.length;count++){
							if(num_to_move <= 0)break;
							if(move_array[count] != null){
								item = possessions[count-found_num];
								ret += item.use_item(this,count-found_num);
								set_busy();
								if(!item.still_usable()){ 
									drop(count - found_num);
									found_num++
								}
								num_to_move--;
							}
						}
						ret += back_string
					}else{
						ret += item.use_item(this,i);
						if(!item.still_usable()) drop(i);
						set_busy();
					}					
				}
				return ret;
			}else if(k == 1){
				if(found_num > 1 && num_to_move == -1){
					ret += "How many would you like to drop?\n<a href=\"event:use_item," + String(i) +",1,"+party_id+",-1,1\">x1</a>";
					if(Math.floor(found_num/2) > 1)ret += "\t<a href=\"event:use_item," + String(i) +",1,"+party_id+",-1,"+Math.floor(found_num/2)+"\">x"+Math.floor(found_num/2)+"</a>";
					ret += "\t<a href=\"event:use_item," + String(i) +",1,"+party_id+",-1,"+found_num+"\">x"+found_num+"</a>";
					return ret;
				}else{
					if(num_to_move > 1){
						found_num = 0;
						count = 0;
						for(count;count<move_array.length;count++){
							if(found_num >= num_to_move)break;
							if(move_array[count] != null){
								item = possessions[count - found_num];
								drop(count - found_num);
								location.new_content(item);
								found_num++
							}
						}
					}else{
						drop(i);
						location.new_content(item);
					}
					set_busy();
					return "You place the " + item.get_name() + " on the ground here." + back_string;
				}
			}else if( k == 2){
				if(found_num > 1 && num_to_move == -1){
					ret += "How many would you like to throw away?\n<a href=\"event:use_item," + String(i) +",2,"+party_id+",-1,1\">x1</a>";
					if(Math.floor(found_num/2) > 1)ret += "\t<a href=\"event:use_item," + String(i) +",2,"+party_id+",-1,"+Math.floor(found_num/2)+"\">x"+Math.floor(found_num/2)+"</a>";
					ret += "\t<a href=\"event:use_item," + String(i) +",2,"+party_id+",-1,"+found_num+"\">x"+found_num+"</a>";
					return ret;
				}else{
					if(num_to_move > 1){
						found_num = 0;
						count = 0;
						for(count;count<move_array.length;count++){
							if(found_num >= num_to_move)break;
							if(move_array[count] != null){
								drop(count - found_num);
								found_num++
							}
						}
					}else{
						drop(i);
					}
					set_busy();
					return "You throw away the " + item.get_name() + " never to see it again." + back_string;
				}
			}else if( k == 3 && j == -1){
				var s:String = "Who do you want to give it to?\n";
				count = 0;
				for(count;count<party.members.length;count++){
					if(party_id != count){
						s += " <a href=\"event:use_item," + String(i) +",3,"+party_id+","+count+"\">"+ party.members[count].get_name() +"</a>";
					}
				}
				return s + back_string;
			}else if(k == 3 && j >= 0){
				if(found_num > 1 && num_to_move == -1){
					ret += "How many would you like to give?\n<a href=\"event:use_item," + String(i) +",3,"+party_id+","+j+",1\">x1</a>";
					if(Math.floor(found_num/2) > 1)ret += "\t<a href=\"event:use_item," + String(i) +",3,"+party_id+","+j+","+Math.floor(found_num/2)+"\">x"+Math.floor(found_num/2)+"</a>";
					ret += "\t<a href=\"event:use_item," + String(i) +",3,"+party_id+","+j+","+found_num+"\">x"+found_num+"</a>";
					return ret;
				}else{
					if(num_to_move > 1){
						found_num = 0;
						count = 0;
						for(count;count<move_array.length;count++){
							if(found_num >= num_to_move)break;
							if(move_array[count] != null){
								item = possessions[count - found_num];
								drop(count - found_num);
								party.members[j].add_to_possessions(item);
								
								//move_array = move_array.slice(0,count).concat(move_array.slice(count+1,move_array.length));
								//count--;
								found_num++
							}
						}
					}else{
						drop(i);
						party.members[j].add_to_possessions(item);
					}
					set_busy();
					return "Gave item" + back_string;
				}
			}
			return "";
		}
		
		public function add_to_possessions(i:Item):void{
			if (i != null){
				if (i.get_name().toLowerCase() == "gold"){
					set_gold(i.get_value(null, null));
				}else{
					possessions[possessions.length] = i;
				}
				personality.advance_objectives(Quest.pick_up_action, [i], this);
			}
		}
		
		public function get_gold():int{
			return gold;
		}
		
		public function set_gold(i:int):void{
			if(i < 0){
				if(i > gold){
					gold = 0;					
				}else{
					gold += i;
				}
			}else{
				gold += i;
			}
		}
		
		public function get_xp():int{
			return xp;
		}
		
		public function set_xp(i:uint):String{
			var s:String = "";
			//s += get_name() + " gains " + i + " experience points.\n";
			xp += i;
			while(xp >= nxt_lvl_xp){
				s += level_up();
				nxt_lvl_xp = nxt_lvl_xp * 2;
			}
			return s;
		}
		
		public function get_total_level():int{
			var ret:int = 0;
			var i:int = 0;
			for(i;i<Math.ceil(cclass.length/3);i++){
				ret += cclass[i*3 + 1];
			}
			
			return ret;
		}
		
		public function level_up():String{
			var s:String = "";
			stat_points += 1;
			lvl++;			
			s = "\n" + get_name() + " advances to level " + lvl;
			var curr_class:Character_class = null;
			var i:int = 0;
			for(i;i<Math.ceil(cclass.length/3);i++){
				if(cclass[i*3 + 2] == true){
					curr_class = cclass[i*3];
					cclass[i*3 + 1] = lvl;
					s = "\n" + get_name() + " advances to level " + cclass[i*3 + 1];
					break;
				}
			}
			
			if(curr_class != null){
				s+= " in the " + curr_class.get_name() + " class. \n";
			}else{
				s+= ". \n";
			}
			
			reset_stats();
			
			var stat_gain:int = Math.ceil(get_stat(FPalace_helper.con_id)/10);
			
			apply_affect_by_id(FPalace_helper.max_hp_id, stat_gain, 0, null, Body.change_stats_total);
			apply_affect_by_id(FPalace_helper.curr_hp_id, stat_gain, 0, null, Body.change_stats_total);
			
			s+=  "Maximum HP increases by "+stat_gain +"! \n";
			
			stat_gain = Math.ceil(get_stat(FPalace_helper.dex_id)/10);
			
			apply_affect_by_id(FPalace_helper.max_fatigue_id, stat_gain, 0, null, Body.change_stats_total);
			apply_affect_by_id(FPalace_helper.curr_fatigue_id, stat_gain, 0, null, Body.change_stats_total);
			
			s+=  "Maximum Fatigue increases by "+stat_gain +"! \n";
			
			stat_gain = Math.ceil(get_stat(FPalace_helper.will_id)/10);
			
			apply_affect_by_id(FPalace_helper.max_mp_id, stat_gain, 0, null, Body.change_stats_total);
			apply_affect_by_id(FPalace_helper.curr_mp_id, stat_gain, 0, null, Body.change_stats_total);
			
			s+=  "Maximum MP increases by "+stat_gain +"! \n";
			
			stat_gain = Math.ceil(get_stat(FPalace_helper.sex_appeal_id)/10);
			
			apply_affect_by_id(FPalace_helper.max_lust_id, stat_gain, 0, null, Body.change_stats_total);
			
			s+=  "Maximum LUST increases by "+stat_gain +"! \n";
			
			s+= get_name() +" now has "+ stat_points +" stat points to spend. \n"
			
			if(curr_class != null){				
				s+= sanitize(curr_class.level_up(this), null);
			}
			
			return s;
		}
		
		public function reset_stats(i:int = -1, j:int = -1):void{
			var k:int = 0;
			if (i == -1){
				for (k;k<stat.length;k++){
					stat[k].reset_stat(this,j);
				}
			}else{
				//apply the reset to a specific stat
				for(k;k<stat.length;k++){
					if(stat[k].get_id() == i) stat[k].reset_stat(this,j);
				}
			}
			
			body.reset_stat(this,i,j);
		}
		
		public function look(o:int = -1, j:int = 0):String{
			var ret:String = "";
			if(location != null){
				if (o != -1){
					if(location.get_content(o) != null){
						return location.get_content(o).appearance(j, this);
					}else{
						//trace("(Character)looking at null content... id: " + o);
					}
				}
				ret = location.get_room_description(this);
				ret = sanitize(get_challenge_output()) + ret;
				if(party != null && party.members != null){
					if(party.get_leader() == this){
						var i:int = 0;
						for(i;i<party.members.length;i++){
							if(party.members[i] != null && party.members[i] != this){
								ret = party.members[i].sanitize(party.members[i].get_challenge_output(), this) + ret;
							}
						}
					}
				}
			}
			return ret;
		}
		
		public function inspect(i:int, k:int):String{
			var ret:String = "";
			ret = location.get_content_sub_description(i,k);
			//need to check for bury action, and add own bury actions (if they exist)
			if(location.static_contents[i] is Container){
				var temp_cont:Container = location.static_contents[i] as Container;
				
				if(possessions.length > 0){
					ret += "\n<font color='#0000FF'><a href=\"event:loot,"+i+",-3\">Store</a></font>";
				}
				
				if(temp_cont.bury_action == null && temp_cont.bury != ""){
					var count:int = 0;
					for (count;count<actions.length;count++){
						if(actions[count] != null && location != null){
							if(actions[count].get_name() != "" && actions[count].get_bury()){
								ret += "\n<a href=\"event:action," + location.get_content_id(this) + "," + String(count)+","+String(i)+"\"><font color='#0000FF'>"+ actions[count].get_name() +"</font></a>";
							}
						}
					}
				}
			}
					
			set_busy();
			return ret;
		}
		
		public function get_status(c:Character = null):String{
			var s:String = "";
			var char_init:int = -1;
			
			if(location != null){
				if(location.cm != null && location.cm.active_combat())char_init = location.cm.get_init(this);
			}
			
			if(char_init > -1){
				status = " is fighting here";
			}else if(get_stat(FPalace_helper.lust_id) >= get_stat(FPalace_helper.max_lust_id)){
				status = " is lying in a pool of " + sex.noun + " own juices on the ground";
			}else if(get_stat(FPalace_helper.curr_fatigue_id) < 1){
				status = " is barely managing to stand here";
			}else if(busy > 0){
				//should have been set by the action				
			}else{
				status = " is standing here";
			}
			
			if(c != null){
				s = personality.get_name(c, this) + status;
			}else{
				s = get_name() + status;
			}	
			
			return s;
		}
		
		public function get_combat_status():Boolean{
			var ret:Boolean = true;
			var i:int = 0;
			for(i;i<stat.length;i++){
				if(stat[i].check_combat_status(this, null) < Stat.status_confired_ok) ret = false;
			}
			
			ret = body.check_combat_status(ret, this);
			
			if(!ret)set_next_attack();
			//var temp:Array = get_attack_actions();
			//if(temp.length <= 0)ret = false;
			
			return ret;
		}
		
		public function get_overworld_status():Boolean{
			var ret:Boolean = true;
			var i:int = 0;
			for(i;i<stat.length;i++){
				if(stat[i].check_overworld_status(this, null) < Stat.status_confired_ok) ret = false;
			}
			if(ret){
				ret = body.check_overworld_status(ret, this);
			}
			
			return ret;
		}
		
		public function get_combat_failures():String{
			var ret:String = "";
			var i:int = 0;
			for(i;i<stat.length;i++){
				if(stat[i].check_combat_status(this, null) < Stat.status_confired_ok) ret += stat[i].get_combat_status(this, null);
			}
			
			ret += body.get_combat_status(this);
			
			return ret;
		}
		
		public function get_overworld_failures():String{
			var ret:String = "";
			var i:int = 0;
			for(i;i<stat.length;i++){
				if(stat[i].check_overworld_status(this, null) < Stat.status_confired_ok) ret += stat[i].get_overworld_status(this, null);
			}
			
			ret += body.get_overworld_status(this);
			
			return ret;
		}
		
		public function open(i:int):String{
			set_busy();
			return location.open(i);
		}
		
		public function pick_up(i:int):String{
			var item:Item = location.item_loss(i);
			if (item != null){
				personality.advance_objectives(Quest.pick_up_action, [item], this);
				if (item.get_name().toLowerCase() == "gold"){
					set_gold(item.get_value(null, null));
					return sanitize("</n> got " + item.get_value(null, null) + " gold coins.\n", null) + look();
				}else{
					possessions[possessions.length] = item;
					return sanitize("</n> got " + item.get_name() + ".\n", null) + look();
				}
			}
			return "";
		}
		
		public function loot(i:int,k:int,no_back:Boolean = false):String{
			var back_string:String = "\n<font color='#0000FF'><a href=\"event:inspect,"+i+",0\">Back</a></font>";
			if(no_back) back_string = "";
			if(k>=0){
				var item:Item = location.take_from_sub_content(i,k);
				personality.advance_objectives(Quest.pick_up_action, [item], this);
				if (item != null){
					if (item.get_name().toLowerCase() == "gold"){
						set_gold(item.get_value(null, null));
						return sanitize("</n> got " + item.get_value(null, null) + " gold coins.", null) + back_string;
					}else{
						possessions[possessions.length] = item;
						return sanitize("</n> got " + item.get_name() + ".", null) + back_string;
					}
				}
			}else{
				var ret:String = "";
				var count:int = 0;
				if(k == -1){//loot all
					var end_count:int = location.static_contents[i].contents.length;
					for(count;count<end_count;count++){
						ret += loot(i, 0, true) + "\n";
					}
					return ret + back_string;
				}else{
					var temp_cont:Container = location.static_contents[i];
					if(k == -2){//bury/bury action
						busy++;						
						location.remove_static_contents(i);
						if(temp_cont.bury_action != null){
							ret += sanitize(temp_cont.bury_action.trigger(this));
						}else{
							ret += sanitize("</n> "+temp_cont.bury_text+" the "+temp_cont.name+". ", null);
						}						
						return ret;
					}else{//item storage
						if(k == -3){
							for(count;count<possessions.length;count++){
								ret += "<font color='#0000FF'><a href=\"event:loot,"+i+","+ (-4-count) +"\">" + possessions[count].get_name() + "</a></font>\n";
							}
						}else{
							ret += sanitize("</n> stores the " + possessions[-(k+4)].get_name() + " in the " + temp_cont.name);
							temp_cont.add_content(possessions[-(k+4)]);
							drop(-(k+4));
						}
						return ret + back_string;
					}
									
				}
			}
			return "";
		}
		
		public function inventory():String{
			var s:String = "";
			var party_id:int = 0;
			var i:int;
			if(party != null){
				i = 0;
				for(i;i<party.members.length;i++){
					if(party.members[i] == this){
						party_id = i;
						break;
					}
				}
			}
			
			if (possessions.length <= 0){
				s = "</n> Inventory contains nothing.";
			}else{
				s = "</n> Inventory contains: ";
				var skip_array:Array = new Array();
				for (i=0;i<possessions.length;i++){
					skip_array.sort(Array.NUMERIC);
					while(i > skip_array[0])skip_array = skip_array.slice(1,skip_array.length);
					if(i == skip_array[0]){
						skip_array = skip_array.slice(1,skip_array.length);
						continue;
					}
					var item_count:int = 1;
					var j:int = i+1;
					for(j;j<possessions.length;j++){
						if(possessions[i].same_item(possessions[j])){
							item_count++;
							skip_array[skip_array.length] = j;							
						}						
					}
					if(item_count > 1) s += item_count + "x";
					if(possessions[i] is Equipment){
						var e:Equipment = possessions[i];
						s += "<a href=\"event:equip," + String(i) +","+party_id+",-1,-1\">" + e.get_name() + "</a>, ";
					}else if(possessions[i] is Weapon){
						var w:Weapon = possessions[i];
						s += "<a href=\"event:hold," + String(i) +","+party_id+",-1,-1\">" + w.get_name() + "</a>, ";
					}else if (possessions[i] is Item){
						var temp:Item = possessions[i];
						s += "<a href=\"event:use_item," + String(i) +",-1,"+party_id+"\">" + temp.get_name() + "</a>, ";
					}
				}
			}
			
			if(s.charAt(s.length - 2) == ","){
				s = s.substr(0,s.length - 2);
			}
			
			s+="\n";
			//Need to display current equipment
			var found:Boolean = false;
			var equip_count:int = 0;
			s+="Equipment: ";
			i=0;
			for(i;i<body.parts.length;i++){
				if(body.parts[i].equip != null){
					j = 0;
					for(j;j<body.parts[i].equip.length;j++){
						var layer:String = "";
						if(j == 0){
							layer = " - Bottom";
						}else if(j == body.parts[i].equip.length - 1){
							layer = " - Top";
						}else{
							layer = " - Mid";
						}
						
						if(body.parts[i].equip.length == 1) layer = "";
						//need to be able to un-equip...
						s+= "<a href=\"event:unequip," + String(equip_count) +","+party_id+"\">" + body.parts[i].equip[j].get_name() +"</a>("+ body.parts[i].get_name() + layer + "), ";
						equip_count++;
						found = true;
					}
				}
			}
			
			if(found){
				s = s.substr(0,s.length - 2);
			}else{
				s+= "Nothing!";
			}
			
			s+="\n";
			//Need to display weapons and other held equipment
			found = false;
			s+="Holding: ";
			i=0;
			var hand_hold:int = 0;
			for(i;i<body.parts.length;i++){
				if(body.parts[i].hold != null){
					found = true;
					//need to be able to unhold...
					if(body.parts[i].hold.get_num_hold() == 1 ){
						s+= "<a href=\"event:unhold," + String(i) +","+party_id+"\">" + body.parts[i].hold.get_name() +"</a>("+ body.parts[i].get_name() +"), ";
					}else{
						//need to deal with weapons that get held in multiple hands.
						if(hand_hold == 0){
							hand_hold = body.parts[i].hold.get_num_hold();
							s+= "<a href=\"event:unhold," + String(i) +","+party_id+"\">" + body.parts[i].hold.get_name() +"</a>("+ body.parts[i].get_name() +", ";
						}else{
							s+= body.parts[i].get_name() + " ";
						}
						hand_hold--;
						if(hand_hold == 0)s+= "), ";
					}
				}
			}
			
			if(found){
				s = s.substr(0,s.length - 2);
			}else{
				s+= "Nothing!";
			}
			
			s+= "\n";
			s+= "</n> purse contains " + get_gold() + " gold coins.";
			
			return sanitize(s, null);
		}
		
		public function get_equip_by_count(sought_count:int):Equipment{
			var equip_count:int = 0;
			var i:int = 0;
			for(i;i<body.parts.length;i++){
				if(body.parts[i].equip != null){
					var j:int = 0;
					for(j;j<body.parts[i].equip.length;j++){
						if(equip_count == sought_count) return body.parts[i].equip[j];
						equip_count++;
					}
				}
			}
			
			return null;
		}
		
		public function drop(i:int):void{
			if(i>=possessions.length)return;
			personality.advance_objectives(Quest.drop_action, [possessions[i]], this);
			for (i;i<possessions.length;i++){
				if(i<possessions.length-1){
					possessions[i] = possessions[i+1];
				}
			}
			possessions.length--;
		}
		
		public function drop_item(i:Item):void{
			var count:int = 0;
			for(count;count<possessions.length;count++){
				if(possessions[count].same_item(i)){
					drop(count);
					break;
				}
			}
		}
		
		public function set_character_class(c:Character_class):String{
			var ret:String = "";
			if(c != null && c.get_name() != "") ret += "</n> has begun to follow the path of the " + c.get_name() + ". ";
			personality.advance_objectives(Quest.class_action, [c], this);
			var found:Boolean = false;
			var i:int = 0;
			for(i;i<Math.ceil(cclass.length/3);i++){
				cclass[i*3 + 2] = false;
				if(cclass[i*3] == c || cclass[i*3].get_name() == c.get_name()){
					cclass[i*3 + 2] = true;
					lvl = cclass[i*3 + 1];
					found = true;
				}
			}
			if(!found){
				cclass[cclass.length] = c;
				cclass[cclass.length] = 1;
				lvl = 1;
				cclass[cclass.length] = true;
				//need to add the actions with no requirements...
				i = 0;
				for(i;i<c.actions.length;i++){
					var j:int = 0;
					found = false;
					for(j;j<actions.length;j++){
						if(c.actions[i] == actions[j]){
							found = true;
							break
						}
					}
					if(!found && c.action_lvl_req[i] <= 1){
						add_action(c.actions[i]);
						if(c.actions[i].name != "")ret += "<\n> learns " + c.actions[i].name;
					}
				}
			}
			xp = 1;
			nxt_lvl_xp = 100;
			
			i = 1;
			for(i;i<lvl;i++)nxt_lvl_xp = nxt_lvl_xp * 3;
			
			return ret;
		}
		
		public function get_current_class():Character_class{
			var ret:Character_class = null;
			var i:int = 0;
			for(i;i<Math.ceil(cclass.length/3);i++){
				if(cclass[i*3 + 2] == true){
					ret = cclass[i*3];
					break;
				}
			}
			
			return ret;
		}
		
		public function get_action(i:int):Action{
			if(i< actions.length){
				return actions[i];
			}else{
				var temp_array:Array = get_all_overworld_actions();
				var temp:Action = temp_array[i];
				if(temp != null){
					temp.set_originator(this);
					temp.set_id(i);
				}else{
					i = i - temp_array.length;
					if(this.possessions[i] != null){
						if(this.possessions[i].change_effects[0] is Action){
							temp = this.possessions[i].change_effects[0];
							if(this.possessions[i].num_uses>0)this.possessions[i].num_uses--;
							if(this.possessions[i].num_uses==0)drop(i);
						}
					}
				}
				return temp;
			}
		}
		
		public function show_combat_options(o:Character):String{
			var s:String = "";
			var new_attack_id:int = 0;
			
			var attack_array:Array = get_attack_actions();
			
			var i:int = 0;
			for (i;i<attack_array.length;i++){
				if(attack_array[i]!=null && o!=null){
					s += "<a href=\"event:combat,"+ location.get_content_id(this) +","+ String(i) +"," + location.get_content_id(o) +"\">" + attack_array[i].get_name() + "</a>\n";//<font color='#0000FF'></font>
				}else if(attack_array[i]!=null){
					s += "<a href=\"event:combat,"+ location.get_content_id(this) +","+ String(i) +",-1\">" + attack_array[i].get_name() + "</a>\n";//<font color='#0000FF'></font>
				}
			}
			
			return s;
		}
		
		public function get_attack_actions():Array{
			var attacks:Array = new Array();
			
			var cclass_count:int = 0;
			for(cclass_count;cclass_count<Math.ceil(cclass.length/3);cclass_count++){
				var i:int = 0;
				for (i;i<cclass[cclass_count*3].attacks.length;i++){
					if( cclass[cclass_count*3].get_attack(i,this) != null){
						attacks[attacks.length] = cclass[cclass_count*3].get_attack_action(i, this);
					}else{
						attacks[attacks.length] = null;
					}
				}
			}
			
			attacks = attacks.concat(skills.get_skill_attack_actions(this));
			attacks = attacks.concat(body.get_part_attack_actions());
			
			
			//remove any duplicates...
			i = 0;
			for(i;i<attacks.length;i++){
				if(attacks[i] != null){
					cclass_count = i + 1;
					for(cclass_count;cclass_count<attacks.length;cclass_count++){
						if(attacks[cclass_count] != null){
							if(attacks[i] == attacks[cclass_count]){
								attacks[cclass_count] = null;
							}else if(attacks[i].get_cclass_origin() == attacks[cclass_count].get_cclass_origin() && attacks[cclass_count].get_cclass_level() == attacks[i].get_cclass_level()
							&& attacks[i].get_name() == attacks[cclass_count].get_name() && attacks[i].trader_item == attacks[cclass_count].trader_item){
								attacks[cclass_count] = null;
							}
						}
					}
				}
			}
			
			return attacks;
		}
		
		public function get_attack_action(attack_id:int):Action{
			var a:Action = get_attack_actions()[attack_id];
			
			return a;
		}
		
		public function attack(i:int, j:int, k:int, chall_id:String = null, dynamic_id:Array = null,sanitize_for:Character = null):String{
			var ai_flag:int = 0
			var s:String = "";
			var enemy:Character = null;
			if(location.get_content(k) is Character)enemy = location.get_content(k) as Character;
			if(enemy == null){
				trace("(Character.attack())Failed to find enemy with id: " + k);
				return "";
			}
			var enemy_combat_status:Boolean = enemy.get_combat_status();
			
			var action:Action = get_attack_action(j);
			if(action == null){
				trace("(CHARACTER)Couldn't find attack... should have checked both character class and body parts for it. Looking for attack id:" + j);
				trace(show_combat_options(enemy));
				return "";
			}
			
			var enemy_is_PC:Boolean = true;
			if(sanitize_for != null){
				if(get_party() != null){
					if(party.member_of(sanitize_for))enemy_is_PC = false;
				}else{
					if(this == sanitize_for)enemy_is_PC = false;
				}
			}
			
			if(dynamic_id != null && chall_id != null){
				s += action.challenge(int(chall_id), enemy,this, 0, dynamic_id,true,sanitize_for);
			}else if(chall_id != null){
				s += action.challenge(int(chall_id), enemy,this,0,null,true,sanitize_for);
			}else{
				if(action.dialogue == "null"){
					s += action.challenge(0, enemy,this,0,null,false,sanitize_for);
				}else{
					action.set_originator(this);
					s += action.trigger(enemy,0,sanitize_for);
				}
			}
			var show_chal_out:Boolean = (s.indexOf("</a>") < 0 && !(action.consequences[int(chall_id)] is Dynamic_Consequence && action.consequences[int(chall_id)].consequence_list_type != Dynamic_Consequence.list_nolist));
			var temp_output:String = "";
			if(show_chal_out){
				temp_output += get_challenge_output();
			}
			
			if(show_chal_out  && !enemy_is_PC){
			    s += Consequence.name_swap(temp_output);
			}else{
				set_challenge_output(temp_output);
			}
			
			if(enemy != this){
				var enemy_output:String = "";
				
				if(enemy.challenge_output != "" && show_chal_out){
					if(enemy_is_PC || enemy.location == null){
						enemy_output += enemy.get_challenge_output();						
					}else{
						enemy.get_challenge_output();
					}
				}
				
				enemy.tick();
				
				if(enemy.challenge_output != "" && show_chal_out){
					enemy_output += enemy.get_challenge_output();
				}
				
				s += enemy_output;
			}
			
			if(challenge_output != "" && show_chal_out){
				if(!enemy_is_PC)s += Consequence.name_swap(get_challenge_output());
			}
			
			while(s.indexOf("event:challenge") >= 0){//replace with combat tags
				var start_index:int = s.indexOf("\"event:challenge");
				var end_index:int = s.indexOf(">",start_index);
				var chall_split:Array = s.substr(start_index,end_index-start_index).split(",");
				s = s.substr(0,start_index) + "\"event:combat," + i + "," + j + "," + k + "," + chall_split[3] + s.substr(end_index,s.length);				
			}
			
			if (enemy.location != null && !enemy.get_combat_status() && enemy_combat_status){ 
				if(this.party == null){
					if(!enemy_is_PC){
						s += this.set_xp(enemy.get_total_level()/get_total_level()*enemy.get_total_level()*10);
					}else{
						this.set_xp(enemy.get_total_level()/get_total_level()*enemy.get_total_level()*10);
					}
				}else{
					if(!enemy_is_PC){
						s += party.give_xp(enemy.get_total_level()/get_total_level()*enemy.get_total_level()*10);
					}else{
						party.give_xp(enemy.get_total_level()/get_total_level()*enemy.get_total_level()*10);
					}
				}
				
				s += enemy.incapacitate();
				if(party != null){
					party.advance_objectives(Quest.incapacitate_action, [enemy]);
				}else{
					personality.advance_objectives(Quest.incapacitate_action, [enemy], this);
				}
				
				if(sanitize_for != null){
					s = sanitize(enemy.sanitize(s,sanitize_for),sanitize_for)
				}				
				return s;
			}
			
			if (get_combat_status() && !enemy.get_combat_status()){
				if(this.party == null){
					if(!enemy_is_PC){
						s += this.set_xp(enemy.get_total_level()/get_total_level()*enemy.get_total_level()*7);
					}else{
						this.set_xp(enemy.get_total_level()/get_total_level()*enemy.get_total_level()*7);
					}
				}else{
					if(!enemy_is_PC){
						s += party.give_xp(enemy.get_total_level()/get_total_level()*enemy.get_total_level()*7);
					}else{
						party.give_xp(enemy.get_total_level()/get_total_level()*enemy.get_total_level()*7);
					}
				}
				if(party != null){
					party.advance_objectives(Quest.kill_action, [enemy]);
				}else{
					personality.advance_objectives(Quest.kill_action, [enemy], this);
				}
				
			}else{
				if (location != null && !get_combat_status()){
					if(!enemy_is_PC){
						s += this.set_xp(1);
					}else{
						this.set_xp(1);
					}
					
					s += incapacitate();
				}
			}
			
			if(sanitize_for != null){
				s = sanitize(enemy.sanitize(s,sanitize_for),sanitize_for)
			}
			
			return s;
		}
		
		public function incapacitate():String{
			var s:String = "";
			
			s = get_combat_failures();
			return s;
		}														
		
		public function die():String{
			if(location != null){
				var temp_loc:Room = location;
				location = null;
				temp_loc.remove_content(this);
				//create a container
				var cont:Container = new Container();
				cont.set_name("body");
				cont.set_description("There is a <a href=\"event:inspect,</id>,0\">body</a> on the ground. ");
				cont.add_sub_descriptions("It is the body of " + name + ".");
				cont.set_always_open();
				cont.set_bury();
				cont.open();
				
				body.drop_equipment(this);//add equipment to inventory
				//add items from inventory to body..
				var i:int = 0;
				for (i;i<possessions.length;i++){
					cont.add_content(possessions[i]);
				}
				if(this.get_gold() > 0){
					var item:Item = new Item("Gold");
					item.set_value(this.get_gold());
					cont.add_content(item);
				}
				
				temp_loc.new_static_content(cont);
			}
			//remove character from party
			if(party != null){
				party.remove_member(this);
				party = null;
			}
			if(personality.job != null){
				trace("(Character.die)Should be figuring out what to do with this now dead characters job. Doing nothing instead. ");
			}
			
			return "";
		}
		
		public function alchemy(i:String,j:String):String{
			var ret:String = "";
			var k:int = 0;
			if(i == null || j == null){
				
				for (k;k<possessions.length;k++){
					if(i == null){
						if(possessions[k] is Alchemy_item){
							if(ret != "")ret += ", ";
							ret += "<a href=\"event:alchemy,"+k+"\">" + possessions[k].get_name() + "</a>";
						}
					}else{
						if(possessions[k] is Alchemy_item && k != int(i)){						
							if(ret != "")ret += ", ";
							ret += "<a href=\"event:alchemy_gui,"+int(i)+","+k+"\">" + possessions[k].get_name() + "</a>";						
						}
					}
				}
				if(i==null){
					ret = "Choose your first ingrediant:\n" + ret;
				}else{
					ret = "Choose your second ingrediant:\n" + ret;
				}
				
			}else{
				var ai1:Alchemy_item = possessions[int(i)] as Alchemy_item;
				var ai2:Alchemy_item = possessions[int(j)] as Alchemy_item;
				
				var new_item:Item = ai1.combine(this, ai2, null);
				drop(int(i));
				if(j < i){
					drop(int(j));
				}else{
					drop(int(j)-1);
				}
				
				possessions[possessions.length] = new_item;
				ret += ("You got " + new_item.get_name() + ".");
			}
			return ret;
		}
		
		public function sewing(i:String,j:String):String{
			var ret:String = "";
			var temp_equip:Equipment;
			var stat_limits:Array = new Array();
			var count:int = 0;
			if(i == null){
				for(count;count<possessions.length;count++){
					if(possessions[count] is Equipment){
						if(ret != "")ret += ", ";
						ret += "<a href=\"event:sew,"+count+"\">" + possessions[count].get_name() + "</a>";
					}
				}
				ret = "Which equipment would you like to modify:\n" + ret;
			}else if(j == null){
				temp_equip = possessions[int(i)];
				ret = "What aspect of the "+ temp_equip.get_name()+ " should be modified:\n";
				for(count;count<temp_equip.stat_req.length;count++){
					if(temp_equip.stat_req[count] != null){
						ret += "Modify " + FPalace_helper.get_stat_name_by_id(temp_equip.stat_req[count]) + "\t<font color='#00FF00'><a href=\"event:sew,"+i+","+(count+1)+"\">Up</a>\t<a href=\"event:sew,"+i+","+(-(count+1))+"\">Down</a></font>\n";
					}
				}
				ret += "\n\n<a href=\"event:sew\"><font color='#0000FF'>back</font></a>";
			}else{
				temp_equip = possessions[int(i)];
				
				//determine consumption of items crafting requirements...
				var meets_requirements:Boolean = true;
				var char_for_chal:Character = this;
				var sewing_challenge:Challenge = new Challenge(true);
				if(party != null)char_for_chal = party.get_best_at_skill(FPalace_skills.sewing_id);
				sewing_challenge.set_attack_stat(FPalace_skills.sewing_id);
				sewing_challenge.set_defense_stat(-1,temp_equip.value);
				sewing_challenge.set_variability(10);
				
				var skill_result:Number = sewing_challenge.roll(char_for_chal);
				if(skill_result >= 0){
					skill_result = 0.1;
				}else{
					skill_result = -skill_result*0.1;
				}
				if(int(j) >= 0){
					j = String(int(j)-1);
					var drop_ids:Array = new Array();
					var req_count:int = 0;
					for(req_count;req_count<temp_equip.crafting_requirements.length;req_count++){
						meets_requirements = false;
						var needed_count:int = Math.ceil(temp_equip.crafting_requirements[count][1] * skill_result);
						var possession_count:int = 0;
						for(possession_count;possession_count<possessions.length;possession_count++){
							if(possessions[possession_count].get_name() == temp_equip.crafting_requirements[count][0].get_name()){
								drop_ids[drop_ids.length] = possession_count;
								if(needed_count == 1){
									meets_requirements = true;
									break;
								}else{
									needed_count--;
								}
							}
						}
					}
					if(meets_requirements){
						needed_count = 0;
						for(needed_count;needed_count<drop_ids.length;needed_count++){
							drop(drop_ids[needed_count] - needed_count);
						}
						if(temp_equip.stat_min[int(j)] >= 0)temp_equip.stat_min[int(j)]++;
						temp_equip.stat_max[int(j)]++;
						ret += "</n> sews the " + temp_equip.get_name()+ "s " + FPalace_helper.get_stat_name_by_id(temp_equip.stat_req[int(j)]);						
					}else{
						ret += "</n> doesn't have the necessary components. \n";
					}
				}else{
					j = String(int(j)+1);
					if(temp_equip.stat_min[-int(j)] > 0)temp_equip.stat_min[-int(j)]--;
					temp_equip.stat_max[-int(j)]--;
					ret += "</n> sews the " + temp_equip.get_name()+ "s " + FPalace_helper.get_stat_name_by_id(temp_equip.stat_req[-int(j)]);
				}
				for(count;count<possessions.length;count++){
					if(possessions[count].same_item(temp_equip)){
						break;
					}
				}				
				ret += "\n\n<a href=\"event:sew,"+count+"\"><font color='#0000FF'>back</font></a>";
			}
			return sanitize(ret);
		}
		
		public function dismantle(i:String):String{
			var ret:String = "";
			var temp_item:Item;
			var stat_limits:Array = new Array();
			var count:int = 0;
			if(i == null){
				for(count;count<possessions.length;count++){
					if(possessions[count].crafting_requirements[0]!=null){
						if(ret != "")ret += ", ";
						ret += "<a href=\"event:dismantle,"+count+"\">" + possessions[count].get_name() + "</a>";
					}
				}
				ret = "What would you like to dismantle:\n" + ret;
			}else{
				temp_item = possessions[int(i)] as Item;
				ret += "</n> dismantles the " + temp_item.get_name()+ ". \n";
				
				var potential_rewards:Array = new Array();
				potential_rewards = potential_rewards.concat(temp_item.crafting_requirements);
				if(temp_item is Equipment){
					var temp_e:Equipment = temp_item as Equipment;
					for(count;count<temp_e.upgrade_items.length;count++){
						potential_rewards[potential_rewards.length] = [temp_e.upgrade_items[count],1];
					}						
				}else if(temp_item is Weapon){
					var temp_w:Weapon = temp_item as Weapon;
					for(count;count<temp_w.upgrade_items.length;count++){
						potential_rewards[potential_rewards.length] = [temp_w.upgrade_items[count],1];
					}
				}
				
				count = 0;
				for(count;count<potential_rewards.length;count++){
					var char_for_chal:Character = this;
					var dismantle_challenge:Challenge = new Challenge(true);
					if(temp_item is Weapon){
						if(party != null)char_for_chal = party.get_best_at_skill(FPalace_skills.smithing_id);
						dismantle_challenge.set_attack_stat(FPalace_skills.smithing_id);
					}else if(temp_item is Equipment){
						if(party != null)char_for_chal = party.get_best_at_skill(FPalace_skills.sewing_id);
						dismantle_challenge.set_attack_stat(FPalace_skills.sewing_id);
					}else{
						if(party != null)char_for_chal = party.get_best_at_skill(FPalace_skills.items_id);
						dismantle_challenge.set_attack_stat(FPalace_skills.items_id);
					}
					dismantle_challenge.set_defense_stat(-1,temp_item.value);
					dismantle_challenge.set_variability(20);
					
					var result:Number = dismantle_challenge.roll(char_for_chal);
					
					if(potential_rewards[count][0] is Item){
						var dismantle_reward:Item;
						if(result >= 10){
							result = 1;
						}else{
							result = 1/(10 - result);
						}
						var temp_count:int = potential_rewards[count][1];
						var add_count:int = 0;
						while(temp_count > 0){
							if(Math.random() <= result){
								dismantle_reward = potential_rewards[count][0].clone();
								possessions[possessions.length] = dismantle_reward;
								add_count++;
							}
							temp_count--;
						}
						
						if(add_count > 1){
							ret += "</n> gets " +add_count+ " " + dismantle_reward.get_name()+ ". \n";
						}else if(add_count > 0){
							ret += "</n> gets " + dismantle_reward.get_name()+ ". \n";
						}
					}
				}
				
				//check to see if I figure out how to make this item myself
				var recipe_challenge:Challenge = new Challenge(true);
				if(party != null)char_for_chal = party.get_best_at_skill(FPalace_skills.crafting_id);
				recipe_challenge.set_attack_stat(FPalace_skills.crafting_id);//not sure about this...
				recipe_challenge.set_defense_stat(-1,temp_item.value);
				recipe_challenge.set_variability(20);
				if(recipe_challenge.roll(char_for_chal)>=0){
					if(temp_item.dismantle_item == null){
						char_for_chal.personality.add_recipe(temp_item.clone());
					}else{
						char_for_chal.personality.add_recipe(temp_item.dismantle_item.clone());
					}
				}
				
				drop(int(i));
				
				ret += "\n<a href=\"event:dismantle\"><font color='#0000FF'>back</font></a>";
			}
			return sanitize(ret);
		}
		
		public function craft(i:String):String{
			var ret:String = "";
			var count:int = 0;
			if(i == null){
				for(count;count<personality.known_recipes.length;count++){
					if(personality.known_recipes[count]!=null){
						ret += "\n<a href=\"event:craft,"+count+"\"><font color='#0000FF'>" + personality.known_recipes[count].get_name() + "</font></a>";
						//should go through and list the requirements, and the count of them...
						var temp_item:Item = personality.known_recipes[count];
						var req_count:int = 0;
						for(req_count;req_count<temp_item.crafting_requirements.length;req_count++){
							ret += "\n\t" + temp_item.crafting_requirements[req_count][0].get_name() + " x" + temp_item.crafting_requirements[req_count][1];
						}
					}
				}
				ret = "What would you like to craft:" + ret;
			}else{
				var made_item:Item = personality.known_recipes[int(i)].clone();
				var make_item:Boolean = true;
				var drop_ids:Array = new Array();
				for(count;count<made_item.crafting_requirements.length;count++){
					make_item = false;
					var possession_count:int = 0;
					
					var char_for_chal:Character = this;
					var crafting_challenge:Challenge = new Challenge(true);
					if(made_item is Weapon){
						if(party != null)char_for_chal = party.get_best_at_skill(FPalace_skills.smithing_id);
						crafting_challenge.set_attack_stat(FPalace_skills.smithing_id);
					}else if(made_item is Equipment){
						if(party != null)char_for_chal = party.get_best_at_skill(FPalace_skills.sewing_id);
						crafting_challenge.set_attack_stat(FPalace_skills.sewing_id);
					}else{
						if(party != null)char_for_chal = party.get_best_at_skill(FPalace_skills.items_id);
						crafting_challenge.set_attack_stat(FPalace_skills.items_id);
					}
					crafting_challenge.set_defense_stat(-1,made_item.value);
					crafting_challenge.set_variability(20);
					
					var result:Number = crafting_challenge.roll(char_for_chal);
					
					if(result >= 0){
						result = 1;
					}else{
						result = (-result / 5) + 1;
					}
					
					var needed_count:int = Math.round(made_item.crafting_requirements[count][1] * result);
					for(possession_count;possession_count<possessions.length;possession_count++){
						if(possessions[possession_count].get_name() == made_item.crafting_requirements[count][0].get_name()){
							drop_ids[drop_ids.length] = possession_count;
							if(needed_count == 1){
								make_item = true;
								break;
							}else{
								needed_count--;
							}
						}
					}
					if(make_item && possession_count >= possessions.length)make_item = false;
					if(!make_item)break;
				}
				if(make_item){
					count = 0;
					for(count;count<drop_ids.length;count++){
						drop(drop_ids[count] - count);
					}
					ret += "</n> makes " + made_item.get_name()+ ". \n";
					var stat_changes:Array = new Array();
					var skill_changes:Array = new Array();
					var max_enhance:int = 0;
					if(made_item is Weapon){
						var temp_weap:Weapon = made_item as Weapon;
						//FPalace_skills.weapon_effects_id
						count = 0;
						for(count;count<temp_weap.effects.length;count++){
							if(temp_weap.effects[count] != null){
								stat_changes[stat_changes.length] = count;
							}
						}
						skill_changes = temp_weap.skill_id;
						if(temp_weap.attack_action != null){
							count = 0;
							for(count;count<temp_weap.attack_action.challenges.length;count++){
								if(!temp_weap.attack_action.challenges[count].static_attack){
									if(temp_weap.attack_action.challenges[count].stats_or_skills){
										if(skill_changes.indexOf(temp_weap.attack_action.challenges[count].attack_stat)<0){
											skill_changes[skill_changes.length] = temp_weap.attack_action.challenges[count].attack_stat;
										}
									}else{
										if(stat_changes.indexOf(temp_weap.attack_action.challenges[count].attack_stat)<0){
											stat_changes[stat_changes.length] = temp_weap.attack_action.challenges[count].attack_stat;
										}
									}
								}
							}						
						}	
					}else if(made_item is Equipment){
						var temp_equip:Equipment = made_item as Equipment;
						//FPalace_skills.equipment_effects_id
						count = 0;
						for(count;count<temp_equip.effects.length;count++){
							if(temp_equip.effects[count] != null){
								stat_changes[stat_changes.length] = count;
							}
						}
						//Change the equipment to fit the crafting character
						count = 0;
						for(count;count<temp_equip.stat_req.length;count++){
							var temp_stat:Number = get_stat(temp_equip.stat_req[count]);
							if(temp_stat > temp_equip.stat_max[count]){
								temp_equip.stat_max[count] = temp_stat + 2;
							}
							if(temp_stat < temp_equip.stat_min[count] && temp_stat > 2){
								temp_equip.stat_min[count] = temp_stat - 2;
							}
						}
						
						skill_changes = temp_equip.skill_id;
					}else if(made_item is Upgrade_Item){
						var temp_upgrade:Upgrade_Item = made_item as Upgrade_Item;
						count = 0;
						for(count;count<temp_upgrade.effects.length;count++){
							if(temp_upgrade.effects[count] != null){
								stat_changes[stat_changes.length] = count;
							}
						}
						skill_changes = temp_upgrade.skill_id;
					}
					
					char_for_chal = this;
					var enhancing_challenge1:Challenge = new Challenge(true);
					if(made_item is Weapon){
						if(party != null)char_for_chal = party.get_best_at_skill(FPalace_skills.smithing_id);
						enhancing_challenge1.set_attack_stat(FPalace_skills.smithing_id);
					}else if(made_item is Equipment){
						if(party != null)char_for_chal = party.get_best_at_skill(FPalace_skills.sewing_id);
						enhancing_challenge1.set_attack_stat(FPalace_skills.sewing_id);
					}else{
						if(party != null)char_for_chal = party.get_best_at_skill(FPalace_skills.items_id);
						enhancing_challenge1.set_attack_stat(FPalace_skills.items_id);
					}
					enhancing_challenge1.set_defense_stat(-1,made_item.value);
					enhancing_challenge1.set_variability(made_item.value);
					
					result = enhancing_challenge1.roll(char_for_chal);
					var stat_result:int = Math.round(result/made_item.value);
					if(stat_result<0)stat_result = 0;
					if(stat_result > 0){
						count = 0;
						for(count;count<stat_changes.length;count++){
							ret += "</n> enhances the " + made_item.get_name()+ "s " + FPalace_helper.get_stat_name_by_id(stat_changes[count]) + "\n";
							made_item.effects[stat_changes[count]]+=stat_result;
						}
						max_enhance = stat_result;
					}
					count = 0;
					for(count;count<skill_changes.length;count++){
						var enhancing_challenge2:Challenge = new Challenge(true);
						if(party != null)char_for_chal = party.get_best_at_skill(skill_changes[count]);
						enhancing_challenge2.set_attack_stat(skill_changes[count]);
						enhancing_challenge2.set_defense_stat(-1,made_item.value);
						enhancing_challenge2.set_variability(made_item.value);
						
						var skill_result:int = result + enhancing_challenge2.roll(char_for_chal);
						
						if(skill_result >= made_item.value){
							skill_result = Math.round(result/made_item.value);
						}else{
							skill_result = 0;
						}
						if(skill_result > 0){
							if(skill_result > max_enhance)max_enhance = skill_result;
							if(made_item is Weapon){
								ret +=  "</n> enhances the " + made_item.get_name()+ "s " + FPalace_skills.get_skill_name(skill_changes[count]) + "\n";
								(made_item as Weapon).skill_bonus[count]+= skill_result;
							}else if(made_item is Equipment){
								ret +=  "</n> enhances the " + made_item.get_name()+ "s " + FPalace_skills.get_skill_name(skill_changes[count]) + "\n";
								(made_item as Equipment).skill_bonus[count]+= skill_result;
							}
						}
					}	
					
					if(stat_changes.length > 0 || skill_changes.length > 0){
						made_item.name = made_item.get_name() + "+" + max_enhance;
						made_item.value *= (max_enhance + 1);
						made_item.dismantle_item = personality.known_recipes[int(i)];
					}
					
					possessions[possessions.length] = made_item;
					
				}else{
					ret += "</n> doesn't have the necessary components. \n";
				}
				
				ret += "\n<a href=\"event:craft\"><font color='#0000FF'>back</font></a>";
			}
			return sanitize(ret);
		}
		
		public function enchant(i:String,j:String):String{
			var ret:String = "";
			var stat_changes:Array = new Array();
			var skill_changes:Array = new Array();
			var temp_equip:Equipment;
			var temp_weap:Weapon;
			var count:int = 0;
			if(i == null){
				for(count;count<possessions.length;count++){
					if(possessions[count] is Equipment || possessions[count] is Weapon){
						if(ret != "")ret += ", ";
						ret += "<a href=\"event:enchant,"+count+"\">" + possessions[count].get_name() + "</a>";
					}
				}
				ret = "Which equipment would you like to enchant:\n" + ret;
			}else if(j == null){
				//figure out which enchantment we want to go with
				if(possessions[int(i)] is Weapon){
					temp_weap = possessions[int(i)];
					//FPalace_skills.weapon_effects_id
					ret += temp_weap.get_name() + " Current enchantment level: " + temp_weap.get_enchantment_level() + " xp to spend:<font color='#00FF00'>"+get_xp()+"</font>/"+nxt_lvl_xp+"\n";
					count = 0;
					for(count;count<temp_weap.effects.length;count++){
						if(temp_weap.effects[count] != null){
							stat_changes[stat_changes.length] = count;
						}
					}
					skill_changes = temp_weap.skill_id;
					if(temp_weap.attack_action != null){
						count = 0;
						for(count;count<temp_weap.attack_action.challenges.length;count++){
							if(!temp_weap.attack_action.challenges[count].static_attack){
								if(temp_weap.attack_action.challenges[count].stats_or_skills){
									if(skill_changes.indexOf(temp_weap.attack_action.challenges[count].attack_stat)<0){
										skill_changes[skill_changes.length] = temp_weap.attack_action.challenges[count].attack_stat;
									}
								}else{
									if(stat_changes.indexOf(temp_weap.attack_action.challenges[count].attack_stat)<0){
										stat_changes[stat_changes.length] = temp_weap.attack_action.challenges[count].attack_stat;
									}
								}
							}
						}						
					}
					count = 0;
					for(count;count<stat_changes.length;count++){
						ret += "<a href=\"event:enchant,"+i+","+count+"\">" +FPalace_helper.get_stat_name_by_id(stat_changes[count])+"+1</a>\t"+(temp_weap.get_enchantment_level()*100 + 50)+"xp\n";
					}
					count = 0;
					for(count;count<skill_changes.length;count++){
						ret += "<a href=\"event:enchant,"+i+","+(count+stat_changes.length)+"\">" +FPalace_skills.get_skill_name(skill_changes[count])+"+1</a>\t"+(temp_weap.get_enchantment_level()*10 + 10)+"xp\n";
					}
				}else{
					temp_equip = possessions[int(i)];
					//FPalace_skills.equipment_effects_id
					ret += temp_equip.get_name() + " Current enchantment level: " + temp_equip.get_enchantment_level() + " xp to spend:<font color='#00FF00'>"+get_xp()+"</font>/"+nxt_lvl_xp+"\n";
					count = 0;
					for(count;count<temp_equip.effects.length;count++){
						if(temp_equip.effects[count] != null){
							stat_changes[stat_changes.length] = count;
						}
					}
					skill_changes = temp_equip.skill_id;
					count = 0;
					for(count;count<stat_changes.length;count++){
						ret += "<a href=\"event:enchant,"+i+","+count+"\">" +FPalace_helper.get_stat_name_by_id(stat_changes[count])+"+1</a>\t"+(temp_equip.get_enchantment_level()*100 + 50)+"xp\n";
					}
					count = 0;
					for(count;count<skill_changes.length;count++){
						ret += "<a href=\"event:enchant,"+i+","+(count+stat_changes.length)+"\">" +FPalace_skills.get_skill_name(skill_changes[count])+"+1</a>\t"+(temp_equip.get_enchantment_level()*10 + 10)+"xp\n";
					}
				}
			}else{
				//attempt to apply the enchantment
				if(possessions[int(i)] is Weapon){
					temp_weap = possessions[int(i)];
					count = 0;
					for(count;count<temp_weap.effects.length;count++){
						if(temp_weap.effects[count] != null){
							stat_changes[stat_changes.length] = count;
						}
					}
					skill_changes = temp_weap.skill_id;
					if(temp_weap.attack_action != null){
						count = 0;
						for(count;count<temp_weap.attack_action.challenges.length;count++){
							if(!temp_weap.attack_action.challenges[count].static_attack){
								if(temp_weap.attack_action.challenges[count].stats_or_skills){
									if(skill_changes.indexOf(temp_weap.attack_action.challenges[count].attack_stat)<0){
										skill_changes[skill_changes.length] = temp_weap.attack_action.challenges[count].attack_stat;
									}
								}else{
									if(stat_changes.indexOf(temp_weap.attack_action.challenges[count].attack_stat)<0){
										stat_changes[stat_changes.length] = temp_weap.attack_action.challenges[count].attack_stat;
									}
								}
							}
						}						
					}
					if(int(j)>=stat_changes.length){
						if(xp < temp_weap.get_enchantment_level()*10 + 10){
							ret += "</n> cannot muster enough energy to complete the enchantment. ";
						}else{
							ret += "</n> enhances the " + temp_weap.get_name()+ "s " + FPalace_skills.get_skill_name(skill_changes[int(j)-stat_changes.length])
							if(temp_weap.skill_id.indexOf(skill_changes[int(j)-stat_changes.length])>0){
								temp_weap.skill_bonus[temp_weap.skill_id.indexOf(skill_changes[int(j)-stat_changes.length])]++;
							}else{
								temp_weap.set_skill_bonus(skill_changes[int(j)-stat_changes.length],1)
							}							
							set_xp(-(temp_weap.get_enchantment_level()*10 + 10));
							temp_weap.set_enchantment_level(temp_weap.get_enchantment_level()+1);
						}
					}else{
						if(xp < temp_weap.get_enchantment_level()*100 + 50){
							ret += "</n> cannot muster enough energy to complete the enchantment. ";
						}else{
							ret +=  "</n> enhances the " + temp_weap.get_name()+ "s " + FPalace_helper.get_stat_name_by_id(stat_changes[int(j)])
							temp_weap.effects[stat_changes[int(j)]]++;						
							set_xp(-(temp_weap.get_enchantment_level()*100 + 50));
							temp_weap.set_enchantment_level(temp_weap.get_enchantment_level()+1);
						}
					}
				}else{
					temp_equip = possessions[int(i)];
					count = 0;
					for(count;count<temp_equip.effects.length;count++){
						if(temp_equip.effects[count] != null){
							stat_changes[stat_changes.length] = count;
						}
					}
					if(int(j)>=stat_changes.length){
						skill_changes = temp_equip.skill_id;
						if(xp < temp_equip.get_enchantment_level()*10 + 10){
							ret += "</n> cannot muster enough energy to complete the enchantment. ";
						}else{
							ret +=  "</n> enhances the " + temp_equip.get_name()+ "s " + FPalace_skills.get_skill_name(skill_changes[int(j)-stat_changes.length])
							temp_equip.skill_bonus[int(j)-stat_changes.length]++;
							set_xp(-(temp_equip.get_enchantment_level()*10 + 10));
							temp_equip.set_enchantment_level(temp_equip.get_enchantment_level()+1);
						}
					}else{
						if(xp < temp_equip.get_enchantment_level()*100 + 50){
							ret += "</n> cannot muster enough energy to complete the enchantment. ";
						}else{
							ret += "</n> enhances the " + temp_equip.get_name()+ "s " + FPalace_helper.get_stat_name_by_id(stat_changes[int(j)])
							temp_equip.effects[stat_changes[int(j)]]++;
							set_xp(-(temp_equip.get_enchantment_level()*100 + 50));
							temp_equip.set_enchantment_level(temp_equip.get_enchantment_level()+1);
						}
					}
				}
			}
			
			return sanitize(ret);
		}
		
		public function get_area_map(area_id:int = -1):String{
			var i:int = 0;
			var locate_flag:Boolean = false;
			var sight:int = 1;
			
			var char_for_chal:Character = this;
			
			if(party != null)char_for_chal = party.get_best_at_skill(FPalace_skills.map_sight_id);
				
			var sight_challenge:Challenge = new Challenge(true);
			sight_challenge.set_attack_stat(FPalace_skills.map_sight_id);
			sight_challenge.set_defense_stat(-1,location.get_sight_difficulty());
			sight_challenge.set_variability(5);
			
			var result:int = sight_challenge.roll(char_for_chal);

			if(result >= 0){
				sight += Math.round(char_for_chal.get_skill_by_id(FPalace_skills.map_sight_id)/location.get_sight_difficulty());
			}
			
			if(location.get_locate_difficulty() >= 0){
				char_for_chal = this;
				if(party != null)char_for_chal = party.get_best_at_skill(FPalace_skills.map_reading_id);
				
				var locat_challenge:Challenge = new Challenge(true);
				locat_challenge.set_attack_stat(FPalace_skills.map_reading_id);
				locat_challenge.set_defense_stat(-1,location.get_locate_difficulty());
				locat_challenge.set_variability(5);
				
				result = locat_challenge.roll(char_for_chal);
				
				if(result >= 0) locate_flag = true;
			}
			
			if(area_id < 0){
				if (locate_flag){
					return location.area.get_map(1,this,sight,1);
				}else{
					return location.area.get_map(1,this,sight);
				}
			}else{
				if(locate_flag){
					return location.area.world.areas[area_id].get_map(1,this,0,1);
				}else{
					return location.area.world.areas[area_id].get_map(1,this,0);
				}
			}			
			
			return location.area.get_map();
		}
		
		public function get_possesion_by_id(i:int):Item{
			if(i >= possessions.length){
				var action_array:Array = get_all_overworld_actions();
				if(action_array[i - possessions.length] != null && action_array[i - possessions.length].trader_item!=null){
					var merchant_item:Item = action_array[i - possessions.length].trader_item.clone();
					return merchant_item;
				}
			}
			
			return possessions[i];
		}
		
		public function buy(i:int, k:int = -1, num:int = 1, show_item_desc:int = -1):String{
			var s:String = "";
			var buy_from:Character = location.get_content(i) as Character;
			if( buy_from == null) return s;
			set_busy();
			if (!buy_from.busy)buy_from.set_busy();
			if(k == -2){
				s += "<a href=\"event:buy,"+ i +"\">Buy</a>\t<a href=\"event:sell,"+ i +"\">Sell</a>";
				s += "\n\n<font color='#0000FF'><a href=\"event:look," + i +"\">Back</a></font>";
			}else if(k == -1){
				s += buy_from.get_items_to_sell(i) + "\n\n"+get_name()+" has "+gold+" gold to spend.\n\n<font color='#0000FF'><a href=\"event:buy,"+i+",-2\">Back</a></font>";
			}else{
				var trade_good:Item = buy_from.get_possesion_by_id(k);
				if(trade_good != null){
					var back_string:String = "\n<font color='#0000FF'><a href=\"event:buy,"+i+",-1\">Back</a></font>";
					if(show_item_desc > -1){
						s += get_item_description(trade_good);
					}else{
						var item_value:int = trade_good.get_value(this, buy_from);
						if(get_gold() < item_value){
							s += this.get_name() + " doesn't have enough to buy that. " + buy_from.get_name() + " wanted " + item_value + " gold for it. ";
						}else{
							if(num > 1){
								if(get_gold() < item_value*num){//buy as many as we CAN afford
									num = Math.floor(get_gold()/item_value);
								}
								s += "after bartering for a bit, " + buy_from.get_name() + " sells you " +num+ " " + trade_good.get_name() + " for " + (item_value*num) + " Gold";
								buy_from.set_gold(item_value*num);
								set_gold(-item_value*num);
								
								var buy_array:Array = new Array();
								var count:int;
								if(k >= buy_from.possessions.length){
									//trade good... just fill the array past k
									num--;
									for(num;num>=0;num--){
										buy_array[k+num] = buy_from.get_possesion_by_id(k);
									}
								}else{
									count = k;
									for(count;count<buy_from.possessions.length;count++){
										if(num <= 0)break;
										if(buy_from.possessions[count].get_name() == trade_good.get_name()){
											buy_array[count] = buy_from.possessions[count];
											num--;
										}else{
											buy_array[count] = null;
										}
									}
								}
								
								count = 0;
								for(count;count<buy_array.length;count++){
									if(buy_array[count] != null){
										trade_good = buy_from.get_possesion_by_id(count);
										buy_from.drop(count);
										add_to_possessions(trade_good);
										buy_array = buy_array.slice(0,count).concat(buy_array.slice(count+1, buy_array.length));
										count--;
									}
								}
							}else{
								s += "after bartering for a bit, " + buy_from.get_name() + " sells you " + trade_good.get_name() + " for " + item_value + " Gold";
								buy_from.set_gold(item_value);
								buy_from.drop(k);
								add_to_possessions(trade_good);
								set_gold(-item_value);
							}
						}
					}
					s += back_string;
				}
			}
			
			return s;
		}
		
		public function sell(i:int, k:int = -1, num:int = 1):String{
			var s:String = "";
			var sell_to:Character = location.get_content(i) as Character;
			if( sell_to == null) return s;
			if (!sell_to.busy)sell_to.set_busy();
			set_busy();
			if(k == -2){
				s += "<a href=\"event:buy,"+ i +"\">Buy</a>\t<a href=\"event:sell,"+ i +"\">Sell</a>";
				s += "\n\n<font color='#0000FF'><a href=\"event:look," + i +"\">Back</a></font>";
			}else if(k == -1){
				s += get_items_to_sell(i) + "\n\n"+get_name()+" has "+gold+" gold.\n\n<font color='#0000FF'><a href=\"event:sell,"+i+",-2\">Back</a></font>";
			}else{
				var trade_good:Item = get_possesion_by_id(k);
				var back_string:String = "\n<font color='#0000FF'><a href=\"event:sell,"+i+",-1\">Back</a></font>";
				var item_value:int = trade_good.get_value(sell_to, this);
				if(sell_to.get_gold() < item_value){
					s += sell_to.get_name() + " doesn't have enough to buy that. You wanted " + item_value + " gold for it. ";
				}else{
					if(num > 1){
						if(sell_to.get_gold() < item_value*num){//buy as many as we CAN afford
							num = Math.floor(sell_to.get_gold()/item_value);
						}
						s += "after bartering for a bit, " + get_name() + " sells " +num+ " " + trade_good.get_name() + " to " + sell_to.get_name() +" for " + (item_value*num) + " Gold";
						sell_to.set_gold(-item_value*num);
						set_gold(item_value*num);
						
						var buy_array:Array = new Array();
						var count:int = k;
						for(count;count<possessions.length;count++){
							if(num <= 0)break;
							if(possessions[count].get_name() == trade_good.get_name()){
								buy_array[count] = possessions[count];
								num--;
							}else{
								buy_array[count] = null;
							}
						}
						
						count = 0;
						for(count;count<buy_array.length;count++){
							if(buy_array[count] != null){
								trade_good = get_possesion_by_id(count);
								drop(count);
								sell_to.add_to_possessions(trade_good);
								buy_array = buy_array.slice(0,count).concat(buy_array.slice(count+1, buy_array.length));
								count--;
							}
						}
					}else{
						s += "after bartering for a bit, " + get_name() + " sells " + trade_good.get_name() + " to " + sell_to.get_name() +" for " + item_value + " Gold";
						sell_to.set_gold(-item_value);
						sell_to.add_to_possessions(trade_good);
						set_gold(item_value);
						drop(k);
					}
				}
				s += back_string;
			}
			
			return s;
		}
		
		public function get_items_to_sell(char_id:int):String{
			var s:String = "<table>";
			var longest_name:int = 0;
			var found:Boolean = false;
			var i:int = 0;
			for(i;i<actions.length;i++){
				if(actions[i].get_trade_flag() && actions[i].trader_item != null){
					if(actions[i].trader_item.get_name().length > longest_name)longest_name = actions[i].trader_item.get_name().length;
				}
			}
			
			i = 0;
			for(i;i<possessions.length;i++){
				if(possessions[i] != null && possessions[i].value > 0){
					if(possessions[i].get_name().length > longest_name)longest_name = possessions[i].get_name().length;
				}
			}
			
			var action_array:Array = get_all_overworld_actions();
			i = 0;
			for(i;i<action_array.length;i++){
				if(action_array[i].get_trade_flag()){
					if(action_array[i].trader_item != null){
						if(s.indexOf("x "+action_array[i].trader_item.get_name()+"</tc>") >= 0){
							continue;
						}else{
							item_value = action_array[i].trader_item.get_value(this,this);
							s += "<tr><tc>99x <a href=\"event:buy,"+ char_id +","+(possessions.length + i)+",-1,1\">"+action_array[i].trader_item.get_name()+"</a></tc>";
							s += "<a href=\"event:buy,"+ char_id +","+(possessions.length + i)+"\"><tc>x1 " + item_value + " gp</tc></a>"
							s += "<a href=\"event:buy,"+ char_id +","+(possessions.length + i)+",5\"><tc>x5 " + item_value*5 + " gp</tc></a>";
							s += "<a href=\"event:buy,"+ char_id +","+(possessions.length + i)+",10\"><tc>x10 " + item_value*10 + " gp</tc></a></tr>";
						}
						
						found = true;
					}
				}
			}
			
			i = 0;
			for(i;i<possessions.length;i++){
				if(possessions[i] != null){
					if(possessions[i].value > 0){
						if(s.indexOf("x "+possessions[i].get_name()+"</tc>") >= 0)continue;
						
						var item_count:int = 0;
						var j:int = i;
						for(j;j<possessions.length;j++){
							if(possessions[j].get_name() == possessions[i].get_name())item_count++
						}
						
						var item_value:int = 1;
						if(char_id != location.get_content_id(this)){
							item_value = possessions[i].get_value(location.get_content(char_id),this);
							s += "<tr><tc>"+item_count+"x "+ possessions[i].get_name()+"</tc>";
							s += "<a href=\"event:sell,"+ char_id +","+i+"\"><tc>x1 " + item_value + "gp</tc></a>";
							if(item_count > 1){
								if(Math.floor(item_count/2) > 1)s+= "<a href=\"event:sell,"+ char_id +","+i+","+Math.floor(item_count/2)+"\"><tc>x" + Math.floor(item_count/2) + " " + item_value*Math.floor(item_count/2) + "gp</tc></a>";
								s+= "<a href=\"event:sell,"+ char_id +","+i+","+item_count+"\"><tc>x" + item_count + " " + item_value*item_count + "gp</tc></a>";
							}
							s += "</tr>"
						}else{
							item_value = possessions[i].get_value(this,this);
							s += "<tr><a href=\"event:buy,"+ char_id +","+i+",-1,1\"><tc>"+item_count+"x "+possessions[i].get_name()+"</tc></a>";
							s += "<a href=\"event:buy,"+ char_id +","+i+"\"><tc>x1 " + item_value + "gp</tc></a>";
							if(item_count > 1){
								if(Math.floor(item_count/2) > 1)s+= "<a href=\"event:buy,"+ char_id +","+i+","+Math.floor(item_count/2)+"\"><tc>x" + Math.floor(item_count/2) + " " + (item_value*Math.floor(item_count/2)) + "gp</tc></a>";
								s+= "<a href=\"event:buy,"+ char_id +","+i+","+item_count+"\"><tc>x" + item_count + " " + (item_value*item_count) + "gp</tc></a>";
							}
							s += "</tr>"
						}
						found = true;
					}
				}
			}
			
			if(!found){
				s = get_name() + " doesn't have anything to sell!";
			}
			return s + "</table>";
		}
		
		private function AI():String{
			var ret:String = "";
			if(location.cm != null){//is there combat going on in the room?
				if(location.cm.active_combat() && location.cm.get_init(this) >= 0)set_busy();
			}
			
			var action_expression:RegExp = new RegExp("<a href=\"event:[,_a-z0-9]*\">","gi");
			var options:String = "";
			var action_choices:Array = null;
			
			if(busy <= 0){
				if(next_attack != "") next_attack = "";
				
				if(party != null && party.get_leader() != this){ 
					if(party.get_leader().location != location){
						new_location(party.get_leader().location);
					}
					if(busy <= 0)set_busy();//stop-gap until i figure out what someone seperated from their party should do
				}else{
					if(previous_action_output == ""){
						action_choices = new Array();
						var temp_array:Array = get_all_overworld_actions();
						var k:int = 0;
						for (k;k<temp_array.length;k++){
							 if(temp_array[k] != null && location != null){
								if(temp_array[k].get_name() != "" && !temp_array[k].get_bury()){
									if(get_name() != "" && (temp_array[k].get_personal() || temp_array[k].get_party_use())){
										if(temp_array[k].get_party_use() && party != null){
											action_choices[action_choices.length] = "<a href=\"event:action," + location.get_content_id(this) + "," + String(k) +",-1\">"; 
										}else{
											action_choices[action_choices.length] = "<a href=\"event:action," + location.get_content_id(this) + "," + String(k) +"\">"; 
										}
									}
								}
							 }
						}
						
						for(i=0;i<location.exits.length;i++){
							action_choices[action_choices.length] = "<a href=\"event:go_to_new_room," + String(i) +"\">";							
						}
						
						for(i=0; i<location.descriptions.length;i++){
							action_choices[action_choices.length] = "<a href=\"event:inspect,-1," + String(i) +"\">";							
						}
						
						for(i=0;i<location.contents.length;i++){
							if(location.contents[i] is Character && location.contents[i] != this){
								action_choices[action_choices.length] = "<a href=\"event:look," + String(i) +"\">";
							}else if(location.contents[i] is Item){
								action_choices[action_choices.length] = "<a href=\"event:pick_up," + String(i) +"\">";
							}
						}
						
						for(i=0;i<location.actions.length;i++){
							if (location.action_max_times[i] > location.action_current_num_times[i] || location.action_max_times[i] == -1){
								action_choices[action_choices.length] = "<a href=\"event:action,-1," + String(i) +"\">";
							}
						}
						
						action_choices[action_choices.length] = "<a href=\"event:status\">";
						action_choices[action_choices.length] = "<a href=\"event:wait\">";
						action_choices[action_choices.length] = "<a href=\"event:show_skills\">";
						action_choices[action_choices.length] = "<a href=\"event:inventory\">";
					}else{
						options = previous_action_output;
						action_choices = options.match(action_expression);						
						previous_action_output = "";
					}
					
					var choice:int;
					
					if(action_choices != null && action_choices.length > 0){
						choice = personality.determine_overworld_action(action_choices, this);
						
						if(choice == -1){
							set_busy();
							return ret;
						}
						options = action_choices[choice];
						options = options.slice(options.indexOf(":")+1, options.length-2);
						
						var tempArray:Array = options.split(",");
						var char:Character = this;
						
						if (tempArray[0] == "open"){
							previous_action_output = char.open(int(tempArray[1]));
						}else if(tempArray[0] == "inspect"){
							previous_action_output = char.inspect(int(tempArray[1]),int(tempArray[2]));
						}else if(tempArray[0] == "go_to_new_room"){
							if(location != null){
								if (ai_move == 1){
									if(location.exits[tempArray[1]].template == location.template){
										ret += go_to_new_location(tempArray[1],0,1);
									}
								}else if( ai_move == 2){
									if(location.exits[tempArray[1]] != null && location.exits[tempArray[1]].area != null && location.area != null){
										if(location.exits[tempArray[1]].area == location.area){
											ret += go_to_new_location(tempArray[1],0,1);
										}
									}
								}else if (ai_move > 2){
									ret += go_to_new_location(tempArray[1],0,1);
								}
							}
							if(busy <= 0)set_busy();
						}else if (tempArray[0] == "pick_up"){
							previous_action_output = pick_up(tempArray[1]);
							set_busy();
						}else if (tempArray[0] == "loot"){
							previous_action_output = char.loot(int(tempArray[1]),int(tempArray[2]));
							set_busy();
						}else if (tempArray[0] == "look"){
							if(tempArray[1] == null){
								previous_action_output = look();
							}else if (tempArray[2] == null){
								previous_action_output = look(int(tempArray[1]));
								previous_action_output += "<a href=\"event:status\"><a href=\"event:wait\"><a href=\"event:show_skills\"><a href=\"event:inventory\"><a href=\"event:look\">";
							}else{
								previous_action_output = look(int(tempArray[1]), int(tempArray[2]));								
							}
							status = " is standing here";
							set_busy();
						}else if(tempArray[0] == "use_item"){
							if(char.party == null){
								if(tempArray[2] != null){
									if(tempArray[5] != null){
										previous_action_output = char.use_item(int(tempArray[1]), int(tempArray[2]),-1,int(tempArray[5]));
									}else{
										previous_action_output = char.use_item(int(tempArray[1]), int(tempArray[2]));
									}
									
								}else{
									previous_action_output = char.use_item(int(tempArray[1]));
								}
							}else{
								if(tempArray[2] != null){
									if(tempArray[4] == null){
										if(tempArray[5] != null){
											previous_action_output = char.party.members[int(tempArray[3])].use_item(int(tempArray[1]), int(tempArray[2]),-1,int(tempArray[5]));
										}else{
											previous_action_output = char.party.members[int(tempArray[3])].use_item(int(tempArray[1]), int(tempArray[2]));
										}
									}else{
										if(tempArray[5] != null){
											previous_action_output = char.party.members[int(tempArray[3])].use_item(int(tempArray[1]), int(tempArray[2]), int(tempArray[4]),int(tempArray[5]));
										}else{
											previous_action_output = char.party.members[int(tempArray[3])].use_item(int(tempArray[1]), int(tempArray[2]), int(tempArray[4]));
										}
									}
								}else{
									previous_action_output = char.party.members[int(tempArray[3])].use_item(int(tempArray[1]));
								}
							}
						}else if(tempArray[0] == "action"){
							previous_action_output = fire_action(int(tempArray[1]),int(tempArray[2]), tempArray[3]);
						}else if(tempArray[0] == "challenge"){
							previous_action_output = fire_challenge(int(tempArray[1]), int(tempArray[2]), int(tempArray[3]), tempArray[4], tempArray[5]) + "\n";							
						}else if(tempArray[0] == "combat"){
							if(tempArray[3] != null){
								char = location.get_content(int(tempArray[3])) as Character;
								if(char != null){
									//someone is probably getting a pre-emptive strike here, but I'd rather let the combat_manager deal with it
									if(location.cm == null)location.cm = new Combat_manager();
									location.cm.add_participant(this);
									location.cm.add_participant(char);
								}
							}else{
								trace("(Character.tick)Don't think I should ever see this one: " + options);
							}
						}else if(tempArray[0] == "equip"){
							if(char.party == null){
								previous_action_output = char.equip(char.possessions[int(tempArray[1])], int(tempArray[3]));
							}else{
								previous_action_output = char.party.members[int(tempArray[2])].equip(char.party.members[int(tempArray[2])].possessions[int(tempArray[1])], int(tempArray[3]), int(tempArray[4]));
							}
						}else if(tempArray[0] == "unequip"){
							if(tempArray[2] == null){
								previous_action_output = unequip(get_equip_by_count(int(tempArray[1])));
							}else{
								if(party != null)char = party.members[int(tempArray[2])];
								previous_action_output = char.unequip(char.get_equip_by_count(int(tempArray[1])));
							}
						}else if(tempArray[0] == "hold"){
							if(char.party == null){
								previous_action_output = char.hold(char.possessions[int(tempArray[1])], int(tempArray[3]), int(tempArray[4]));
							}else{
								previous_action_output = char.party.members[int(tempArray[2])].hold(char.party.members[int(tempArray[2])].possessions[int(tempArray[1])], int(tempArray[3]), int(tempArray[4]));
							}
						}else if(tempArray[0] == "unhold"){
							if(tempArray[2] == null){
								previous_action_output = char.unhold(char.body.parts[int(tempArray[1])].hold);
							}else{
								if(party != null)char = party.members[int(tempArray[2])];
								previous_action_output = char.unhold(char.body.parts[int(tempArray[1])].hold);
							}
						}else if(tempArray[0] == "alchemy"){
							previous_action_output = char.alchemy(tempArray[1],tempArray[2]);
						}else if(tempArray[0] == "enchant"){
							previous_action_output = char.enchant(tempArray[1],tempArray[2]);
						}else if(tempArray[0] == "sew"){
							previous_action_output = char.sewing(tempArray[1],tempArray[2]);
						}else if(tempArray[0] == "alchemy_gui"){
							previous_action_output = char.alchemy(tempArray[1],tempArray[2]);
						}else if(tempArray[0] == "buy"){
							if(tempArray[2] == null){
								previous_action_output = char.buy(int(tempArray[1]));
							}else if(tempArray[3] != null){
								previous_action_output = char.buy(int(tempArray[1]), int(tempArray[2]),int(tempArray[3]));
							}else{
								previous_action_output = char.buy(int(tempArray[1]), int(tempArray[2]));
							}
							previous_action_output += "<a href=\"event:look\">";
						}else if(tempArray[0] == "sell"){
							if(tempArray[2] == null){
								previous_action_output = char.sell(int(tempArray[1]));
							}else if(tempArray[3] != null){
								previous_action_output = char.sell(int(tempArray[1]), int(tempArray[2]),int(tempArray[3]));
							}else{
								previous_action_output = char.sell(int(tempArray[1]), int(tempArray[2]));
							}
							previous_action_output += "<a href=\"event:look\">";
						}else if(tempArray[0] == "inventory"){
							if(tempArray[1] == null){
								previous_action_output = this.inventory();
								if(party != null){
									previous_action_output += "<a href=\"event:inventory,1\">";
								}								
							}else{
								if(party != null)char = party.members[int(tempArray[1])];
								if(char != null)previous_action_output = char.inventory();
								if(party != null){
									if(int(tempArray[1]) < party.members.length - 1)previous_action_output += "<a href=\"event:inventory,"+(int(tempArray[1])+1)+"\">";
								}
							}
							previous_action_output += "<a href=\"event:status\"><a href=\"event:wait\"><a href=\"event:show_skills\"><a href=\"event:look\">";
							status = " is standing here";
						}else if(tempArray[0] == "appearance"){
							if(tempArray[1] == null){
								previous_action_output = appearance(1);
								if(party != null){
									previous_action_output += "<a href=\"event:appearance,1\">";
								}
							}else{
								char = party.members[int(tempArray[1])];
								if(char != null) previous_action_output = char.appearance(1);
								if(int(tempArray[1]) < party.members.length - 1)previous_action_output += "<a href=\"event:appearance,"+(int(tempArray[1])+1)+"\">";
							}
							set_busy();
							status = " is standing here";
						}else if(tempArray[0] == "status"){
							if(tempArray[2] == null){
								if(tempArray[1] == null){
									previous_action_output = statistics(this);
									if(party != null){
										previous_action_output += "<a href=\"event:status,1\">";
									}
								}else{
									if(party != null){
										char = party.members[int(tempArray[1])];
										
									}else{
										char = this;
									}
									previous_action_output = char.statistics(this);
									
									if(party == null || int(tempArray[1]) < party.members.length - 1)previous_action_output += "<a href=\"event:status,"+(int(tempArray[1])+1)+"\">";
								}
							}else{
								char = this;
								if(party != null)char = party.members[int(tempArray[1])];
								if(char != null)previous_action_output = char.statistics(this,int(tempArray[2]));
							}
							status = " is standing here";
						}else if(tempArray[0] == "act_by_type"){
							if(char.party != null)char = location.get_content(tempArray[1]) as Character;
							previous_action_output = char.get_overworld_actions_by_type(tempArray[2], this);
							status = " is standing here";
						}else if(tempArray[0] == "talk"){
							char = this.location.get_content(int(tempArray[1])) as Character;
							if(tempArray[5] != null){
								previous_action_output = char.talk(this, int(tempArray[2]), int(tempArray[3]), int(tempArray[4]), tempArray.slice(5, tempArray.length));
							}else if(tempArray[4] != null){
								previous_action_output = char.talk(this, int(tempArray[2]), int(tempArray[3]), int(tempArray[4]));
							}else{
								previous_action_output = char.talk(this, int(tempArray[2]), int(tempArray[3]));
							}
						}else if(tempArray[0] == "wait"){
							set_busy(Main.t1_hour);
							status = " is waiting here";
						}else if(tempArray[0] == "show_skills"){
							if(tempArray[2] != null){
								var skill_array:Array = FPalace_skills.get_skill_list();
								var show_children_of:Array = new Array;
								var i:int = 0;
								for(i;i<skill_array.length;i++){
									show_children_of[i] = skill_array[i].get_id();
								}
							}							
							if(tempArray[1] == null){
								previous_action_output = char.skills.show_all_skills(char, show_children_of);
								if(party != null){
									previous_action_output += "<a href=\"event:show_skills,1\">";
								}
							}else if(tempArray[2] == null){
								if(party != null)char = party.members[int(tempArray[1])];
								if(char != null)previous_action_output = char.skills.show_all_skills(char, show_children_of);
								if(party != null){
									if(int(tempArray[1]) < party.members.length - 1)previous_action_output += "<a href=\"event:show_skills,"+(int(tempArray[1])+1)+"\">";
								}
							}else{
								if(party != null)char = party.members[int(tempArray[1])];
								previous_action_output = char.increase_skill_by_id(int(tempArray[2]));
							}
							status = " is standing here";
						}else if(tempArray[0] == "cclass_history"){
							if(location != null){
								if(location.get_content(int(tempArray[1])) is Character){
									char = location.get_content(int(tempArray[1])) as Character;
									previous_action_output = char.get_class_history();
								}
							}
							status = " is standing here";
						}else if(tempArray[0] == "dismantle"){
							previous_action_output = dismantle(tempArray[1]);
						}else if(tempArray[0] == "craft"){
							previous_action_output = craft(tempArray[1]);
						}else{
							trace("(Character)Don't know what to do with this link:"+tempArray);
						}
					}
				}
			}
			
			if(busy <= 0){
				set_busy();//well, you tried
				//trace("(Character.AI)Character just did action without setting any busy..." + previous_action_output + " " + ret + " " + options);
			}
			
			return ret;
		}
		
		public function tick():String{
			total_actions_taken++;
			wait_time++;
			var ret:String = "";
			var global_ret:String = "";
			
			var i:int = 0;
			for(i;i<current_tick_effects.length;i++){
				if(current_tick_effects[i] != null){
					ret += current_tick_effects[i].tick(this) + "\n";
					if(current_tick_effects[i] != null && current_tick_effects[i].ticks_left() <= 0){//this effect is done
						current_tick_effects = current_tick_effects.slice(0, i).concat(current_tick_effects.slice(i+1, current_tick_effects.length));
						i--;
					}
				}else{
					current_tick_effects = current_tick_effects.slice(0, i).concat(current_tick_effects.slice(i+1, current_tick_effects.length));
					i--;
				}
			}
			
			ret += body.tick(this);
			
			i = 0;
			for(i;i<possessions.length;i++){
				ret += possessions[i].tick(location, this);
			}
			
			if(busy <= 0 && location != null)global_ret += AI();
			//while(busy <= 0 && location != null)global_ret += AI();
			
			if(wait_time%Main.t1_hour == 0 && wait_time > 0){
				reset_stats(-1, get_stat(FPalace_helper.con_id)/10);
				ret += apply_affect_by_id(FPalace_helper.curr_hp_id, 5, 0, null, Body.change_stats_total);
				ret += apply_affect_by_id(FPalace_helper.curr_mp_id, 5, 0, null, Body.change_stats_total);
				ret += apply_affect_by_id(FPalace_helper.curr_fatigue_id, -1,0, null, Body.change_stats_total);
			}
			personality.advance_objectives(Quest.wait_action, [location,wait_time], this);			
			
			if(busy > 0){
				busy--;
				if(busy < 0) busy = 0;
			}
			
			//a year! happy birthday!
			if(total_actions_taken%(Main.t1_year*get_primary_race().get_aging_mod()) == 0){
				sex.age(this,1);
				total_actions_taken = 0;
			}
			
			//this should be temporary, though the effect needs to come from somewhere....
			if(total_actions_taken%Main.t1_hour == 0){
				if(location != null){
					var curr_lust:Number = get_stat(FPalace_helper.lust_id);
					var max_lust:Number = get_stat(FPalace_helper.max_lust_id);
					var min_lust:Number = get_stat(FPalace_helper.min_lust_id);
					var decrease_by:Number = min_lust - 5;
					
					if(curr_lust > max_lust && decrease_by > 0){
						decrease_by = 5 - min_lust;
						//if the character is a herm/futa, and her semen volume is full, should be increasing ball/penis/breasts
						if(this.sex.name == "hermaphrodite" || this.sex.name == "futanari"){
							//need to check if there's any seminal volume missing...
							var grow_flag:Boolean = true;
							i = 0;
							for(i;i<current_tick_effects.length;i++){
								//ret += current_tick_effects[i].tick(this) + "\n";
								if(current_tick_effects[i].status_id == Tick_Effect.fluid_regen_status){
									grow_flag = false;
									break;
								}
							}
							if(grow_flag){
								var grow_mult:Number = (min_lust*curr_lust/max_lust)/max_lust/12;
								ret += "</n>s body groans from its need to cum. \n";
								ret += apply_affect_by_id(FPalace_helper.penis_length_id, grow_mult*get_stat(FPalace_helper.penis_length_id), 0, null, Body.change_stats_total);
								ret += apply_affect_by_id(FPalace_helper.penis_girth_id, grow_mult*get_stat(FPalace_helper.penis_girth_id), 0, null, Body.change_stats_total);
								ret += apply_affect_by_id(FPalace_helper.breast_size_id, grow_mult*get_stat(FPalace_helper.breast_size_id), 0, null, Body.change_stats_total);
								ret += apply_affect_by_id(FPalace_helper.balls_size_id, grow_mult*get_stat(FPalace_helper.balls_size_id), 0, null, Body.change_stats_total);
								ret += apply_affect_by_id(FPalace_helper.cum_volume_id, grow_mult*get_stat(FPalace_helper.cum_volume_id), 0, null, Body.change_stats_total);
								ret += apply_affect_by_id(FPalace_helper.milk_volume_id, grow_mult*get_stat(FPalace_helper.milk_volume_id), 0, null, Body.change_stats_total);
								ret += apply_affect_by_id(FPalace_helper.min_lust_id, grow_mult*get_stat(FPalace_helper.min_lust_id), 0, null, Body.change_stats_total);
								
								ret += apply_affect_by_id(FPalace_helper.erection_ratio_id, -grow_mult*get_stat(FPalace_helper.erection_ratio_id), 0, null, Body.change_stats_total);
							}
						}
					}
					
					if(location.cm != null){
						if(location.cm.get_init(this) < 0){
							ret += apply_affect_by_id(FPalace_helper.lust_id, decrease_by, 0, null, Body.change_stats_total);
						}
					}else{
						ret += apply_affect_by_id(FPalace_helper.lust_id, decrease_by, 0, null, Body.change_stats_total);
					}
				}
			}
			
			global_ret = this.sanitize(global_ret, null);
			set_challenge_output(ret);
			return global_ret;			
		}
		
		public function get_primary_race():Race{
			var r:Race;
			var r_count:int;
			var max_race:Race;
			var max_race_count:int = 0;
			var i:int = 0;
			
			for(i;i<body.parts.length;i++){
				r = body.parts[i].race;
				r_count = 0;
				var k:int = i;
				for(k;k<body.parts.length;k++){
					if (body.parts[k].race.get_name() == r.get_name()){
						r_count ++;
					}
				}
				
				if(r_count > max_race_count){
					max_race = r;
					max_race_count = r_count;
				}
			}
			
			if (max_race == null){
				max_race = new Race();
				max_race.set_name("unknown");
			}
			
			return max_race;
		}
		
		public function get_tick():int{
			return total_actions_taken;
		}
		
		public function get_class_history():String{
			var ret:String = "";
			
			var i:int = 0;
			for(i;i<Math.ceil(cclass.length/3);i++){
				ret += cclass[i*3].get_name() + " Lvl: " + cclass[i*3+1] + "\n";
			}
			
			return ret;
		}
		
		public function get_class_lvl(c:Character_class):int{
			var ret:int = 0;
			
			var i:int = 0;
			for(i;i<Math.ceil(cclass.length/3);i++){
				if(cclass[i*3].get_name() == c.get_name()){
					ret = cclass[i*3+1];
					break;
				}
			}
			
			return ret;
		}
		
		private function show_stat_for_statistics(stat_id:int, precision:int = 0):String{
			var s:String = "";
			var temp_stat:Number = this.get_stat(stat_id);
			var real_stat:Number = this.get_stat(stat_id, 0,0,-1,false);
			s += temp_stat.toFixed(precision);
			if(real_stat.toFixed(2) != temp_stat.toFixed(2)){
				s += "(" + real_stat.toFixed(precision) + ")";
			}
			return s;
		}
		
		public function statistics(c:Character, stat_up:int = -1):String{
			var s:String = "";
			var party_id:int = 0;
			if(party != null){
				var i:int = 0;
				for(i;i<party.members.length;i++){
					if(party.members[i] == this){
						party_id = i;
						break;
					}
				}
			}
			if(stat_up != -1){
				s += sanitize(apply_affect_by_id(stat_up,1,0,null, Body.change_stats_total),c);
				s += "\n<a href=\"event:status," + party_id + "\"><font color='#0000FF'>Back</font></a>"; 
				stat_points -= this.get_current_class().get_stat_cost(stat_up);
			}else{
				s += "Name: " + this.get_name() + "\n";
				if(this.sex != null)s += "Sex: " + this.sex.get_name()+ "\n";
				if(this.get_current_class() != null && location != null)s += "<a href=\"event:cclass_history," + location.get_content_id(this) + "\"><font color='#0000FF'>Class</font></a>: " + this.get_current_class().get_name() + "\n";
				if(this.personality.job != null)s += "Job: " + this.personality.job.get_name() + "\n";
				s += "Level: " + this.get_lvl() + "\n";
				if(stat_points > 0)s += "Stat points to spend: <font color='#00FF00'>" + this.stat_points + "</font>\n";
				if(get_primary_race().get_aging_mod() == 1){
					s += "Age: " + this.get_stat(FPalace_helper.age_id).toFixed(0) + "\n";
				}else{
					s += "Age: " + (this.get_stat(FPalace_helper.age_id)*get_primary_race().get_aging_mod() + Math.floor(this.get_tick()/Main.t1_year)).toFixed(0) + "(looks about "+this.get_stat(FPalace_helper.age_id).toFixed(0)+")\n";
				}
				s += "Birthday in ";
				
				var temp_tick:int = Main.t1_year - this.get_tick();
				if(temp_tick / Main.t1_month > 0){
					s += Math.floor(temp_tick / Main.t1_month) + " Months ";
					temp_tick = temp_tick - (Math.floor(temp_tick / Main.t1_month)*Main.t1_month);
				}
				if(temp_tick / Main.t1_day > 0){
					s += "and " + Math.floor(temp_tick / Main.t1_day) + " Days ";
					temp_tick = temp_tick - (Math.floor(temp_tick / Main.t1_day)*Main.t1_day);
				}
				s += "\n";
				
				s += (this.nxt_lvl_xp - this.get_xp()) + "xp to next level.\n";
				if(this.get_status_effects()[0] != null){
					var temp_string:String = "";
					var temp_array:Array = this.get_status_effects();
					var count:int = 0;
					for(count;count<temp_array.length;count++){
						temp_string = Tick_Effect.get_status_effect_name(temp_array[count]);
						if(temp_string != ""){
							s+=temp_string + "\t";
						}
					}
					s += "\n";
				}
				s += "HP: " + show_stat_for_statistics(FPalace_helper.curr_hp_id) + " / " + show_stat_for_statistics(FPalace_helper.max_hp_id) + "\n";
				s += "MP: " + show_stat_for_statistics(FPalace_helper.curr_mp_id) + " / " + show_stat_for_statistics(FPalace_helper.max_mp_id) + "\n";
				s += "FP: " + show_stat_for_statistics(FPalace_helper.curr_fatigue_id) + " / " + show_stat_for_statistics(FPalace_helper.max_fatigue_id) + "\n";
				s += "LP: " + show_stat_for_statistics(FPalace_helper.lust_id) + " / " + show_stat_for_statistics(FPalace_helper.max_lust_id) + "\n";
				s += "Str: " + show_stat_for_statistics(FPalace_helper.str_id);
				if(this.get_current_class() != null && this.get_current_class().get_stat_cost(FPalace_helper.str_id) <= stat_points && body.get_max_stat(FPalace_helper.str_id) >= this.get_stat(FPalace_helper.str_id, 0,0,-1,false) + 1){
					s += "<a href=\"event:status," + party_id + ","+FPalace_helper.str_id+"\"><font color='#0000FF'>+</font></a>\n";
				}else{
					s += "\n";
				}
				s += "Dex: " + show_stat_for_statistics(FPalace_helper.dex_id);
				if(this.get_current_class() != null && this.get_current_class().get_stat_cost(FPalace_helper.dex_id) <= stat_points && body.get_max_stat(FPalace_helper.dex_id) >= this.get_stat(FPalace_helper.dex_id, 0,0,-1,false) + 1){
					s += "<a href=\"event:status," + party_id + ","+FPalace_helper.dex_id+"\"><font color='#0000FF'>+</font></a>\n";
				}else{
					s += "\n";
				}
				s += "Con: " + show_stat_for_statistics(FPalace_helper.con_id);
				if(this.get_current_class() != null && this.get_current_class().get_stat_cost(FPalace_helper.con_id) <= stat_points && body.get_max_stat(FPalace_helper.con_id) >= this.get_stat(FPalace_helper.con_id, 0,0,-1,false) + 1){
					s += "<a href=\"event:status," + party_id + ","+FPalace_helper.con_id+"\"><font color='#0000FF'>+</font></a>\n";
				}else{
					s += "\n";
				}
				s += "Beauty: " + show_stat_for_statistics(FPalace_helper.sex_appeal_id);
				if(this.get_current_class() != null && this.get_current_class().get_stat_cost(FPalace_helper.sex_appeal_id) <= stat_points && body.get_max_stat(FPalace_helper.sex_appeal_id) >= this.get_stat(FPalace_helper.sex_appeal_id, 0,0,-1,false) + 1){
					s += "<a href=\"event:status," + party_id + ","+FPalace_helper.sex_appeal_id+"\"><font color='#0000FF'>+</font></a>\n";
				}else{
					s += "\n";
				}
				s += "Int: " + show_stat_for_statistics(FPalace_helper.int_id);
				if(this.get_current_class() != null && this.get_current_class().get_stat_cost(FPalace_helper.int_id) <= stat_points && body.get_max_stat(FPalace_helper.int_id) >= this.get_stat(FPalace_helper.int_id, 0,0,-1,false) + 1){
					s += "<a href=\"event:status," + party_id + ","+FPalace_helper.int_id+"\"><font color='#0000FF'>+</font></a>\n";
				}else{
					s += "\n";
				}
				s += "Wis: " + show_stat_for_statistics(FPalace_helper.wis_id);
				if(this.get_current_class() != null && this.get_current_class().get_stat_cost(FPalace_helper.wis_id) <= stat_points && body.get_max_stat(FPalace_helper.wis_id) >= this.get_stat(FPalace_helper.wis_id, 0,0,-1,false) + 1){
					s += "<a href=\"event:status," + party_id + ","+FPalace_helper.wis_id+"\"><font color='#0000FF'>+</font></a>\n";
				}else{
					s += "\n";
				}
				s += "Will: " + show_stat_for_statistics(FPalace_helper.will_id);
				if(this.get_current_class() != null && this.get_current_class().get_stat_cost(FPalace_helper.will_id) <= stat_points && body.get_max_stat(FPalace_helper.will_id) >= this.get_stat(FPalace_helper.will_id, 0,0,-1,false) + 1){
					s += "<a href=\"event:status," + party_id + ","+FPalace_helper.will_id+"\"><font color='#0000FF'>+</font></a>\n";
				}else{
					s += "\n";
				}
				s += "Cha: " + show_stat_for_statistics(FPalace_helper.cha_id);
				if(this.get_current_class() != null && this.get_current_class().get_stat_cost(FPalace_helper.cha_id) <= stat_points && body.get_max_stat(FPalace_helper.cha_id) >= this.get_stat(FPalace_helper.cha_id, 0,0,-1,false) + 1){
					s += "<a href=\"event:status," + party_id + ","+FPalace_helper.cha_id+"\"><font color='#0000FF'>+</font></a>\n";
				}else{
					s += "\n";
				}
				s += "Weight: " + show_stat_for_statistics(FPalace_helper.weight_id,2) + " / " + show_stat_for_statistics(FPalace_helper.max_weight_id,2) + "\n";
				/*
				s += "Min Lust: " + show_stat_for_statistics(FPalace_helper.min_lust_id)+ "\n";//
				s += "Height: " + show_stat_for_statistics(FPalace_helper.height_id,2) + "\n";
				if( this.get_stat(FPalace_helper.cum_volume_id) > -1)s += "Cum Volume: " + show_stat_for_statistics(FPalace_helper.cum_volume_id,2) + "mL\n";//
				if( this.get_stat(FPalace_helper.milk_volume_id) > -1)s += "Milk Volume: " + show_stat_for_statistics(FPalace_helper.milk_volume_id,2) + "mL\n";//
				s += "Anus width: " + show_stat_for_statistics(FPalace_helper.anal_width_id,2) + "\"\n";//
				s += "Anus depth: " + show_stat_for_statistics(FPalace_helper.anal_depth_id,2)+ "\"\n";//
				if( this.get_stat(FPalace_helper.vaginal_width_id) > -1)s += "Vaginal width: " + show_stat_for_statistics(FPalace_helper.vaginal_width_id,2) + "\"\n";//
				if( this.get_stat(FPalace_helper.vaginal_depth_id) > -1)s += "Vaginal depth: " + show_stat_for_statistics(FPalace_helper.vaginal_depth_id,2) + "\"\n";//
				if(this.get_stat(FPalace_helper.semen_fertility_id) > -1)s += "Semen Fertility: " + (this.get_stat(FPalace_helper.semen_fertility_id)*100).toFixed(2) + "%\n";//
				if( this.get_stat(FPalace_helper.egg_fertility_id) > -1)s += "Womb Fertility: " + (this.get_stat(FPalace_helper.egg_fertility_id)*100).toFixed(2) + "%\n";//
				if( this.get_stat(FPalace_helper.erection_ratio_id) > -1)s += "Flacid:Erect Ratio:  " + (this.get_stat(FPalace_helper.erection_ratio_id)).toFixed(2) + "\n";//
				if( this.get_stat(FPalace_helper.biomass_consumed) > -1)s += "Biomass consumed: " + show_stat_for_statistics(FPalace_helper.biomass_consumed,2) + "mL\n";//
				*/
				s += "\n";
			}
			
			//s += "\n\n" + this.personality.get_all_relationships(this);
			
			return s;
		}
		
		public function consume(consumption_id:int, c:Character = null):String{
			var ret:String = "";
			if(c != null){
				var consume_volume:Number = c.get_stat(consumption_id);
				
				ret += this.apply_affect_by_id(FPalace_helper.bloat_id, Math.floor(consume_volume/500), 0, null, Body.change_stats_total);
				
				var num_consequences:int = Main.t1_day/Main.t1_hour;
			
				var tf:Tick_Effect = new Tick_Effect();
				tf.set_end_tick(Main.t1_day);
				var consequence:Consequence = new Consequence();
				consequence.add_consequence(FPalace_helper.bloat_id, -Math.floor(consume_volume/500)/num_consequences, "", 0);
				
				tf.set_end_consequence(consequence);
				
				consequence = new Consequence();
				consequence.add_consequence(FPalace_helper.bloat_id, -Math.floor(consume_volume/500)/num_consequences, "", 0, 1);
				
				var i:int = 0;
				for(i;i<num_consequences;i++){
					tf.set_tick_consequence(Math.floor((i+1)*Main.t1_day/(num_consequences-1)),consequence);
				}
				
				this.apply_tick_effect(tf);
				
				ret += this.apply_affect_by_id(FPalace_helper.biomass_consumed, consume_volume, 0, null, Body.change_stats_total);
				
				var consume_effects:Array = c.get_stat_actions(consumption_id);
				
				i = 0;
				for(i;i<consume_effects.length;i++){
					var temp_a:Action = consume_effects[i] as Action;
					if(temp_a != null){
						if(temp_a.get_consume())ret += temp_a.challenge(0,this,c);
					}
				}
				var temp:String = c.fluid_extraction(consumption_id);
				//need to swap the name tags... this makes the fluid extraction correct, but the stat action incorrect...
				while(temp.indexOf("</n>") >= 0) temp = temp.replace("</n>","</n2>");
				while(temp.indexOf("</noun>") >= 0) temp = temp.replace("</noun>","</noun2>");
				while(temp.indexOf("</pronoun>") >= 0) temp = temp.replace("</pronoun>","</pronoun2>");
				while(temp.indexOf("</objnoun>") >= 0) temp = temp.replace("</objnoun>","</objnoun2>");
				ret += temp;
			}
			return ret;
		}
		
		public function fluid_extraction(fluid_id:int):String{
			var ret:String = "";
			var extract_effects:Array = get_stat_actions(fluid_id);
			var i:int = 0;
			for(i;i<extract_effects.length;i++){
				var temp_a:Action = extract_effects[i] as Action;
				if(temp_a != null){
					if(temp_a.get_extract())ret += temp_a.challenge(0,this,this);
				}
			}
			
			var consume_volume:Number = get_stat(fluid_id);
			ret += this.apply_affect_by_id(fluid_id, (-consume_volume/2), 0, null, Body.change_stats_total);
			//want 18con: ready again in 10min, 10con: ready again in 2 hours
			//var ticks_to_take:int = ((Main.t1_hour*2 - Main.t10_min)/-8)*get_stat(FPalace_helper.con_id) + (Main.t1_hour*2) + ((((Main.t1_hour*2)-(Main.t10_min))/8)*10);
			
			//10 con = 1 week to be ready again, 20 con = 3.5 days to be ready again...
			var ticks_to_take:int = (Main.t1_week/(get_stat(FPalace_helper.con_id)/10))/(get_stat(FPalace_helper.min_lust_id)+1);
			if(ticks_to_take < 4)ticks_to_take = 4;
			
			var num_consequences:int = Main.t1_week/Main.t1_hour;
			
			var tf:Tick_Effect = new Tick_Effect();
			tf.set_status_id(Tick_Effect.fluid_regen_status);
			tf.set_end_tick(ticks_to_take);
			var consequence:Consequence = new Consequence();
			consequence.add_consequence(fluid_id,consume_volume/2/num_consequences, "", 0);
			
			tf.set_end_consequence(consequence);
			
			consequence = new Consequence();
			consequence.add_consequence(fluid_id,consume_volume/2/num_consequences, "", 0, 1);
			
			i = 0;
			for(i;i<num_consequences;i++){
				tf.set_tick_consequence(Math.floor((i+1)*ticks_to_take/(num_consequences-1)),consequence);
			}
			
			this.apply_tick_effect(tf);
			
			return ret;
		}
		
		public function impregnate(c:Character = null, preg_to_tick:Boolean = false):String{
			var ret:String = "";
			//trace("(CHARACTER)impregnate attempt on " + get_name());
			if(c != null){
				//trace("by " + c.get_name());
				//assume the character passed in is the father, and that this is the mother for now
				var impreg_volume:Number = c.get_stat(FPalace_helper.cum_volume_id);
				ret += consume(FPalace_helper.cum_volume_id,c);
				//make sure no one is infertile
				if(c.get_stat(FPalace_helper.semen_fertility_id) < 0.0 || get_stat(FPalace_helper.egg_fertility_id) < 0.0 || body.get_pregnant_race().preg_effect == null){
					//trace("but one of them is infertile...");
					return ret;
				}
				
				//Check to see if we're already pregnant
				var i:int = 0;
				for(i;i<current_tick_effects.length;i++){
					if(current_tick_effects[i].get_id()  == Tick_Effect.pregnant_status){
						//trace("but "+get_name()+" is already pregnant!");
						return ret;
					}
				}
				var egg_fertility:Number = get_stat(FPalace_helper.egg_fertility_id);
				var semen_fertility:Number = c.get_stat(FPalace_helper.semen_fertility_id);
				var n:Number = Math.log(((semen_fertility + egg_fertility) * impreg_volume))*egg_fertility;
				
				//trace("child probability is " + n + " impreg volume:" + impreg_volume +"mL semen fertility:"+ semen_fertility + " egg fertility:"+egg_fertility);
				
				sex.reverse_bonuses(this);
				c.sex.reverse_bonuses(c);
				var mom_parts:Array = null;
				var dad_parts:Array = null;
				var both_parts:Array = null;
				var child_array:Array = new Array();
				while(n>=0){
					if(Math.random() < n){
						var baby:Character = new Character("Child");
						
						baby.mother = this;
						baby.father = c;
						
						//give the child parts both mother and father have in common... though this means if a parent lost an arm, the child will be born without one too... hmmm
						var rand_sex:int;
						if(mom_parts == null && dad_parts == null && both_parts == null){
							mom_parts = new Array();
							dad_parts = new Array();
							both_parts = new Array();
							var mom_found_parts:Array = new Array();
							i = 0;
							for(i;i<c.body.parts.length;i++){
								var found:Boolean = false;
								var k:int = 0;
								for(k;k<body.parts.length;k++){
									if(c.body.parts[i].get_name() == body.parts[k].get_name()){
										both_parts[both_parts.length] = [body.parts[k],c.body.parts[i]];
										mom_found_parts[k] = true;
										found = true;
									}else if(i >=c.body.parts.length-1){
										if(mom_found_parts[k] == null){
											mom_parts[mom_parts.length] = body.parts[k];
										}
									}
								}
								if(!found){
									dad_parts[dad_parts.length] = c.body.parts[i];
								}
							}
						}
						var part_array1:Array = new Array();
						i = 0;
						for(i;i<both_parts.length;i++){
							var new_part:Body_part = new Body_part();
							if(Math.random() <= 0.5){
								part_array1[part_array1.length] = both_parts[i][0];
							}else{
								part_array1[part_array1.length] = both_parts[i][1];
							}
						}
						
						rand_sex = Math.round(Math.random()*101);
						if(rand_sex <= 50){
							part_array1 = part_array1.concat(mom_parts);
						}else if(rand_sex <= 100){
							part_array1 = part_array1.concat(dad_parts);
						}else{
							//Part bonanza!
							part_array1 = part_array1.concat(dad_parts.concat(mom_parts));
						}
						
						//put the baby together
						i = 0;
						for(i;i<part_array1.length;i++){
							new_part = new Body_part();
								
							new_part.clone(part_array1[i]);
							new_part.equip = new Array();
							new_part.covered_by = new Array();
							new_part.hold = null;
							
							baby.new_body_part(new_part);
						}
						baby.body.check_state(c);
						//Figure out the kids name
						var baby_name:String = " child of " + this.get_name() + " and " + c.get_name();
						
						if(baby.sex.name == "Male"){
							baby_name = baby.get_primary_race().get_random_male_name();
						}else{
							baby_name = baby.get_primary_race().get_random_female_name();
						}
						
						if(c.get_name().indexOf(" ") > 0){
						   baby_name += c.get_name().substr(c.get_name().indexOf(" "), c.get_name().length - c.get_name().indexOf(" "));
						}
						baby.set_name(baby_name);
						
						baby.reset_stats();
						baby.apply_affect_by_id(FPalace_helper.curr_hp_id, baby.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
						baby.apply_affect_by_id(FPalace_helper.curr_mp_id, baby.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
						baby.apply_affect_by_id(FPalace_helper.curr_fatigue_id, baby.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
						baby.apply_affect_by_id(FPalace_helper.bloat_id,-baby.get_stat(FPalace_helper.bloat_id),0,null,Body.change_stats_total);
						baby.apply_affect_by_id(FPalace_helper.lust_id, -baby.get_stat(FPalace_helper.lust_id),0,null,Body.change_stats_total);
						
						baby.apply_affect_by_id(FPalace_helper.age_id,-baby.get_stat(FPalace_helper.age_id));
						//trace(baby.appearance(1));
						baby.set_move(Math.max(c.ai_move, ai_move));
						baby.personality.new_relationship(this,baby,Relationship.initial_reaction_change, 20);
						child_array[child_array.length] = baby;
						
					}
					
					n = n - 1;
				}
				sex.apply_bonuses(this);
				c.sex.apply_bonuses(c);
				
				i = 0;
				for(i;i<child_array.length;i++){
					if(preg_to_tick){
						body.make_pregnant(child_array[i], this, Math.random()*body.get_pregnant_race().preg_effect.end_tick);
					}else{
						body.make_pregnant(child_array[i], this);
					}
				}
				
			}
			return ret;
		}
		
		public function draw_34self(center_x:int, center_y:int, c:Character, mirror:Boolean = false):Sprite{
			var sprite:Sprite = new Sprite( );
			sprite.x = center_x - 50;
			sprite.y = center_y - 100;
			
			var g:Graphics = sprite.graphics;
			g.drawRect(0, 0, 100, 200);
			
			var body_sprite:Sprite = body.draw_34self(50, 100, this, mirror);
			
			sprite.addChild(body_sprite);
			
			//move the bottom of the sprite to top of init bubble (185)
			if (body_sprite.getBounds(sprite).bottom != 185){
				body_sprite.y = 185 - body_sprite.getBounds(sprite).bottom;
			}
			
			return sprite;
		}
		
		public function draw_self(center_x:int, center_y:int, c:Character, no_info:Boolean = false):Sprite{
			var sprite:Sprite = new Sprite( );
			sprite.x = center_x - 50;
			sprite.y = center_y - 100;
			
			var g:Graphics = sprite.graphics;
			//g.beginFill( 0xC2C2C2);
			g.drawRect(0, 0, 100, 200);
			//g.endFill( );
			
			var body_sprite:Sprite = body.draw_self(50, 100, this);
			
			sprite.addChild(body_sprite);
			//move the bottom of the sprite to top of init bubble (185)
			if (body_sprite.getBounds(sprite).bottom != 185){
				body_sprite.y = 185 - body_sprite.getBounds(sprite).bottom;
			}
			
			if(!no_info){
			
				var myFormat:TextFormat = new TextFormat();
				myFormat.size = 12;
				myFormat.color = 0x000000;
				
				var myTextImage:BitmapData = new BitmapData(100, 100, true, 0xC2C2C2);
				var tf:TextField = new TextField();
				tf.defaultTextFormat = myFormat;
				tf.htmlText = Main.capitalize(sanitize("</n>",c));
	
				myTextImage.draw(tf);
				var bm:Bitmap = new Bitmap(myTextImage);
				
				bm.x = 10;
				bm.y = 7.5;
				
				sprite.addChild(bm);
				
				//should have bars showing HP, LUST, FATIGUE, and (maybe) MP
				var status_bar:Sprite = draw_statusbars(50, 18, false);//18 is temporary for two bars
				status_bar.x = 0;
				status_bar.y = 12.5;
				
				sprite.addChild(status_bar);
				
				//face designating this characters "attitude" towards the player
				var disposition:Sprite = new Sprite;
				g = disposition.graphics
				g.beginFill(0x000000)
				g.drawCircle(80, 20, 6);
				g.endFill();
				
				if(this.personality.check_relationship(c,this) > 0){
					g.beginFill(0x00FF00)
				}else if(this.personality.check_relationship(c,this) < 0){
					g.beginFill(0xFF0000)
				}else{
					g.beginFill(0xFFFFFF)
				}
				
				
				g.drawCircle(80, 20, 5);
				g.endFill();
				
				sprite.addChild(disposition);
				
				//Initiative
				/*
				if(location != null){
					if(location.cm != null){
						if(location.cm.get_init(this) >= 0){
							g.beginFill( 0x000000);
							g.drawCircle(50,200,15);
							g.endFill();
							g.beginFill( 0xC2C2C2);
							g.drawCircle(50,200,13);
							g.endFill();
							
							var next_action_in:int = location.cm.chars_to_next_action(this);
							var last_action_was:int = location.cm.chars_since_last_action(this);
							
							if(last_action_was == 0){
								g.beginFill( 0x0000FF);
								g.drawCircle(50,200,13);
								g.endFill();
							}else{
								g.beginFill( 0x0000FF);
								g.drawCircle(50,200,13*(last_action_was/(next_action_in+last_action_was)));
								g.endFill();
							}
						}
					}
				}
				*/
			}
			
			return sprite;
		}
		
		public function draw_sideline(center_x:int, center_y:int, c:Character):Sprite{
			var sprite:Sprite = new Sprite( );
			var g:Graphics = sprite.graphics;
			g.beginFill( 0xC2C2C2);
			g.drawRect(1, 1, 48, 48);
			g.endFill( );
			
			var myFormat:TextFormat = new TextFormat();
			myFormat.size = 6;
			myFormat.color = 0xFFFFFF;
			
			var myTextImage:BitmapData = new BitmapData(50, 50, true, 0xC2C2C2);
			var tf:TextField = new TextField();
			tf.defaultTextFormat = myFormat;
			tf.htmlText = sanitize("</n>",c);// + " " + get_stat(FPalace_helper.curr_hp_id) + "/" + get_stat(FPalace_helper.max_hp_id);

			myTextImage.draw(tf);
			
			var bm:Bitmap = new Bitmap(myTextImage);
			
			bm.x = 2.5;
			bm.y = 2.5;
			
			sprite.addChild(bm);
			
			//should have bars showing HP, LUST, FATIGUE, and (maybe) MP
			var status_bar:Sprite = draw_statusbars(40, 18, false);//18 is temporary for two bars
			status_bar.x = -10;
			status_bar.y = 0;
			
			sprite.addChild(status_bar);
			
			sprite.x = center_x - 25;
			sprite.y = center_y - 25;
			
			return sprite;
		}
		
		public function draw_statusbars(max_x:int, max_y:int, show_text:Boolean = true, vertical_display:Boolean = true):Sprite{
			var sprite:Sprite = new Sprite();
			var g:Graphics = sprite.graphics;
			
			var bar_height:int = 0;
			var text_height:int = 0;
			var bar_width:int = 0;
			var start_y:Number = 12.5;
			var start_x:Number = 12.5;
			var y_inc:int = 0;
			var x_inc:int = 0;
			var myFormat:TextFormat = new TextFormat();
			myFormat.color = Main_gui.combat_txt_colour;
			
			if(vertical_display){
				bar_height = max_y/3; //max_y / (2 * num_bars  - 1)
				bar_width = max_x;
				y_inc = max_y/2.5;
				x_inc = 0;
				myFormat.size = bar_height + 5;
			}else{
				bar_height = max_y*0.75;
				bar_width = max_x/4;
				y_inc = 0;
				x_inc = max_x/3.5;
				myFormat.size = max_y;
			}
			text_height = bar_height + 10;		
			
			//HP
			//Need to add bars (with variable colours) for the next stats
			var myTextImage:BitmapData = new BitmapData(bar_width, text_height, true, Main_gui.combat_bg_colour);
			var tf:TextField = new TextField();
			tf.width = bar_width;
			tf.defaultTextFormat = myFormat;
			tf.htmlText = "HP: " + Math.round(get_stat(FPalace_helper.curr_hp_id)) + " / " + Math.round(get_stat(FPalace_helper.max_hp_id));

			myTextImage.draw(tf);
			
			g.beginFill( 0xFF0000);
			g.drawRect( start_x, start_y, (get_stat(FPalace_helper.curr_hp_id) / get_stat(FPalace_helper.max_hp_id)) * bar_width, bar_height);
			g.endFill( );
			
			var bm:Bitmap = new Bitmap(myTextImage);
			
			bm.x = start_x;
			bm.y = start_y-6;
			
			start_y += y_inc;
			start_x += x_inc;
			
			if(show_text)sprite.addChild(bm);
			
			//MP
			myTextImage = new BitmapData(bar_width, text_height, true, Main_gui.combat_bg_colour);
			tf = new TextField();
			tf.width = bar_width;
			tf.defaultTextFormat = myFormat;
			tf.htmlText = "MP: " + Math.round(get_stat(FPalace_helper.curr_mp_id)) + " / " + Math.round(get_stat(FPalace_helper.max_mp_id));

			myTextImage.draw(tf);
			
			g.beginFill( 0x0000FF);
			g.drawRect( start_x, start_y, (get_stat(FPalace_helper.curr_mp_id) / get_stat(FPalace_helper.max_mp_id)) * bar_width, bar_height);
			g.endFill( );
			
			bm = new Bitmap(myTextImage);
			
			bm.x = start_x;
			bm.y = start_y-6;
			
			start_y += y_inc;
			start_x += x_inc;
			
			if(show_text)sprite.addChild(bm);
			
			//FP
			myTextImage = new BitmapData(bar_width, text_height, true, Main_gui.combat_bg_colour);
			tf = new TextField();
			tf.width = bar_width;
			tf.defaultTextFormat = myFormat;
			tf.htmlText = "FP: " + Math.round(get_stat(FPalace_helper.curr_fatigue_id)) + " / " + Math.round(get_stat(FPalace_helper.max_fatigue_id));

			myTextImage.draw(tf);
			
			g.beginFill( 0xFFFF00);
			g.drawRect( start_x, start_y, (get_stat(FPalace_helper.curr_fatigue_id) / get_stat(FPalace_helper.max_fatigue_id)) * bar_width, bar_height);
			g.endFill( );
			
			bm = new Bitmap(myTextImage);
			
			bm.x = start_x;
			bm.y = start_y-6;
			
			start_y += y_inc;
			start_x += x_inc;
			
			if(show_text)sprite.addChild(bm);
			
			//LP
			myTextImage = new BitmapData(bar_width, text_height, true, Main_gui.combat_bg_colour);
			tf = new TextField();
			tf.width = bar_width;
			tf.defaultTextFormat = myFormat;
			tf.htmlText = "LP: " + Math.round(get_stat(FPalace_helper.lust_id)) + " / " + Math.round(get_stat(FPalace_helper.max_lust_id));

			myTextImage.draw(tf);
			
			g.beginFill( 0x00FF00);
			g.drawRect( start_x, start_y, (Math.min(get_stat(FPalace_helper.lust_id),get_stat(FPalace_helper.max_lust_id)) / get_stat(FPalace_helper.max_lust_id)) * bar_width, bar_height);
			g.endFill( );
			
			bm = new Bitmap(myTextImage);
			
			bm.x = start_x;
			bm.y = start_y-6;
			
			if(show_text)sprite.addChild(bm);
			
			return sprite;
		}
		
		public function draw_status_effects(max_x:int, max_y:int):Sprite{
			var ret_sprite:Sprite = new Sprite();
			var g:Graphics = ret_sprite.graphics;
			var i:int = 0;
			var found_count:int = 0;
				
			if(get_status_effects()[0] != null){
				var status_effect_array:Array = get_status_effects();
				for(i;i<status_effect_array.length;i++){
					var found:Boolean = false;
					if(status_effect_array[i] == Tick_Effect.prone_status){
						g.beginFill( 0x5F1E02);
						found = true;
					}else if(status_effect_array[i] == Tick_Effect.poisoned_status){
						g.beginFill( 0x49E20E);
						found = true;
					}
					
					if(found){
						g.drawCircle(25 + (found_count*25),0,max_y/2);
						g.endFill();
						found_count++;
					}
				}
			}
			
			var incap_stats:Array = body.get_incap_stat_ids(this);
			i = 0;
			for(i;i<incap_stats.length;i++){
				found = false;
				if(incap_stats[i] == FPalace_helper.weight_id){
					g.beginFill( 0x5F1E02);
					found = true;
				}else if(incap_stats[i] == FPalace_helper.lust_id){
					g.beginFill( 0x00FF00);
					found = true;
				}else if(incap_stats[i] == FPalace_helper.curr_fatigue_id){
					g.beginFill( 0xFFFF00);
					found = true;
				}
				if(found){
					g.drawCircle(25 + (found_count*25),0,max_y/2);
					g.endFill();
					found_count++;
				}
			}
			
			return ret_sprite;
		}
		
		public function clone(c:Character):void{
			if(!c.body.alive(c))trace("(Character.clone) Trying to clone a dead character..."); 
			
			name = c.name;
			gold = c.gold;
			
			gold = Math.ceil(Math.random()*c.get_gold() + c.get_gold()/2);
			set_sex(c.sex);
			status = c.status;
			
			var i:int = 0;
			for (i;i<c.possessions.length;i++){
				var item:Item = c.possessions[i].clone();
				possessions[possessions.length] = item;
			}
			
			actions = new Array();
			i = 0;
			for(i;i<c.actions.length;i++){
				var a:Action = new Action();
				a.clone(c.actions[i]);
				add_action(a);
			}
			
			i = 0;
			for(i;i<c.stat.length;i++){
				stat_id[i] = c.stat_id[i];
				stat[i] = new Stat(stat_id[i]);
				stat[i].clone(c.stat[i]);
			}
			
			i = 0;
			for(i;i<c.cclass.length;i++){
				cclass[i] = c.cclass[i];
			}
			
			body.clone(c.body, this);
			
			i = 0;
			for(i;i<c.skills.skill_ids.length;i++){
				var y:Number = Math.random();
				if (y <= 0.5){
					y = -y;
				}else{
					y = y - 0.5;
				}
				
				y = y * c.skills.skill_ranks[i];
				skills.set_skill_value(this, c.skills.skill_ids[i], Math.round(c.skills.skill_ranks[i] + y));
				skills.set_bonus(c.skills.skill_ids[i],c.skills.bonus_mod[i]);
			}
			
			set_xp(Math.ceil(Math.random()*c.xp + c.xp/2));
			
			reset_stats();
						
			ai_move = c.ai_move;
			
			total_actions_taken = Math.round(Math.random()*Main.t1_year);
			busy = 0;
			
			i = 0;
			for(i;i<c.personality.likes.length;i++){//ending up with some duplicates here thanks to the ones added in personality initialization
				personality.add_like(c.personality.likes[i]);
			}
			
			i = 0;
			for(i;i<c.personality.dislikes.length;i++){
				personality.add_dislike(c.personality.dislikes[i]);
			}
			
			i = 0;
			for(i;i<c.personality.topics.length;i++){
				personality.add_conversation_topic(c.personality.topics[i]);
			}
			
			i = 0;
			for(i;i<c.personality.mob_allegiances.length;i++){
				personality.new_allegiance(c.personality.mob_allegiances[i], this);
			}
			
			i = 0;
			for(i;i<c.personality.objectives.length;i++){
				personality.new_objective(c.personality.objectives[i], this);
			}
			
			i = 0;
			for(i;i<c.personality.attraction_traits.length;i++){
				personality.add_attraction(c.personality.attraction_traits[i]);
			}
			
			if(c.personality.job != null)personality.set_job(c.personality.job, this);
			
			char_sprite_id = c.char_sprite_id;
			
			char_34sprite_id = c.char_34sprite_id;
			
			apply_affect_by_id(FPalace_helper.curr_hp_id, get_stat(FPalace_helper.max_hp_id));
			apply_affect_by_id(FPalace_helper.curr_mp_id, get_stat(FPalace_helper.max_mp_id));
			apply_affect_by_id(FPalace_helper.curr_fatigue_id, get_stat(FPalace_helper.max_fatigue_id));
			if(!body.alive(this))trace("(Character.clone) Just made a dead character"); 
			
		}
		
	}
	
}
