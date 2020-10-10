package  {
	
	public class Upgrade_Item extends Item{
		
		public static var upgrade_grip:int = 0;
		public static var upgrade_tip:int = 1;
		public static var upgrade_blade:int = 2;
		public static var upgrade_lining:int = 3;
		public static var upgrade_plates:int = 4;
		
		public var upgrade_type_id:int;		
		public var skill_id:Array;
		public var skill_bonus:Array;

		public function Upgrade_Item(n:String = "") {
			// constructor code
			set_name(n);
			upgrade_type_id = -1;
			skill_id = new Array();
			skill_bonus = new Array();
		}
		
		public function set_upgrade_type(id:int):void{
			upgrade_type_id = id;
		}
		
		public function set_skill_bonus(id:int, bonus:int):void{
			skill_id[skill_id.length] = id;
			skill_bonus[skill_bonus.length] = bonus;
		}
		
		override public function clone():Item{
			var i:Upgrade_Item = new Upgrade_Item();
			i.name = this.name;
			i.inventory_description = inventory_description;
			i.dropped_description = this.dropped_description;
			i.multi_dropped_desc = this.multi_dropped_desc;
			i.value = this.value;
			var count:int = 0;
			for(count;count<effects.length;count++){
				i.effects[count] = this.effects[count];
			}
			i.use_description = this.use_description;
			count = 0;
			for(count;count<change_effects.length;count++){
				i.change_effects[count] = this.change_effects[count];
			}
			i.propogate = this.propogate;
			i.ident_difficulty = this.ident_difficulty;
			i.weight = this.weight;
			count = 0;
			for(count;count < stat_action_add.length;count++){
				i.stat_action_add[count] = this.stat_action_add[count];
			}
			i.num_uses = this.num_uses;
			i.image_id = this.image_id;
			i.topic = this.topic;
			i.crafting_requirements = this.crafting_requirements;
			
			i.tick_count = 0;
			i.destroy_tick = this.destroy_tick;
			i.spawn_char = this.spawn_char;
			
			i.upgrade_type_id = this.upgrade_type_id;
			count = 0;
			for(count;count<skill_id.length;count++){
				i.skill_id[count] = this.skill_id[count];
			}
			count = 0;
			for(count;count<skill_bonus.length;count++){
				i.skill_bonus[count] = this.skill_bonus[count];
			}
			
			return i;
		}

	}
	
}
