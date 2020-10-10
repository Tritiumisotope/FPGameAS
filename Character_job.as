package  {
	
	public class Character_job {
		
		public var name:String;
		
		public var topics:Array;
		public var objectives:Array;
		public var actions:Array;
		
		public function Character_job() {
			// constructor code
			name = "";
			topics = new Array();
			objectives = new Array();
			actions = new Array();
		}
		
		public function set_name(n:String):void{
			name = n;
		}
		
		public function get_name():String{
			return name;
		}
		
		public function new_topic(ct:Conversation_topic):void{
			topics[topics.length] = ct;
		}
		
		public function new_objective(q:Quest):void{
			objectives[objectives.length] = q;
		}
		
		public function new_action(a:Action):void{
			actions[actions.length] = a;
		}
		
		public function get_topics():Array{
			return topics;
		}
		
		public function get_actions(c:Character):Array{
			return actions;
		}

	}
	
}
