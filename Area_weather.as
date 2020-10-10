package  {
	
	public class Area_weather {

		public var daytime_status:Array;
		public var daytime_status_time:Array;
		
		public var min_tick:int;

		public function Area_weather():void{
			// constructor code
			daytime_status = new Array();
			daytime_status_time = new Array();
			min_tick = 1;
		}
		
		public function set_minimum_length(i:int):void{
			min_tick = i;
		}
		
		public function get_min_length():int{
			return min_tick;
		}
		
		public function new_daytime_status(stat:String, time:int):void{
			daytime_status[daytime_status.length] = stat;
			daytime_status_time[daytime_status_time.length] = time;
		}
		
		public function get_description(current_day_count:int):String{
			var ret:String = "";
			var i:int = 0;
			for(i;i<daytime_status.length;i++){
				if(current_day_count >= daytime_status_time[i])ret = daytime_status[i];
			}
			return ret;
		}

	}
	
}
