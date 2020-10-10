﻿package {
	
	public class Equipment extends Item{

		public static const hide_part:int = -2;
		
		public var equips_on:Array;
		public var equips_on_num:Array;
		public var covers:Array;
		public var covers_desc:Array;
		public var cover_stat:Array;
		public var cover_min:Array;
		public var stat_req:Array;
		public var stat_min:Array;
		public var stat_max:Array;
		public var cover_num:Array;
		public var covered_perception_difficulty:Array;
		public var _show_other_cover:Boolean;
		
		public var skill_id:Array;
		public var skill_bonus:Array;
		
		public var cover_parts:Array;
		public var cover_parts_images:Array;
		
		public var enchantment_level:int;
		
		public var damage_type_strengths:Array;
		public var damage_type_weaknesses:Array;
		
		public var upgrade_slot_ids:Array;
		public var upgrade_items:Array;
		
		public var remove_consequence:Array;

		public function Equipment(n:String = null):void{
			// constructor code
			super(n);
			num_uses = -1;
			equips_on = new Array();
			equips_on_num = new Array();
			covers = new Array();
			covers_desc = new Array();
			stat_req = new Array();
			stat_min = new Array();
			stat_max = new Array();
			cover_min = new Array();
			cover_stat = new Array();
			cover_num = new Array();
			covered_perception_difficulty = new Array();
			_show_other_cover = false;
			
			skill_id = new Array();
			skill_bonus = new Array();
			
			cover_parts = new Array();
			cover_parts_images = new Array();
			
			enchantment_level = 0;
			
			damage_type_strengths = new Array();
			damage_type_weaknesses = new Array();
			
			upgrade_slot_ids = new Array();
			upgrade_items = new Array();
			
			remove_consequence = new Array();
		}
		
		public function attach_upgrade_item(ui:Upgrade_Item, c:Character):String{
			var ret:String = "";
			var i:int = 0;
			for(i;i<upgrade_slot_ids.length;i++){
				if(upgrade_slot_ids[i] == ui.upgrade_type_id && upgrade_items[i] == null){
					ret += "</n> attaches the " + ui.get_name() + " to the " + get_name()+". \n";
					upgrade_items[i] = ui;
					c.drop_item(ui);
					var effect_count:int = 0;
					for(effect_count;effect_count<ui.effects.length;effect_count++){
						if(ui.effects[effect_count] != null){
							add_effect(effect_count, ui.effects[effect_count]);
						}
					}
					effect_count = 0;
					for(effect_count;effect_count<ui.skill_id.length;effect_count++){
						set_skill_bonus(ui.skill_id[effect_count],ui.skill_bonus[effect_count]);
					}
				}
			}
			if(ret == "") ret = "You can't attach the " + ui.get_name() + " to that. \n";
			return ret;
		}
		
		public function add_upgrade_slot(id:int):void{
			upgrade_slot_ids[upgrade_slot_ids.length] = id;
		}
		
		public function add_damage_resistance(id:int):void{
			damage_type_strengths[damage_type_strengths.length] = id;
		}
		
		public function add_damage_weakness(id:int):void{
			damage_type_weaknesses[damage_type_weaknesses.length] = id;
		}
		
		public function get_damage_mod(id:int):Number{
			var ret:Number = 1;
			var i:int = 0;
			for(i;i<damage_type_strengths.length;i++){
				if(damage_type_strengths[i] == id) ret = ret/2;
			}
			for(i;i<damage_type_weaknesses.length;i++){
				if(damage_type_weaknesses[i] == id) ret = ret*2;
			}
			return ret;
		}
		
		public function get_enchantment_level():int{
			return enchantment_level;
		}
		
		public function set_enchantment_level(i:int):void{
			enchantment_level = i;
		}
		
		public function new_cover_image(part_id:int, image_id:int):void{
			cover_parts[cover_parts.length] = part_id;
			cover_parts_images[cover_parts_images.length] = image_id;
		}
		
		public function get_part_image(part_id:int):int{
			var ret:int = -1;
			var i:int = 0;
			for(i;i<cover_parts.length;i++){
				if(cover_parts[i] == part_id){
					ret = cover_parts_images[i];
					break;
				}
			}
			
			return ret;
		}
		
		public function set_skill_bonus(id:int, bonus:int):void{
			skill_id[skill_id.length] = id;
			skill_bonus[skill_bonus.length] = bonus;
		}
		
		public function set_show_other_cover():void{
			_show_other_cover = !_show_other_cover;
		}
		
		public function show_other_cover():Boolean{
			return _show_other_cover;
		}
		
		public function new_equip_slot(i:int, num_slots:int = 0):void{
			equips_on[equips_on.length] = i;
			equips_on_num[equips_on_num.length] = num_slots;
		}
		
		public function get_max_equip_slot(equip_on_id:int):int{
			return equips_on_num[equip_on_id];
		}
		
		public function get_max_cover_slot(covers_part_id:int):int{
			return cover_num[covers_part_id];
		}
		
		public function new_cover_slot(i:int,s:String = "",c:int=-1,min:int = 0, cover_nm:int = 0, perception_difficulty:int = 0):void{
			covers[covers.length] = i;
			covers_desc[covers_desc.length] = s;
			cover_min[cover_min.length] = min;
			cover_stat[cover_stat.length] = c;
			cover_num[cover_num.length] = cover_nm;
			covered_perception_difficulty[covered_perception_difficulty.length] = perception_difficulty;
		}
		
		public function get_equip_slots():Array{
			return equips_on;
		}
		
		public function get_cover_slots():Array{
			//need to return the slots covered as distinct....
			var temp:Array = covers;
			var i:int = 0;
			for(i;i<temp.length;i++){
				var j:int = i + 1;
				for(j;j<temp.length;j++){
					if(temp[j] == temp[i]) temp = temp.slice(0,j).concat(temp.slice(j+1,temp.length));
				}
			}
			
			return temp;
		}
		
		public function set_equip_condition(stat_id:int, max:int, min:int = -1):void{
			stat_req[stat_req.length] = stat_id;
			stat_min[stat_min.length] = min;
			stat_max[stat_max.length] = max;
		}
		
		public function add_remove_consequence(c:Consequence):void{
			remove_consequence[remove_consequence.length] = c;
		}
		
		public function add_remove_action(a:Action):void{
			remove_consequence[remove_consequence.length] = a;
		}
		
		public function remove_effects(c:Character, effects_only:Boolean = false):String{
			var s:String = "";
			var i:int = 0;
			for(i;i<effects.length;i++){
				if(effects[i] != null)s += c.apply_equip_affect_by_id(i, -effects[i]);//c.apply_affect_by_id(i,-effects[i],0,null, Body.change_stats_total);
			}
			
			i = 0;
			for(i;i<skill_id.length;i++){
				if(skill_bonus[i] != 0)s += c.set_skill_bonus(skill_id[i], -skill_bonus[i]);
			}
			
			if(!effects_only){
				if(stat_action_add.length > 0){
					i = 0;
					for(i;i<Math.ceil(stat_action_add.length/2);i++){
						c.remove_stat_action(stat_action_add[i*2], stat_action_add[i*2+1]);
					}
				}
				
				i = 0;
				for (i;i<remove_consequence.length;i++){
					if (remove_consequence[i] != null){
						if(remove_consequence[i] is Consequence){
							s += remove_consequence[i].trigger(0, c);
						}else{
							s += remove_consequence[i].challenge(0,c);
						}
					}
				}
			}
			return s;
		}
		
		public function equip_effects(c:Character, effects_only:Boolean = false):String{
			var s:String = "";
			var i:int = 0;
			if(!effects_only){
				for (i;i<change_effects.length;i++){
					if (change_effects[i] != null){
						if(change_effects[i] is Consequence){
							s += change_effects[i].trigger(0, c);
						}else{
							s += change_effects[i].challenge(0,c);
						}
					}
				}
				
				if(stat_action_add.length > 0){
					i = 0;
					for(i;i<Math.ceil(stat_action_add.length/2);i++){
						c.add_stat_action(stat_action_add[i*2], stat_action_add[i*2+1]);
					}
				}
			}
			
			i = 0;
			for(i;i<effects.length;i++){
				if(effects[i] != null)s += c.apply_equip_affect_by_id(i, effects[i]);
			}
			
			i = 0;
			for(i;i<skill_id.length;i++){
				if(skill_bonus[i] != 0)s += c.set_skill_bonus(skill_id[i], skill_bonus[i]);
			}
			
			return s;
		}
		
		public function covered_difficulty(c:Character, id:int, bp:Body_part):int{
			var ret:int = 1;
			var i:int = 0;
			for (i;i<covers.length;i++){
				if(covers[i] == id && (cover_stat[i] == -1 || bp.get_stat(c, cover_stat[i]) >= cover_min[i])){
					ret += covered_perception_difficulty[i];
				}
			}
			return ret;
		}
		
		public function covered_description(c:Character, id:int,bp:Body_part):String{
			var s:String = "";
			var i:int = 0;
			for (i;i<covers.length;i++){
				if(covers[i] == id && (cover_stat[i] == -1 || bp.get_stat(c, cover_stat[i]) >= cover_min[i])){
					s = covers_desc[i];
				}
			}
			
			var j:int = 0;
			for (j;j<bp.stat_id.length;j++){
				if(bp.stat_description[j] != null){
					s = s.replace("</" + bp.stat_id[j] + ">",String(bp.get_stat(c, bp.stat_id[j]).toFixed(bp.stat_description[j].show_decimals)));
					s = s.replace("<sd/" + bp.stat_id[j] + ">",bp.stat_description[j].get_short_description(bp.get_stat(c, bp.stat_id[j])));
				}
			}
			
			return s;					
		}
		
		override public function get_description(c:Character, ident_effectiveness:Array = null, keep_tags:Boolean = false):String{
			var ret:String = super.get_description(c, ident_effectiveness, keep_tags);
			var ident_chance:Number = 0;
			if(ident_effectiveness != null){
				ident_chance = ident_effectiveness[0]/ident_difficulty;
			}
			
			var count:int = 0;
			var showing:Boolean = false;
			if(stat_req.length > 0){
				for(count;count < stat_req.length;count ++){
					var l_string:String = FPalace_helper.get_stat_name_by_id(stat_req[count]);
					if(l_string != "?" && Math.random() <= ident_chance){
						if(!showing){
							showing = true;
							ret += "\nRequires the following skills:\n";
						}
						
						if(stat_min[count] > 0){
							ret += "Between " + stat_min[count] + " and " + stat_max[count] + " " + l_string + "\n"
						}else{
							ret += "Under " + stat_max[count] + " " + l_string + "\n"
						}
					}
				}
			}
			
			showing = false;
			count = 0;
			if(skill_id.length > 0){
				for(count;count < skill_id.length;count ++){
					if(Math.random() <= ident_chance){
						if(!showing){
							showing = true;
							ret += "\nImpacts skills:\n";
						}
						ret += FPalace_skills.get_skill_name(skill_id[count]) + "\n"
					}
				}
			}
			
			showing = false;
			count = 0;
			if(damage_type_strengths.length > 0){
				for(count;count < damage_type_strengths.length;count ++){
					if(Math.random() <= ident_chance){
						if(!showing){
							showing = true;
							ret += "\nProtects against:\n";
						}
						ret += FPalace_helper.get_type_name_by_id(damage_type_strengths[count]) + "\n"
					}
				}
			}
			
			showing = false;
			count = 0;
			if(damage_type_weaknesses.length > 0){
				for(count;count < damage_type_weaknesses.length;count ++){
					if(Math.random() <= ident_chance){
						if(!showing){
							showing = true;
							ret += "\nWeak against:\n";
						}
						ret += FPalace_helper.get_type_name_by_id(damage_type_weaknesses[count]) + "\n"
					}
				}
			}
			
			return ret;
		}
		
		override public function same_item(i:Item):Boolean{
			var ret:Boolean = super.same_item(i);
			
			if(ret && i is Equipment){
				var temp:Equipment = i as Equipment;
				
				if(temp.equips_on.toString() == equips_on.toString() && temp.equips_on_num.toString() == equips_on_num.toString()
				    && temp.covers.toString() == covers.toString() && temp.covers_desc.toString() == covers_desc.toString() 
					&& temp.cover_stat.toString() == cover_stat.toString() && temp.cover_min.toString() == cover_min.toString() 
					&& temp.stat_req.toString() == stat_req.toString() && temp.stat_min.toString() == stat_min.toString() 
					&& temp.stat_max.toString() == stat_max.toString() && temp.cover_num.toString() == cover_num.toString()
					&& temp.covered_perception_difficulty.toString() == covered_perception_difficulty.toString()
					&& temp._show_other_cover == _show_other_cover && temp.skill_id.toString() == skill_id.toString()
					&& temp.skill_bonus.toString() == skill_bonus.toString() && temp.cover_parts.toString() == cover_parts.toString()
					&& temp.cover_parts_images.toString() == cover_parts_images.toString() && temp.enchantment_level == enchantment_level					
					&& temp.damage_type_strengths.toString() == damage_type_strengths.toString()
					&& temp.damage_type_weaknesses.toString() == damage_type_weaknesses.toString()){
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
			var temp:Equipment = new Equipment();
			temp.name = this.name;
			temp.dropped_description = this.dropped_description;
			temp.value = this.value;
			var count:int = 0;
			for(count;count<effects.length;count++){
				temp.effects[count] = this.effects[count];
			}
			temp.use_description = this.use_description;
			count = 0;
			for(count;count<change_effects.length;count++){
				temp.change_effects[count] = this.change_effects[count];
			}
			temp.equips_on = this.equips_on;
			temp.equips_on_num = this.equips_on_num;
			temp.propogate = this.propogate;
			temp.inventory_description = inventory_description;
			temp.ident_difficulty = this.ident_difficulty;
			temp.weight = this.weight;
			temp.num_uses = this.num_uses;
			count = 0;
			for(count;count < stat_action_add.length;count++){
				temp.stat_action_add[count] = this.stat_action_add[count];
			}
			
			temp.covers = this.covers
			
			var i:int = 0;
			for(i;i<this.covers_desc.length;i++){
				temp.covers_desc[i] = this.covers_desc[i];
			}
			i = 0;
			for(i;i<this.cover_stat.length;i++){
				temp.cover_stat[i] = this.cover_stat[i];
			}
			i = 0;
			for(i;i<this.cover_min.length;i++){
				temp.cover_min[i] = this.cover_min[i];
			}
			i = 0;
			for(i;i<this.stat_req.length;i++){
				temp.stat_req[i] = this.stat_req[i];
			}
			i = 0;
			for(i;i<this.stat_min.length;i++){
				temp.stat_min[i] = this.stat_min[i];
			}
			i = 0;
			for(i;i<this.stat_max.length;i++){
				temp.stat_max[i] = this.stat_max[i];
			}
			
			i = 0;
			for(i;i<this.covered_perception_difficulty.length;i++){
				temp.covered_perception_difficulty[i] = this.covered_perception_difficulty[i];
			}
			
			count = 0;
			for(count;count<skill_id.length;count++){
				temp.skill_id[count] = this.skill_id[count];
			}
			count = 0;
			for(count;count<skill_bonus.length;count++){
				temp.skill_bonus[count] = this.skill_bonus[count];
			}
			
			temp.cover_num = this.cover_num;
			temp.image_id = this.image_id;
			
			temp.cover_parts = this.cover_parts;
			temp.cover_parts_images = this.cover_parts_images;
			
			temp.enchantment_level = this.enchantment_level;
			temp._show_other_cover = this._show_other_cover;
			
			temp.damage_type_strengths = this.damage_type_strengths;
			temp.damage_type_weaknesses = this.damage_type_weaknesses;
			
			temp.topic = this.topic;
			
			temp.crafting_requirements = this.crafting_requirements;
			
			temp.upgrade_slot_ids = upgrade_slot_ids;
			temp.upgrade_items = new Array();
			
			count = 0;
			for(count;count<remove_consequence.length;count++){
				temp.remove_consequence[count] = this.remove_consequence[count];
			}
			
			temp.tick_count = 0;
			temp.destroy_tick = this.destroy_tick;
			temp.spawn_char = this.spawn_char;
			
			return temp;
		}

	}
	
}
