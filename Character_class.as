package  {
	
	public class Character_class extends Dynamic_object{
		
		
		public var attacks:Array;
		public var bonus:Array;
		public var attack_lvl_req:Array;
		public var actions:Array;
		public var action_lvl_req:Array;
		
		public var class_skills:Array;

		public function Character_class():void {
			name = "";
			bonus = new Array();
			attacks = new Array();
			attack_lvl_req = new Array();
			actions = new Array();
			action_lvl_req = new Array();
			class_skills = new Array();
		}
		
		public function add_class_skill(skill_id:int):void{
			class_skills[class_skills.length] = skill_id;
		}
		
		public function is_class_skill(skill_id:int):Boolean{
			var ret:Boolean = false;
			var i:int = 0;
			for(i;i<class_skills.length;i++){
				if(class_skills[i] == skill_id){
					ret = true;
					break;
				}
			}
			return ret;
		}
		
		public function add_attack(a:Action, lr:int = 0):void{
			if(a.get_cclass_origin() == name && a.get_cclass_level() == lr){
				return;
			}
			a.set_cclass_origin(name);
			a.set_cclass_level(lr);
			attacks[attacks.length] = a;
			attack_lvl_req[attack_lvl_req.length] = lr;
		}
		
		public function add_action(a:Action, lr:int = 0):void{
			if(a.get_cclass_origin() == name && a.get_cclass_level() == lr){
				return;
			}
			a.set_cclass_origin(name);
			a.set_cclass_level(lr);
			actions[actions.length] = a;
			action_lvl_req[action_lvl_req.length] = lr;
		}
		
		public function get_attack(i:int, c:Character):String{
			if (i>=0 && i<attacks.length && c.get_class_lvl(this) >= attack_lvl_req[i]) return attacks[i].get_name();
			return null;
		}
		
		public function get_attack_action(i:int, c:Character):Action{
			if (i>=0 && i<attacks.length && c.get_class_lvl(this) >= attack_lvl_req[i]) return attacks[i];
			return null;
		}
		
		public function set_bonus(stat_id:int, i:Number):void{
			bonus[stat_id] = i;
		}
		
		public function get_stat_cost(stat_id:int):uint{
			var ret:uint = 3
			if(bonus[stat_id] != null){
				if(bonus[stat_id] <= 2) ret = ret - bonus[stat_id];
			}
			return ret;
		}
		
		public function level_up(c:Character):String{
			var ret:String = "";//apply_bonuses(c);
			
			var i:int = 0;
			for(i;i<actions.length;i++){
				var j:int = 0;
				var found:Boolean = false;
				for(j;j<c.actions.length;j++){
					if(c.actions[j] == actions[i]){
						found = true;
						break
					}
				}
				if(!found && action_lvl_req[i] <= c.get_class_lvl(this)){
					c.add_action(actions[i]);
					if(actions[i].name != "")ret += "<\n> learns " + actions[i].name;
				}
			}
			
			return ret;
		}
		
		public function clone():Character_class{
			var cl:Character_class = new Character_class();
			
			var i:int = 0;
			for(i;i<attacks.length;i++){
				cl.add_attack(attacks[i],attack_lvl_req[i]);
			}
			
			cl.name = name;
			cl.bonus = bonus;
			cl.actions = actions;
			cl.action_lvl_req = action_lvl_req;
			cl.class_skills = class_skills;
			return cl;
		}

	}
	
}
