package  {
	
	public class Mob {
		
		public var ideals:Array;
		public var controlled_areas:Array;
		public var members:Array;
		//public var economy:Economy;
		public var allied_mobs:Array;
		public var enemy_mobs:Array;
		
		public var topics:Array;

		public function Mob():void{
			// constructor code
			ideals = new Array();
			controlled_areas = new Array();
			allied_mobs = new Array();
			enemy_mobs = new Array();
			topics = new Array();
			members = new Array();
		}
		
		public function add_member(c:Character):void{
			members[members.length] = c;
		}
		
		public function new_ideal(t:Trait):void{
			ideals[ideals.length] = t;
		}
		
		public function new_ally(m:Mob):void{
			allied_mobs[allied_mobs.length] = m;
		}
		
		public function new_enemy(m:Mob):void{
			enemy_mobs[enemy_mobs.length] = m;
		}
		
		public function new_topic(ct:Conversation_topic):void{
			topics[topics.length] = ct;
		}
		
		public function get_topics(c:Character):Array{
			
			return topics;
		}
		
		public function initialize_mob():void{
			var i:int = 0;
			for(i;i<members.length;i++){
				if(members[i].location == null){
					members = members.slice(0,i).concat(members.slice(i+1,members.length));
					i--;
				}else{
					var j:int = i+1;
					for(j;j<members.length;j++){
						if(members[j].location == null){
							members = members.slice(0,j).concat(members.slice(j+1,members.length));
							j--;
						}else if(Math.random() >= 0.5){
							members[i].personality.new_relationship(members[j], members[i], Relationship.initial_reaction_change, Math.random()*20);
							members[j].personality.new_relationship(members[i], members[j], Relationship.initial_reaction_change, Math.random()*20);
						}
					}
				}
			}
		}
		
	}
	
}
