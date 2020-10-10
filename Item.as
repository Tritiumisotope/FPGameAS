package {
	
	public class Item extends Dynamic_object{

		//need some way to show what the item does

		public var dropped_description:String;
		public var multi_dropped_desc:String;
		public var inventory_description:String;
		public var value:int;
		public var ident_difficulty:int;
		public var weight:int;
		public var effects:Array;
		public var change_effects:Array;
		public var use_description:String;
		public var propogate:Boolean = false;
		public var stat_action_add:Array;		
		public var num_uses:int;		
		public var image_id:int;		
		public var topic:Conversation_topic;
		public var crafting_requirements:Array;
		public var dismantle_item:Item;
		
		public var tick_count:int;
		public var destroy_tick:int;
		public var spawn_char:Character;

		public function Item(n:String = null):void{
			set_name(n);
			dropped_description = "";
			multi_dropped_desc = "";
			inventory_description = "";
			value = 0;
			effects = new Array();
			change_effects = new Array();
			use_description = "";
			ident_difficulty = 5;
			weight = 1;
			stat_action_add = new Array();
			num_uses = 1;
			image_id = -1;
			topic = null;
			crafting_requirements = new Array();
			tick_count = 0;
			destroy_tick = -1;
			spawn_char = null;
			dismantle_item = null;
		}
		
		public function same_item(i:Item):Boolean{
			var ret:Boolean = false;
			
			if(i != null && i.name == name && i.dropped_description == dropped_description && i.multi_dropped_desc == multi_dropped_desc && i.inventory_description == inventory_description
			   && i.value == value && i.effects.toString() == effects.toString()) ret = true;			
			
			return ret;			
		}
		
		public function set_inventory_description(s:String):void{
			inventory_description = s;
		}
		
		public function set_topic(ct:Conversation_topic):void{
			topic = ct;
		}
				
		public function set_number_of_uses(i:int):void{
			num_uses = i;
		}
		
		public function set_destroy_tick(tick_num:int):void{
			destroy_tick = tick_num;
		}
		
		public function add_spawn_at_tick(c:Character, tick_num:int):void{
			spawn_char = c;
			set_destroy_tick(tick_num);
		}
		
		public function set_image_id(i:int):void{
			image_id = i;
		}
		
		public function set_identify_difficulty(i:int):void{
			ident_difficulty = i;
		}
		
		public function set_weight(i:int):void{
			weight = i;
		}
		
		public function set_propogate():void{
			propogate = !propogate;
		}
		
		public function set_value(i:int):void{
			value = i;
		}
		
		public function set_use_description(s:String):void{
			use_description = s;
		}
		
		public function set_dropped_description(s:String):void{
			dropped_description = s;
		}
		
		public function set_multi_dropped_desc(s:String):void{
			multi_dropped_desc = s;
		}
		
		public function add_crafting_requirement(craft_requirement_item:Item, num:int):void{
			crafting_requirements[crafting_requirements.length] = [craft_requirement_item,num];
		}
		
		public function add_change_effect(o:Dynamic_object):void{
			var consequence:Consequence = new Consequence();
			consequence.add_consequence(0, 0, "", 0);
			consequence.add_change_effect(o);
			
			change_effects[change_effects.length] = consequence;
		}
		
		public function add_consequence(c:Consequence):void{
			change_effects[change_effects.length] = c;
		}
		
		public function add_action(a:Action):void{
			change_effects[change_effects.length] = a;
		}
		
		public function new_stat_action(stat_id:int, a:Action):void{
			stat_action_add[stat_action_add.length] = stat_id;
			stat_action_add[stat_action_add.length] = a;
		}
		
		public function get_image_id():int{
			return image_id;
		}
		
		public function still_usable():Boolean{
			if(num_uses == 0)return false;
			return true;
		}
		
		public function get_weight():int{
			if(weight < 0) return 0;
			return weight;
		}
		
		public function get_identify_difficulty():int{
			return ident_difficulty;
		}
		
		public function add_effect(type:int, multiplier:Number):void{
			if(effects[type] == null){
				effects[type] = multiplier;
			}else{
				effects[type] += multiplier;
			}			
		}
		
		public function get_propogate():Boolean{
			return propogate;
		}
		
		public function use_item(c:Character,possession_id:int, force_tags:int = 0):String{
			var i:int = 0;
			var s:String = get_use_description();
			
			for (i;i<effects.length;i++){
				if (effects[i] != null) s+= "\n" + c.apply_affect_by_id(i,effects[i], 0, null, Body.change_stats_total);
			}
			i = 0;
			for (i;i<change_effects.length;i++){
				if (change_effects[i] != null){
					if(change_effects[i] is Consequence){
						s += change_effects[i].trigger(0, c);
					}else{
						change_effects[i].set_originator(c);
						change_effects[i].set_id(c.get_all_overworld_actions().length+possession_id);
						s += change_effects[i].trigger(c, force_tags);
						if((s.indexOf("</a>") >=0 || s.indexOf("</dc0>") >=0) && num_uses > 0)num_uses++;
					}
				}
			}
			
			if(stat_action_add.length > 0){
				i = 0;
				for(i;i<Math.ceil(stat_action_add.length/2);i++){
					c.add_stat_action(stat_action_add[i*2], stat_action_add[i*2+1]);
				}
			}
			if(num_uses > 0)num_uses--;
			return s;
		}
		
		public function get_description(c:Character, ident_effectiveness:Array = null, keep_tags:Boolean = false):String{
			var ret:String = get_name() + "\n";
			
			if(inventory_description != "")ret += inventory_description + "\n\n";
			var ident_chance:Number = 0;
			var weight_deviation:Number = 1;
			if(ident_effectiveness != null){
				ident_chance = 2*ident_effectiveness[0]/(ident_difficulty);
				if(ident_effectiveness[1] != null){
					weight_deviation -= ident_effectiveness[1]/ident_difficulty;
					if(weight_deviation <= 0)weight_deviation = 0.01;
					if(weight_deviation >= 1)weight_deviation = 0.99;
					if(Math.random() <= 0.5) weight_deviation = -weight_deviation;
					weight_deviation = weight_deviation * Math.random();
				}
			}
			
			if(weight > 0) ret += "You guess it weighs about " + Math.ceil(weight + (weight*weight_deviation)) + "lbs.\n";
			
			var showing:Boolean = false;
			var count:int = 0;
			if(effects.length > 0){
				for(count;count<effects.length;count++){
					if(effects[count] != null && Math.random() <= ident_chance){
						if(!showing){
							ret += "Looks like it might have an impact on the following stats:\n";
							showing = true;
						}
						if(keep_tags){
							if(effects[count] >= 0){
								ret += "<s"+count+">";
							}else{
								ret += "<s-"+count+">";
							}
						}else{
							var l_string:String = FPalace_helper.get_stat_name_by_id(count);
							if(ident_effectiveness[0]>20){
								if(l_string != "?"){
									if(effects[count] >= 0){
										ret += "Increase " + l_string + " by "	+effects[count]+".\n";
									}else{
										ret += "Increase " + l_string + " by "	+ (-effects[count]) +".\n";
									}
								}
							}else if(ident_effectiveness[0]>10){
								if(l_string != "?"){
									if(effects[count] >= 0){
										ret += "Increase ";
									}else{
										ret += "Decrease ";
									}
									ret += l_string + "\n";
								}
							}else{
								if(l_string != "?")ret += l_string + "\n";
							}
						}
					}
				}
			}
			
			if(change_effects.length > 0){
				ret += "\n";
				count = 0;
				for(count;count<change_effects.length;count++){
					if(Math.random() <= ident_chance){
						if(change_effects[count] is Consequence && change_effects[count].change_effects[0] != null){
							var change_count:int = 0;
							for(change_count;change_count<change_effects[count].change_effects.length;change_count++){
								if (change_effects[count].change_effects[change_count] is Sex){
									ret += "You think it might change your sex.\n";
								}else if(change_effects[count].change_effects[change_count] is Character_class){
									ret += "You think it might change your class.\n";
								}else if(change_effects[count].change_effects[change_count] is Body_part){
									ret += "You think it might change your body.\n";
								}else if(change_effects[count].change_effects[change_count] is Race){
									ret += "You think it might change your race.\n";
								}else if(change_effects[count].change_effects[change_count] is Room){
									ret += "You think it might change where you are.\n";
								}else{
									ret += "There's something off about it....\n";
								}
							}
						}else{
							ret += "There's something off about it....\n";
						}
					}
				}
			}
			
			if(stat_action_add.length > 0){
				ret += "\n";
				count = 0;
				for(count;count<Math.ceil(stat_action_add.length/2);count++){
					if(Math.random() <= ident_chance){
						ret += "It seems to be magical.\n";
						break;
					}
				}
			}
			
			return ret;
		}
		
		public function get_value(buyer:Character, seller:Character):int{
			if(buyer == null && seller == null){
				return value;
			}
			var ret:int = value;
			
			var roll:int = 0;
			
			var value_challenge:Challenge = new Challenge(true);
				value_challenge.set_attack_stat(FPalace_skills.valuing_id);
				value_challenge.set_defense_stat(-1, Math.ceil(Math.sqrt(value) + 5));
				value_challenge.set_variability(10);
			
			if(buyer != seller){
				roll = value_challenge.roll(buyer);
				var variance:Number = 1;
				if(roll < 0){
					//within 50%
					if(Math.random() > 0.5){
						variance += Math.random()*0.5;
					}else{
						variance -= Math.random()*0.5;
					}
				}else if(roll > 20){
					//within 1%
					if(Math.random() > 0.5){
						variance += Math.random()*0.01;
					}else{
						variance -= Math.random()*0.01;
					}
				}else if(roll > 10){
					//within 10%
					if(Math.random() > 0.5){
						variance += Math.random()*0.1;
					}else{
						variance -= Math.random()*0.1;
					}
				}else if(roll >= 0){
					//within 20%
					if(Math.random() > 0.5){
						variance += Math.random()*0.2;
					}else{
						variance -= Math.random()*0.2;
					}
				}
				var buyer_value:int = Math.floor(value*variance);
				var rel_stat:int = buyer.personality.check_relationship(seller,buyer);
				var rel_ajust_value:int = buyer_value;
				if(rel_stat < -50){
					rel_ajust_value = Math.round(rel_ajust_value*0.03125);
				}else if(rel_stat < -25){
					rel_ajust_value = Math.round(rel_ajust_value*0.00625);
				}else if(rel_stat < -10){
					rel_ajust_value = Math.round(rel_ajust_value*0.0125);
				}else if(rel_stat < 0){
					rel_ajust_value = Math.round(rel_ajust_value*0.025);
				}else if(rel_stat < Personality.tolerate){
					rel_ajust_value = Math.round(rel_ajust_value*0.05);
				}else if(rel_stat < Personality.like){
					rel_ajust_value = Math.round(rel_ajust_value*0.1);
				}else if(rel_stat < Personality.really_like){
					rel_ajust_value = Math.round(rel_ajust_value*0.25);
				}else if(rel_stat < Personality.friends){
					rel_ajust_value = Math.round(rel_ajust_value*0.5);
				}else if(rel_stat < Personality.true_love){
					rel_ajust_value = Math.round(rel_ajust_value*0.9);
				}
				buyer_value = rel_ajust_value;
				//need to go through inventory and adjust value down based on how many the buyer already has
				var i:int = 0;
				for(i;i<buyer.possessions.length;i++){
					if(this.same_item(buyer.possessions[i])){
						buyer_value = Math.round(buyer_value * 0.9);
					}
				}
				
				roll = value_challenge.roll(seller);
				variance = 1;
				if(roll < 0){
					//within 50%
					if(Math.random() > 0.5){
						variance += Math.random()*0.5;
					}else{
						variance -= Math.random()*0.5;
					}
				}else if(roll > 20){
					//within 1%
					if(Math.random() > 0.5){
						variance += Math.random()*0.01;
					}else{
						variance -= Math.random()*0.01;
					}
				}else if(roll > 10){
					//within 10%
					if(Math.random() > 0.5){
						variance += Math.random()*0.1;
					}else{
						variance -= Math.random()*0.1;
					}
				}else if(roll >= 0){
					//within 20%
					if(Math.random() > 0.5){
						variance += Math.random()*0.2;
					}else{
						variance -= Math.random()*0.2;
					}
				}
				var seller_value:int = Math.ceil(value*variance);
				rel_stat = seller.personality.check_relationship(buyer,seller);
				rel_ajust_value = seller_value;
				if(rel_stat < -50){
					rel_ajust_value = Math.round(rel_ajust_value*32);
				}else if(rel_stat < -25){
					rel_ajust_value = Math.round(rel_ajust_value*16);
				}else if(rel_stat < -10){
					rel_ajust_value = Math.round(rel_ajust_value*8);
				}else if(rel_stat < 0){
					rel_ajust_value = Math.round(rel_ajust_value*4);
				}else if(rel_stat < Personality.tolerate){
					rel_ajust_value = Math.round(rel_ajust_value*2.5);
				}else if(rel_stat < Personality.like){
					rel_ajust_value = Math.round(rel_ajust_value*2);
				}else if(rel_stat < Personality.really_like){
					rel_ajust_value = Math.round(rel_ajust_value*1.75);
				}else if(rel_stat < Personality.friends){
					rel_ajust_value = Math.round(rel_ajust_value*1.5);
				}else if(rel_stat < Personality.true_love){
					rel_ajust_value = Math.round(rel_ajust_value*1.1);
				}
				seller_value = rel_ajust_value
				
				var barter_challenge:Challenge = new Challenge(true);
				barter_challenge.set_attack_stat(FPalace_skills.trade_id);
				barter_challenge.set_defense_stat(FPalace_skills.trade_id);
				barter_challenge.set_variability(20);
				
				roll = barter_challenge.roll(buyer,seller);
				if(roll >= 0){//buyer has the advantage
					if(roll > 20){
						if(buyer_value < seller_value){
							ret = buyer_value;
						}else{
							ret = seller_value;
						}
					}else if(roll > 10){
						if(buyer_value < seller_value){
							ret = Math.floor((buyer_value + seller_value)/2 - 2*(buyer_value - (buyer_value*buyer_value/seller_value)));
						}else{
							ret = Math.floor((buyer_value + seller_value)/2 - 2*(seller_value - (seller_value*seller_value/buyer_value)));
						}
					}else{
						if(buyer_value < seller_value){
							ret = Math.floor((buyer_value + seller_value)/2 - (buyer_value - (buyer_value*buyer_value/seller_value)));
						}else{
							ret = Math.floor((buyer_value + seller_value)/2 - (seller_value - (seller_value*seller_value/buyer_value)));
						}
					}
				}else{//seller has the advantage
					if(roll < -20){
						if(buyer_value > seller_value){
							ret = buyer_value;
						}else{
							ret = seller_value;
						}
					}else if(roll < -10){
						if(buyer_value > seller_value){
							ret = Math.ceil((buyer_value + seller_value)/2 + 2 * (seller_value - (seller_value*seller_value/buyer_value)));
						}else{
							ret = Math.ceil((buyer_value + seller_value)/2 + 2 * (buyer_value - (buyer_value*buyer_value/seller_value)));
						}
					}else{
						if(buyer_value > seller_value){
							ret = Math.ceil((buyer_value + seller_value)/2 + seller_value - (seller_value*seller_value/buyer_value));
						}else{
							ret = Math.ceil((buyer_value + seller_value)/2 + buyer_value - (buyer_value*buyer_value/seller_value));
						}
					}
				}
			}else{
				roll = value_challenge.roll(buyer);
				variance = 1;
				if(roll < 0){
					//within 50%
					if(Math.random() > 0.5){
						variance += Math.random()*0.5;
					}else{
						variance -= Math.random()*0.5;
					}
				}else if(roll > 20){
					//within 1%
					if(Math.random() > 0.5){
						variance += Math.random()*0.01;
					}else{
						variance -= Math.random()*0.01;
					}
				}else if(roll > 10){
					//within 10%
					if(Math.random() > 0.5){
						variance += Math.random()*0.1;
					}else{
						variance -= Math.random()*0.1;
					}
				}else if(roll > 0){
					//within 20%
					if(Math.random() > 0.5){
						variance += Math.random()*0.2;
					}else{
						variance -= Math.random()*0.2;
					}
				}
				ret = Math.round(ret*variance);
			}
			
			return ret;
		}
		
		public function get_use_description():String{
			return use_description;
		}
		
		public function get_dropped_description():String{
			return dropped_description;
		}
		
		public function get_multi_dropped_desc():String{
			return multi_dropped_desc;
		}
		
		public function tick(location:Room, c:Character = null):String{
			var ret:String = "";
			tick_count++;
			if(tick_count%Main.t1_month == 0){
				if(get_propogate()){
					//pick an exit to spread to...
					var spread:int = Math.round(Math.random())
					if(spread == 1){
						spread = Math.round(Math.random() * (location.exits.length - 1));
						var temp_room:Room = location.exits[spread];
						if(temp_room != null){
							if(temp_room.area != null){
								if(temp_room.area == location.area){
									var temp_i:Item = temp_i.clone();
									temp_room.new_content(temp_i);
								}
							}
						}						
					}
				}
			}
			
			if(destroy_tick <= tick_count && destroy_tick > 0){
				if(spawn_char != null){
					ret += "the " + get_name() + "breaks open. ";
					spawn_char.new_location(location);
				}
				if(c != null){
					var i:int = 0;
					for(i;i<c.possessions.length;i++){
						if(c.possessions[i] == this){
							c.drop(i);
							break;
						}
					}
				}else{
					location.remove_content(this);
				}
			}
			return ret;
		}
		
		public function clone():Item{
			var i:Item = new Item();
			i.name = this.name;
			i.inventory_description = inventory_description;
			i.dropped_description = this.dropped_description;
			i.multi_dropped_desc = this.multi_dropped_desc;
			i.value = this.value;
			var count:int = 0;
			for(count;count<effects.length;count++){
				i.effects[count] = this.effects[count];
			}
			i.use_description = this.use_description;
			count = 0;
			for(count;count<change_effects.length;count++){
				i.change_effects[count] = this.change_effects[count];
			}
			i.propogate = this.propogate;
			i.ident_difficulty = this.ident_difficulty;
			i.weight = this.weight;
			count = 0;
			for(count;count < stat_action_add.length;count++){
				i.stat_action_add[count] = this.stat_action_add[count];
			}
			i.num_uses = this.num_uses;
			i.image_id = this.image_id;
			i.topic = this.topic;
			i.crafting_requirements = this.crafting_requirements;
			
			i.tick_count = 0;
			i.destroy_tick = this.destroy_tick;
			i.spawn_char = this.spawn_char;
			
			return i;
		}
	
	}
	
}
