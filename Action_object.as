package  {
	
	public class Action_object extends Static_object{
		
		public var room_actions:Array;
		public var max_action_times:Array;
		public var curr_action_times:Array;
		
		public function Action_object():void{
			room_actions = new Array();
			max_action_times = new Array();
			curr_action_times = new Array();
		}
		
		public function add_action(a:Action, max_times:int = -1):void{
			room_actions[room_actions.length] = a;
			max_action_times[max_action_times.length] = max_times;
			curr_action_times[curr_action_times.length] = 0;
		}
		
		public function get_action(action_id:int, location:Room):Action{
			curr_action_times[action_id]++;
			if(curr_action_times[action_id] >= max_action_times[action_id]){
				location.remove_static_contents(id);
			}
			return room_actions[action_id];
		}
		
		override public function get_description():String{
			var ret:String = super.get_description();
			
			var count:int = 0;
			for(count;count<room_actions.length;count++){
				ret = ret.replace("<a"+count+">","<a href=\"event:action,"+(-2-id)+"," + String(count) +"\"><i>"+ room_actions[count].get_name() +"</i></a>"); 
			}
			
			return ret;
		}
		
		override public function get_sub_description(i:int, my_room_id:int):String{
			var s:String = "";
			if (i < descriptions.length && i >= 0) s += descriptions[i]+ "\n";
			
			var count:int = 0;
			for(count;count<room_actions.length;count++){
				s = s.replace("<a"+count+">","<a href=\"event:action,"+(-2-id)+"," + String(count) +"\"><i>"+ room_actions[count].get_name() +"</i></a>"); 
			}
			
			return s;
		}
		
		public function clone(c:Action_object):void{
			this.description = c.description;
			this.descriptions = c.descriptions;
			this.room_actions = c.room_actions;
			this.max_action_times = c.max_action_times;
			this.curr_action_times = c.curr_action_times;
		}

	}
	
}
