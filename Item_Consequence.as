package  {
	
	public class Item_Consequence extends Consequence{
		
		public var recipe_reward:Item;
		
		public var item_reward:Array;
		public var item_reward_roll:Array;
		public var item_gen:Array;
		public var item_reward_target:Array;
		public var remove_flag:Array;
		
		public var item_use:Array;
		public var item_use_roll:Array;
		public var item_use_target:Array;
		public var item_use_holder:Array;
		
		public var rest_flag:Boolean;
		
		public function Item_Consequence() {
			// constructor code
			super();
			recipe_reward = null;
			item_reward = new Array();
			item_reward_roll = new Array();
			item_gen = new Array();
			item_reward_target = new Array();
			remove_flag = new Array();			
			
			item_use = new Array();			
			item_use_roll = new Array();			
			item_use_target = new Array();
			item_use_holder = new Array();
			rest_flag = false;
		}
		
		public function set_rest_flag():void{
			rest_flag = !rest_flag;
		}
		
		public function add_item_reward(i:Item, r:int, gen_flag:Boolean = false, target:Boolean = true, r_flag:Boolean = false):void{
			item_reward[item_reward.length] = i;
			item_reward_roll[item_reward_roll.length] = r;
			item_gen[item_gen.length] = gen_flag;
			item_reward_target[item_reward_target.length] = target;
			remove_flag[remove_flag.length] = r_flag;
		}
		
		public function add_item_recipe(i:Item):void{
			recipe_reward = i;
		}
		
		public function add_item_use(i:Item, r:int, target:Boolean = true, holder:Boolean = true):void{
			item_use[item_use.length] = i;
			item_use_roll[item_use_roll.length] = r;
			item_use_target[item_use_target.length] = target;
			item_use_holder[item_use_holder.length] = holder;
		}
		
		override public function trigger(r:Number, c:Character = null, c2:Character = null):String{
			var ret:String = "";
			
			if(recipe_reward != null){
				if(c!= null){
					c.personality.add_recipe(recipe_reward);
				}
			}
			
			var i:int = 0;
			for(i;i<item_reward.length;i++){
				if(c!= null && ((r >= item_reward_roll[i] && item_reward_roll[i] >= 0) || (r <= item_reward_roll[i] && item_reward_roll[i] < 0))){
					var item:Item;
					item = item_reward[i].clone();
					if(item_gen[i]){
						if(extract > 0){
							var consume_effects:Array = c.get_stat_actions(extract);
							var consume_count:int = 0;
							for(consume_count;consume_count<consume_effects.length;consume_count++){
								var temp_a:Action = consume_effects[consume_count] as Action;
								if(temp_a != null){
									if(temp_a.get_consume()){
										//Should loop through the Actions challenges/Consequences, and modify them to not need a second participant
										var new_action:Action = new Action();
										new_action.clone(temp_a);
										var chall_count:int = 0;
										for(chall_count;chall_count<new_action.challenges.length;chall_count++){
											var temp_chall:Challenge = new_action.challenges[chall_count];
											if(temp_chall != null){
												if(!temp_chall.static_defense){
													//replace non static defense with what the character would provide.
													temp_chall.set_defense_stat(-1, c.get_stat(temp_chall.defense_stat));
												}
											}
										}
										item.add_action(new_action);
									}
								}
							}
							ret += c.fluid_extraction(extract);
						}else if(extract < 0){
							trace("(Item_Consequence)Something about item generation, and strange consumptions...");
						}
					}
					var k:int = 0;
					if(item_reward_target[i]){
						if(!remove_flag[i]){
							c.add_to_possessions(item);
						}else{
							for(k;k<c.possessions.length;k++){
								if(c.possessions[k].name == item.name){
									c.drop(k);
									break;
								}
							}
						}						
					}else{
						if(!remove_flag[i]){
							c2.add_to_possessions(item);
						}else{
							for(k;k<c2.possessions.length;k++){
								if(c2.possessions[k].name == item.name){
									c2.drop(k);
									break;
								}
							}
						}						
					}
				}
			}
			
			i = 0;
			for(i;i<item_use.length;i++){
				if(c!= null && ((r >= item_use_roll[i] && item_use_roll[i] >= 0) || (r <= item_use_roll[i] && item_use_roll[i] < 0))){
					trace("(Item_Consequence.trigger)Should be using an item. ");
					k = 0;
					if(item_use_holder[i]){
						for(k;k<c.possessions.length;k++){
							if(c.possessions[k].name == item_use[i].name){
								if(item_reward_target[i]){
									ret += c.sanitize(c.possessions[k].use_item(c,k),c);							
								}else{
									ret += c2.sanitize(c.possessions[k].use_item(c2,k),c);							
								}							
								if(!c.possessions[k].still_usable()) c.drop(k);
								break;
							}
						}
					}else{
						for(k;k<c2.possessions.length;k++){
							if(c2.possessions[k].name == item_use[i].name){
								if(item_reward_target[i]){
									ret += c.sanitize(c2.possessions[k].use_item(c,k),c);							
								}else{
									ret += c2.sanitize(c2.possessions[k].use_item(c2,k),c);							
								}							
								if(!c2.possessions[k].still_usable()) c2.drop(k);
								break;
							}
						}
					}
				}
			}
			ret += super.trigger(r,c,c2);
			
			if(rest_flag && c!= null && ((r >= 0 && !this.change_on_success) || always_change || (r < 0 && this.change_on_success))){
				Action.rest_action(c);
			}
			return ret;
		}
		
		override public function clone():Consequence{
			var ret:Item_Consequence = new Item_Consequence();
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
			
			ret.recipe_reward = this.recipe_reward;
			
			ret.item_reward = this.item_reward;
			ret.item_gen = this.item_gen;
			ret.item_reward_roll = this.item_reward_roll;
			ret.item_reward_target = this.item_reward_target;
			ret.remove_flag = this.remove_flag;
			
			ret.item_use = this.item_use;
			ret.item_use_roll = this.item_use_roll;
			ret.item_use_target = this.item_use_target;
			ret.rest_flag = this.rest_flag;
			return ret;
		}
	}
	
}
