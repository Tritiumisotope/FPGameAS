package{
	
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.utils.getDefinitionByName;
	import flash.net.registerClassAlias;
	
	
	public class Preloader extends MovieClip {
		
		public var bar_mc:MovieClip;
		
		public function Preloader():void {
			if(bar_mc != null){
				bar_mc.scaleX = 0;
			}else{
				bar_mc = new MovieClip();
				bar_mc.graphics.beginFill(0x33FF00);
				bar_mc.graphics.drawRect(0,275, 800, 50);
				bar_mc.graphics.endFill();
				this.addChild(bar_mc);
			}
			
			stop();
			this.addEventListener(Event.ENTER_FRAME, loading);
		}
		
		private function loading(e:Event):void{
			var total:Number = this.stage.loaderInfo.bytesTotal;
			var loaded:Number = this.stage.loaderInfo.bytesLoaded;
			
			if(bar_mc != null && total > 0){
				bar_mc.width = (loaded/total)*800;
			}
			if ((total == loaded || total <= 0) && bar_mc != null){
				this.removeChild(bar_mc);
				bar_mc = null;
				nextFrame();
				init();
				this.removeEventListener(Event.ENTER_FRAME, loading);
			}
		}
		
		private function init():void{
			var m:MovieClip;
			var classdef:Class = getDefinitionByName("Main") as Class;
			m = new classdef();
			this.addChild(m);
		}
	}
	
}
