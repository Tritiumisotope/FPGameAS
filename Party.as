package  {
	
	public class Party {

		public var members:Array;

		public function Party():void {
			// constructor code
			members = new Array();
		}
		
		public function get_best_at_skill(skill_id:int):Character{
			var ret_char:int = 0;
			var highest_val:int = 0;
			var i:int = 0;
			for(i;i<members.length;i++){
				if(members[i].get_skill_by_id(skill_id) > highest_val){
					highest_val = members[i].get_skill_by_id(skill_id);
					ret_char = i;
				}
			}
			
			return members[ret_char];
		}
		
		public function get_best_at_stat(stat_id:int):Character{
			var ret_char:int = 0;
			var highest_val:int = 0;
			var i:int = 0;
			for(i;i<members.length;i++){
				if(members[i].get_stat(stat_id) > highest_val){
					highest_val = members[i].get_stat(stat_id);
					ret_char = i;
				}
			}
			
			return members[ret_char];
		}
		
		public function advance_objectives(action_type:int, action_trigger:Array):void{
			var i:int = 0;
			for(i;i<members.length;i++){
				members[i].personality.advance_objectives(action_type,action_trigger,members[i]);
			}
		}
		
		public function get_party_character_output(sanitize_for:Character):String{
			var ret:String = "";
			var i:int = 0;
			for(i;i<members.length;i++){
				if(members[i] != null){
					ret += members[i].sanitize(members[i].get_challenge_output(), sanitize_for);
				}
			}
			
			return ret;
		}
		
		public function get_status(c:Character):String{
			var ret:String = "";
			var members_to_display:Array = new Array();
				
			var char_init:int = -1;
			
			var i:int = 0;
			for(i;i<members.length;i++){
				if(c.location == members[i].location){
					if(members[i].location.cm == null || members[i].location.cm.get_init(members[i]) < 0){
						members_to_display[members_to_display.length] = members[i];
					}else{
						if(members[i].location.cm.get_init(members[i]) > char_init)char_init = members[i].location.cm.get_init(members[i]);
					}
				}
			}
			if(members_to_display.length > 0){
				i = 0;
				for(i;i<members_to_display.length;i++){
					if(members_to_display[i] != null){
						ret += "<a href=\"event:look," + c.location.get_content_id(members_to_display[i]) +"\">" + members_to_display[i].personality.get_name(c, members_to_display[i]) + "</a>";
						if(i < members_to_display.length - 2){
							ret += ", ";
						}else if(i < members_to_display.length - 1){
							ret += ", and ";
						}
					}
				}
				
				var verb:String = "are";
				if(members_to_display.length == 1) verb = "is";
				
				if(char_init > -1){
					ret += " "+verb+" watching the fight";
				}else if(get_leader().get_stat(FPalace_helper.lust_id) >= get_leader().get_stat(FPalace_helper.max_lust_id)){
					ret += " "+verb+" lying in a pool of their own juices on the ground";
				}else if(get_leader().busy > 0){
					ret += " "+verb+" doing something here";
				}else{
					ret += " "+verb+" standing here";
				}				
			}
			
			return ret;
		}
		
		public function add_member(c:Character):void{
			//check to make sure not already a member
			var i:int = 0;
			for(i;i<members.length;i++){
				if(members[i] == c) return;
			}
			
			c.party = this;
			members[members.length] = c;
		}
		
		public function remove_member(c:Character):void{
			var i:int = 0;
			var found:Boolean = false;
			for(i;i<members.length;i++){
				if(members[i] == c){
					found = true;
				}
				if(found && i < members.length -1) members[i] = members[i+1];
			}
			
			if(found) members = members.slice(0,members.length - 1);
		}
		
		public function member_of(c:Character):Boolean{
			var i:int = 0;
			for(i;i<members.length;i++){
				if(members[i] == c) return true;
			}
			return false;
		}
		
		public function get_members():Array{
			return members;
		}
		
		public function get_leader():Character{
			return members[0] as Character;
		}
		
		public function get_aggressive(c:Character, c_party_check:int = 0):Boolean{
			var i:int = 0;
			var found:Boolean = false;
			
			for(i;i<members.length;i++){
				if(members[i].get_aggresive(c, 1, c_party_check)){
					found = true;
				}
			}
			
			return found;
		}
		
		public function in_combat():Boolean{
			var ret:Boolean = false;
			var i:int = 0;
			for(i;i<members.length;i++){
				if (members[i].location != null && members[i].location.cm != null && members[i].location.cm.active_combat() && members[i].location.cm.get_init(members[i]) > -1 && members[i].get_combat_status()){
					ret = true;
					break;
				}
			}
			
			return ret;
		}
		
		public function give_xp(i:uint):String{
			var s:String = "";
			
			var reward:uint = Math.round(i/members.length);
			
			var count:int = 0;
			for(count;count<members.length;count++){
				s += members[count].set_xp(reward);
			}
			
			return s;
			
		}
		
		public function clone():Party{
			var p:Party = new Party();
			
			var k:int = 0;
			
			for(k;k<members.length;k++){
				var clonech1:Character = new Character("");
				clonech1.clone(members[k]);
				
				//need to assign an actual name based on sex/race
				/*
				var char_name:String = "";
				
				if(clonech1.get_primary_race() != null){
					if(clonech1.sex.name == "Male"){
						char_name = clonech1.get_primary_race().get_random_male_name();
					}else{
						char_name = clonech1.get_primary_race().get_random_female_name();
					}
					
					char_name += " " + clonech1.get_primary_race().get_random_surname();
					
					clonech1.set_name(char_name);
				}else{
					clonech1.set_name(members[k].get_name());
				}
				*/
				clonech1.set_party(p);
				p.add_member(clonech1);
				
			}
			
			return p;
		}

	}
	
}
