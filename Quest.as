package  {
	
	public class Quest {
		
		public static const no_action:int = -1;
		public static const talk_action:int = 1;
		public static const kill_action:int = 2;
		public static const incapacitate_action:int = 16;
		public static const status_remove_action:int = 3;
		public static const status_add_action:int = 4;
		public static const skill_action:int = 5;
		public static const sex_action:int = 6;
		public static const party_action:int = 7;
		public static const part_action:int = 8;
		public static const equip_action:int = 9;
		public static const unequip_action:int = 10;
		public static const hold_action:int = 11;
		public static const unhold_action:int = 12;
		public static const pick_up_action:int = 13;
		public static const drop_action:int = 14;
		public static const class_action:int = 15;	
		public static const area_action:int = 17;
		public static const room_action:int = 18;
		public static const wait_action:int = 19;
		
		public var name:String;
		public var objectives:Array;
		public var objective_actions:Array;
		public var objective_targets:Array;
		public var topics:Array;
		public var topics_objective:Array;
		public var end_step:int;
		public var end_rewards:Array;
		public var next_objective:Array;
		public var objective_timer:Array;

		public function Quest() {
			// constructor code
			name = "Quest";			
			objectives = new Array;
			objective_actions = new Array;
			objective_targets = new Array;
			topics = new Array; 
			topics_objective = new Array;
			end_step = -1;
			end_rewards = new Array;
			next_objective = new Array();
			objective_timer = new Array();
		}
		
		public function set_name(s:String):void{
			name = s;
		}
		
		public function set_end_step(step_num:int):void{
			end_step = step_num;
		}
		
		public function add_end_reward(reward:Array):void{
			end_rewards = end_rewards.concat(reward);
		}
		
		public function end_quest(c:Character):String{
			var ret:String = "";
			var i:int = 0;
			for(i;i<end_rewards.length;i++){
				if(end_rewards[i] is int){
					ret += c.set_xp(end_rewards[i]);
				}else if(end_rewards[i] is Item){
					c.add_to_possessions(end_rewards[i]);
				}else{
					trace("(Quest.end_quest)Should be rewarding character for ending the quest, but got " + end_rewards[i] + " and don't know what to do with it");
				}
			}
			return ret;
		}
		
		public function new_objective(s:String, action_type:int, action_target:Array, go_to_objective:int = -1, ticks_to_complete:int = -1):void{
			objectives[objectives.length] = s;
			objective_actions[objective_actions.length] = action_type;
			objective_targets[objective_targets.length] = action_target;
			next_objective[next_objective.length] = go_to_objective;
			objective_timer[objective_timer.length] = ticks_to_complete;
		}
		
		public function get_objectives(c:Character):String{
			var ret:String = name+":\n";
			
			var temp:Array = c.personality.get_obj_steps(this);
			if(temp != null){
				var i:int = 0;
				for(i;i<temp.length;i++){
					if(i >= temp.length -1){
						ret += "\t" + objectives[temp[i]] + "\n";
					}else{
						ret += "✔\t" + objectives[temp[i]] + "\n";
					}
				}
			}else{
				ret += "\t" + objectives[c.personality.get_obj_step(this)] + "\n";
			}
			return ret;
		}
		
		public function add_conversation_topic(ct:Conversation_topic, obj_num:int):void{
			topics[topics.length] = ct;
			topics_objective[topics_objective.length] = obj_num;
		}
		
		public function get_conversation_topics(curr_obj_num:int):Array{
			var ret:Array = new Array();
			var i:int = 0;
			for(i;i<topics.length;i++){
				if(topics_objective[i] == curr_obj_num){
					ret = ret.concat(topics[i]);
				}
			}
			
			return ret;
		}
		
		public function get_target_room(curr_obj_num:int):Room{
			var target_room:Room = null;
			
			if(objective_actions[curr_obj_num] == Quest.area_action){
				//target_room
			}else if(objective_actions[curr_obj_num] == Quest.room_action){
				target_room = objective_targets[curr_obj_num][0];
			}else if(objective_actions[curr_obj_num] == Quest.wait_action){
				target_room = objective_targets[curr_obj_num][0];
			}
			
			return target_room;
		}
		
		public function get_target_char(curr_obj_num:int):Character{
			var target_char:Character = null;
			
			if(objective_actions[curr_obj_num] == Quest.talk_action){
				//target_char
			}else if(objective_actions[curr_obj_num] == Quest.kill_action){
				target_char = objective_targets[curr_obj_num][0];
			}else if(objective_actions[curr_obj_num] == Quest.incapacitate_action){
				target_char = objective_targets[curr_obj_num][0];
			}
			
			return target_char;
		}
		
		public function get_target_action(curr_obj_num:int):Action{
			var target_action:Action = null;
			/*
			if(objective_actions[curr_obj_num] == Quest.status_remove_action){
				target_action
			}else if(objective_actions[curr_obj_num] == Quest.status_add_action){
				target_action
			}else if(objective_actions[curr_obj_num] == Quest.sex_action){
				target_action
			}else if(objective_actions[curr_obj_num] == Quest.party_action){
				target_action
			}else if(objective_actions[curr_obj_num] == Quest.part_action){
				target_action
			}else if(objective_actions[curr_obj_num] == Quest.class_action){
				target_action
			}else if(objective_actions[curr_obj_num] == Quest.talk_action){
				target_action
			}else if(objective_actions[curr_obj_num] == Quest.kill_action){
				target_action
			}else if(objective_actions[curr_obj_num] == Quest.incapacitate_action){
				target_action
			}
			*/
			return target_action;
		}
		
		public function get_target_item(curr_obj_num:int):Item{
			var target_item:Item = null;
			/*
			if(objective_actions[curr_obj_num] == Quest.equip_action){
				target_item
			}else if(objective_actions[curr_obj_num] == Quest.unequip_action){
				target_item
			}else if(objective_actions[curr_obj_num] == Quest.hold_action){
				target_item
			}else if(objective_actions[curr_obj_num] == Quest.unhold_action){
				target_item
			}else if(objective_actions[curr_obj_num] == Quest.pick_up_action){
				target_item
			}else if(objective_actions[curr_obj_num] == Quest.drop_action){
				target_item
			}
			*/
			return target_item;
		}
		
		public function get_target_command(curr_obj_num:int):String{
			var target_command:String = null;
			
			if(objective_actions[curr_obj_num] == Quest.skill_action){
				target_command = "show_skills";
			}else if(objective_actions[curr_obj_num] == Quest.equip_action){
				target_command = "equip";
			}else if(objective_actions[curr_obj_num] == Quest.unequip_action){
				target_command = "unequip";
			}else if(objective_actions[curr_obj_num] == Quest.hold_action){
				target_command = "hold";
			}else if(objective_actions[curr_obj_num] == Quest.unhold_action){
				target_command = "unhold";
			}else if(objective_actions[curr_obj_num] == Quest.pick_up_action){
				target_command = "loot";//"pick_up"
			}else if(objective_actions[curr_obj_num] == Quest.drop_action){
				target_command = "use_item";
			}else if(objective_actions[curr_obj_num] == Quest.wait_action){
				target_command = "wait";
			}
			return target_command;
		}

	}
	
}
