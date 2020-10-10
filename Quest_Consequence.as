package  {
	
	public class Quest_Consequence extends Consequence{
		
		public var quest:Array;
		public var end_objective:Array;
		
		public function Quest_Consequence() {
			// constructor code
			super();
			quest = new Array();
			end_objective = new Array();
		}
		
		public function set_quest(q:Quest, goto_obj_num:int = -1):void{
			quest[quest.length] = q;
			end_objective[end_objective.length] = goto_obj_num;
		}
		
		override public function trigger(r:Number, c:Character = null, c2:Character = null):String{
			var ret:String = "";
			ret += super.trigger(r,c,c2);
			
			if((  !never_change && ((!change_on_success && r >= 0) || (change_on_success && r < 0))  || always_change)){
				if(quest[0] != null){
					var i:int = 0;
					for(i;i<quest.length;i++){
						if(end_objective[i] >= 0){
							ret += c.personality.set_obj_step(quest[i],end_objective[i],c);
							c2.personality.set_obj_step(quest[i],end_objective[i],c2);
						}else{
							c.personality.new_objective(quest[i], c);
						}
					}
				}
			}
			
			return ret;
		}
		
		override public function clone():Consequence{
			var ret:Quest_Consequence = new Quest_Consequence();
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
			
			ret.quest = this.quest;
			ret.end_objective = this.end_objective;
			return ret;
		}

	}
	
}
