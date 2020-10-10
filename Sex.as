package  {
	
	public class Sex extends Dynamic_object{

		public var pronoun:String;
		public var noun:String;
		public var obpronoun:String;
		public var bonus:Array;
		public var age_stat:Array;
		public var age_stat_change:Array;
		public var social_topics:Array;
		public var age_name:Array;
		
		public var default_orient:Array;
		
		public var damage_type_strengths:Array;
		public var damage_type_weaknesses:Array;

		public function Sex():void {
			name = "";
			bonus = new Array();
			age_stat = new Array;
			age_stat_change = new Array;
			social_topics = new Array;
			pronoun = "";
			noun = "";
			obpronoun = "";
			age_name = new Array;
			damage_type_strengths = new Array();
			damage_type_weaknesses = new Array();
			default_orient = new Array();
		}
		
		public function add_damage_resistance(id:int):void{
			damage_type_strengths[damage_type_strengths.length] = id;
		}
		
		public function add_damage_weakness(id:int):void{
			damage_type_weaknesses[damage_type_weaknesses.length] = id;
		}
		
		public function set_default_orient(attract:Array, disgust:Array):void{
			default_orient[0] = attract;
			default_orient[1] = disgust;
		}
		
		public function get_default_orient_attract():Array{
			return default_orient[0];
		}
		
		public function get_default_orient_disgust():Array{
			return default_orient[1];
		}
		
		public function new_age_name(age:int, desc:String):void{
			age_name[age_name.length] = age;
			age_name[age_name.length] = desc;
		}
		
		public function get_age_name(c:Character):String{
			var ret:String = "";
			var age:int = c.get_stat(FPalace_helper.age_id);
			var i:int = 0;
			for(i;i<Math.ceil(age_name.length/2);i++){
				if(age >= age_name[i*2])ret = age_name[i*2+1];
			}
			
			return ret;
		}
		
		public function new_topic(ct:Conversation_topic):void{
			social_topics[social_topics.length] = ct;
		}
		
		public function get_topics():Array{
			return social_topics;
		}
		
		public function age(c:Character, age_change:int):void{
			var orig_equip_state:int = c.equip_state;
			var temp_e:Equipment;
			var equip_array:Array = c.body.get_equip_array();
			c.equip_state = 1;
			var i:int = 0;
			for(i;i<equip_array.length;i++){
				temp_e = equip_array[i];
				temp_e.remove_effects(c);
			}
			
			var starting_age:int = c.get_stat(FPalace_helper.age_id);
			var ending_age:int = c.get_stat(FPalace_helper.age_id) + age_change;
			i = 0;
			for (i;i<age_stat.length;i++){
				var j:int = starting_age;
				var percent_change:Number = 0;
				if(age_stat_change[i] != null){
					if(age_change > 0){
						var curr_stat_val:Number = c.get_stat(age_stat[i],0,0,-1,false);
						j++;
						for(j;j<= ending_age;j++){
							if (age_stat_change[i][j] != null){
								percent_change = age_stat_change[i][j];
								percent_change = curr_stat_val*percent_change;
								curr_stat_val = curr_stat_val + percent_change;
							}else if(j >= age_stat_change[i].length){
								percent_change = age_stat_change[i][age_stat_change[i].length-1];
								percent_change = curr_stat_val*percent_change;
								curr_stat_val = curr_stat_val + percent_change;
							}
						}
						c.set_challenge_output(c.apply_affect_by_id(age_stat[i], curr_stat_val - c.get_stat(age_stat[i],0),0,null,Body.prorate_change_total));
					}else if(age_change < 0){
						curr_stat_val = c.get_stat(age_stat[i],0,0,-1,false);
						for(j;j> ending_age;j--){
							if (age_stat_change[i][j] != null){
								percent_change = age_stat_change[i][j];
								percent_change = curr_stat_val - (curr_stat_val/(1 + percent_change));
								curr_stat_val = curr_stat_val - percent_change;
							}
						}
						c.set_challenge_output(c.apply_affect_by_id(age_stat[i], curr_stat_val - c.get_stat(age_stat[i],0),0,null,Body.prorate_change_total));
					}
				}
			}
			
			i = 0;
			for(i;i<equip_array.length;i++){
				temp_e = equip_array[i];
				temp_e.equip_effects(c);
			}
			c.equip_state = orig_equip_state;
			
			return;
		}
		
		public function new_age_stat(stat_id:int, stat_change:Array):void{
			age_stat[age_stat.length] = stat_id;
			age_stat_change[age_stat_change.length] = stat_change;
		}
				
		public function set_pronoun(s:String):void{
			pronoun = s;
		}
		
		public function get_pronoun():String{
			return pronoun;
		}
		
		public function set_noun(s:String):void{
			noun = s;
		}
		
		public function get_noun():String{
			return noun;
		}
		
		public function set_objnoun(s:String):void{
			obpronoun = s;
		}
		
		public function get_objnoun():String{
			return obpronoun;
		}
		
		public function set_bonus(k:int, i:Number):void{
			bonus[k] = i;
		}
		
		public function apply_bonuses(c:Character, delay_effect:Boolean = false):void{
			var i:int = 0;
			for(i;i<bonus.length;i++){
				if (bonus[i] != null){
					if(delay_effect){
						var tf:Tick_Effect = new Tick_Effect();
						tf.set_end_tick(Main.t1_hour);
						var consequence:Consequence = new Consequence();
						consequence.add_consequence(i,bonus[i]/4, "", 0);
						
						tf.set_end_consequence(consequence);
						
						tf.set_tick_consequence(Math.floor(0.75*Main.t1_hour),consequence);
						tf.set_tick_consequence(Math.floor(0.5*Main.t1_hour),consequence);
						tf.set_tick_consequence(Math.floor(0.25*Main.t1_hour),consequence);
						
						c.apply_tick_effect(tf);
					}else{
						c.apply_affect_by_id(i,bonus[i],0,null,Body.change_stats_total);					
					}
				}
			}
		}
		
		
		public function reverse_bonuses(c:Character, delay_effect:Boolean = false):void{
			var i:int = 0;
			for(i;i<bonus.length;i++){
				if (bonus[i] != null){
					if(delay_effect){
						var tf:Tick_Effect = new Tick_Effect();
						tf.set_end_tick(Main.t1_hour);
						var consequence:Consequence = new Consequence();
						consequence.add_consequence(i,-bonus[i]/4, "", 0);
						
						tf.set_end_consequence(consequence);
						
						tf.set_tick_consequence(Math.floor(0.75*Main.t1_hour),consequence);
						tf.set_tick_consequence(Math.floor(0.5*Main.t1_hour),consequence);
						tf.set_tick_consequence(Math.floor(0.25*Main.t1_hour),consequence);
						
						c.apply_tick_effect(tf);
					}else{
						c.apply_affect_by_id(i,-bonus[i],0,null,Body.change_stats_total );					
					}
				}
			}
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
		
		public function clone():Sex{
			var s:Sex = new Sex();
			s.pronoun = pronoun;
			s.noun = noun;
			s.bonus = bonus;
			s.name = name;
			s.social_topics = social_topics;
			
			s.age_stat = age_stat;
		    var i:int = 0;
			
			for (i;i<age_stat_change.length;i++){
				s.age_stat_change[i] = age_stat_change[i];
			}
			
			s.damage_type_strengths = damage_type_strengths;
			s.damage_type_weaknesses =damage_type_weaknesses;
			s.default_orient = default_orient;
			
			return s;
			
			
		}

	}
	
}
