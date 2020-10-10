package  {
	
	public class Trait{

		public static const attracted:int = 0;
		public static const disgusted:int = 1;
		
		public var racial_trait:Race;
		public var part_trait:int;
		
		public var stat_trait:int;
		public var stat_amt:Number;
		public var abv_or_blw:Boolean;
		public var trait_strength:int;
		
		public var attraction_check:int;
		
		public var damage_type_strengths:Array;
		public var damage_type_weaknesses:Array;
		
		public function Trait():void {
			// constructor code
			racial_trait = null;
			part_trait = -1;
			
			stat_trait = -1;
			stat_amt = 0;
			abv_or_blw = true;//Above the stat amt
			trait_strength = 1;
			
			attraction_check = -1;
			
			damage_type_strengths = new Array();
			damage_type_weaknesses = new Array();
		}
		
		public function set_trait_strength(i:int):void{
			trait_strength = i;
		}
		
		public function set_attraction_check(attraction_check_type:int):void{
			attraction_check = attraction_check_type;
		}
		
		public function set_part_id(id:int):void{
			part_trait = id;
		}
		
		public function set_stat_trait(stat_id:int, compare_amt:Number = 0, aob:Boolean = true):void{
			stat_trait = stat_id;
			stat_amt = compare_amt;
			abv_or_blw = aob;
		}
		
		public function set_racial_trait(r:Race):void{
			racial_trait = r;
		}
		
		public function has_trait(c:Character,c_self:Character):Boolean{
			var ret:Boolean = false;
			
			if(c != null){
				if(part_trait > -1){
					if(c.body.has_part(part_trait))ret = true;
				}
				if(racial_trait != null){
					if(c.get_primary_race().get_name() == racial_trait.get_name())ret = true;
				}
				if(stat_trait > -1){
					if(stat_amt != 0 && (c.get_stat(stat_trait) >= stat_amt && abv_or_blw) || (c.get_stat(stat_trait) <= stat_amt && !abv_or_blw))ret = true;
				}else if(stat_amt == -1 &&(c.get_stat(stat_trait) >= c_self.get_stat(stat_trait) && abv_or_blw) || (c.get_stat(stat_trait) <= c_self.get_stat(stat_trait) && !abv_or_blw)){
					ret = true;
				}
			}			
			
			return ret;
		}
		
		public function reaction_mod(c:Character, quant:Number, c_self:Character):Number{
			var ret:Number = 0;
			if(abv_or_blw){
				if(quant >= stat_amt){
					ret += (quant - stat_amt) * trait_strength;
				}
			}else{
				if(quant <= stat_amt){
					ret += (stat_amt - quant) * trait_strength;
				}
			}
			
			if(attraction_check == attracted){
				if(c != c_self && !(c_self.personality.determine_attraction(c, c_self) > 5 || c_self.personality.check_relationship(c,c_self) > Personality.friends)){
					ret = 0;
				}
			}else if(attraction_check == disgusted){
				if(c == c_self || (c_self.personality.determine_attraction(c, c_self) > 5 || c_self.personality.check_relationship(c,c_self) > Personality.friends)){
					ret = 0;
				}
			}
			
			return ret;
		}
		
		public function add_damage_resistance(id:int):void{
			damage_type_strengths[damage_type_strengths.length] = id;
		}
		
		public function add_damage_weakness(id:int):void{
			damage_type_weaknesses[damage_type_weaknesses.length] = id;
		}

	}
	
}
