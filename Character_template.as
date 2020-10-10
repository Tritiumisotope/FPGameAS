package  {
	
	public class Character_template {

		public var char_to_clone:Character;
		public var stats:Array;
		public var mins:Array;
		public var maxs:Array;

		public function Character_template():void{
			// constructor code
			char_to_clone = null;
			stats = new Array();
			mins = new Array();
			maxs = new Array();
		}
		
		public function set_char_to_clone(c:Character):void{
			char_to_clone = c;
		}
		
		public function set_stat_jiggle(stat_id:int, stat_min:Number, stat_max:Number):void{
			stats[stats.length] = stat_id;
			mins[mins.length] = stat_min;
			maxs[maxs.length] = stat_max;
		}
		
		public function gen_char(level_adjust:int = 0, r:Room = null):Character{
			var ret:Character = new Character();
			ret.clone(char_to_clone);
			var i:int = 0;
			if(r != null){
				for(i;i<ret.personality.objectives.length;i++){
					var j:int = 0;
					for(j;j<ret.personality.objectives[i].objectives.length;j++){
						if(ret.personality.objectives[i].objective_actions[j] == Quest.area_action && ret.personality.objectives[i].objective_targets[j] == null){
							ret.personality.objectives[i].objective_targets[j] = [r.area];
						}else if(ret.personality.objectives[i].objective_actions[j] == Quest.room_action && ret.personality.objectives[i].objective_targets[j] == null){
							ret.personality.objectives[i].objective_targets[j] = [r];
						}else if(ret.personality.objectives[i].objective_actions[j] == Quest.wait_action && ret.personality.objectives[i].objective_targets[j] == null){
							ret.personality.objectives[i].objective_targets[j] = [r];
						}
					}
				}
			}
			
			if(ret.name == ""){
				var char_name:String = "";
				if(ret.get_primary_race() != null){
					if(ret.sex.get_noun() == "his"){
						char_name = ret.get_primary_race().get_random_male_name();
					}else{
						char_name = ret.get_primary_race().get_random_female_name();
					}
					
					char_name += " " + ret.get_primary_race().get_random_surname();
				}else{
					char_name = char_to_clone.get_name();
				}
				ret.set_name(ret.set_surname(char_name,true));
			}
			
			i = 0;
			for(i;i<stats.length;i++){
				var curr_stat_value:Number = ret.get_stat(stats[i],0,0,-1,false);
				if(curr_stat_value < 0){
					trace("(Character_template.gen_char)Attempting to adjust a stat that either doesn't exist, or is at -1. Stat id:" + stats[i] + ". Character name: " + char_name);
				}else{
					var rand:Number = curr_stat_value;
					if(curr_stat_value > maxs[i] || curr_stat_value < mins[i]){
						//mid shoulb be between min and max is average...
						rand = Math.random()*(maxs[i] - mins[i]) + mins[i];
					}else{
						//current value is average...
						rand = Math.random();
						if(rand > 0.5){
							rand = ((rand-0.5)*2)*(maxs[i] - curr_stat_value) + curr_stat_value;
						}else{
							rand = (rand*2)*(curr_stat_value - mins[i]) + mins[i];
						}
					}
					if(curr_stat_value > 0){
						ret.apply_affect_by_id(stats[i],rand - curr_stat_value,0,null, Body.prorate_change_total);
					}else{
						ret.apply_affect_by_id(stats[i],rand - curr_stat_value,0,null, Body.change_stats_total);
					}
				}				
			}
			
			if(level_adjust > 0){
				var skill_list:Array = new Array();
				skill_list = skill_list.concat(ret.get_current_class().class_skills);
				skill_list = skill_list.concat(ret.skills.skill_ids);
				i = 0;
				for(i;i<level_adjust;i++){
					ret.set_xp(ret.nxt_lvl_xp - ret.xp);
					//spend xp to upgrade skills... should get trained/class skills, and spend xp to increase whatever is cheapest until it's all spent
					var xp_to_spend:Boolean = true;
					var skill_costs:Array = new Array();
					while(xp_to_spend){
						xp_to_spend = false;
						var lowest_cost_index:int = 0;
						var skill_count:int = 0;
						for(skill_count;skill_count<skill_list.length;skill_count++){
							skill_costs[skill_count] = ret.skills.get_skill_cost(ret,skill_list[skill_count],1);
							if(skill_costs[skill_count] < skill_costs[lowest_cost_index])lowest_cost_index = skill_count;
							if(skill_costs[skill_count] <= ret.xp) xp_to_spend = true;
						}
						if(xp_to_spend)ret.increase_skill_by_id(skill_list[lowest_cost_index]);
					}
					
					
				}				
			}else if(level_adjust < 0){
				trace("(Character_template.gen_char)Should be lowering an npcs level. Doing nothing.");
			}
			
			if(ret.stat_points > 0){
				xp_to_spend = true;
				skill_list = new Array(FPalace_helper.str_id,FPalace_helper.dex_id,FPalace_helper.con_id,FPalace_helper.sex_appeal_id,FPalace_helper.will_id,FPalace_helper.wis_id,FPalace_helper.int_id,FPalace_helper.cha_id)
				skill_costs = new Array();					
				while(xp_to_spend){
					xp_to_spend = false;
					lowest_cost_index = 0;
					skill_count = 0;
					for(skill_count;skill_count<skill_list.length;skill_count++){
						skill_costs[skill_count] = ret.get_current_class().get_stat_cost(skill_list[skill_count]);
						if(skill_costs[skill_count] < skill_costs[lowest_cost_index])lowest_cost_index = skill_count;
						if(skill_costs[skill_count] <= ret.stat_points) xp_to_spend = true;
					}
					if(xp_to_spend){
						ret.apply_affect_by_id(skill_list[lowest_cost_index],1,0,null, Body.change_stats_total);
						ret.stat_points -= ret.get_current_class().get_stat_cost(skill_list[lowest_cost_index]);
					}
				}
			}
			
			if(!ret.body.alive(ret))trace("(Character_template.gen_char) Just made a dead character"); 
			return ret;
		}
		
		public function clone():Character_template{
			var ret:Character_template = new Character_template();
			var temp_char:Character = new Character();
			temp_char.clone(this.char_to_clone);
			ret.set_char_to_clone(temp_char);
			var i:int = 0;
			for(i;i<stats.length;i++){
				ret.set_stat_jiggle(stats[i],mins[i],maxs[i]);			
			}
			
			return ret;
		}
	}	
}
