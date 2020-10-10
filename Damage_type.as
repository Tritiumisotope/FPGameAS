package  {
	
	public class Damage_type {

		public var type_id:int;
		public var type_name:String;
		
		public function Damage_type():void {
			// constructor code
			type_id = -1;
			type_name = "";
		}
		
		public function set_type_id(i:int):void{
			type_id = i;
		}
		
		public function set_type_name(s:String):void{
			type_name = s;
		}
		
		public function get_name():String{
			return type_name;
		}
		
		public function get_id():int{
			return type_id;
		}

	}
	
}
