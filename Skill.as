package  {
	
	public class Skill {
		
		public var parent_skill:int;
		public var id:int;
		public var name:String;
		
		public var stat_list:Array;
		public var stat_ratio_list:Array;
		
		public var actions:Array;
		public var act_bonus_req:Array;
		
		public var attacks:Array;
		public var atk_bonus_req:Array;
		
		public function Skill():void {
			// constructor code
			stat_list = new Array();
			stat_ratio_list = new Array();
			parent_skill = -1;
			actions = new Array();
			act_bonus_req = new Array();
			attacks = new Array();
			atk_bonus_req = new Array();
		}
		
		public function set_id(i:int):void{
			id = i;
		}
		
		public function get_id():int{
			return id;
		}
		
		public function set_parent(skill_id:int):void{
			parent_skill = skill_id;
		}
		
		public function get_parent():int{
			return parent_skill;
		}
		
		public function set_name(s:String):void{
			name = s;
		}
		
		public function get_name():String{
			return name;
		}
		
		public function add_action(new_act:Action, bonus_requirement:int = 0):void{
			actions[actions.length] = new_act;
			act_bonus_req[act_bonus_req.length] = bonus_requirement;
		}
		
		public function add_attack(new_atk:Action, bonus_req:int = 0):void{
			attacks[attacks.length] = new_atk;
			atk_bonus_req[atk_bonus_req.length] = bonus_req;
		}
		
		public function get_actions(char_bonus:int):Array{
			var ret:Array = new Array();
			var i:int = 0;
			for(i;i<actions.length;i++){
				if(char_bonus >= act_bonus_req[i] && actions[i] != null)ret[ret.length] = actions[i];
			}
			return ret;
		}
		
		public function get_attacks(char_bonus:int):Array{
			var ret:Array = new Array();
			var i:int = 0;
			for(i;i<attacks.length;i++){
				if(char_bonus >= atk_bonus_req[i] && attacks[i] != null)ret[ret.length] = attacks[i];
			}
			return ret;
		}
		
		public function add_stat_component(stat_id:int, ratio:int = 1):void{
			stat_list[stat_list.length] = stat_id;
			stat_ratio_list[stat_ratio_list.length] = ratio;
		}

	}
	
}
