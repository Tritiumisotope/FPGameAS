package {
	
	public class Container extends Static_object{

		public var contents:Array;
		public var contents_table:Array;
		public var name:String;
		public var open_or_close:Boolean;
		public var always_open:Boolean;
		public var bury:String;
		public var bury_text:String;
		public var bury_action:Action;
		
		public function Container():void {
			init();
		}
		
		public function init():void{
			contents = new Array();
			contents_table = new Array();
			open_or_close = false;
			always_open = false;
			bury = "";
			bury_action = null;
		}
		
		public function set_name(n:String):void{
			name = n;			
		}
		
		public function set_bury(s:String = "", b:String = "", ba:Action = null):void{
			if(s == ""){
				bury = "Bury";
				bury_text = "buries";
			}else{
				bury = s;
				bury_text = b;
			}
			bury_action = ba;
		}
		
		public function add_content(item:Item):void{
			contents[contents.length] = item;
		}
		
		public function add_to_loot_table(item:Item, item_probability:Number):void{
			contents_table[contents_table.length] = item;
			contents_table[contents_table.length] = item_probability;
		}
		
		public function get_content():String{
			var output:String;
			var i:int;
			output = "";
			for(i=0;i<contents.length;i++){
				output += "<a href=\"event:loot,"+id+","+i+"\">" + contents[i].get_name() + "</a>";
				if(i<contents.length-1) output += ", ";
			}
			if(contents.length > 1){
				output += "\n<font color='#0000FF'><a href=\"event:loot,"+id+",-1\">Get all</a></font>";
			}
			
			return output;
		}
		
		public function open():String{
			open_or_close = !open_or_close;
			
			return "You " + (open_or_close?"open ":"close ") + "the <a href=\"event:inspect,"+id+",0\">" + name + "</a>";
		}
		
		public function item_loss(k:int):Item{
			if( 0 <= k && k < contents.length){
				if (contents[k] is Item){
					var item:Item = contents[k];
					remove_content(contents[k]);
					return item;
				}
			}
			return null;
		}
		
		public function remove_content(o:Dynamic_object):void{
			var i:int;
			var found:Boolean;
			found = false;
			for (i=0;i<contents.length;i++){
				if(contents[i]==o) found = true;
				if(found && i<contents.length-1){
					contents[i] = contents[i+1];
				}
			}
			if(found) contents.length = contents.length - 1;
		}
		
		override public function get_sub_description(i:int, k:int):String{
			var s:String;
			s="";
			if (i < descriptions.length && i >= 0) s += descriptions[i]+ "\n";
			if (i == 0 && !always_open) s += "The " + name + " is <a href=\"event:open,"+k+"\">" + (open_or_close?"open.":"closed.") + "</a>\n";
			if (open_or_close || always_open){
				if (contents.length > 0 ){
					s += "The " + name + " contains: " + get_content();
				}else{
					s += "The " + name + " is empty."
				}				
			}
			
			if(bury != ""){
				s += "\n\n<font color='#0000FF'><a href=\"event:loot,"+k+",-2\">"+bury+"</a></font>"
			}
			
			return s;
		}
		
		public function set_always_open():void{
			always_open = !always_open;
		}
		
		public function clone(c:Container, floor_modifier:int = 0):void{
			this.name = c.name;
			this.description = c.description;
			this.descriptions = c.descriptions;
			this.always_open = c.always_open;
			this.bury = c.bury;
			this.bury_text = c.bury_text;
			this.bury_action = c.bury_action;
			var item:Item;
			var i:int = 0;
			for (i;i<c.contents.length;i++){
				item = c.contents[i].clone();
				this.add_content(item);
			}
			contents_table = c.contents_table;
			i = 0;
			for(i;i<contents_table.length/2;i+=2){
				if(Math.random() <= contents_table[i+1]){
					item = contents_table[i].clone();
					if(floor_modifier != 0){
						var count:int = 0;
						for(count;count<item.effects.length;count++){
							if(item.effects[count] != null){
								item.effects[count]+=floor_modifier;
							}
						}
					}
					this.add_content(item);
				}
			}
		}
	}
	
}
