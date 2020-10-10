package  {
	
	public class Tick_Effect {

		public static const prone_status:int = 1;
		public static const poisoned_status:int = 2;
		public static const lactating_status:int = 3;
		public static const fluid_regen_status:int = 4;
		public static const pregnant_status:int = 5;
		public static const drunk_status:int = 6;
		public static const maternity_bra_status:int = 7;
		public static const mighty_whities_status:int = 8;
		public static const training_bra_status:int = 9;
		public static const jutting_jockstrap_status:int = 10;
		public static const one_piece_status:int = 11;
		public static const rapunzels_ribbon_status:int = 12;
		public static const booty_thong_status:int = 13;
		public static const worms_status:int = 14;
		public static const horny_chastity_status:int = 15;
		
		public var character_effect:Character;
		public var end_tick:int;
		public var current_tick:int;
		public var end_consequence:Consequence;
		public var status_id:int;
		
		public var tick_count:Array;
		public var tick_consequence:Array;
		public var tick_challenge:Array;
		
		public static function get_status_effect_name(status_id:int):String{
			var ret:String = "";
			if(status_id == prone_status){
				ret += "prone";
			}else if(status_id == poisoned_status){
				ret += "poison";
			}else if(status_id == lactating_status){
				ret += "lactating";
			}else if(status_id == pregnant_status){
				ret += "pregnant";
			}else if(status_id == drunk_status){
				ret += "drunk";
			}else if(status_id == worms_status){
				ret += "worms";
			}
			
			return ret;
		}
		
		public function Tick_Effect():void{
			character_effect = null;
			end_tick = -1;
			current_tick = 0;
			status_id = -1;
			tick_count = new Array();
			tick_consequence = new Array();
			tick_challenge = new Array();
		}
		
		public function set_end_consequence(c:Consequence):void{
			end_consequence = c;
		}
		
		public function set_status_id(i:int):void{
			status_id = i;
		}
		
		public function get_id():int{
			return status_id;
		}
		
		public function set_tick_consequence(tick_num:int, c:Consequence, chall:Challenge = null):void{
			tick_count[tick_count.length] = tick_num;
			tick_consequence[tick_consequence.length] = c;
			tick_challenge[tick_challenge.length] = chall;
		}
		
		public function set_character_effect(c:Character):void{
			character_effect = c;
		}
		
		public function set_end_tick(i:int):void{
			end_tick = i;
		}
		
		public function tick(c:Character):String{
			current_tick++;
			
			var ret:String = "";
			var i:int = 0;
			var roll:int = 1;
			
			for(i;i<tick_count.length;i++){
				if(end_tick > -1){
					if(current_tick == tick_count[i]){
						if(tick_challenge[i] != null){
							roll = tick_challenge[i].roll(c, c);
						}else{
							roll = 1;
						}
						ret += tick_consequence[i].trigger(roll, c, c);
					}
				}else{
					if(current_tick%tick_count[i]==0){
						if(tick_challenge[i] != null){
							roll = tick_challenge[i].roll(c, c);
						}else{
							roll = 1;
						}
						ret += tick_consequence[i].trigger(roll, c, c);
					}
				}
			}
			
			if(end_tick >= 0 && current_tick >= end_tick){
				if(character_effect != null){
					character_effect.new_location(c.location);
					character_effect = null;
				}
				if(end_consequence != null)ret += end_consequence.trigger(1, c, c);
			}
			return ret;
		}
		
		public function ticks_left():int{
			if(end_tick >= 0){
				return end_tick - current_tick;
			}else{
				return 1;
			}
		}
		
		public function clone():Tick_Effect{
			var ret:Tick_Effect = new Tick_Effect();
			
			ret.set_status_id(status_id);
			ret.set_end_tick(end_tick);
			ret.set_end_consequence(end_consequence);
			ret.set_character_effect(character_effect);
			
			ret.tick_count = tick_count;
			ret.tick_consequence = tick_consequence;
			ret.tick_challenge = tick_challenge;
			
			return ret;
		}

	}
	
}
