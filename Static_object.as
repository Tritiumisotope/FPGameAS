package {
	//This class is intended for static objects such as rooms and areas
	
	public class Static_object {

		public var id:int;
		public var descriptions:Array;
		public var description:String;
		
				
		public function Static_object(i:int = -1, descs:Array = null, desc:String = null):void {
			if(descs == null){
				descriptions = new Array();
			}else{
				descriptions = descs;
			}
			description = desc;
			id = i
		}
		
		public function set_description(d:String):void{
			description = d;
		}
		
		public function set_id(i:int):void{
			id = i;
		}
		
		public function get_description():String{
			var ret:String = description;
			var i:int = 0;
			for(i=0; i<descriptions.length;i++){
			 	ret = ret.replace("<s"+i+">","<a href=\"event:inspect,</id>," + String(i) +"\"><i>");
				ret = ret.replace("</s"+i+">","</i></a>");
			}
			
			ret = ret.replace("</id>",id);
			
			return ret;
		}
		
		public function get_sub_description(j:int, k:int):String{
			var ret:String = "";
			var i:int;
			
			if (j < descriptions.length && j >= 0){
				ret = descriptions[j];
			} else {
				return ret;
			}
			
			for(i=0; i<descriptions.length;i++){
			 	ret = ret.replace("<s"+i+">","<a href=\"event:inspect,</id>," + String(i) +"\"><i>");
				ret = ret.replace("</s"+i+">","</i></a>");
			}
			
			ret = ret.replace("</id>",id);
			
			return ret;
		}
		
		public function add_sub_descriptions(s:String):void{
			descriptions[descriptions.length] = s;
		}

		
	}
	
}
