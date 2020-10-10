package {
	
	//this class is intended for dynamic objects such as flora, fauna, and items
	public class Dynamic_object {
		
		public var name:String;

		public function Dynamic_object(n:String = ""):void {
			name = n;
		}
		
		public function set_name(n:String):void{
			name = n;
		}
		
		public function get_name():String{
			return name;
		}
		
		public function appearance(i:int = 0, c:Character = null):String{
			return name;
		}
		
		public function replace_name(s:String, c:Character):String{
			var ret:String = s;
			var repl_name:String = name;
			if(c != null && this is Character){
				var temp_char:Character = this as Character;
				repl_name = temp_char.personality.get_name(c, temp_char);
			}
			
			while(ret.indexOf("</n>") >= 0){
				ret = ret.replace("</n>",repl_name);
			}
			
			return ret;
			
		}
	}
}
