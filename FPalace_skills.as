package  {
	
	import fl.controls.TextArea;
	
	public class FPalace_skills {
		
		public static const adventure_id:int = 0;
			public static const perception_id:int = 1;
				public static const map_sight_id:int = 2;
				public static const map_reading_id:int = 3;
				public static const map_making_id:int = 4;
			public static const initiative_id:int = 5;
			public static const fortitude_id:int = 46;
			public static const swimming_id:int = 6
		public static const fight_id:int = 7; 
			public static const melee_id:int = 8;
				public static const one_handed_id:int = 9;
				public static const two_handed_id:int = 10;
				public static const unarmed_id:int = 11;
					public static const striking_id:int = 12;
					public static const grappling_id:int = 13;
			public static const ranged_id:int = 14;
			public static const defence_id:int = 15;
				public static const dodging_id:int = 16;
				public static const blocking_id:int = 17;
				public static const parrying_id:int = 18;
				
			public static const toughness_id:int = 45;
		public static const covert_id:int = 20; 
			//stealth
			public static const theft_id:int = 21; 
		public static const magic_id:int = 22; 
			public static const mental_magic_id:int = 23;
			public static const physical_magic_id:int = 24;
			public static const spiritual_magic_id:int = 25;
			public static const concentration_id:int = 19;
			//artifacts
		public static const knowledge_id:int = 26;
			public static const weighing_id:int = 27;
			public static const valuing_id:int = 28;
		public static const crafting_id:int = 29;
			public static const alchemy_id:int = 30;
				public static const item_alchemy_effects_id:int = 31;
				//potency
				//purity
			public static const items_id:int = 32;
				public static const item_effects_id:int = 33;
			public static const sewing_id:int = 34;
			public static const smithing_id:int = 35;
				public static const weapon_effects_id:int = 36;
				public static const equipment_effects_id:int = 37;
		public static const people_id:int = 38;
			public static const conversing_id:int = 39;
				public static const flirting_id:int = 40;					
				public static const intimidating_id:int = 41;
			public static const sex_id:int = 42;
				public static const blowjobs_id:int = 43;
			//politics/culture			
			public static const trade_id:int = 44;
				
			
		/*Discworld Tree
=======SKILLS=======Level/Bonus================================================ 
adventuring.........    -    -         | | printing........   10   57 
| movement..........    -    -         | | sculpture.......   54  188 
| | swimming........   25  112         | music.............   10   57 
| | riding..........    -    -         | | instruments.....   10   57 
| | | horse.........   25  112         | | special.........   10   57 
| | | camel.........   25  112         | | theory..........   10   57 
| | climbing........    -    -         | | performance.....   10   57 
| | | tree..........   25  112         | points............   47  168 
| | | rock..........   25  112         faith...............    5   26 
| | | rope..........   25  112         | rituals...........    5   26 
| | sailing.........   25  112         | items.............    5   27 
| | following.......    -    -         | points............    5   27 
| | | pursuit.......   26  115         fighting............   24  110 
| | | evade.........   25  112         | melee.............   28  120 
| acrobatics........    -    -         | | dagger..........   16   78 
| | tumbling........   28  120         | | sword...........   54  162 
| | vaulting........   25  112         | | heavy-sword.....   15   75 
| | balancing.......   25  112         | | axe.............   15   75 
| evaluating........    -    -         | | mace............   15   75 
| | weapons.........   25  129         | | flail...........   15   75 
| | armour..........   25  129         | | polearm.........   81  183 
| perception........   26  125         | | misc............   15   75 
| direction.........   85  194         | range.............   10   49 
| health............  101  193         | | thrown..........   10   49 
| points............   31  132         | | bow.............   10   50 
covert..............   14   74         | | fired...........   10   49 
| stealth...........   15   77         | unarmed...........   18   90 
| | inside..........   15   77         | | striking........   21  102 
| | outside.........   15   77         | | grappling.......   15   75 
| | underwater......   15   77         | defence...........   25  112 
| hiding............   10   53         | | parrying........   20   99 
| | person..........   10   53         | | blocking........   10   50 
| | object..........   10   53         | | dodging.........   45  152 
| lockpick..........   10   50         | special...........   26  124 
| | doors...........   10   50         | | weapon..........   53  181 
| | safes...........   10   50         | | unarmed.........   15   83 
| | traps...........   10   50         | | tactics.........   26  129 
| manipulation......   24  113         | | mounted.........   10   50 
| | palming.........   20  103         | points............   41  152 
| | passing.........   16   82         magic...............  114  219 
| | sleight-of-hand.   41  156         | spells............  200  259 
| | stealing........   20  103         | | offensive.......  160  239 
| casing............   10   54         | | defensive.......  241  283 
| | person..........   10   54         | | misc............  101  203 
| | place...........   10   54         | | special.........  300  315 
| items.............   10   57         | methods...........   75  197 
| | poisons.........   10   57         | | elemental.......   70  190 
| | traps...........   10   57         | | | air...........   73  191 
| | weapons.........   10   57         | | | earth.........   50  174 
| points............   20  107         | | | fire..........  104  209 
crafts..............   17    -         | | | water.........   54  178 
| smithing..........   23  114         | | mental..........   82  216 
| | gold............   33  141         | | | animating.....  104  229 
| | silver..........   37  152         | | | channeling....  106  230 
| | black...........   21  109         | | | charming......   50  191 
| | | tools.........   20  107         | | | convoking.....  100  227 
| | | weapons.......   28  128         | | | cursing.......   50  191 
| | | armour........   17   91         | | physical........   83  192 
| | gem.............   14   74         | | | binding.......  104  203 
| | locks...........   14   74         | | | brewing.......   50  169 
| mining............   10   54         | | | chanting......   61  180 
| | gem.............   10   54         | | | dancing.......   57  177 
| | ore.............   10   54         | | | enchanting....  108  206 
| | mineral.........   10   54         | | | evoking.......  106  205 
| hunting...........   10   55         | | | healing.......   83  192 
| | tracking........   10   55         | | | scrying.......  100  201 
| | fishing.........   10   55         | | spiritual.......   65  187 
| | trapping........   10   55         | | | abjuring......   61  185 
| | foraging........   10   55         | | | banishing.....   54  178 
| carpentry.........   10   53         | | | conjuring.....   50  174 
| | furniture.......   10   53         | | | divining......  103  207 
| | coopering.......   10   53         | | | summoning.....   60  185 
| | turning.........   10   53         | items.............   65  185 
| | whittling.......   10   53         | | held............   62  184 
| pottery...........   10   53         | | | wand..........   50  172 
| | forming.........   10   53         | | | rod...........   50  172 
| | glazing.........   10   53         | | | staff.........  100  205 
| | staining........   10   53         | | | broom.........   50  172 
| | firing..........   10   53         | | worn............   50  172 
| materials.........   19  101         | | | amulet........   50  172 
| | tanning.........   14   74         | | | ring..........   50  172 
| | leatherwork.....   16   85         | | scroll..........  100  205 
| | weaving.........   14   74         | | talisman........   50  172 
| | spinning........   14   74         | points............  117  215 
| | needlework......   46  167         people..............    -    - 
| | dyeing..........   14   74         | trading...........    -    - 
| husbandry.........   10   56         | | buying..........   25  129 
| | plant...........   10   56         | | selling.........   25  129 
| | animal..........   10   56         | | valueing........    -    - 
| culinary..........   10   55         | | | gems..........   25  129 
| | cooking.........   10   55         | | | jewellery.....   25  129 
| | baking..........   10   55         | | | weapons.......   25  129 
| | butchering......   10   55         | | | armour........   25  129 
| | preserving......   10   55         | teaching..........    -    - 
| | brewing.........   10   55         | | covert..........   40  160 
| | distilling......   10   55         | | crafts..........   35  146 
| medicine..........   22  113         | | faith...........   25  121 
| | firstaid........   38  156         | | fighting........   35  137 
| | diagnosis.......   14   75         | | magic...........   35  149 
| | treatment.......   14   75         | | people..........  115  205 
| arts..............   23  123         | | adventuring.....   50  167 
| | design..........   47  180         | culture...........    -    - 
| | calligraphy.....   10   57         | | djelian.........    5   28 
| | drawing.........   10   57         | | agatean.........   10   56 
| | painting........   10   57         | points............  127  212 
*/
		
		private static var skill_list:Array = null;
		
		public function FPalace_skills() {
			// constructor code
		}
		
		public static function get_skill_list():Array{
			if (skill_list == null) skill_list = [skill_adventure(), skill_perception(), skill_map_sight(), skill_map_making(), skill_map_reading(), skill_initiative(), skill_fortitude(), skill_swimming(), skill_fight(), skill_melee(), skill_one_handed(), skill_two_handed(), skill_unarmed(), skill_striking(), skill_grappling(), skill_ranged(), skill_defence(), skill_dodging(), skill_parrying(), skill_blocking(), skill_toughness(), skill_covert(), skill_theft(), skill_magic(), skill_mental_magic(), skill_physical_magic(), skill_spiritual_magic(), skill_concentration(), skill_knowledge(), skill_valuing(), skill_weights(), skill_crafts(), skill_alchemy(), skill_item_alchemy_effects(), skill_items(), skill_item_effects(), skill_sewing(), skill_smithing(), skill_weapon_effects(), skill_equipment_effects(), skill_people(),skill_conversing(),skill_flirting(),skill_intimidating(),skill_sex(),skill_oral(),skill_trade()];
			return skill_list;
		}
		
		public static function get_skill_by_id(skill_id:int):Skill{
			var ret_skill:Skill = null;
			var skill_list:Array = get_skill_list();
			var i:int = 0;
			for(i;i<skill_list.length;i++){
				if(skill_id == skill_list[i].get_id()){
					ret_skill = skill_list[i];
					break;
				}
			}
			
			return ret_skill;
		}
		
		public static function get_skill_name(skill_id:int):String{
			var skill_array:Array = get_skill_list();
			var i:int = 0;
			for(i;i<skill_array.length;i++){
				if(skill_array[i].get_id() == skill_id) return skill_array[i].get_name();
			}
			
			return "";
		}
		
		private static function remove_skill_children(skill_id:int, child_array:Array):Array{
			var i:int = 0;
			while(child_array[i] != null){
				if(get_skill_parent(child_array[i]) == skill_id){
					child_array = remove_skill_children(child_array[i], child_array);
					child_array = child_array.slice(0,i).concat(child_array.slice(i+1, child_array.length));
				}else{
					i++;
				}
			}
			
			return child_array;
		}
		
		public static function get_total_skill_value(c:Character, skill_id:int = -1):int{
			var ret:int = 0;
			var skill_array:Array = get_skill_list();
			var all_skills:Array = new Array;
			var i:int = 0;
			for(i;i<skill_array.length;i++){
				all_skills[i] = skill_array[i].get_id();
			}
			if(skill_id == -1){
				i = 0;
				for(i;i<all_skills.length;i++){
					ret += c.get_skill_by_id(all_skills[i]);
				}
			}else{
				ret += c.get_skill_by_id(skill_id);
				i = 0;
				for(i;i<all_skills.length;i++){
					if(get_skill_parent(all_skills[i]) == skill_id)ret += get_total_skill_value(c, all_skills[i]);
				}
			}
			
			return ret;
		}
		
		public static function get_skill_tree(c:Character, ss:Skill_set, show_children_of:Array = null):String{
			var skill_array:Array = get_skill_list();
			
			var i:int = 0;
			var char_id:int = 0;
			if(c.party != null){
				for(i;i<c.party.members.length;i++){
					if(c.party.members[i] == c){
						char_id = i;
						break;
					}
				}
			}
			
			var ret:String = "";
			
			var all_skills:Array = new Array;
			i = 0;
			for(i;i<skill_array.length;i++){
				all_skills[i] = skill_array[i].get_id();
			}
			if(show_children_of != null){
				if(show_children_of.slice(3, show_children_of.length).toString() != all_skills.toString()){
					ret += "<a href=\"event:show_skills,"+char_id+",-1,"+ all_skills +"\">Show all</a>\n";
				}
			}else{
				ret += "<a href=\"event:show_skills,"+char_id+",-1,"+ all_skills +"\">Show all</a>\n";
			}
			
			var trained:Array = new Array();
			i = 0;
			for(i;i<ss.skill_ids.length;i++){
				trained[trained.length] = ss.skill_ids[i];
				var parent_id:int = get_skill_parent(ss.skill_ids[i]);
				while(parent_id >= 0){
					trained[trained.length] = parent_id;//probably going to get duplicates out of this
					parent_id = get_skill_parent(parent_id);
				}
			}
			if(trained != null && trained[0] != null){
				if(show_children_of != null){
					if(show_children_of.slice(3, show_children_of.length).toString() != trained.toString()){
					   ret += "<a href=\"event:show_skills,"+char_id+",-1,"+ trained +"\">Show trained</a>\n";
					}
				}else{
					ret += "<a href=\"event:show_skills,"+char_id+",-1,"+ trained +"\">Show trained</a>\n";
				}
			}
			
			if(c.get_current_class() != null){
				var primaries:Array = new Array();
				i = 0;
				for(i;i<c.get_current_class().class_skills.length;i++){
					primaries[primaries.length] = c.get_current_class().class_skills[i];
					parent_id = get_skill_parent(c.get_current_class().class_skills[i]);
					while(parent_id >= 0){
						primaries[primaries.length] = parent_id;//probably going to get duplicates out of this
						parent_id = get_skill_parent(parent_id);
					}
				}
				if(primaries != null && primaries[0] != null){
					if(show_children_of != null){
						if(show_children_of.slice(3, show_children_of.length).toString() != primaries.toString()){
							ret += "<a href=\"event:show_skills,"+char_id+",-1,"+ primaries +"\">Show primaries</a>\n";
						}
					}else{
						ret += "<a href=\"event:show_skills,"+char_id+",-1,"+ primaries +"\">Show primaries</a>\n";
					}
				}
			}
			ret += "\n<table><tr><u><tc>Skill</tc><tc>Ranks</tc><tc>Bonus</tc><tc>Cost</tc><tc>Current XP to spend: <font color='#00FF00'>"+c.get_xp()+"</font>/"+c.nxt_lvl_xp+"</tc></u></tr>";
			
			i = 0;
			for(i;i<skill_array.length;i++){
				var j:int = 0;
				var ranks:int = 0;
				for(j;j<ss.skill_ids.length;j++){
					if(skill_array[i].get_id() == ss.skill_ids[j]){
						ranks = ss.skill_ranks[j];
					}
				}
				
				var s_name:String = skill_array[i].get_name();
				var skill_val:int = 0;
				var cost:int = ss.get_skill_cost(c,skill_array[i].get_id(),1);
				skill_val = ss.get_skill_value(c, skill_array[i].get_id());
				var child_array:Array;
				if(show_children_of != null){
					child_array = show_children_of.slice(3, show_children_of.length);
				}else{
					child_array = new Array();
				}

				var remove_children:int = -1;
				var no_show:Boolean = true;
				var parent_check:int = 0;
				for(parent_check;parent_check<child_array.length;parent_check++){
					if(child_array[parent_check] == skill_array[i].get_parent()){
					   no_show = false;
					}
					if(child_array[parent_check] == skill_array[i].get_id()){
						remove_children = parent_check;
					}
				}
				
				if(no_show && skill_array[i].get_parent() != -1)continue;
				
				parent_id = skill_array[i].get_id();
				while(get_skill_parent(parent_id) != -1){
					s_name = "~" + s_name;
					parent_id = get_skill_parent(parent_id);
				}
				
				var rc:Boolean = false;
				
				if(remove_children >= 0){
					child_array = remove_skill_children(child_array[remove_children], child_array);
					child_array = child_array.slice(0,remove_children).concat(child_array.slice(remove_children+1, child_array.length));
					rc = true;
				}else{
					child_array[child_array.length] = skill_array[i].get_id();
				}
				
				if(child_array.length > 0){
					if(rc){
						if(has_children(skill_array[i].get_id())){
							s_name = "<tr><a href=\"event:show_skills,"+char_id+",-1,"+ child_array +"\"><tc>" + s_name + "[-]</tc></a>";
						}else{
							s_name = "<tr><a href=\"event:show_skills,"+char_id+",-1,"+ child_array +"\"><tc>" + s_name + "</tc></a>";
						}
					}else{
						if(has_children(skill_array[i].get_id())){
							s_name = "<tr><a href=\"event:show_skills,"+char_id+",-1,"+ child_array +"\"><tc>" + s_name + "[+]</tc></a>";
						}else{
							s_name = "<tr><a href=\"event:show_skills,"+char_id+",-1,"+ child_array +"\"><tc>" + s_name + "</tc></a>";
						}						
					}					
				}else{
					s_name = "<tr><a href=\"event:show_skills,"+char_id+"\"><tc>" + s_name + "[-]</tc></a>";
				}
				
				ret += s_name;
				ret += "<tc>" + ranks.toString() + "</tc>";
				
				
				if(cost<=c.get_xp()){
					if(show_children_of != null){
						ret += "<tc>" + skill_val+"</tc><a href=\"event:show_skills,"+char_id+","+skill_array[i].get_id()+","+show_children_of+"\"><font color='#0000FF'><tc>"+ cost +"</tc></font></a></tr>";
					}else{
						ret += "<tc>" + skill_val+"</tc><a href=\"event:show_skills,"+char_id+","+skill_array[i].get_id()+"\"><font color='#0000FF'><tc>"+ cost +"</tc></font></a></tr>";
					}
				}else{
					ret += "<tc>" + skill_val+"</tc><font color='#FF0000'><tc>"+ cost +"</tc></font></tr>";
				}
			}
			
			return ret + "</table>";
		}
		
		public static function has_children(skill_id:int):Boolean{
			var ret:Boolean = false;
			var skill_array:Array = get_skill_list();
			var i:int = 0;
			for(i;i<skill_array.length;i++){
				if(skill_array[i].get_parent() == skill_id){
					ret = true;
					break;
				}
			}
			
			return ret;
		}
		
		public static function get_skill_parent(skill_id:int):int{
			var ret:int = -1;
			var skill_array:Array = get_skill_list();
			var i:int = 0;
			for(i;i<skill_array.length;i++){
				if(skill_array[i].get_id() == skill_id){
					if(skill_array[i].get_parent() != -1)ret = skill_array[i].get_parent();
					break;
				}
			}
			
			return ret;
		}
				
		public static function get_skill_value_by_id(c:Character, skill_id:int, skill_ranks:int):int{
			var skill_array:Array = get_skill_list();
			var i:int = 0;
			var ret:int = 0;
			for(i;i<skill_array.length;i++){
				if(skill_array[i].get_id() == skill_id){
					var j:int = 0;
					var numerator:int = 0;
					var denominator:int = 0;
					for(j;j<skill_array[i].stat_list.length;j++){
						numerator += Math.max(Math.round(c.get_stat(skill_array[i].stat_list[j]) * skill_array[i].stat_ratio_list[j]),0);
						denominator += skill_array[i].stat_ratio_list[j];
					}
					
					if(denominator != 0){
						ret = Math.round(Math.ceil(numerator/denominator) * (Math.log(skill_ranks*2)/0.699));
					}else{
						ret = -1;
					}
					
					if(skill_ranks == 0 && skill_array[i].get_parent() != -1){
						var temp:int = get_skill_value_by_id(c,skill_id, 1) - 1;
						var temp_ranks:int = c.skills.get_skill_ranks(skill_array[i].get_parent());
						ret = Math.min(temp,temp_ranks);
					}
					
					break;
				}
			}
			
			return ret;
		}
		
		public static function skill_adventure():Skill{
			var s:Skill = new Skill();
			s.set_name("Adventuring");
			s.set_id(adventure_id);
			s.add_stat_component(FPalace_helper.wis_id, 3);
			s.add_stat_component(FPalace_helper.int_id, 2);
			
			var a:Action = new Action();
			a.set_personal();
			a.set_attack_flag(-1, "Skills");
			a.set_name("Forage");
			a.set_dialogue("",0);
			
			var challenge:Challenge = new Challenge(true);
				challenge.set_tick_cost(Main.t10_min);
				challenge.set_attack_stat(adventure_id);
				challenge.set_defense_stat(-1, 15);
				challenge.set_variability(10);
				challenge.set_text("Forage");
				
				var consequence:Consequence = new Consequence();
				consequence.add_consequence(0,0,"How long would you like to forage for: </c1>, </c3>, </c6>", 0);
				//consequence.add_consequence(0,0,"</n> forages around, looking for something useful. ", 0,0,0,1);
				consequence.add_consequence(0,0,"</n> forages around for a bit, but finds nothing of use. ", -1);
				
				a.add_challenge(challenge,consequence);
				
				challenge = new Challenge();
				challenge.set_attack_stat(-1,1);
				challenge.set_defense_stat(-1,0);
				challenge.set_variability(0);
				challenge.set_text("10 min");
				
				var dconsequence:Dynamic_Consequence = new Dynamic_Consequence();
				dconsequence.add_consequence(FPalace_helper.curr_fatigue_id,-1,"", 0);
				dconsequence.set_consequence_list("</n> ends up finding </choice>. ", Dynamic_Consequence.list_forage);
				
				a.add_challenge(challenge,dconsequence);
				
				challenge = new Challenge();
				challenge.set_tick_cost(Main.t10_min);
				challenge.set_attack_stat(-1,1);
				challenge.set_defense_stat(-1,0);
				challenge.set_variability(0);
				challenge.set_text("");
				
				dconsequence = new Dynamic_Consequence();
				dconsequence.add_consequence(0,0,"", 0,0,0,1);
				dconsequence.set_consequence_list("</n> ends up finding </choice>. \n", Dynamic_Consequence.list_forage);
				
				a.add_challenge(challenge,dconsequence);
				
				challenge = new Challenge();
				challenge.set_tick_cost(Main.t10_min);
				challenge.set_attack_stat(-1,1);
				challenge.set_defense_stat(-1,0);
				challenge.set_variability(0);
				challenge.set_text("30 min");
				
				dconsequence = new Dynamic_Consequence();
				dconsequence.add_consequence(FPalace_helper.curr_fatigue_id,-1,"", 0,0,0,2);
				dconsequence.set_consequence_list("</n> ends up finding </choice>. \n", Dynamic_Consequence.list_forage);
				
				a.add_challenge(challenge,dconsequence);
				
				challenge = new Challenge();
				challenge.set_tick_cost(Main.t10_min);
				challenge.set_attack_stat(-1,1);
				challenge.set_defense_stat(-1,0);
				challenge.set_variability(0);
				challenge.set_text("40 min");
				
				dconsequence = new Dynamic_Consequence();
				dconsequence.add_consequence(0,0,"", 0,0,0,3);
				dconsequence.set_consequence_list("</n> ends up finding </choice>. \n", Dynamic_Consequence.list_forage);
				
				a.add_challenge(challenge,dconsequence);
				
				challenge = new Challenge();
				challenge.set_tick_cost(Main.t10_min);
				challenge.set_attack_stat(-1,1);
				challenge.set_defense_stat(-1,0);
				challenge.set_variability(0);
				challenge.set_text("50 min");
				
				dconsequence = new Dynamic_Consequence();
				dconsequence.add_consequence(0,0,"", 0,0,0,4);
				dconsequence.set_consequence_list("</n> ends up finding </choice>. \n", Dynamic_Consequence.list_forage);
				
				a.add_challenge(challenge,dconsequence);
				
				challenge = new Challenge();
				challenge.set_tick_cost(Main.t10_min);
				challenge.set_attack_stat(-1,1);
				challenge.set_defense_stat(-1,0);
				challenge.set_variability(0);
				challenge.set_text("1 hour");
				
				dconsequence = new Dynamic_Consequence();
				dconsequence.add_consequence(FPalace_helper.curr_fatigue_id,-1,"", 0,0,0,5);
				dconsequence.set_consequence_list("</n> ends up finding </choice>. \n", Dynamic_Consequence.list_forage);
				
				a.add_challenge(challenge,dconsequence);
			
			s.add_action(a, 10)
			
			return s;
		}
		
		public static function skill_perception():Skill{
			var s:Skill = new Skill();
			s.set_name("Perception");
			s.set_id(perception_id);
			s.set_parent(adventure_id);
			s.add_stat_component(FPalace_helper.wis_id, 4);
			s.add_stat_component(FPalace_helper.int_id, 1);
			
			return s;
		}
				
		
		public static function skill_map_reading():Skill{
			var s:Skill = new Skill();
			s.set_name("Map Reading");
			s.set_id(map_reading_id);
			s.set_parent(perception_id);
			s.add_stat_component(FPalace_helper.wis_id, 2);
			s.add_stat_component(FPalace_helper.int_id, 3);
			
			return s;
		}
		
		public static function skill_map_sight():Skill{
			var s:Skill = new Skill();
			s.set_name("Sight");
			s.set_id(map_sight_id);
			s.set_parent(perception_id);
			s.add_stat_component(FPalace_helper.wis_id, 2);
			s.add_stat_component(FPalace_helper.int_id, 1);
			
			return s;
		}
		
		public static function skill_map_making():Skill{
			var s:Skill = new Skill();
			s.set_name("Map Making");
			s.set_id(map_making_id);
			s.set_parent(perception_id);
			s.add_stat_component(FPalace_helper.wis_id, 2);
			s.add_stat_component(FPalace_helper.int_id, 1);
			
			return s;
		}
		
		public static function skill_initiative():Skill{
			var s:Skill = new Skill();
			s.set_name("Initiative");
			s.set_id(initiative_id);
			s.set_parent(adventure_id);
			s.add_stat_component(FPalace_helper.wis_id, 2);
			s.add_stat_component(FPalace_helper.dex_id, 3);
			
			return s;
		}
		
		public static function skill_fortitude():Skill{
			var s:Skill = new Skill();
			s.set_name("Fortitude");
			s.set_id(fortitude_id);
			s.set_parent(adventure_id);
			s.add_stat_component(FPalace_helper.wis_id, 2);
			s.add_stat_component(FPalace_helper.con_id, 3);
			
			return s;
		}
		
		public static function skill_swimming():Skill{
			var s:Skill = new Skill();
			s.set_name("Swimming");
			s.set_id(swimming_id);
			s.set_parent(adventure_id);
			s.add_stat_component(FPalace_helper.str_id, 2);
			s.add_stat_component(FPalace_helper.dex_id, 3);
			
			return s;
		}
		
		public static function skill_fight():Skill{
			var s:Skill = new Skill();
			s.set_name("Fighting");
			s.set_id(fight_id);
			s.add_stat_component(FPalace_helper.str_id, 3);
			s.add_stat_component(FPalace_helper.con_id, 1);
			s.add_stat_component(FPalace_helper.dex_id, 1);
			
			return s;
		}
		
		public static function skill_melee():Skill{
			var s:Skill = new Skill();
			s.set_name("Melee");
			s.set_id(melee_id);
			s.set_parent(fight_id);
			s.add_stat_component(FPalace_helper.str_id, 4);
			s.add_stat_component(FPalace_helper.dex_id, 1);
			
			return s;
		}
		
		public static function skill_one_handed():Skill{
			var s:Skill = new Skill();
			s.set_name("One Handed");
			s.set_id(one_handed_id);
			s.set_parent(melee_id);
			s.add_stat_component(FPalace_helper.str_id, 3);
			s.add_stat_component(FPalace_helper.dex_id, 2);
			
			return s;
		}
				
		public static function skill_two_handed():Skill{
			var s:Skill = new Skill();
			s.set_name("Two Handed");
			s.set_id(two_handed_id);
			s.set_parent(melee_id);
			s.add_stat_component(FPalace_helper.str_id, 3);
			s.add_stat_component(FPalace_helper.dex_id, 1);
			s.add_stat_component(FPalace_helper.con_id, 1);
			
			return s;
		}
			
		public static function skill_unarmed():Skill{
			var s:Skill = new Skill();
			s.set_name("Unarmed");
			s.set_id(unarmed_id);
			s.set_parent(melee_id);
			s.add_stat_component(FPalace_helper.str_id, 2);
			s.add_stat_component(FPalace_helper.dex_id, 3);
			
			return s;
		}
		
		public static function skill_striking():Skill{
			var s:Skill = new Skill();
			s.set_name("Striking");
			s.set_id(striking_id);
			s.set_parent(unarmed_id);
			s.add_stat_component(FPalace_helper.str_id, 2);
			s.add_stat_component(FPalace_helper.dex_id, 3);
			
			
			
			var a:Action = new Action();
				a.set_name("Knee");
				a.set_attack_flag(Action.attack_type_single_target, "Skills");
				a.set_attack_description("Strike a single opponent, targeting the groin. ");
				a.set_requirement(FPalace_helper.curr_fatigue_id,1);
				var challenge:Challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.striking_id);
				challenge.set_defense_stat(FPalace_skills.dodging_id);
				challenge.set_variability(10);
				challenge.set_text("Knee");
				var consequence:Consequence = new Consequence();
				consequence.set_damage_type(FPalace_helper.bludg_damage_type().get_id());
				var inter_chal:Challenge = new Challenge(true);
					inter_chal.set_attack_stat(FPalace_skills.concentration_id);
					inter_chal.set_defense_stat(-1,4);
					inter_chal.set_variability(10);
				
				consequence.set_interupt_chal(inter_chal);
				consequence.add_consequence(FPalace_helper.curr_hp_id,-3, "</n2> knees </n>. ",0);
				consequence.add_consequence(FPalace_helper.curr_hp_id,-0.5, "</n2> crushes </n>s balls. ",5,0,0,-1, false, null, FPalace_helper.balls_slot);//need this to target specific part id...
				consequence.add_consequence(0,0, "</n2> misses as </pronoun2> lashes out with a leg. ",-1);
				
				a.add_challenge(challenge,consequence);
				
			s.add_attack(a,5);
			
			return s;
		}
				
		public static function skill_grappling():Skill{
			var s:Skill = new Skill();
			s.set_name("Grappling");
			s.set_id(grappling_id);
			s.set_parent(unarmed_id);
			s.add_stat_component(FPalace_helper.str_id, 2);
			s.add_stat_component(FPalace_helper.dex_id, 1);
			s.add_stat_component(FPalace_helper.con_id, 1);
			s.add_stat_component(FPalace_helper.int_id, 1);
			
			return s;
		}
		
		public static function skill_ranged():Skill{
			var s:Skill = new Skill();
			s.set_name("Ranged");
			s.set_id(ranged_id);
			s.set_parent(fight_id);
			s.add_stat_component(FPalace_helper.dex_id, 4);
			s.add_stat_component(FPalace_helper.str_id, 1);
			
			return s;
		}
		
		public static function skill_defence():Skill{
			var s:Skill = new Skill();
			s.set_name("Defence");
			s.set_id(defence_id);
			s.set_parent(fight_id);
			s.add_stat_component(FPalace_helper.dex_id, 3);
			s.add_stat_component(FPalace_helper.con_id, 2);
			
			return s;
		}
		
		public static function skill_dodging():Skill{
			var s:Skill = new Skill();
			s.set_name("Dodge");
			s.set_id(dodging_id);
			s.set_parent(defence_id);
			s.add_stat_component(FPalace_helper.dex_id, 3);
			s.add_stat_component(FPalace_helper.con_id, 2);
			
			return s;
		}
				
		public static function skill_blocking():Skill{
			var s:Skill = new Skill();
			s.set_name("Block");
			s.set_id(blocking_id);
			s.set_parent(defence_id);
			s.add_stat_component(FPalace_helper.dex_id, 1);
			s.add_stat_component(FPalace_helper.str_id, 2);
			s.add_stat_component(FPalace_helper.con_id, 2);
			
			return s;
		}
				
		public static function skill_parrying():Skill{
			var s:Skill = new Skill();
			s.set_name("Parry");
			s.set_id(parrying_id);
			s.set_parent(defence_id);
			s.add_stat_component(FPalace_helper.dex_id, 2);
			s.add_stat_component(FPalace_helper.str_id, 2);
			s.add_stat_component(FPalace_helper.con_id, 1);
			
			return s;
		}
		
		public static function skill_concentration():Skill{
			var s:Skill = new Skill();
			s.set_name("Concentration");
			s.set_id(concentration_id);
			s.set_parent(magic_id);
			s.add_stat_component(FPalace_helper.wis_id, 3);
			s.add_stat_component(FPalace_helper.con_id, 2);
			
			return s;
		}
		
		public static function skill_toughness():Skill{
			var s:Skill = new Skill();
			s.set_name("Toughness");
			s.set_id(toughness_id);
			s.set_parent(fight_id);
			s.add_stat_component(FPalace_helper.con_id, 3);
			s.add_stat_component(FPalace_helper.str_id, 1);
			
			return s;
		}
		
		public static function skill_covert():Skill{
			var s:Skill = new Skill();
			s.set_name("Covert");
			s.set_id(covert_id);
			s.add_stat_component(FPalace_helper.dex_id, 3);
			s.add_stat_component(FPalace_helper.wis_id, 2);
			
			var a:Action = new Action();
			a.set_personal();
			a.set_attack_flag(-1, "Skills");
			a.set_name("Hunt");
			a.set_dialogue("",0);
			
			var challenge:Challenge = new Challenge(true);
				challenge.set_tick_cost(Main.t30_min);
				challenge.set_attack_stat(covert_id);
				challenge.set_defense_stat(-1, 15);
				challenge.set_variability(10);
				challenge.set_text("Hunt");
				
				var consequence:Consequence = new Consequence();
				consequence.add_consequence(0,0,"</n> waits around for something to hunt. ", 0,0,0,1);
				consequence.add_consequence(0,0,"</n> waits around for a bit, but nothing passes by. ", -1);
				
				a.add_challenge(challenge,consequence);
				
				challenge = new Challenge();
				challenge.set_attack_stat(-1,1);
				challenge.set_defense_stat(-1,0);
				challenge.set_variability(0);
				challenge.set_text("");
				
				var dconsequence:Dynamic_Consequence = new Dynamic_Consequence();
				dconsequence.set_consequence_list("</choice> wanders by. ", Dynamic_Consequence.list_hunt);
				
				a.add_challenge(challenge,dconsequence);
			
			s.add_action(a, 10)
			
			return s;
		}
		
		public static function skill_theft():Skill{
			var s:Skill = new Skill();
			s.set_name("Theft");
			s.set_id(theft_id);
			s.set_parent(covert_id);
			s.add_stat_component(FPalace_helper.dex_id, 3);
			s.add_stat_component(FPalace_helper.wis_id, 2);
			
			return s;
		}
		
		public static function skill_magic():Skill{
			var s:Skill = new Skill();
			s.set_name("Magic");
			s.set_id(magic_id);
			s.add_stat_component(FPalace_helper.int_id, 3);
			s.add_stat_component(FPalace_helper.wis_id, 1);
			s.add_stat_component(FPalace_helper.dex_id, 1);
			
			return s;
		}
		
		
		public static function skill_mental_magic():Skill{
			var s:Skill = new Skill();
			s.set_name("Mental");
			s.set_id(mental_magic_id);
			s.set_parent(magic_id);
			s.add_stat_component(FPalace_helper.wis_id, 1);
			s.add_stat_component(FPalace_helper.int_id, 1);
			s.add_stat_component(FPalace_helper.will_id, 2);
			
			var a3:Action = new Action();
			a3.set_requirement(FPalace_helper.curr_mp_id,1);
			a3.set_name("Mind Lance");
			a3.set_attack_description("Strike out at a single foes mind. ");
			a3.set_attack_flag(Action.attack_type_single_target, "Magic");
			
			var challenge2:Challenge = new Challenge(true);
			challenge2.set_attack_stat(FPalace_skills.mental_magic_id);
			challenge2.set_defense_stat(-1,10);
			challenge2.set_variability(10);
			challenge2.set_text("Mind Lance");
			var consequence2:Consequence = new Consequence();
			consequence2.add_consequence(0,0, "</n2> waves </noun2> hands in an intricate manner while intently gazing at </n>. ",0,0,0,1);
			consequence2.add_consequence(FPalace_helper.curr_mp_id,-1, "</n2> moves </noun2> hands in a series of clumsy gestures that look like flailing about. </noun2> eyes dart back and forth between </noun2> hands and </n>. ",-1,0,0,-1,true);
			
			a3.add_challenge(challenge2,consequence2);
			
			challenge2 = new Challenge(true);
			challenge2.set_attack_stat(FPalace_skills.mental_magic_id);
			challenge2.set_defense_stat(FPalace_skills.magic_id);
			challenge2.set_variability(10);
			challenge2.set_text("");
			consequence2 = new Consequence();
			consequence2.amt_by_roll_flag();
			consequence2.set_max_damage(8);
			consequence2.add_consequence(FPalace_helper.curr_hp_id,Consequence.amt_from_roll_const, "</n> meets </n2>s gaze for a split second and suddenly screams in pain. ",0);
			consequence2.add_consequence(0,0, "Nothing happens! ",-1);							
			
			a3.add_challenge(challenge2,consequence2);
			
			s.add_attack(a3, 5);
			
			return s;
		}
		
		public static function skill_physical_magic():Skill{
			var s:Skill = new Skill();
			s.set_name("Physical");
			s.set_id(physical_magic_id);
			s.set_parent(magic_id);
			s.add_stat_component(FPalace_helper.wis_id, 1);
			s.add_stat_component(FPalace_helper.int_id, 1);
			s.add_stat_component(FPalace_helper.will_id, 1);
			s.add_stat_component(FPalace_helper.dex_id, 2);
			
			var a:Action = new Action();
			a.set_personal();
			a.set_attack_flag(-1, "Skills");
			a.set_name("Enchant");
			a.set_enchant_flag();
					
			s.add_action(a, 15)
			
			return s;
		}
		
		public static function skill_spiritual_magic():Skill{
			var s:Skill = new Skill();
			s.set_name("Spiritual");
			s.set_id(spiritual_magic_id);
			s.set_parent(magic_id);
			s.add_stat_component(FPalace_helper.wis_id, 2);
			s.add_stat_component(FPalace_helper.will_id, 2);
			
			return s;
		}
		
		public static function skill_knowledge():Skill{
			var s:Skill = new Skill();
			s.set_name("Knowledge");
			s.set_id(knowledge_id);
			s.add_stat_component(FPalace_helper.wis_id, 1);
			s.add_stat_component(FPalace_helper.int_id, 3);
			
			return s;
		}
		
		
		
		public static function skill_weights():Skill{
			var s:Skill = new Skill();
			s.set_name("Weights");
			s.set_id(weighing_id);
			s.set_parent(knowledge_id);
			s.add_stat_component(FPalace_helper.wis_id, 2);
			s.add_stat_component(FPalace_helper.dex_id, 1);
			
			return s;
		}
		
		public static function skill_crafts():Skill{
			var s:Skill = new Skill();
			s.set_name("Crafting");
			s.set_id(crafting_id);
			s.add_stat_component(FPalace_helper.wis_id, 3);
			s.add_stat_component(FPalace_helper.dex_id, 1);
			s.add_stat_component(FPalace_helper.int_id, 1);
			
			var a:Action = new Action();
			a.set_personal();
			a.set_attack_flag(-1, "Skills");
			a.set_name("Dismantle");
			a.set_dismantle_flag();
					
			s.add_action(a, 10);
			
			a = new Action();
			a.set_personal();
			a.set_attack_flag(-1, "Skills");
			a.set_name("Crafting");
			a.set_craft_flag();
					
			s.add_action(a, 20)
			
			return s;
		}
		
		public static function skill_alchemy():Skill{
			var s:Skill = new Skill();
			s.set_name("Alchemy");
			s.set_id(alchemy_id);
			s.set_parent(crafting_id);
			s.add_stat_component(FPalace_helper.wis_id, 2);
			s.add_stat_component(FPalace_helper.dex_id, 1);
			s.add_stat_component(FPalace_helper.int_id, 3);
			
			var a:Action = new Action();
			a.set_personal();
			a.set_attack_flag(-1, "Skills");
			a.set_name("Alchemy");
			a.set_alchemy_flag();
					
			s.add_action(a, 30)
			
			return s;
		}
				
		public static function skill_items():Skill{
			var s:Skill = new Skill();
			s.set_name("Items");
			s.set_id(items_id);
			s.set_parent(crafting_id);
			s.add_stat_component(FPalace_helper.wis_id, 3);
			s.add_stat_component(FPalace_helper.int_id, 2);
			
			return s;
		}
		
		public static function skill_sewing():Skill{
			var s:Skill = new Skill();
			s.set_name("Sewing");
			s.set_id(sewing_id);
			s.set_parent(crafting_id);
			s.add_stat_component(FPalace_helper.wis_id, 3);
			s.add_stat_component(FPalace_helper.dex_id, 2);
			
			var a:Action = new Action();
			a.set_personal();
			a.set_attack_flag(-1, "Skills");
			a.set_name("Sewing");
			a.set_sewing_flag();
					
			s.add_action(a, 10)
			
			return s;
		}
		
		public static function skill_smithing():Skill{
			var s:Skill = new Skill();
			s.set_name("Smithing");
			s.set_id(smithing_id);
			s.set_parent(crafting_id);
			s.add_stat_component(FPalace_helper.str_id, 3);
			s.add_stat_component(FPalace_helper.dex_id, 2);
			
			return s;
		}
		
		public static function skill_item_effects():Skill{
			var s:Skill = new Skill();
			s.set_name("Effects");
			s.set_id(item_effects_id);
			s.set_parent(items_id);
			s.add_stat_component(FPalace_helper.wis_id, 3);
			s.add_stat_component(FPalace_helper.int_id, 2);
			
			return s;
		}
		
		public static function skill_item_alchemy_effects():Skill{
			var s:Skill = new Skill();
			s.set_name("Properties");
			s.set_id(item_alchemy_effects_id);
			s.set_parent(alchemy_id);
			s.add_stat_component(FPalace_helper.wis_id, 3);
			s.add_stat_component(FPalace_helper.int_id, 2);
			
			return s;
		}
		
		public static function skill_weapon_effects():Skill{
			var s:Skill = new Skill();
			s.set_name("Weapons");
			s.set_id(weapon_effects_id);
			s.set_parent(smithing_id);
			s.add_stat_component(FPalace_helper.wis_id, 3);
			s.add_stat_component(FPalace_helper.dex_id, 2);
			s.add_stat_component(FPalace_helper.str_id, 2);
			
			return s;
		}
		
		public static function skill_equipment_effects():Skill{
			var s:Skill = new Skill();
			s.set_name("Equipment");
			s.set_id(equipment_effects_id);
			s.set_parent(smithing_id);
			s.add_stat_component(FPalace_helper.wis_id, 3);
			s.add_stat_component(FPalace_helper.con_id, 2);
			s.add_stat_component(FPalace_helper.str_id, 2);
			
			return s;
		}
		
		public static function skill_people():Skill{
			var s:Skill = new Skill();
			s.set_name("People");
			s.set_id(people_id);
			s.add_stat_component(FPalace_helper.sex_appeal_id, 3);
			s.add_stat_component(FPalace_helper.cha_id, 2);
			
			var a:Action = new Action();
				a.set_name("Calm Down");
				a.set_attack_flag(Action.attack_type_all_target_no_user_conseq, "Skills");
				a.set_attack_description("Try to calm yourself down. ");
				a.set_dialogue("</n2> tries to calm down. ", 0);
				a.set_requirement(FPalace_helper.curr_mp_id,1);
				var challenge:Challenge = new Challenge(true);
				challenge.set_attack_stat(Character.relations_affect_id);
				challenge.set_defense_stat(-1,0);
				challenge.set_variability(0);
				challenge.set_text("");
				var consequence:Consequence = new Consequence();
				consequence.add_consequence(Character.relations_affect_id,0, "",0);
				consequence.add_consequence(-Character.relations_affect_id ,Consequence.amt_from_roll_const, "</n2> hates </n> a bit less. ",-1,0,0,-1,true);
				consequence.amt_by_roll_flag();
				
				a.add_challenge(challenge,consequence);
				
			s.add_attack(a,5);
			
			return s;
		}
		
		public static function skill_intimidating():Skill{
			var s:Skill = new Skill();
			s.set_name("Intimidating");
			s.set_id(intimidating_id);
			s.set_parent(conversing_id);
			s.add_stat_component(FPalace_helper.str_id, 3);
			s.add_stat_component(FPalace_helper.cha_id, 2);
			
			return s;
		}
		
		public static function skill_conversing():Skill{
			var s:Skill = new Skill();
			s.set_name("Conversation");
			s.set_id(conversing_id);
			s.set_parent(people_id);
			s.add_stat_component(FPalace_helper.sex_appeal_id, 2);
			s.add_stat_component(FPalace_helper.cha_id, 3);
			
			return s;
		}
		
		public static function skill_flirting():Skill{
			var s:Skill = new Skill();
			s.set_name("Flirting");
			s.set_id(flirting_id);		
			s.set_parent(conversing_id);
			s.add_stat_component(FPalace_helper.sex_appeal_id, 3);
			s.add_stat_component(FPalace_helper.cha_id, 2);
			s.add_stat_component(FPalace_helper.wis_id, 1);
			
			return s;
		}		
		
		public static function skill_sex():Skill{
			var s:Skill = new Skill();
			s.set_name("Sex");
			s.set_id(sex_id);		
			s.set_parent(people_id);
			s.add_stat_component(FPalace_helper.dex_id, 3);
			s.add_stat_component(FPalace_helper.cha_id, 2);
			s.add_stat_component(FPalace_helper.wis_id, 1);
			
			return s;
		}
		
		public static function skill_oral():Skill{
			var s:Skill = new Skill();
			s.set_name("Oral");
			s.set_id(blowjobs_id);		
			s.set_parent(sex_id);
			s.add_stat_component(FPalace_helper.dex_id, 3);
			s.add_stat_component(FPalace_helper.cha_id, 2);
			s.add_stat_component(FPalace_helper.wis_id, 1);
			
			return s;
		}
		
		public static function skill_trade():Skill{
			var s:Skill = new Skill();
			s.set_name("Trade");
			s.set_id(trade_id);
			s.set_parent(people_id);
			s.add_stat_component(FPalace_helper.sex_appeal_id, 2);
			s.add_stat_component(FPalace_helper.int_id, 2);
			s.add_stat_component(FPalace_helper.wis_id, 2);
			s.add_stat_component(FPalace_helper.cha_id, 2);
			
			return s;
		}
		
		public static function skill_valuing():Skill{
			var s:Skill = new Skill();
			s.set_name("Valuing");
			s.set_id(valuing_id);		
			s.set_parent(knowledge_id);
			s.add_stat_component(FPalace_helper.int_id, 2);
			s.add_stat_component(FPalace_helper.wis_id, 1);
			
			return s;
		}
	}
	
}
