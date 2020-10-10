package  {
	
	public class Body_part_state {

		public var mod:Number;
		public var ratio_stat:Array;
		public var static_ratio_stat:Array;
		public var operations:Array;
		public var comparisons:Array;
		public var mod_changes:Array;
		public var outputs:Array;
		public var descriptions:Array;
		public var stat_effected:Array;
		public var rat_stat_id:Array;
		public var mod_stat_id:Array;
		
		public function Body_part_state():void {
			// constructor code
			mod = 1.0;
			ratio_stat = new Array();
			static_ratio_stat = new Array();
			operations = new Array();
			comparisons = new Array();
			mod_changes = new Array();
			outputs = new Array();
			descriptions = new Array();
			stat_effected = new Array();
			rat_stat_id = new Array();
			mod_stat_id = new Array();
		}
		
		public function get_state_mod(i:int):Number{
			var k:int = 0;
			for (k;k< stat_effected.length;k++){
				
				if(i == stat_effected[k]){
					
					return mod;
				}
			}
			
			//if we didn't set a stat to effect, should effect all of them
			if (stat_effected[0] == null) return mod;
			
			return 1;
		}
		
		public function new_ratio_stat(i:int, static_val:Boolean = false):void{
			ratio_stat[ratio_stat.length] = i;
			static_ratio_stat[static_ratio_stat.length] = static_val;
		}
		
		public function new_comparison(op:String = ">=", rat:Number = 0, mo:Number = 1, out:String = "", desc:String = "", rat_is_stat_id:Boolean = false, mod_is_stat_id:Boolean = false):void{
			operations[operations.length] = op;
			comparisons[comparisons.length] = rat;
			mod_changes[mod_changes.length] = mo;
			outputs[outputs.length] = out;
			descriptions[descriptions.length] = desc;
			rat_stat_id[rat_stat_id.length] = rat_is_stat_id;
			mod_stat_id[mod_stat_id.length] = mod_is_stat_id;
		}
		
		public function set_stat_effected(i:int):void{
			
			stat_effected[stat_effected.length] = i;
			
		}
		
		public function get_current_state_description(c:Character, bp:Body_part):String{
			var s:String = "";
			var operator:Number = 1;
			if(static_ratio_stat[0]){
				operator = ratio_stat[0];
			}else{
				operator = bp.get_stat(c, ratio_stat[0]);
				if(operator < 0 && c != null)operator = c.get_stat(ratio_stat[0]);
			}
			var denominator:Number = 1
			if(static_ratio_stat[1]){
				denominator = ratio_stat[1];
			}else{
				denominator = bp.get_stat(c, ratio_stat[1]);
				if(denominator <= 0 && c != null)denominator = c.get_stat(ratio_stat[1]);
			}
			var i:int = 0;
			for (i;i<outputs.length;i++){
				var mod_use:Number = mod_changes[i];
				if(mod_stat_id[i] && c != null){
					mod_use = bp.get_stat(c, mod_changes[i]);
					if(mod_use < 0)mod_use = c.get_stat(mod_changes[i])
				}
				
				var compare_use:Number = comparisons[i];
				if(rat_stat_id[i] && c != null){
					compare_use = bp.get_stat(c, comparisons[i]);
					if(compare_use < 0)compare_use = c.get_stat(comparisons[i]);
				}
				if(c != null && mod_changes[i] == -1)mod_use = compare_use + operator/denominator;
				if (mod != mod_use)mod = mod_use;
				if (operations[i] == ">="){
					if(operator/denominator >= compare_use){
						return descriptions[i];
					}
				}else if(operations[i] == "<="){
					if(operator/denominator <= compare_use){
						return descriptions[i];
					}
				}else if(operations[i] == "=="){
					if(operator/denominator == compare_use){
						return descriptions[i];
					}
				}else if(operations[i] == "<"){
					if(operator/denominator < compare_use){
						return descriptions[i];
					}
				}else if(operations[i] == ">"){
					if(operator/denominator > compare_use){
						return descriptions[i];
					}
				}else if(operations[i] == "!="){
					if(operator/denominator != compare_use){
						return descriptions[i];
					}
				}else{
					//trace("(Body_part_state.get_current_state_description)Got " + operations[i] + " as an operation and don't know what to do. Just returning description.");
					return descriptions[i];
				}
			}
			
			return s;
		}
		
		public function get_state_description(c:Character, bp:Body_part):String{
				//we have seven things we need here...
				//the stats (2) - Done!
				
				//the operator (1) - tempted to leave this always as devisor
				
				//these all need to be grouped together... - this... may be done...
				//the comparison (1)
				//the comparitor (1)
				//the output(1)
				//the change to the modifier(may need to have multiple modifiers... one for each stat!)
				var operator:Number = 1
				if(static_ratio_stat[0]){
					operator = ratio_stat[0];
				}else{
					operator = bp.get_stat(c, ratio_stat[0]);
					if(operator < 0)operator = c.get_stat(ratio_stat[0]);
				}
				var denominator:Number = 1;
				if(static_ratio_stat[1]){
					denominator = ratio_stat[1];
				}else{
					denominator = bp.get_stat(c, ratio_stat[1]);
					if(denominator <= 0)denominator = c.get_stat(ratio_stat[1]); 
				}
				var i:int = 0;
				var s:String = "";
				for(i;i<operations.length;i++){
					var compare_use:Number = comparisons[i];
					if(rat_stat_id[i]){
						compare_use = bp.get_stat(c, comparisons[i]);
						if(compare_use < 0)compare_use = c.get_stat(comparisons[i]);
					}
					var mod_use:Number = mod_changes[i];
					if(mod_stat_id[i]){
						mod_use = bp.get_stat(c, mod_changes[i]);
						if(mod_use < 0)mod_use = c.get_stat(mod_changes[i]);
					}					
					
					if (operations[i] == ">="){
						if(operator/denominator >= compare_use){
							if(mod != mod_use){
								mod = mod_use;
								s += outputs[i];
							}
							return s;
						}
					}else if(operations[i] == "<="){
						if(operator/denominator <= compare_use){
							if(mod != mod_use){
								mod = mod_use;
								s += outputs[i];
							}
							return s;
						}
					}else if(operations[i] == "=="){
						if(operator/denominator == compare_use){
							if(mod != mod_use){
								mod = mod_use;
								s += outputs[i];
							}
							return s;
						}
					}else if(operations[i] == "<"){
						if(operator/denominator < compare_use){
							if(mod != mod_use){
								mod = mod_use;
								s += outputs[i];
							}
							return s;
						}
					}else if(operations[i] == ">"){
						if(operator/denominator > compare_use){
							if(mod != mod_use){
								mod = mod_use;
								s += outputs[i];
							}
							return s;
						}
					}else if(operations[i] == "!="){
						if(operator/denominator != compare_use){
							if(mod != mod_use){
								mod = mod_use;
								s += outputs[i];
							}
							return s;
						}
					}else if(operations[i] == "^"){
						if(mod < compare_use + operator/denominator){
							if(mod != compare_use + operator/denominator && mod != mod_use){
								if(mod_changes[i] == -1){
									mod = compare_use + operator/denominator;
								}else{
									mod = mod_use;
								}
								s += outputs[i];
							}
							return s;
						}
					}else if(operations[i] == "v"){
						if(mod > compare_use + operator/denominator && mod != mod_use){
							if(mod != compare_use + operator/denominator){
								if(mod_use == -1){
									mod = compare_use + operator/denominator;
								}else{
									mod = mod_use;
								}
								s += outputs[i];
							}
							return s;
						}
					}
				}
				return s;
		}
		
		public function clone(ps:Body_part_state):void{
			ratio_stat = ps.ratio_stat;
			static_ratio_stat = ps.static_ratio_stat;
			operations = ps.operations;
			comparisons = ps.comparisons;
			mod_changes = ps.mod_changes;
			outputs = ps.outputs;
			descriptions = ps.descriptions;
			stat_effected = ps.stat_effected;
			rat_stat_id = ps.rat_stat_id;
			mod_stat_id = ps.mod_stat_id;
		}

	}
	
}
