package {
	
	public class Alchemy_item extends Item{
		
		//need some way to show what the items types are
		
		public var types:Array;
		
		public function Alchemy_item(n:String = ""):void{
			set_name(n);
			types = new Array;
		}
		
		public function combine(c:Character, item2:Alchemy_item, type_array:Array):Item{
			var skill:int = -1;
			var k:int = 0;
			for (k;k<c.actions.length;k++){
				if(c.actions[k].alchemy_flag){
					skill++;
				}
			}
				
			var t:Array = new Array();
			t = get_types().concat(item2.get_types());
			t.sort();
			/*to do: create the item based on the number of matching types
				2 match: effect based on type number
					type 1 could be hp gain
					type 2 could be str gain
					etc.
				3 match: effect *150%
				4 match: effect *210%
				5 match: effect *280%
				6 match: effect *400%
				7 match: effect *700%
				8 match: effect *1200%
			for EACH set of matching types (so the generated item could have multiple effects)
			*/
			
			var item:Alchemy_item = new Alchemy_item("Alchemical draught");
			item.set_use_description("You drink down the alchemical draught, unsure what to expect.");
			item.set_dropped_description("A bottle sits lazily on the ground here.");
			var changes:Array;
			
			if(type_array != null){
				var initial_array:Array = this.types.concat(item2.types);
				initial_array = initial_array.concat(this.change_effects).concat(item2.change_effects).concat(this.stat_action_add).concat(item2.stat_action_add);
				
				var effect_amounts:Array = new Array();
				var x:int = 0;
				for(x;x<type_array.length;x++){
					var y:int = 0;
					changes = new Array();
					var a1_count:int = 0;
					var last_id:int = 0;
					for(y;y<type_array[x].length;y++){
						if(type_array[x][y] == last_id){
							a1_count++;
						}else{
							if(type_array[x][y].indexOf("c") >= 0 || type_array[x][y].indexOf("a") >= 0){
								if(type_array[x][y].indexOf("c") >= 0){
									changes[changes.length] = initial_array[type_array[x][y].substr(type_array[x][y].indexOf("c")+1,type_array[x][y].length)];
								}else{
									changes[changes.length] = initial_array[type_array[x][y].substr(type_array[x][y].indexOf("a")+1,type_array[x][y].length)];
								}
								a1_count++;
							}else{
								if(a1_count >= 2 && last_id != 0){
									if(last_id < 0){
										if(effect_amounts[-last_id] != null){
											effect_amounts[-last_id] -= Math.ceil(Math.pow(50.0,(0.5 + (a1_count/4.0)))/50.0);
										}else{
											effect_amounts[-last_id] = -Math.ceil(Math.pow(50.0,(0.5 + (a1_count/4.0)))/50.0);
										}
									}else{
										if(effect_amounts[last_id] != null){
											effect_amounts[last_id] += Math.ceil(Math.pow(50.0,(0.5 + (a1_count/4.0)))/50.0);
										}else{
											effect_amounts[last_id] = Math.ceil(Math.pow(50.0,(0.5 + (a1_count/4.0)))/50.0);
										}
									}
									if(changes.length > 0 && a1_count > 2){
										a1_count = 0;
										for(a1_count;a1_count<changes.length;a1_count++){
											if(changes[a1_count] is Consequence){
												item.add_consequence(changes[a1_count]);
											}else if(changes[a1_count] is Action){
												item.add_action(changes[a1_count]);
											}
										}
									}
								}
								a1_count = 1;
								changes = new Array();
								if(type_array[x][y] != ""){
									var temp_y:int = y-1;
									while(type_array[x][temp_y] != null && (type_array[x][temp_y].indexOf("c") >= 0 || type_array[x][temp_y].indexOf("a") >= 0)){
										if(type_array[x][temp_y].indexOf("c") >= 0){
											changes[changes.length] = initial_array[type_array[x][temp_y].substr(type_array[x][temp_y].indexOf("c")+1,type_array[x][temp_y].length)];
										}else{
											changes[changes.length] = initial_array[type_array[x][temp_y].substr(type_array[x][temp_y].indexOf("a")+1,type_array[x][temp_y].length)];
										}
										a1_count++;
										temp_y--;
									}
								}
								last_id = type_array[x][y];								
							}
						}
					}
					if(a1_count >= 2 && last_id != 0){
						if(last_id < 0){
							if(effect_amounts[-last_id] != null){
								effect_amounts[-last_id] -= Math.ceil(Math.pow(50.0,(0.5 + (a1_count/4.0)))/50.0);
							}else{
								effect_amounts[-last_id] = -Math.ceil(Math.pow(50.0,(0.5 + (a1_count/4.0)))/50.0);
							}
						}else{
							if(effect_amounts[last_id] != null){
								effect_amounts[last_id] += Math.ceil(Math.pow(50.0,(0.5 + (a1_count/4.0)))/50.0);
							}else{
								effect_amounts[last_id] = Math.ceil(Math.pow(50.0,(0.5 + (a1_count/4.0)))/50.0);
							}
						}
						if(changes.length > 0 && a1_count > 2){
							a1_count = 0;
							for(a1_count;a1_count<changes.length;a1_count++){
								if(changes[a1_count] is Consequence){
									item.add_consequence(changes[a1_count]);
								}else if(changes[a1_count] is Action){
									item.add_action(changes[a1_count]);
								}
							}
						}
					}
				}
				//left/right matches
				y = 0;
				for(y;y<type_array.length;y++){
					x = 0;
					changes = new Array();
					a1_count = 0;
					last_id = 0;
					for(x;x<type_array.length;x++){
						if(type_array[x][y] == last_id){
							a1_count++;
						}else{
							if(type_array[x][y].indexOf("c") >= 0 || type_array[x][y].indexOf("a") >= 0){
								if(type_array[x][y].indexOf("c") >= 0){
									changes[changes.length] = initial_array[type_array[x][y].substr(type_array[x][y].indexOf("c")+1,type_array[x][y].length)];
								}else{
									changes[changes.length] = initial_array[type_array[x][y].substr(type_array[x][y].indexOf("a")+1,type_array[x][y].length)];
								}
								a1_count++;
							}else{
								if(a1_count >= 2 && last_id != 0){
									if(last_id < 0){
										if(effect_amounts[-last_id] != null){
											effect_amounts[-last_id] -= Math.ceil(Math.pow(50.0,(0.5 + (a1_count/4.0)))/50.0);
										}else{
											effect_amounts[-last_id] = -Math.ceil(Math.pow(50.0,(0.5 + (a1_count/4.0)))/50.0);
										}
									}else{
										if(effect_amounts[last_id] != null){
											effect_amounts[last_id] += Math.ceil(Math.pow(50.0,(0.5 + (a1_count/4.0)))/50.0);
										}else{
											effect_amounts[last_id] = Math.ceil(Math.pow(50.0,(0.5 + (a1_count/4.0)))/50.0);
										}
									}
									if(changes.length > 0 && a1_count > 2){
										a1_count = 0;
										for(a1_count;a1_count<changes.length;a1_count++){
											if(changes[a1_count] is Consequence){
												item.add_consequence(changes[a1_count]);
											}else if(changes[a1_count] is Action){
												item.add_action(changes[a1_count]);
											}
										}
									}
								}
								a1_count = 1;
								changes = new Array();
								if(type_array[x][y] != ""){
									var temp_x:int = x-1;
									while(type_array[temp_x] != null && type_array[temp_x][y] != null && (type_array[temp_x][y].indexOf("c") >= 0 || type_array[temp_x][y].indexOf("a") >= 0)){
										if(type_array[temp_x][y].indexOf("c") >= 0){
											changes[changes.length] = initial_array[type_array[temp_x][y].substr(type_array[temp_x][y].indexOf("c")+1,type_array[temp_x][y].length)];
										}else{
											changes[changes.length] = initial_array[type_array[temp_x][y].substr(type_array[temp_x][y].indexOf("a")+1,type_array[temp_x][y].length)];
										}
										a1_count++;
										temp_x--;
									}
								}
								last_id = type_array[x][y];								
							}
						}
					}
					if(a1_count >= 2 && last_id != 0){
						if(last_id < 0){
							if(effect_amounts[-last_id] != null){
								effect_amounts[-last_id] -= Math.ceil(Math.pow(50.0,(0.5 + (a1_count/4.0)))/50.0);
							}else{
								effect_amounts[-last_id] = -Math.ceil(Math.pow(50.0,(0.5 + (a1_count/4.0)))/50.0);
							}
						}else{
							if(effect_amounts[last_id] != null){
								effect_amounts[last_id] += Math.ceil(Math.pow(50.0,(0.5 + (a1_count/4.0)))/50.0);
							}else{
								effect_amounts[last_id] = Math.ceil(Math.pow(50.0,(0.5 + (a1_count/4.0)))/50.0);
							}
						}
						if(changes.length > 0 && a1_count > 2){
							a1_count = 0;
							for(a1_count;a1_count<changes.length;a1_count++){
								if(changes[a1_count] is Consequence){
									item.add_consequence(changes[a1_count]);
								}else if(changes[a1_count] is Action){
									item.add_action(changes[a1_count]);
								}
							}
						}
					}
				}
				
				var effect_multiplier:Number = 1;
				if(same_item(item2))effect_multiplier = 0.5;
				
				var i:int = 0;
				for(i;i<effect_amounts.length;i++){
					if(effect_amounts[i] != null){
						//need to divide the effect by 100 if it's for a stat with a static max of 1
						if(FPalace_helper.get_stat_by_id(i)!= null && FPalace_helper.get_stat_by_id(i).alchemy_hundreds){
							effect_amounts[i] = effect_amounts[i]/100;
						}
						
						item.add_effect(i, effect_amounts[i] * effect_multiplier);
					}
				}
			}else{
				var temp:Number;
				var start_pos:int = 0;
				i = 0;
				for (i;i<t.length;i++){
					if(t[i] != t[i-1] && i - start_pos > 1){
						temp = (i-start_pos);
						if(t[i-1] >= 0){
							if(FPalace_helper.get_stat_by_id(t[i-1]) != null && FPalace_helper.get_stat_by_id(t[i-1]).alchemy_hundreds){
								item.add_effect(t[i-1],  Math.ceil(Math.pow(50.0,(0.5 + (temp/4.0)))/50.0)/100);
							}else{
								item.add_effect(t[i-1],  Math.ceil(Math.pow(50.0,(0.5 + (temp/4.0)))/50.0));
							}
						}else{
							if(FPalace_helper.get_stat_by_id(t[i-1]) != null && FPalace_helper.get_stat_by_id(t[i-1]).alchemy_hundreds){
								item.add_effect(-t[i-1],  -Math.ceil(Math.pow(50.0,(0.5 + (temp/4.0)))/50.0)/100);
							}else{
								item.add_effect(-t[i-1],  -Math.ceil(Math.pow(50.0,(0.5 + (temp/4.0)))/50.0));
							}
						}						
						start_pos = i;						
					}else if(t[i] == t[i-1]){
						//do nothing! Why? Cause it's the best thing ever!
						
					}else{
						start_pos = i
					}					
				}				
				if(i - start_pos > 1){
					temp = (i-start_pos);
					//need to divide the effect by 100 if it's for a stat with a static max of 1
					if(FPalace_helper.get_stat_by_id(t[i-1]) != null && FPalace_helper.get_stat_by_id(t[i-1]).alchemy_hundreds){
						item.add_effect(t[i-1],  Math.ceil(Math.pow(50.0,(0.5 + (temp/4.0)))/50.0)/100);
					}else{
						item.add_effect(t[i-1],  Math.ceil(Math.pow(50.0,(0.5 + (temp/4.0)))/50.0));
					}
				}				
				//need to figure out passing on change effects (like racial changes) on too...
				changes = new Array();
				changes = this.change_effects.concat(item2.change_effects);
				i = 0;
				for(i;i<changes.length;i++){
					if(Math.random() >= 0.5){
						if(changes[i] is Dynamic_object){
							item.add_change_effect(changes[i]);
						}else if(changes[i] is Consequence){
							item.add_consequence(changes[i]);
						}
					}
				}				
				//need to do a check for stat effects
				var sa_changes:Array = this.stat_action_add.concat(item2.stat_action_add);
				i = 0;
				for(i;i<sa_changes.length;i++){
					if(sa_changes[i] is Action){
						if(Math.random() >= 0.5){
							item.new_stat_action(sa_changes[i-1],sa_changes[i]);
						}
					}
				}				
			}
			
			item.num_uses = Math.max(this.num_uses,item2.num_uses);
			
			//change name based on primary known effect
			var max_effect_id:int = -1;
			i = 0;
			for(i;i<item.effects.length;i++){
				if(item.effects[max_effect_id] < item.effects[i])max_effect_id = i;
				if(item.effects[max_effect_id] == null && item.effects[i] != null)max_effect_id = i;
			}
			if(max_effect_id >= 0){
				if(FPalace_helper.get_stat_by_id(max_effect_id) != null){
					item.name = Main.capitalize(FPalace_helper.get_stat_by_id(max_effect_id).get_name() + " Potion");
				}
			}
			
			if(skill > 0){
				var num_to_get:int = 3;
				if(skill > 2){
					num_to_get = 12;
				}else if(skill > 1){
					num_to_get = 6;
				}
				
				if(t.length > num_to_get){
					i = Math.round(Math.random()*(t.length - num_to_get));
					item.types = t.slice(i,i+num_to_get);
				}else{
					item.types = t;
				}
				
				return item
			}
			
			var non_alch_item:Item = new Item(item.name);
			non_alch_item.set_use_description("You drink down the alchemical draught, unsure what to expect.");
			non_alch_item.set_dropped_description("A bottle sits lazily on the ground here");
			non_alch_item.num_uses = item.num_uses;
			non_alch_item.effects = item.effects;
			non_alch_item.change_effects = item.change_effects;
			non_alch_item.stat_action_add = item.stat_action_add;
						
			return non_alch_item;
		}
		
		public function add_type(i:int):void{
			types[types.length] = i;
		}
		
		public function get_types():Array{
			return types;			
		}
		
		override public function get_description(c:Character, ident_effectiveness:Array = null, keep_tags:Boolean = false):String{
			var ret:String = "";
			
			var ident_chance:Number = 0;
			var ident_roll:int;
			if(ident_effectiveness != null){
				ident_chance = 2*ident_effectiveness[ident_effectiveness.length - 1]/(ident_difficulty);
				ident_roll = ident_effectiveness[ident_effectiveness.length - 1];
				ident_effectiveness = ident_effectiveness.slice(0, ident_effectiveness.length -1);
			}
			
			ret += super.get_description(c,ident_effectiveness, keep_tags) + "\n";
			
			var showing:Boolean = false;
			var count:int = 0;
			if(types.length > 0){
				for(count;count < types.length;count ++){
					if(ret.indexOf(FPalace_helper.get_stat_name_by_id(types[count])) < 0 && Math.random() <= ident_chance){
						if(!showing){
							showing = true;
							ret += "Has the following Alchemical effects:\n";
						}
						
						if(keep_tags){
							ret += "<s" + types[count] + ">";
						}else{
							if(ident_roll > 10){
								if(types[count] < 0){
									ret += "Decrease "+FPalace_helper.get_stat_name_by_id(-types[count]) + "\n";
								}else{
									ret += "Increase "+FPalace_helper.get_stat_name_by_id(types[count]) + "\n";
								}
							}else{
								if(types[count] < 0){
									ret += FPalace_helper.get_stat_name_by_id(-types[count]) + "\n";
								}else{
									ret += FPalace_helper.get_stat_name_by_id(types[count]) + "\n";
								}
							}
						}
					}
				}
			}
			return ret;
		}
		
		override public function same_item(i:Item):Boolean{
			var ret:Boolean = super.same_item(i);
			
			if(ret && i is Alchemy_item){
				var temp:Alchemy_item = i as Alchemy_item;
				if(temp.types.toString() == types.toString()){
					ret = true;
				}else{
					ret = false;
				}
			}else{
				ret = false;
			}
			
			return ret;			
		}
		
		override public function clone():Item{
			var temp:Alchemy_item = new Alchemy_item(this.name);
			var count:int = 0;
			for(count;count<types.length;count++){
				temp.types[count] = this.types[count];
			}
			
			temp.name = this.name;
			temp.inventory_description = inventory_description;
			temp.dropped_description = this.dropped_description;
			temp.value = this.value;
			
			count = 0;
			for(count;count<effects.length;count++){
				temp.effects[count] = this.effects[count];
			}
			
			temp.use_description = this.use_description;
			temp.num_uses = this.num_uses;
			
			count = 0;
			for(count;count<change_effects.length;count++){
				temp.change_effects[count] = this.change_effects[count];
			}
			temp.propogate = this.propogate;
			temp.ident_difficulty = this.ident_difficulty;
			temp.weight = this.weight;
			count = 0;
			for(count;count < stat_action_add.length;count++){
				temp.stat_action_add[count] = this.stat_action_add[count];
			}
			
			temp.image_id = this.image_id;
			
			temp.topic = this.topic;
			temp.crafting_requirements = this.crafting_requirements;
			
			temp.tick_count = 0;
			temp.destroy_tick = this.destroy_tick;
			temp.spawn_char = this.spawn_char;
			
			return temp;
		}

	}
	
}
