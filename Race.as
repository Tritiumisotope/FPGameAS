package  {
	
	public class Race extends Dynamic_object{

		//racial stats sound like a good idea? What about actions/attacks?
		public static var mamal_pregnancy:int = 0;
		public static var egg_pregnancy:int = 1;

		public var bonus_stat:Array;
		public var bonus:Array;
		public var bonus_part:Array;
		public var skill_bonus_id:Array;
		public var skill_bonus:Array;
		public var skill_bonus_part:Array;
		public var desc:Array;
		public var desc_part:Array;
		public var image_part_id:Array;
		public var image_id:Array;
		
		public var male_names:Array;
		public var female_names:Array;
		public var surnames:Array;
		
		public var stats:Array;
		public var actions:Array;
		public var attacks:Array;
		public var attack_slots:Array;
		public var aging_mod:Number;
		
		public var parts:Array;
		public var parts_count:Array;
		public var parts_gender:Array;
		
		public var preg_effect:Tick_Effect;
		public var preg_type:int;
		
		public var stat_max_id:Array;
		public var stat_max:Array;
		public var max_part:Array;
		
		public var damage_type_strengths:Array;
		public var damage_type_weaknesses:Array;
		
		public var status_immunities:Array;
		
		public var anthropomorphic:Boolean;

		public function Race():void{
			name = "";
			bonus_stat = new Array();
			bonus = new Array();
			bonus_part = new Array();
			skill_bonus_id = new Array();
			skill_bonus = new Array();
			skill_bonus_part = new Array();
			desc = new Array();
			desc_part = new Array();
			male_names = new Array();
			female_names = new Array();
			surnames = new Array();
			
			stats = new Array();
			actions = new Array();
			attacks = new Array();
			attack_slots = new Array();
			preg_effect = null;
			preg_type = mamal_pregnancy;
			aging_mod = 1;
			
			stat_max_id = new Array();
			stat_max = new Array();
			max_part = new Array();
			
			parts = new Array();
			parts_count = new Array();
			parts_gender = new Array();
			
			image_part_id = new Array();
			image_id = new Array();
			
			damage_type_strengths = new Array();
			damage_type_weaknesses = new Array();
			
			status_immunities = new Array();
			
			anthropomorphic = true;
		}
		
		public function set_anthropomorphic():void{
			anthropomorphic = !anthropomorphic;
		}
		
		public function get_anthro():Boolean{
			return anthropomorphic;
		}
		
		public function set_preg_type(id:int):void{
			preg_type = id;
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
		
		public function add_part(bp:Body_part, n:int = 1, sex:String = null):void{
			parts[parts.length] = bp;
			parts_count[parts_count.length] = n;
			parts_gender[parts_gender.length] = sex;
		}
		
		public function get_new_parts(c:Character):Array{
			var ret:Array = new Array();
			var avail_connect:Array = c.body.get_avail_connect_part();
			var i:int = 0;
			for(i;i<parts.length;i++){
				var temp_bp:Body_part = parts[i];
				if(c.body.part_count_by_name(temp_bp.name) < parts_count[i] && (parts_gender[i] == null || parts_gender[i] == c.sex.name)){
					var j:int = 0;
					for(j;j<avail_connect.length;j++){
						if(avail_connect[j] == temp_bp.get_part_id()){
							ret[ret.length] = temp_bp;
							break;
						}
					}
				}
			}
			return ret;
		}
		
		public function set_aging_mod(n:Number):void{
			aging_mod = n;
		}
		
		public function get_aging_mod():Number{
			return aging_mod;
		}
		
		public function get_preg_effect(kid:Character):Tick_Effect{
			var ret:Tick_Effect = null;
			if(preg_effect != null){
				ret = preg_effect.clone();
				if(preg_type == mamal_pregnancy){
					ret.set_character_effect(kid);
				}else if(preg_type == egg_pregnancy){
					if(ret.end_consequence != null && ret.end_consequence is Item_Consequence){
						var icons:Item_Consequence = ret.end_consequence as Item_Consequence;
						var temp_egg:Item = icons.item_reward[0];
						temp_egg.add_spawn_at_tick(kid, Math.round(8*Main.t1_month*aging_mod));
					}else{
						trace("(Race.get_preg_effect)Should be getting ready to lay an egg. No item end consequence to alter an egg for. Doing nothing.");
					}
				}
			}
			return ret;
		}
		
		public function set_preg_effect(t:Tick_Effect):void{
			preg_effect = t;
		}
		
		public function new_stat(s:Stat):void{
			stats[stats.length] = s;
		}
		
		public function new_action(a:Action):void{
			actions[actions.length] = a;
		}
		
		public function new_attack(a:Action, slot_id:int = -1):void{
			attacks[attacks.length] = a;
			attack_slots[attack_slots.length] = slot_id;
		}
		
		public function get_attacks(bp:Body_part):Array{
			var temp_arr:Array = new Array;
			
			var count:int = 0;
			for(count;count< attacks.length;count++){
				if(attack_slots[count] > -1){
					if(attack_slots[count] == bp.get_part_id()){
						temp_arr[temp_arr.length] = attacks[count];
					}
				}else{
					temp_arr[temp_arr.length] = attacks[count];
				}
			}
			
			
			return temp_arr;
		}
		
		public function new_male_name(s:String):void{
			male_names[male_names.length] = s;
		}
		
		public function new_male_name_set(s:Array):void{
			male_names = s;
		}
		
		public function new_female_name(s:String):void{
			female_names[female_names.length] = s;
		}
		
		public function new_female_name_set(s:Array):void{
			female_names = s;
		}
		
		public function new_surname(s:String):void{
			surnames[surnames.length] = s;
		}
		
		public function new_surname_set(s:Array):void{
			surnames = s;
		}
		
		public function get_random_female_name():String{
			var s:String = "";
			var i:int = Math.round(Math.random()*(female_names.length - 1))
			
			s += female_names[i];
			
			return s;
		}
		
		public function get_random_male_name():String{
			var s:String = "";
			var i:int = Math.round(Math.random()*(male_names.length - 1))
			
			s += male_names[i];
			
			return s;
		}
		
		public function get_random_surname():String{
			var s:String = "";
			var i:int = Math.round(Math.random()*(surnames.length - 1))
			
			s += surnames[i];
			
			return s;
		}
		
		public function set_bonus(k:int, i:Number, pid:int = -1):void{
			bonus_stat[bonus_stat.length] = k;
			bonus[bonus.length] = i;
			bonus_part[bonus_part.length] = pid;
		}
		
		public function set_skill_bonus(skill_id:int, bonus_amt:Number, pid:int = -1):void{
			skill_bonus_id[skill_bonus_id.length] = skill_id;
			skill_bonus[skill_bonus.length] = bonus_amt;
			skill_bonus_part[skill_bonus_part.length] = pid;
		}
		
		public function set_stat_max(stat_id:int, max:Number, pid:int):void{
			stat_max_id[stat_max_id.length] = stat_id;
			stat_max[stat_max.length] = max;
			max_part[max_part.length] = pid;
		}
		
		public function apply_bonuses(c:Character,p:Body_part,delay_effect:Boolean = false):void{
			var i:int = 0;
			for(i;i<bonus.length;i++){
				if (bonus[i] != null && (p.part_id == bonus_part[i] || bonus_part[i] == -1)){
					if(delay_effect && bonus_part[i] == -1){
						var tf:Tick_Effect = new Tick_Effect();
						tf.set_end_tick(Main.t1_hour);
						var consequence:Consequence = new Consequence();
						consequence.add_consequence(bonus_stat[i],bonus[i]/4, "", 0)
						
						tf.set_end_consequence(consequence);
						tf.set_tick_consequence(Math.floor(0.75*Main.t1_hour),consequence);
						tf.set_tick_consequence(Math.floor(0.5*Main.t1_hour),consequence);
						tf.set_tick_consequence(Math.floor(0.25*Main.t1_hour),consequence);
						
						c.apply_tick_effect(tf);
					}else{
						p.apply_effect(bonus_stat[i],bonus[i], c);
					}
				}
			}
			
			i = 0;
			for(i;i<skill_bonus.length;i++){
				if (skill_bonus[i] != null && (p.part_id == skill_bonus_part[i] || skill_bonus_part[i] == -1)){
					c.set_skill_bonus(skill_bonus_id[i], skill_bonus[i]);
				}
			}
		}
		
		
		public function reverse_bonuses(c:Character,p:Body_part,delay_effect:Boolean = false):void{
			var i:int = 0;
			for(i;i<bonus.length;i++){
				if (bonus[i] != null && (p.part_id == bonus_part[i] || bonus_part[i] == -1)){
					if(delay_effect && bonus_part[i] != -1){
						var tf:Tick_Effect = new Tick_Effect();
						tf.set_end_tick(Main.t1_hour);
						var consequence:Consequence = new Consequence();
						consequence.add_consequence(bonus_stat[i],-bonus[i]/4, "", 0)
						
						tf.set_end_consequence(consequence);
						
						tf.set_tick_consequence(Math.floor(0.75*Main.t1_hour),consequence);
						tf.set_tick_consequence(Math.floor(0.5*Main.t1_hour),consequence);
						tf.set_tick_consequence(Math.floor(0.25*Main.t1_hour),consequence);
						
						c.apply_tick_effect(tf);
					}else{
						p.apply_effect(bonus_stat[i],-bonus[i], c);
					}
				}
			}
			
			i = 0;
			for(i;i<skill_bonus.length;i++){
				if (skill_bonus[i] != null && (p.part_id == skill_bonus_part[i] || skill_bonus_part[i] == -1)){
					c.set_skill_bonus(skill_bonus_id[i], -skill_bonus[i]);
				}
			}
		}
		
		public function get_description(part_id:int, bp:Body_part):String{
			var i:int = 0;
			for (i;i<desc_part.length;i++){
				if(desc_part[i] == bp.part_id){
					return desc[i];
				}
			}
			
			return name + ". ";
		}
		
		public function get_part_image(part_id:int):int{
			var i:int = 0;
			for(i;i<image_part_id.length;i++){
				if(image_part_id[i] == part_id)return image_id[i];
			}
			return -1;
		}
		
		public function add_part_description(part_id:int, d:String):void{
			desc[desc.length] = d;
			desc_part[desc_part.length] = part_id;
		}
		
		public function add_part_image(part_id:int, img_id:int):void{
			image_part_id[image_part_id.length] = part_id;
			image_id[image_id.length] = img_id;
		}
		
		public function add_status_immunity(status_id:int):void{
			status_immunities[status_immunities.length] = status_id;
		}
		
		public function check_immunity(status_id:int):Boolean{
			var ret:Boolean = false;
			var i:int = 0;
			for(i;i<status_immunities.length;i++){
				if(status_immunities[i] == status_id){
					ret = true;
					break;
				}
			}			
			return ret;
		}
	}
	
}
