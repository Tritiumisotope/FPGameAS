package  {
	
	public class Stat {
		
		public static const status_confired_ok:int = 1;//is all good
		public static const status_confired_incapacitated:int = 0;//incapacitates
		public static const status_confired_dead:int = -1;//kills part
		
		public var id:int;
		public var name:String;
		public var stat_description:Array;
		public var stat_description_requirement:Array;
		public var short_description:Array;
		public var short_description_requirement:Array;
		public var stat_desc_ttl_or_indiv:Boolean;
		public var stat_desc_ttl_part_limit:Array;
		public var stat_up:Array;
		public var stat_up_requirement:Array;
		public var stat_up_operators:Array;
		public var stat_up_products:Array;
		public var stat_down:Array;
		public var stat_down_requirement:Array;
		public var stat_down_operators:Array;
		public var stat_down_products:Array;
		public var age:Boolean;
		public var always_show:Boolean;
		public var rummage_inventory:Boolean;
		public var rummage_body:Boolean;
		public var alchemy_hundreds:Boolean;
		public var always_calc:Boolean;
		
		public var stat_value:Number;
		public var show_decimals:int;
		public var max_stat_id:int;
		public var min_stat_id:int;
		public var temp_stat_value:Number;
		public var stat_value_from_equip:Number;
		
		public var check_condition:Array;
		public var check_against:Array;
		public var status_outcome:Array; 
		public var check_combat:Array;
		public var incapac_text:Array;
		public var check_total:Array;
		
		public var stat_calculation:Array;
		
		public var stat_actions:Array;
				
		public function Stat(i:int = -1):void {
			age = false;
			if(i>=0)id = i;
			max_stat_id = -1;
			min_stat_id = -1;
			
			stat_description = new Array();
			stat_description_requirement = new Array();
			short_description  = new Array();
			short_description_requirement  = new Array();
			stat_up = new Array();
			stat_up_requirement = new Array();
			stat_up_operators = new Array();
			stat_up_products = new Array();
			stat_down = new Array();
			stat_down_requirement = new Array();
			stat_down_operators = new Array();
			stat_down_products = new Array();
			
			temp_stat_value = stat_value = stat_value_from_equip = 0;
			show_decimals = 2;
			stat_desc_ttl_or_indiv = false;
			always_show = false;
			
			check_condition = new Array();
			check_against = new Array();
			status_outcome = new Array();
			check_combat = new Array();
			incapac_text = new Array();
			check_total = new Array();
			stat_actions = new Array();
			
			stat_desc_ttl_part_limit = new Array();
			
			stat_calculation = null;
			
			rummage_inventory = false;
			rummage_body = false;
			alchemy_hundreds = false;
			always_calc = false;
			
			name = "";
		}
		
		public function set_always_calc():void{
			always_calc = !always_calc;
		}
		
		public function new_stat_action(a:Action):void{
			stat_actions[stat_actions.length] = a;
		}
		
		public function remove_stat_action(a:Action):void{
			var i:int = 0;
			for(i;i<stat_actions.length;i++){
				if(stat_actions[i] == a)stat_actions[i] = null;
			}
		}
		
		public function get_actions():Array{
			return stat_actions;
		}
		
		public function set_rummage_inv():void{
			rummage_inventory = !rummage_inventory;
		}
		
		public function set_rummage_body():void{
			rummage_body = !rummage_body;
		}
		
		public function set_alchemy_hundreds():void{
			alchemy_hundreds = !alchemy_hundreds;
		}
		
		public function set_show_decimal(i:int):void{
			if(i>=0)show_decimals = i;
		}
		
		public function set_name(s:String):void{
			name = s;
		}
		
		public function get_name():String{
			return name;
		}
		
		public function add_combat_status_check(operator:String = ">=", versus:int = -1, outcome:int = status_confired_ok, it:String = "", ct:Boolean = false):void{
			check_condition[check_condition.length] = operator;
			check_against[check_against.length] = versus;
			status_outcome[status_outcome.length] = outcome;
			check_combat[check_combat.length] = true;
			incapac_text[incapac_text.length] = it;
			check_total[check_total.length] = ct;
		}
		
		public function add_overworld_status_check(operator:String = ">=", versus:int = -1, outcome:int = status_confired_ok, it:String = "", ct:Boolean = false):void{
			check_condition[check_condition.length] = operator;
			check_against[check_against.length] = versus;
			status_outcome[status_outcome.length] = outcome;
			check_combat[check_combat.length] = false;
			incapac_text[incapac_text.length] = it;
			check_total[check_total.length] = ct;
		}
		
		public function get_overworld_status(c:Character, bp:Body_part):String{
			var ret:String = "";
			var stat_out:int = check_overworld_status(c, bp);
			var i:int = 0;
			for(i;i<check_condition.length;i++){
				if(!check_combat[i] && status_outcome[i] == stat_out){
					ret = incapac_text[i];
					break;
				}
			}
			return ret;
		}
		
		public function get_combat_status(c:Character, bp:Body_part):String{
			var ret:String = "";
			var stat_out:int = check_combat_status(c, bp);
			var i:int = 0;
			for(i;i<check_condition.length;i++){
				if(check_combat[i] && status_outcome[i] == stat_out){
					ret = incapac_text[i];
					break;
				}
			}
			return ret;
		}
		
		public function check_overworld_status(c:Character, bp:Body_part):int{
			min_max_check(c, bp);
			var ret:int = 1;
			var i:int = 0;
			for(i;i<check_condition.length;i++){
				if(!check_combat[i]){
					var compare:Number = -1;
					var temp_stat_val:Number;
					if(check_total[i]){
						temp_stat_val = c.get_stat(id);
					}else{
						temp_stat_val = get_stat_value(c);
					}
					if(check_against[i] < 0){
						compare = -check_against[i] - 1;
					}else{
						if(bp != null && !check_total[i])compare = bp.get_stat(c, check_against[i]);
						if(compare < 0 || check_total[i]) compare = c.get_stat(check_against[i]);
					}
										
					if(check_condition[i] == ">"){
						if(temp_stat_val > compare && status_outcome[i] < ret)ret = status_outcome[i];
					}else if(check_condition[i] == ">="){
						if(temp_stat_val >= compare && status_outcome[i] < ret)ret = status_outcome[i];
					}else if(check_condition[i] == "="){
						if(temp_stat_val == compare && status_outcome[i] < ret)ret = status_outcome[i];
					}else if(check_condition[i] == "<="){
						if(temp_stat_val <= compare && status_outcome[i] < ret)ret = status_outcome[i];
					}else if(check_condition[i] == "<"){
						if(temp_stat_val < compare && status_outcome[i] < ret)ret = status_outcome[i];
					}
				}
			}
			return ret;
		}
		
		public function check_combat_status(c:Character, bp:Body_part):int{
			min_max_check(c, bp);
			var ret:int = 1;
			var i:int = 0;
			for(i;i<check_condition.length;i++){
				if(check_combat[i]){
					var compare:Number = -1;
					var temp_stat_val:Number = get_stat_value(c);
					if(check_total[i]) temp_stat_val = c.get_stat(id);
					if(check_against[i] < 0){
						compare = -check_against[i] - 1;
					}else{
						if(bp != null && !check_total[i])compare = bp.get_stat(c, check_against[i]);
						if(compare < 0 || check_total[i]) compare = c.get_stat(check_against[i]);
					}
					
					if(check_condition[i] == ">"){
						if(temp_stat_val > compare && status_outcome[i] < ret)ret = status_outcome[i];
					}else if(check_condition[i] == ">="){
						if(temp_stat_val >= compare && status_outcome[i] < ret)ret = status_outcome[i];
					}else if(check_condition[i] == "="){
						if(temp_stat_val == compare && status_outcome[i] < ret)ret = status_outcome[i];
					}else if(check_condition[i] == "<="){
						if(temp_stat_val <= compare && status_outcome[i] < ret)ret = status_outcome[i];
					}else if(check_condition[i] == "<"){
						if(temp_stat_val < compare && status_outcome[i] < ret)ret = status_outcome[i];
					}					
				}
			}
			
			return ret;
		}
		
		public function set_always_show():void{
			always_show = !always_show;
		}
		
		public function get_always_show():Boolean{
			return always_show;
		}
		
		public function set_age():void{
			age = !age;
		}
		
		public function set_stat_calculation(sc:Array):void{
			stat_calculation = sc;
		}
		
		public function set_stat_value(i:Number, k:int = 0):void{
			if(k == 0){
				stat_value = i;
				temp_stat_value = stat_value;
			}else{
				temp_stat_value = i;
			}
		}
		
		public function set_max(stat_id:int):void{
			max_stat_id = stat_id;
		}
		
		public function set_min(stat_id:int):void{
			min_stat_id = stat_id;
		}
		
		public function get_stat_value(c:Character, i:int = 1, add_equip:Boolean = true, skip_calc:Boolean = false):Number{
			var ret:Number = stat_value;
			if(i == 1)ret = temp_stat_value;
			if(add_equip)ret += stat_value_from_equip;
			
			if((always_calc ||!skip_calc) && stat_calculation != null && c != null){
				if(rummage_inventory)ret += c.get_inventory_weight();
				if(rummage_body)ret += c.get_equip_weight();
				
				var count:int = 0;
				var temp_calc:Array = new Array();
				for(count;count < stat_calculation.length;count++){
					if(temp_calc[count] == null){
						if(stat_calculation[count] is String){
							if(stat_calculation[count].indexOf("s") >= 0 || stat_calculation[count].indexOf("k") >= 0){
								if(stat_calculation[count].indexOf("s") >= 0){
									temp_calc[count] = c.get_stat(int(stat_calculation[count].substr(stat_calculation[count].indexOf("s") + 1, stat_calculation[count].length)));
								}else{
									temp_calc[count] = c.get_skill_by_id(int(stat_calculation[count].substr(stat_calculation[count].indexOf("k") + 1, stat_calculation[count].length)));
								}								
								
								if(temp_calc[count] < 0)temp_calc[count] = 0;
								var temp_count:int = count + 1;
								for(temp_count;temp_count< stat_calculation.length;temp_count++){
									if(stat_calculation[temp_count] == stat_calculation[count]){
										temp_calc[temp_count] = temp_calc[count];
									}
								}
							}else{
								temp_calc[count] = stat_calculation[count];
							}
						}else{
							temp_calc[count] = stat_calculation[count];
						}
					}
				}
				
				var char_stack:Array = new Array();
				var num_stack:Array = new Array();
				
				count = 0;
				for(count; count <= temp_calc.length; count ++){
					if(temp_calc[count] is String || temp_calc[count] == null){
						var temp_char:String = "";
						var num1:Number;
						var num2:Number;
						if(temp_calc[count] == "("){
							char_stack.push(temp_calc[count]);
						}else if(temp_calc[count] == ")" || temp_calc[count] == null){
							temp_char = char_stack.pop();
							if(temp_char != "("){
								char_stack.pop();
								num2 = num_stack.pop();
								num1 = num_stack.pop();
								if(temp_char == "*"){
									num_stack.push(num1*num2);
								}else if(temp_char == "/"){
									num_stack.push(num1/num2);
								}else if(temp_char == "+"){
									num_stack.push(num1+num2);
								}else if(temp_char == "-"){
									num_stack.push(num1-num2);
								}else{
									num_stack.push(num1);
									num_stack.push(num2);
								}
							}
						}else{
							temp_char = char_stack.pop();
							if(temp_char == "("){
								char_stack.push(temp_char);
								char_stack.push(temp_calc[count]);
							}else{
								char_stack.push(temp_calc[count]);
								num2 = num_stack.pop();
								num1 = num_stack.pop();
								if(temp_char == "*"){
									num_stack.push(num1*num2);
								}else if(temp_char == "/"){
									num_stack.push(num1/num2);
								}else if(temp_char == "+"){
									num_stack.push(num1+num2);
								}else if(temp_char == "-"){
									num_stack.push(num1-num2);
								}else{
									if(temp_char != null)num_stack.push(num1);
									num_stack.push(num2);
								}
							}
						}
					}else{
						num_stack.push(temp_calc[count]);
					}					
				}
				if(char_stack.length == 0 && num_stack.length == 1){
					ret += num_stack[0];
				}else{
					trace("(Stat)We got a stat calculation gone wrong here....\n calc array:" + stat_calculation + "\n temp_calc:" + temp_calc + "\n char_stack:" + char_stack + "\n num_stack:" + num_stack);
				}
				
			}
			return ret;
		}
		
		public function get_id():int{
			return id;
		}
		
		public function new_description(d:String, i:int = 0):void{
			stat_description[stat_description.length] = d;
			stat_description_requirement[stat_description_requirement.length] = i;
		}
		
		public function new_short_description(d:String, i:int = 0):void{
			short_description[short_description.length] = d;
			short_description_requirement[short_description_requirement.length] = i;
		}
		
		public function get_short_description(stat_val:Number):String{
			var ret:String = "";
			var max_good:int = -1;
			var i:int = 0;
			for(i;i<short_description.length;i++){
				if(short_description_requirement[i] <= stat_val && short_description_requirement[i] > max_good){
					max_good = short_description_requirement[i];
					ret = short_description[i];
				}
			}
			return ret;
		}
		
		public function new_increase_description(su:String, i:int = 0, op:String = "", pro:Number = 0):void{
			stat_up[stat_up.length] = su;
			stat_up_requirement[stat_up_requirement.length] = i;
			stat_up_operators[stat_down_operators.length] = op;
			stat_up_products[stat_down_products.length] = pro;
		}
	
		public function new_descrease_description(sd:String, i:int = 0, op:String = "", pro:Number = 0):void{
			stat_down[stat_down.length] = sd;
			stat_down_requirement[stat_down_requirement.length] = i;
			stat_down_operators[stat_down_operators.length] = op;
			stat_down_products[stat_down_products.length] = pro;
		}
		
		public function get_description(c:Character, current_value:Number = -1):String{
			var s:String = "";
			
			if(current_value == -1 && c != null) current_value = c.get_stat(id);			
			
			var i:int = 0;
			var req_met:Number = -99;
			for(i;i<stat_description.length;i++){
				if(current_value >= stat_description_requirement[i] && stat_description_requirement[i] >= req_met){
					if(stat_description[i] != s)s = stat_description[i];
					req_met = stat_description_requirement[i];
				}
			}
			
			s = s.replace("</" + id + ">",current_value.toFixed(show_decimals));
			s = s.replace("</sd" + id + ">",get_short_description(current_value));
			
			return s;
		}
		
		public function get_equip_change(change_amount:Number, c:Character):String{
			var ret:String = "";
			
			stat_value_from_equip += change_amount;
			
			var i:int = 0;
			if(change_amount > 0){
				for(i;i<stat_up.length;i++){
					if(stat_op(i,c, stat_up_requirement[i], stat_up_operators[i],stat_up_products[i])) ret = stat_up[i];
				}
			}else if(change_amount < 0){
				for(i;i<stat_down.length;i++){
					if(stat_op(i,c, stat_down_requirement[i], stat_down_operators[i],stat_down_products[i])) ret = stat_down[i];
				}
			}
			
			ret = ret.replace("</" + id + ">",get_stat_value(c).toFixed(show_decimals));			
			
			return ret;
		}
		
		
		//I'm not sure if this is displaying correctly... particularly for temp effects
		public function get_change_magnitude(change_amount:Number,c:Character,temp_flag:int, bp:Body_part = null):String{
			var s:String = "";
			var i:int = 0;
			set_stat_value(get_stat_value(null, temp_flag, false, true)+change_amount,temp_flag);
			min_max_check(c, bp);
			if(change_amount > 0){
				for(i;i<stat_up.length;i++){
					if(c!= null && stat_op(i,c, stat_up_requirement[i], stat_up_operators[i],stat_up_products[i])) s = stat_up[i];
				}
			}else if(change_amount < 0){
				for(i;i<stat_down.length;i++){
					if(c!= null && stat_op(i,c, stat_down_requirement[i], stat_down_operators[i],stat_down_products[i])) s = stat_down[i];
				}
			}
			
			s = s.replace("</" + id + ">",get_stat_value(c).toFixed(show_decimals));
			
			return s;			
		}
		
		private function stat_op(curr_effect_id:int, c:Character, comp_stat_id:int, op:String, pro:Number):Boolean{
			if(op == "/"){
				if(c.get_stat(id)/c.get_stat(comp_stat_id) >= pro) return true;
			}else if(op == ""){
				if(c.get_stat(id) >= comp_stat_id) return true;
			}
			
			return false;
		}
		
		public function reset_stat(c:Character, k:int = -1, bp:Body_part = null):void{
			min_max_check(c, bp);
			if(k == -1){
				temp_stat_value = stat_value;								
			}else{
				if(temp_stat_value > stat_value){
					temp_stat_value -= Math.min(k, temp_stat_value - stat_value);
				}else if(temp_stat_value < stat_value){
					temp_stat_value += Math.min(k, stat_value - temp_stat_value);
				}
			}
		}
		
		public function set_stat_description_show(parts_to_check:Array = null):void{
			stat_desc_ttl_or_indiv = !stat_desc_ttl_or_indiv;
			if(parts_to_check != null)stat_desc_ttl_part_limit = parts_to_check;
		}
		
		public function at_max(c:Character, bp:Body_part = null):Boolean{
			var ret:Boolean = false;
			if(max_stat_id != -1){
				var max:Number;
				if(max_stat_id < 0){
					max = -max_stat_id - 2;
					if(get_stat_value(c,0,false,true) >= max) ret = true;
				}else if(bp == null){
					max = c.get_stat(max_stat_id);
					if(c.get_stat(id,0,0,-1,false) >= max) ret = true;
				}else{
					if(bp.get_stat(c, max_stat_id) > -1){
						max = bp.get_stat(c, max_stat_id);
						if(get_stat_value(c,0,false,true) >= max) ret = true;
					}else{
						return at_max(c);						
					}
				}
			}
			return ret;
		}
		
		public function at_min(c:Character, bp:Body_part = null):Boolean{
			var ret:Boolean = false;
			if(min_stat_id != -1){ 
				var min:Number;
				if(min_stat_id < 0){
					min = -min_stat_id - 2;
					if(get_stat_value(c,0,false,true) <= min) ret = true;
				}else if(bp == null){
					min = c.get_stat(min_stat_id);
					if(c.get_stat(id,0,0,-1,false) <= min) ret = true;
				}else{
					if(bp.get_stat(c, min_stat_id) > -1){
						min = bp.get_stat(c, min_stat_id);
						if(get_stat_value(c,0,false,true) <= min) ret = true;
					}else{
						return at_min(c);
					}
				}
			}
			return ret;
		}
		
		private function min_max_check(c:Character, bp:Body_part = null):void{
			var flag:Boolean = false;
			if(max_stat_id != -1){				
				var max:Number;
				if(max_stat_id < 0){
					max = -max_stat_id - 2;
					if(get_stat_value(c, 0,false,true) > max) flag = true;
				}else if(bp == null){
					max = c.get_stat(max_stat_id);
					if(c.get_stat(id, 0,0,-1,false) > max) flag = true;
				}else{
					if(bp.get_stat(c, max_stat_id) > -1){
						max = bp.get_stat(c, max_stat_id);
						if(get_stat_value(c, 0,false,true) > max) flag = true;
					}else{
						min_max_check(c);
						return;
					}
				}
				if(flag)set_stat_value(max, 0);
			}
			if(min_stat_id != -1){ 
				flag = false;
				var min:Number;
				if(min_stat_id < 0){
					min = -min_stat_id - 2;
					if(get_stat_value(c, 0,false,true) < min) flag = true;
				}else if(bp == null){
					min = c.get_stat(min_stat_id);
					if(c.get_stat(id, 0,0,-1,false) < min) flag = true;
				}else{
					if(bp.get_stat(c, min_stat_id) > -1){
						min = bp.get_stat(c, min_stat_id);
						if(get_stat_value(c, 0,false,true) < min) flag = true;
					}else{
						min_max_check(c);
						return;
					}
				}
				if(flag)set_stat_value(min, 0);				
			}
		}
		
		public function clone(s:Stat):void{
			id = s.id;
			stat_description = s.stat_description;
			stat_description_requirement = s.stat_description_requirement;
			short_description  = s.short_description;
			short_description_requirement  = s.short_description_requirement;
			stat_up = s.stat_up;
			stat_up_requirement = s.stat_up_requirement;
			stat_up_operators = s.stat_up_operators;
			stat_up_products = s.stat_up_products;
			stat_down = s.stat_down;
			stat_down_requirement = s.stat_down_requirement;
			stat_down_operators = s.stat_down_operators;
			stat_down_products = s.stat_down_products;
			age = s.age;
			max_stat_id = s.max_stat_id;
			min_stat_id = s.min_stat_id;
			stat_value = s.stat_value;
			stat_value_from_equip = s.stat_value_from_equip;
			temp_stat_value = stat_value;
			stat_desc_ttl_or_indiv = s.stat_desc_ttl_or_indiv;
			always_show = s.always_show;
			rummage_inventory = s.rummage_inventory;
			rummage_body = s.rummage_body;
			always_calc = s.always_calc;
			alchemy_hundreds = s.alchemy_hundreds;
			check_condition = s.check_condition;
			check_against = s.check_against;
			status_outcome = s.status_outcome;
			check_combat = s.check_combat;
			incapac_text = s.incapac_text;
			check_total = s.check_total;
			stat_calculation = s.stat_calculation;
			name = s.get_name();
			stat_actions = s.stat_actions;
			stat_desc_ttl_part_limit = s.stat_desc_ttl_part_limit;
		}

	}
	
}
