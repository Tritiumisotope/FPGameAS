package  {
	
	public class Relationship {
		public static const stat_change:int = 0;
		public static const initial_reaction_change:int = 1;
		public static const aggressive_change:int = 2;
		
		public static const known_type:int = 0;
		public static const sibling_type:int = 1;
		public static const father_type:int = 2;
		public static const mother_type:int = 3;
		public static const child_type:int = 4;
		public static const married_type:int = 5;
		
		public var relationship_with:Character;
		public var positive:Number;
		public var negative:Number;
		public var introduced:Boolean;
		public var change_reasons:Array;
		public var relationship_type:int;		

		public function Relationship(c:Character = null):void{
			// constructor code
			relationship_with = c;
			introduced = false;
			positive = 0;
			negative = 0;
			change_reasons = new Array();
			relationship_type = known_type;
		}
		
		public function get_introduced():Boolean{
			return introduced;
		}
		
		public function set_introduced():void{
			introduced = true;
		}
		
		public function change_type(new_type:int):void{
			relationship_type = new_type;
		}
		
		public function apply_change(k:Number,change_id:int):void{
			if(k != 0){
				if(k > 0){
					if(positive > 0 && k-(positive/2) > 0){
						k = Math.round(2*Math.log(k-(positive/2)));
					}else if(positive > 0){
						k = 1;
					}
					if(k<0) k = -k;
					
					//trace("(Relationship)positive change of " + k);
					positive += k;
				}else if(k<0){
					k = -k;
					if(negative > 0 && k-(negative/2) > 0){
						k = Math.round(2*Math.log(k-(negative/2)));
					}else if(negative > 0){
						k = 1;
					}
					if(k<0) k = -k;
					
					//trace("(Relationship)negative change of " + k);
					negative += k;
				}
				//trace("(Relationship)made change of " + k + " ending status:" + relationship_status());
			}
			change_reasons[change_reasons.length] = change_id;
		}
		
		public function change_to_aggressive():void{
			negative = positive + 1;
		}
		
		public function relationship_status():Number{
			return positive - negative;
		}

	}
	
}
