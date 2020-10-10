package  {
	
	public class FPalace_classes {

		public function FPalace_classes() {
			// constructor code
		}
		
		//Want to rework the classes so they're based on a primary stat and secondary stat with the stats being:
		//STR, CON, DEX, SEX APPEAL, WILL, INT, WIS, CHA
		//current classes are mostly SEX APPEAL based, with the exception of the Adventurer/Merchant classes (which i'm not sure of)
			//Made other classes, though none of them have attacks/skills yet
		
		//Primary: Strength, Seconday: Dexterity
		public static function cclass_martial_artist():Character_class{
			var cclass_ma:Character_class = new Character_class();
			cclass_ma.set_name("Martial Artist");
			
			cclass_ma.set_bonus(FPalace_helper.str_id,2);
			cclass_ma.set_bonus(FPalace_helper.dex_id,1);
			
			cclass_ma.add_class_skill(FPalace_skills.fight_id);
			cclass_ma.add_class_skill(FPalace_skills.covert_id);
			
			return cclass_ma;
		}
		
		//Primary: Strength, Seconday: Constitution
		public static function cclass_barbarian():Character_class{
			var cclass_barb:Character_class = new Character_class();
			cclass_barb.set_name("Barbarian");
			
			cclass_barb.set_bonus(FPalace_helper.str_id,2);
			cclass_barb.set_bonus(FPalace_helper.con_id,1);
			
			cclass_barb.add_class_skill(FPalace_skills.fight_id);
			cclass_barb.add_class_skill(FPalace_skills.adventure_id);
			
			return cclass_barb;
		}
		
		//Primary: Strength, Seconday: Beauty
		public static function cclass_sword_dancer():Character_class{
			var cclass_sd:Character_class = new Character_class();
			cclass_sd.set_name("Sword Dancer");
			
			cclass_sd.set_bonus(FPalace_helper.str_id,2);
			cclass_sd.set_bonus(FPalace_helper.sex_appeal_id,1);
			
			cclass_sd.add_class_skill(FPalace_skills.fight_id);
			
			return cclass_sd;
		}
		
		//Primary: Strength, Seconday: Willpower
		public static function cclass_spellsword():Character_class{
			var cclass_ss:Character_class = new Character_class();
			cclass_ss.set_name("Spell Sword");
			
			cclass_ss.set_bonus(FPalace_helper.str_id,2);
			cclass_ss.set_bonus(FPalace_helper.will_id,1);
			
			cclass_ss.add_class_skill(FPalace_skills.fight_id);
			cclass_ss.add_class_skill(FPalace_skills.magic_id);
			
			return cclass_ss;
		}
		
		//Primary: Strength, Seconday: Wisdom
		public static function cclass_viking():Character_class{
			var cclass_v:Character_class = new Character_class();
			cclass_v.set_name("Viking");
			
			cclass_v.set_bonus(FPalace_helper.str_id,2);
			cclass_v.set_bonus(FPalace_helper.wis_id,1);
			
			cclass_v.add_class_skill(FPalace_skills.fight_id);
			cclass_v.add_class_skill(FPalace_skills.crafting_id);
			
			return cclass_v;
		}
		
		//Primary: Strength, Seconday: Intelligence
		public static function cclass_gladiator():Character_class{
			var cclass_gladiator:Character_class = new Character_class();
			cclass_gladiator.set_name("Gladiator");
			
			cclass_gladiator.set_bonus(FPalace_helper.str_id,2);
			cclass_gladiator.set_bonus(FPalace_helper.int_id,1);
			
			cclass_gladiator.add_class_skill(FPalace_skills.fight_id);
			cclass_gladiator.add_class_skill(FPalace_skills.knowledge_id);
			
			return cclass_gladiator;
		}
		
		//Primary: Strength, Seconday: Charisma
		public static function cclass_warrior():Character_class{
			var cclass_w:Character_class = new Character_class();
			cclass_w.set_name("Warrior");
			
			cclass_w.set_bonus(FPalace_helper.str_id,2);
			cclass_w.set_bonus(FPalace_helper.cha_id,1);
			
			cclass_w.add_class_skill(FPalace_skills.fight_id);
			cclass_w.add_class_skill(FPalace_skills.people_id);
			
			return cclass_w;
		}
		
		//Primary: Dexterity, Seconday: Strength
		public static function cclass_dragoon():Character_class{
			var cclass_d:Character_class = new Character_class();
			cclass_d.set_name("Dragoon");
			
			cclass_d.set_bonus(FPalace_helper.dex_id,2);
			cclass_d.set_bonus(FPalace_helper.str_id,1);
			
			cclass_d.add_class_skill(FPalace_skills.fight_id);
			cclass_d.add_class_skill(FPalace_skills.covert_id);
			
			return cclass_d;
		}
		
		//Primary: Dexterity, Seconday: Constitution
		public static function cclass_pirate():Character_class{
			var cclass_p:Character_class = new Character_class();
			cclass_p.set_name("Pirate");
			
			cclass_p.set_bonus(FPalace_helper.dex_id,2);
			cclass_p.set_bonus(FPalace_helper.con_id,1);
			
			cclass_p.add_class_skill(FPalace_skills.adventure_id);
			cclass_p.add_class_skill(FPalace_skills.covert_id);
			
			return cclass_p;
		}
		
		//Primary: Dexterity, Seconday: Beauty
		public static function cclass_con_artist():Character_class{
			var cclass_ca:Character_class = new Character_class();
			cclass_ca.set_name("Con Artist");
			
			cclass_ca.set_bonus(FPalace_helper.dex_id,2);
			cclass_ca.set_bonus(FPalace_helper.sex_appeal_id,1);
			
			cclass_ca.add_class_skill(FPalace_skills.covert_id);
			
			return cclass_ca;
		}
		
		//Primary: Dexterity, Seconday: Willpower
		public static function cclass_spellthief():Character_class{
			var cclass_st:Character_class = new Character_class();
			cclass_st.set_name("Spell Thief");
			
			cclass_st.set_bonus(FPalace_helper.dex_id,2);
			cclass_st.set_bonus(FPalace_helper.will_id,1);
			
			cclass_st.add_class_skill(FPalace_skills.magic_id);
			cclass_st.add_class_skill(FPalace_skills.covert_id);
			
			return cclass_st;
		}
		
		//Primary: Dexterity, Seconday: Wisdom
		public static function cclass_ranger():Character_class{
			var cclass_r:Character_class = new Character_class();
			cclass_r.set_name("Ranger");
			
			cclass_r.set_bonus(FPalace_helper.dex_id,2);
			cclass_r.set_bonus(FPalace_helper.wis_id,1);
			
			cclass_r.add_class_skill(FPalace_skills.crafting_id);
			cclass_r.add_class_skill(FPalace_skills.covert_id);
			
			return cclass_r;
		}
		
		//Primary: Dexterity, Seconday: Intelligence
		public static function cclass_ninja():Character_class{
			var cclass_n:Character_class = new Character_class();
			cclass_n.set_name("Ninja");
			
			cclass_n.set_bonus(FPalace_helper.dex_id,2);
			cclass_n.set_bonus(FPalace_helper.int_id,1);
			
			cclass_n.add_class_skill(FPalace_skills.knowledge_id);
			cclass_n.add_class_skill(FPalace_skills.covert_id);
			
			return cclass_n;
		}
		
		//Primary: Dexterity, Seconday: Charisma
		public static function cclass_thief():Character_class{
			var cclass_t:Character_class = new Character_class();
			cclass_t.set_name("Thief");
			
			cclass_t.set_bonus(FPalace_helper.dex_id,2);
			cclass_t.set_bonus(FPalace_helper.cha_id,1);
			
			cclass_t.add_class_skill(FPalace_skills.people_id);
			cclass_t.add_class_skill(FPalace_skills.covert_id);
			
			return cclass_t;
		}
		
		//Primary: Constitution, Seconday: Strength
		public static function cclass_fighter():Character_class{
			var cclass_f:Character_class = new Character_class();
			cclass_f.set_name("Fighter");
			
			cclass_f.set_bonus(FPalace_helper.con_id,2);
			cclass_f.set_bonus(FPalace_helper.str_id,1);
			
			cclass_f.add_class_skill(FPalace_skills.adventure_id);
			cclass_f.add_class_skill(FPalace_skills.fight_id);
			
			return cclass_f;
		}
		
		//Primary: Constitution, Seconday: Dexterity
		public static function cclass_soldier():Character_class{
			var cclass_s:Character_class = new Character_class();
			cclass_s.set_name("Soldier");
			
			cclass_s.set_bonus(FPalace_helper.con_id,2);
			cclass_s.set_bonus(FPalace_helper.dex_id,1);
			
			cclass_s.add_class_skill(FPalace_skills.adventure_id);
			cclass_s.add_class_skill(FPalace_skills.covert_id);
			
			return cclass_s;
		}
		
		//Primary: Constitution, Seconday: Beauty
		public static function cclass_mercenary():Character_class{
			var cclass_m:Character_class = new Character_class();
			cclass_m.set_name("Mercenary");
			
			cclass_m.set_bonus(FPalace_helper.con_id,2);
			cclass_m.set_bonus(FPalace_helper.sex_appeal_id,1);
			
			cclass_m.add_class_skill(FPalace_skills.adventure_id);
			
			return cclass_m;
		}
		
		//Primary: Constitution, Seconday: Willpower
		public static function cclass_geomancer():Character_class{
			var cclass_g:Character_class = new Character_class();
			cclass_g.set_name("Geomancer");
			
			cclass_g.set_bonus(FPalace_helper.con_id,2);
			cclass_g.set_bonus(FPalace_helper.will_id,1);
			
			cclass_g.add_class_skill(FPalace_skills.adventure_id);
			cclass_g.add_class_skill(FPalace_skills.magic_id);
			
			return cclass_g;
		}
		
		//Primary: Constitution, Seconday: Wisdom
		public static function cclass_paladin():Character_class{
			var cclass_p:Character_class = new Character_class();
			cclass_p.set_name("Paladin");
			
			cclass_p.set_bonus(FPalace_helper.con_id,2);
			cclass_p.set_bonus(FPalace_helper.wis_id,1);
			
			cclass_p.add_class_skill(FPalace_skills.adventure_id);
			cclass_p.add_class_skill(FPalace_skills.crafting_id);
			
			return cclass_p;
		}
		
		//Primary: Constitution, Seconday: Intelligence
		public static function cclass_grappler():Character_class{
			var cclass_g:Character_class = new Character_class();
			cclass_g.set_name("Grappler");
			
			cclass_g.set_bonus(FPalace_helper.con_id,2);
			cclass_g.set_bonus(FPalace_helper.int_id,1);
			
			cclass_g.add_class_skill(FPalace_skills.adventure_id);
			cclass_g.add_class_skill(FPalace_skills.knowledge_id);
			
			return cclass_g;
		}
		
		//Primary: Constitution, Seconday: Charisma
		public static function cclass_knight():Character_class{
			var cclass_k:Character_class = new Character_class();
			cclass_k.set_name("Knight");
			
			cclass_k.set_bonus(FPalace_helper.con_id,2);
			cclass_k.set_bonus(FPalace_helper.cha_id,1);
			
			cclass_k.add_class_skill(FPalace_skills.adventure_id);
			cclass_k.add_class_skill(FPalace_skills.people_id);
			
			return cclass_k;
		}
		
		//Primary: Sex Appeal, Seconday: Con ... Some sort of vore
		public static function cclass_fleshstealer():Character_class{
			var cclass_flesh:Character_class = new Character_class();
			cclass_flesh.set_name("Flesh-Stealer");
			
			cclass_flesh.set_bonus(FPalace_helper.sex_appeal_id,2);
			cclass_flesh.set_bonus(FPalace_helper.con_id,1);
			
			cclass_flesh.add_class_skill(FPalace_skills.adventure_id);
			cclass_flesh.add_class_skill(FPalace_skills.grappling_id);
			
			//canabalize - hp damage attack that restores hp
			var inter_chal:Challenge = new Challenge(true);
				inter_chal.set_attack_stat(FPalace_skills.concentration_id);
				inter_chal.set_defense_stat(-1,12);
				inter_chal.set_variability(10);
			
			var a:Action = new Action();
				a.set_name("Canabalize");
				a.set_attack_flag(Action.attack_type_single_target, "Skills");
				a.set_requirement(FPalace_helper.curr_fatigue_id,1);
				a.set_attack_description("Strike and consume the vitality of a single foe. ");
				//dodge
				a.set_blowback(FPalace_helper.curr_hp_id, 0);
				var challenge:Challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.grappling_id);
				challenge.set_defense_stat(FPalace_skills.dodging_id);
				challenge.set_variability(10);
				challenge.set_text("Canabalize");
				var consequence:Consequence = new Consequence();
				consequence.add_consequence(FPalace_helper.curr_hp_id,0, "</n2> jumps at </n>, strange sores suddenly appearing on </noun2> skin. ",0,1,0,1);
				consequence.set_interupt_chal(inter_chal);
				consequence.add_consequence(0,0, "</n2> misses as </pronoun2> leaps through the air, strange sores appearing, only to disappear a moment later. ",-1);
				
				a.add_challenge(challenge,consequence);
				
				challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.grappling_id);
				challenge.set_defense_stat(FPalace_skills.parrying_id);
				challenge.set_variability(10);
				challenge.set_text("");
				consequence = new Consequence();
				consequence.add_consequence(FPalace_helper.curr_hp_id,-1, "",0,1,0,2);
				consequence.set_interupt_chal(inter_chal);
				consequence.add_consequence(0,0, "</n> manages to fend </noun2> off. ",-1);
				
				a.add_challenge(challenge,consequence);
				//block
				challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.grappling_id);
				challenge.set_defense_stat(FPalace_skills.blocking_id);
				challenge.set_variability(10);
				challenge.set_text("");
				consequence = new Consequence();
				consequence.set_max_damage(5);
				consequence.add_consequence(FPalace_helper.curr_hp_id,Consequence.amt_from_roll_const, "</n2>s sore seem to eat at </n>. </n2> looks like </noun2> just ate a good meal. ",0);
				consequence.set_interupt_chal(inter_chal);
				consequence.add_consequence(FPalace_helper.curr_hp_id,-1, "</n> manages to guard </noun>self, and not touch any of the sores. ",-1);
				consequence.amt_by_roll_flag();
				
				a.add_challenge(challenge,consequence);
			cclass_flesh.add_attack(a);
			
			//Canabalize - eat corpses to recover HPs
			a = new Action();
				a.set_name("Canabalize");
				a.set_bury_action();
				a.set_dialogue("</n> begins to feast on the corpse. ",0);
					
				challenge = new Challenge();
				challenge.set_attack_stat(FPalace_helper.con_id);
				challenge.set_defense_stat(-1,10);
				challenge.set_variability(10);
				challenge.set_text("Canabalize");
				consequence = new Consequence();
				consequence.add_consequence(FPalace_helper.curr_hp_id,5, "</n> feels a bit better. ",0);
				consequence.add_consequence(FPalace_helper.biomass_consumed, 2500, "",0);
				consequence.add_consequence(0,0, "</n2> can't quite stomach the taste. ",-1);
				
				a.add_challenge(challenge,consequence);
					
			cclass_flesh.add_action(a,2);
			
			//asset thief - steal height/breast size/age differences/etc
			a = new Action();
				a.set_name("Asset Thief");
				a.set_attack_flag(Action.attack_type_single_target, "Skills");
				a.set_requirement(FPalace_helper.curr_fatigue_id,2);
				a.set_attack_description("Strike and consume the appearance of a single foe. ");
				//dodge
				challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.grappling_id);
				challenge.set_defense_stat(FPalace_skills.dodging_id);
				challenge.set_variability(10);
				challenge.set_text("Asset Thief");
				consequence = new Consequence();
				consequence.add_consequence(FPalace_helper.curr_hp_id,0, "</n2> jumps at </n>, strange sores suddenly appearing on </noun2> skin. ",0,1,0,1);
				consequence.add_consequence(0,0, "</n2> misses as </pronoun2> leaps through the air, strange sores appearing, only to disappear a moment later. ",-1);
				
				a.add_challenge(challenge,consequence);
				
				challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.grappling_id);
				challenge.set_defense_stat(FPalace_skills.parrying_id);
				challenge.set_variability(10);
				challenge.set_text("");
				consequence = new Consequence();
				consequence.add_consequence(FPalace_helper.curr_hp_id,0, "",0,1,0,2);
				consequence.add_consequence(0,0, "</n> manages to fend </noun2> off. ",-1);
				
				a.add_challenge(challenge,consequence);
				//block
				challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.grappling_id);
				challenge.set_defense_stat(FPalace_skills.blocking_id);
				challenge.set_variability(10);
				challenge.set_text("");
				consequence = new Consequence();
				consequence.apply_random_effect();
				
				consequence.add_consequence(FPalace_helper.penis_length_id,-2, "</n2>s sore seem to eat at </n>. ",0,0,0,3);
				consequence.add_consequence(FPalace_helper.breast_size_id,-2, "</n2>s sore seem to eat at </n>. ",0,0,0,4);
				consequence.add_consequence(FPalace_helper.balls_size_id,-2, "</n2>s sore seem to eat at </n>. ",0,0,0,5);
				consequence.add_consequence(FPalace_helper.age_id,2, "</n2>s sore seem to eat at </n>. ",0,0,0,6);
				consequence.add_consequence(FPalace_helper.height_id,-2, "</n2>s sore seem to eat at </n>. ",0,0,0,7);
				consequence.add_consequence(FPalace_helper.curr_hp_id,-1, "</n> blocks the worst of it. ",-1);
				
				a.add_challenge(challenge,consequence);
				
				challenge = new Challenge();
				challenge.set_attack_stat(-1,1);
				challenge.set_defense_stat(-1,0);
				challenge.set_variability(0);
				challenge.set_text("");
				consequence = new Consequence();
				consequence.add_consequence(FPalace_helper.penis_girth_id,-0.75, "",0);
				consequence.add_consequence(FPalace_helper.penis_length_id,2, "</n2> looks like </pronoun2> just ate a good meal. ",0,0,0,-1,true);
				consequence.add_consequence(FPalace_helper.penis_girth_id,0.75, "",0,0,0,-1,true);
				a.add_challenge(challenge,consequence);
				
				challenge = new Challenge();
				challenge.set_attack_stat(-1,1);
				challenge.set_defense_stat(-1,0);
				challenge.set_variability(0);
				challenge.set_text("");
				consequence = new Consequence();
				consequence.add_consequence(FPalace_helper.breast_size_id,2, "</n2> looks like </pronoun2> just ate a good meal. ",0,0,0,-1,true);
				a.add_challenge(challenge,consequence);
				
				challenge = new Challenge();
				challenge.set_attack_stat(-1,1);
				challenge.set_defense_stat(-1,0);
				challenge.set_variability(0);
				challenge.set_text("");
				consequence = new Consequence();
				consequence.add_consequence(FPalace_helper.balls_size_id,2, "</n2> looks like </pronoun2> just ate a good meal. ",0,0,0,-1,true);
				a.add_challenge(challenge,consequence);
				
				challenge = new Challenge();
				challenge.set_attack_stat(-1,1);
				challenge.set_defense_stat(-1,0);
				challenge.set_variability(0);
				challenge.set_text("");
				consequence = new Consequence();
				consequence.add_consequence(FPalace_helper.age_id,-2, "</n2> looks like </pronoun2> just ate a good meal. ",0,0,0,-1,true);
				a.add_challenge(challenge,consequence);
				
				challenge = new Challenge();
				challenge.set_attack_stat(-1,1);
				challenge.set_defense_stat(-1,0);
				challenge.set_variability(0);
				challenge.set_text("");
				consequence = new Consequence();
				consequence.add_consequence(FPalace_helper.height_id,2, "</n2> looks like </pronoun2> just ate a good meal. ",0,0,0,-1,true);
				a.add_challenge(challenge,consequence);
				
			cclass_flesh.add_attack(a,3);
			
			//drain - stat damage attack that temporarily ups stat
			a = new Action();
				a.set_name("Drain");
				a.set_attack_flag(Action.attack_type_single_target, "Skills");
				a.set_requirement(FPalace_helper.curr_fatigue_id,3);
				a.set_attack_description("Strike and consume a primary stat of a single foe. ");
				//dodge
				challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.grappling_id);
				challenge.set_defense_stat(FPalace_skills.dodging_id);
				challenge.set_variability(10);
				challenge.set_text("Drain");
				consequence = new Consequence();
				consequence.add_consequence(FPalace_helper.curr_hp_id,0, "</n2> jumps at </n>, strange sores suddenly appearing on </noun2> skin. ",0,1,0,1);
				consequence.add_consequence(0,0, "</n2> misses as </pronoun2> leaps through the air, strange sores appearing, only to disappear a moment later. ",-1);
				
				a.add_challenge(challenge,consequence);
				
				challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.grappling_id);
				challenge.set_defense_stat(FPalace_skills.parrying_id);
				challenge.set_variability(10);
				challenge.set_text("");
				consequence = new Consequence();
				consequence.add_consequence(FPalace_helper.curr_hp_id,0, "",0,1,0,2);
				consequence.add_consequence(0,0, "</n> manages to fend </noun2> off. ",-1);
				
				a.add_challenge(challenge,consequence);
				//block
				challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.grappling_id);
				challenge.set_defense_stat(FPalace_skills.blocking_id);
				challenge.set_variability(10);
				challenge.set_text("");
				consequence = new Consequence();
				consequence.apply_random_effect();
				consequence.add_consequence(FPalace_helper.str_id,-2, "</n2>s sore seem to eat at </n>. ",0,0,0,3);
				consequence.add_consequence(FPalace_helper.dex_id,-2, "</n2>s sore seem to eat at </n>. ",0,0,0,4);
				consequence.add_consequence(FPalace_helper.con_id,-2, "</n2>s sore seem to eat at </n>. ",0,0,0,5);
				consequence.add_consequence(FPalace_helper.sex_appeal_id,-2, "</n2>s sore seem to eat at </n>. ",0,0,0,6);
				consequence.add_consequence(FPalace_helper.wis_id,-2, "</n2>s sore seem to eat at </n>. ",0,0,0,7);
				consequence.add_consequence(FPalace_helper.int_id,-2, "</n2>s sore seem to eat at </n>. ",0,0,0,8);
				consequence.add_consequence(FPalace_helper.will_id,-2, "</n2>s sore seem to eat at </n>. ",0,0,0,9);
				consequence.add_consequence(FPalace_helper.cha_id,-2, "</n2>s sore seem to eat at </n>. ",0,0,0,10);
				consequence.add_consequence(FPalace_helper.curr_hp_id,-1, "</n> manages to guard </noun>self, and not touch any of the sores. ",-1);
				
				a.add_challenge(challenge,consequence);
				
				challenge = new Challenge();
				challenge.set_attack_stat(-1,1);
				challenge.set_defense_stat(-1,0);
				challenge.set_variability(0);
				challenge.set_text("");
				consequence = new Consequence();
				consequence.add_consequence(FPalace_helper.str_id,1, "</n2> looks like </pronoun2> just ate a good meal. ",0,0,1,-1,true);
				a.add_challenge(challenge,consequence);
				
				challenge = new Challenge();
				challenge.set_attack_stat(-1,1);
				challenge.set_defense_stat(-1,0);
				challenge.set_variability(0);
				challenge.set_text("");
				consequence = new Consequence();
				consequence.add_consequence(FPalace_helper.dex_id,1, "</n2> looks like </pronoun2> just ate a good meal. ",0,0,1,-1,true);
				a.add_challenge(challenge,consequence);
				
				challenge = new Challenge();
				challenge.set_attack_stat(-1,1);
				challenge.set_defense_stat(-1,0);
				challenge.set_variability(0);
				challenge.set_text("");
				consequence = new Consequence();
				consequence.add_consequence(FPalace_helper.con_id,1, "</n2> looks like </pronoun2> just ate a good meal. ",0,0,1,-1,true);
				a.add_challenge(challenge,consequence);
				
				challenge = new Challenge();
				challenge.set_attack_stat(-1,1);
				challenge.set_defense_stat(-1,0);
				challenge.set_variability(0);
				challenge.set_text("");
				consequence = new Consequence();
				consequence.add_consequence(FPalace_helper.sex_appeal_id,1, "</n2> looks like </pronoun2> just ate a good meal. ",0,0,1,-1,true);
				a.add_challenge(challenge,consequence);
				
				challenge = new Challenge();
				challenge.set_attack_stat(-1,1);
				challenge.set_defense_stat(-1,0);
				challenge.set_variability(0);
				challenge.set_text("");
				consequence = new Consequence();
				consequence.add_consequence(FPalace_helper.wis_id,1, "</n2> looks like </pronoun2> just ate a good meal. ",0,0,1,-1,true);
				a.add_challenge(challenge,consequence);
				
				challenge = new Challenge();
				challenge.set_attack_stat(-1,1);
				challenge.set_defense_stat(-1,0);
				challenge.set_variability(0);
				challenge.set_text("");
				consequence = new Consequence();
				consequence.add_consequence(FPalace_helper.int_id,1, "</n2> looks like </pronoun2> just ate a good meal. ",0,0,1,-1,true);
				a.add_challenge(challenge,consequence);
				
				challenge = new Challenge();
				challenge.set_attack_stat(-1,1);
				challenge.set_defense_stat(-1,0);
				challenge.set_variability(0);
				challenge.set_text("");
				consequence = new Consequence();
				consequence.add_consequence(FPalace_helper.will_id,1, "</n2> looks like </pronoun2> just ate a good meal. ",0,0,1,-1,true);
				a.add_challenge(challenge,consequence);
				
				challenge = new Challenge();
				challenge.set_attack_stat(-1,1);
				challenge.set_defense_stat(-1,0);
				challenge.set_variability(0);
				challenge.set_text("");
				consequence = new Consequence();
				consequence.add_consequence(FPalace_helper.cha_id,1, "</n2> looks like </pronoun2> just ate a good meal. ",0,0,1,-1,true);
				a.add_challenge(challenge,consequence);
				
			cclass_flesh.add_attack(a,5);
			
			//part eater - attack a chosen part, and restore hp
			a = new Action();
				a.set_name("Part Eater");
				a.set_attack_flag(Action.attack_type_single_target, "Skills");
				a.set_requirement(FPalace_helper.curr_fatigue_id,4);
				a.set_attack_description("Strike and consume a body part of a single foe. ");
				challenge = new Challenge(true);
				challenge.set_attack_stat(-1,1);
				challenge.set_defense_stat(-1,0);
				challenge.set_variability(0);
				challenge.set_text("Part Eater");
				
				var dconsequence:Dynamic_Consequence = new Dynamic_Consequence();
				dconsequence.set_consequence_list("", Dynamic_Consequence.list_parts);//, Dynamic_Consequence.list_useitemonother);
				dconsequence.add_consequence(0,0,"", 0,0,0,1);
				
				a.add_challenge(challenge,dconsequence);
				
				challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.grappling_id);
				challenge.set_defense_stat(FPalace_skills.dodging_id);
				challenge.set_variability(20);
				challenge.set_text("");
				
				consequence = new Consequence();
				consequence.add_consequence(0,0,"</n2> jumps at </n>, strange sores suddenly appearing on </noun2> skin. ", 0,0,0,2);
				consequence.add_consequence(0,0,"</n2> misses as </pronoun2> leaps through the air, strange sores appearing, only to disappear a moment later. ",-1);
				
				a.add_challenge(challenge,consequence);
				
				challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.grappling_id);
				challenge.set_defense_stat(FPalace_skills.grappling_id);
				challenge.set_variability(20);
				challenge.set_text("");
				
				dconsequence = new Dynamic_Consequence();
				dconsequence.set_consequence_list("", Dynamic_Consequence.list_nolist, Dynamic_Consequence.list_target_part);
				dconsequence.add_consequence(FPalace_helper.curr_hp_id,-2,"</n2>s sores knaw on </n>s </choice>. ", 0);
				dconsequence.add_consequence(FPalace_helper.curr_hp_id,10,"",0,0,0,-1,true);
				dconsequence.add_consequence(FPalace_helper.curr_hp_id,-0.5,"</n> does </noun> best, but </n2>s sores still manage to nibble on </noun> </choice>. ", -1);
				dconsequence.add_consequence(FPalace_helper.curr_hp_id,2,"",-1,0,0,-1,true);
				
				a.add_challenge(challenge,dconsequence);
				
			cclass_flesh.add_attack(a,7);
			
			//part thief - just steal a part
			a = new Action();
				a.set_name("Part Thief");
				a.set_attack_flag(Action.attack_type_single_target, "Skills");
				a.set_requirement(FPalace_helper.curr_fatigue_id,4);
				a.set_attack_description("Steal a body part of a single foe. ");
				challenge = new Challenge(true);
				challenge.set_attack_stat(-1,1);
				challenge.set_defense_stat(-1,0);
				challenge.set_variability(0);
				challenge.set_text("Part Thief");
				
				dconsequence = new Dynamic_Consequence();
				dconsequence.set_consequence_list("", Dynamic_Consequence.list_parts);
				dconsequence.add_consequence(0,0,"", 0,0,0,1);
				
				a.add_challenge(challenge,dconsequence);
				
				challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.grappling_id);
				challenge.set_defense_stat(FPalace_skills.dodging_id);
				challenge.set_variability(20);
				challenge.set_text("");
				
				consequence = new Consequence();
				consequence.add_consequence(0,0,"</n2> jumps at </n>, strange sores suddenly appearing on </noun2> skin. ", 0,0,0,2);
				consequence.add_consequence(0,0,"</n2> misses as </pronoun2> leaps through the air, strange sores appearing, only to disappear a moment later. ",-1);
				
				a.add_challenge(challenge,consequence);
				
				challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.grappling_id);
				challenge.set_defense_stat(FPalace_skills.grappling_id);
				challenge.set_variability(20);
				challenge.set_text("");
				
				consequence = new Consequence();
				consequence.add_consequence(FPalace_helper.curr_hp_id,0,"", 0,0,0,3);
				consequence.add_consequence(FPalace_helper.curr_hp_id,-2,"</n> does </noun> best, but </n2>s sores still manage to nibble on </noun> </choice>. ", -1);
				
				a.add_challenge(challenge,consequence);
				
				challenge = new Challenge(true);
				challenge.set_attack_stat(-1,0);
				challenge.set_defense_stat(-1,0);
				challenge.set_variability(0);
				challenge.set_text("");
				
				dconsequence = new Dynamic_Consequence();
				dconsequence.set_consequence_list("</n2>s sores envelope and absorb </n>s </choice>. ", Dynamic_Consequence.list_nolist, Dynamic_Consequence.list_removeandaddpart);
				a.add_challenge(challenge,dconsequence);
				
			cclass_flesh.add_attack(a,9);
			
			return cclass_flesh;
		}
		
		//Primary: Sex Appeal, Seconday: Dex ... Stripper/AoE Lust attacks
		public static function cclass_stripper():Character_class{
			var cclass_strip:Character_class = new Character_class();
			cclass_strip.set_name("Stripper");
			
			cclass_strip.set_bonus(FPalace_helper.sex_appeal_id,2);
			cclass_strip.set_bonus(FPalace_helper.dex_id,1);
			
			cclass_strip.add_class_skill(FPalace_skills.covert_id);
			
			//Lvl 1 - Dance - Lust AoE
			var a:Action = new Action();
				a.set_name("Dance");
				a.set_attack_description("Increase the lust of everyone. ");
				a.set_dialogue("</n2> does </noun> best to do a sexy dance. ", 0);
				a.set_attack_flag(Action.attack_type_all_target_no_user_conseq, "Sex");
				a.set_requirement(FPalace_helper.curr_fatigue_id,1);
				var challenge:Challenge = new Challenge();
				
				challenge.set_attack_stat(FPalace_helper.sex_appeal_id);
				challenge.set_defense_stat(FPalace_helper.wis_id);
				challenge.set_variability(20);
				challenge.set_text("Dance");
				var consequence:Consequence = new Consequence();
				consequence.set_max_damage(20);
				var inter_chal:Challenge = new Challenge(true);
					inter_chal.set_attack_stat(FPalace_skills.concentration_id);
					inter_chal.set_defense_stat(-1,0);
					inter_chal.set_variability(10);
				
				consequence.set_interupt_chal(inter_chal);
				consequence.add_consequence(-FPalace_helper.lust_id,Consequence.amt_from_roll_const, "</n2>s sexy dance leaves </n> feeling a little hot. ",0);
				consequence.add_consequence(FPalace_helper.wis_id,-1, "</n>s eyes are glued to </n2>s gyrations. ",5,1,1);
				consequence.add_consequence(0,0, "</n> ignores </n2>s strange motions! ",-1);
				consequence.amt_by_roll_flag();
				a.add_challenge(challenge,consequence);
				
			cclass_strip.add_attack(a);
			
			//Lvl 3 - Strip - Chance to get money while increasing lust of everyone
			inter_chal = new Challenge(true);
					inter_chal.set_attack_stat(FPalace_skills.concentration_id);
					inter_chal.set_defense_stat(-1,0);
					inter_chal.set_variability(15);
				
				a = new Action();
				a.set_name("Strip");
				a.set_dialogue("</n2> strips, shaking </noun2> money-maker. ", 0);
				a.set_attack_description("Strip down for tips. ");
				a.set_attack_flag(Action.attack_type_all_target_no_user_conseq, "Sex");
				a.set_requirement(FPalace_helper.curr_fatigue_id,2);
				
				challenge = new Challenge();
				challenge.set_attack_stat(FPalace_helper.sex_appeal_id);
				challenge.set_defense_stat(FPalace_helper.wis_id);
				challenge.set_variability(20);
				challenge.set_text("Strip");
				consequence = new Consequence();
				consequence.set_max_damage(20);
				consequence.set_interupt_chal(inter_chal);
				consequence.add_consequence(-FPalace_helper.lust_id,Consequence.amt_from_roll_const, "</n2>s sexy stripping leaves </n> feeling a little hot. ",0);
				consequence.add_consequence(FPalace_helper.wis_id,-2, "</n>s eyes are glued to </n2>s slowly appearing flesh. ",5,1,1,1);
				consequence.add_consequence(0,0, "</n> ignores </n2>s strange motions! ",-1);
				consequence.amt_by_roll_flag();
				a.add_challenge(challenge,consequence);
				
				challenge = new Challenge();
				challenge.set_attack_stat(-1,1);
				challenge.set_defense_stat(Character.gold_id);
				challenge.set_variability(0);
				challenge.set_text("");
				var iconsequence:Item_Consequence = new Item_Consequence();
				iconsequence.add_consequence(0,0, "</n2> can't help but smile as </n> throws </noun2> a tip. ",-1);
				iconsequence.add_consequence(0,0, "</n> looks disapointed as </noun> find </noun> pockets devoid of gold to throw at </n2>. ",0);
				iconsequence.add_item_reward(FPalace_items.gold(1), -1, false, false);
				iconsequence.add_item_reward(FPalace_items.gold(-1), -1);
				
				a.add_challenge(challenge,iconsequence);
				
			cclass_strip.add_attack(a,3);
			
			//Lvl 5 - target clothing removal
			
			//Lvl 7 - target held item drop
			
			//Lvl 9 - should do a full strip - character strips off items of clothing one by one... Lust AoE that does similar lust damage to Rape/Envelope
			
			return cclass_strip;
		}
		
		//Primary: Sex Appeal, Seconday: Wis ... Nun of Fertility (Herm) goddess. Lust increasing heals
		public static function cclass_fertility_nun():Character_class{
			var cclass_nun:Character_class = new Character_class();
			cclass_nun.set_name("Fertility Nun");
			
			cclass_nun.set_bonus(FPalace_helper.sex_appeal_id,2);
			cclass_nun.set_bonus(FPalace_helper.wis_id,1);
			
			cclass_nun.add_class_skill(FPalace_skills.crafting_id);
			cclass_nun.add_class_skill(FPalace_skills.spiritual_magic_id);
			
			//Healing milk - spend mp/lust to restore hp and increase lust
			var a:Action = new Action();
				a.set_name("Healing Milk");
				a.set_attack_description("Feed some of your holy milk to a single target, restoring their vitality. ");
				a.set_attack_flag(Action.attack_type_single_target, "Magic");
				a.set_requirement(FPalace_helper.lust_id,10);
				a.set_requirement(FPalace_helper.curr_mp_id,1);
				a.set_requirement(FPalace_helper.milk_volume_id,1,false);
				//a.set_delayed_trigger();
				
				//Overworld option
				var a2:Action = new Action();
				a2.set_name("Healing Milk");
				a2.set_attack_flag(-1, "Magic");
				a2.set_dialogue("",0);
				a2.set_party_use();
				a2.set_personal();
				a2.set_requirement(FPalace_helper.lust_id,10);
				a2.set_requirement(FPalace_helper.curr_mp_id,1);
				a2.set_requirement(FPalace_helper.milk_volume_id,1,false);
				
				var challenge:Challenge = new Challenge(true);
				challenge.set_attack_stat(-1,0);
				challenge.set_attack_status_id(Tick_Effect.lactating_status);
				challenge.set_defense_stat(-1,1);
				challenge.set_variability(0);
				challenge.set_text("Healing Milk");
				
				var consequence:Consequence = new Consequence();
				consequence.add_consequence(0,0,"</n2> prays to the fertility godess, asking her to bless the milk already streaming from her. ",0,0,0,5);
				consequence.add_consequence(0,0,"", -1,0,0,1);
				
				a.add_challenge(challenge,consequence);
				a2.add_challenge(challenge,consequence);
				
				challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.spiritual_magic_id);
				challenge.set_defense_stat(-1,15);
				challenge.set_variability(20);
				challenge.set_text("");
				
				var tf:Tick_Effect = new Tick_Effect();
				tf.set_status_id(Tick_Effect.lactating_status);
				tf.set_end_tick(Main.t1_hour);
				
				consequence = new Consequence();
				consequence.add_consequence(0,0,"</n2> prays to the fertility godess, and suddenly </noun2> nipples start streaming milk. ", 0,0,0,2,true,tf);
				consequence.add_consequence(0,0,"</n2> prays to the fertility godess, but goes unanswered. ", -1);
				
				a.add_challenge(challenge,consequence);
				a2.add_challenge(challenge,consequence);
				
				challenge = new Challenge();
				challenge.set_attack_stat(Character.relations_affect_id);
				challenge.set_defense_stat(-1,0);
				challenge.set_variability(0);
				challenge.set_text("");
				
				consequence = new Consequence();
				consequence.add_consequence(0,0,"", 0,0,0,4);
				consequence.add_consequence(0,0,"",-1,0,0,3);
				
				a.add_challenge(challenge,consequence);
				a2.add_challenge(challenge,consequence);
				
				challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.grappling_id);
				challenge.set_defense_stat(FPalace_skills.grappling_id);
				challenge.set_variability(10);
				challenge.set_text("");
				
				consequence = new Consequence();
				consequence.add_consequence(0,0,"</n2> manages to force </noun2> milk on </n>. ", 0,0,0,4);
				consequence.add_consequence(0,0,"</n> knocks </n2>s attempt to feed </objnoun> aside. ",-1);
				
				a.add_challenge(challenge,consequence);
				a2.add_challenge(challenge,consequence);
				
				challenge = new Challenge();
				challenge.set_attack_stat(FPalace_helper.milk_volume_id);
				challenge.set_defense_stat(-1,1);
				challenge.set_variability(0);
				challenge.set_text("");
				
				consequence = new Consequence();
				consequence.add_consequence(-FPalace_helper.curr_hp_id,Consequence.amt_from_roll_const,"</n> looks surprisingly satisfied as the flow of milk from </n2> stops. ", 0);
				consequence.amt_by_roll_flag(["r", "/", 25.0]);
				consequence.set_consume(FPalace_helper.milk_volume_id);
				
				a.add_challenge(challenge,consequence);
				a2.add_challenge(challenge,consequence);
				
				challenge = new Challenge();
				challenge.set_attack_stat(FPalace_skills.spiritual_magic_id);
				challenge.set_defense_stat(-1,10);
				challenge.set_variability(20);
				challenge.set_text("");
				
				consequence = new Consequence();
				consequence.add_consequence(0,0,"</n2> milk shimmers and sparkles as it streams. ", 0,0,0,2);
				consequence.add_consequence(0,0,"</n2> prayers to the fertility godess go unanswered. ", -1);
				
				a.add_challenge(challenge,consequence);
				a2.add_challenge(challenge,consequence);
				
			cclass_nun.add_attack(a);
			cclass_nun.add_action(a2);
			
			//mass lust boost (including enemies)
			
			//mass heal (including enemies)
			
			//party heal + lust boost
			
			//fertility/max hp enhancement
			
			//Impregnate - increase lust and impregnate/force feed target.
				var a3:Action = new Action();
				a3.set_requirement(FPalace_helper.lust_id,30);
				a3.set_requirement(FPalace_helper.cum_volume_id,1,false);
				a3.set_requirement(FPalace_helper.curr_fatigue_id,2);
					a3.set_name("Impregnate");
					a3.set_attack_description("Impregnate a single target. ");
					a3.set_attack_flag(Action.attack_type_single_target, "Sex");
						var challenge2:Challenge = new Challenge();
						challenge2.set_attack_stat(FPalace_helper.sex_appeal_id);
						challenge2.set_defense_stat(FPalace_helper.wis_id);
						challenge2.set_variability(20);
						challenge2.set_text("");
						var consequence2:Consequence = new Consequence();
						consequence2.add_consequence(FPalace_helper.lust_id,5, "</n2> cock begins to spasm and launches semen on to </n>. The semen seems to seek an egg to impregnate and begins to move across </n>s form! ",0,1,0,1);
						consequence2.add_consequence(FPalace_helper.lust_id,10, "</n> seems to like the feeling provided by the moving spooge. ",5);
						consequence2.add_consequence(0,0, "</n2> cock rumbles and spits its load, but </n> steps out of the way. ",-1);
									
					a3.add_challenge(challenge2,consequence2);
						
						challenge2 = new Challenge();
						challenge2.set_attack_stat(-1,1);
						challenge2.set_defense_stat(FPalace_helper.vaginal_depth_id);
						challenge2.set_variability(0);
						challenge2.set_text("");
						consequence2 = new Consequence();
						consequence2.set_change_on_success();
						consequence2.set_impregnate()
						consequence2.add_consequence(FPalace_helper.curr_hp_id,-1, "</n> coughs and chokes as a load of </n2>s semen oozes into </noun> mouth. ",0,0,0,2);
						consequence2.add_consequence(FPalace_helper.lust_id,5, "the semen oozes into </n>s groin. ",-1,1,0);
						
					a3.add_challenge(challenge2,consequence2);
					
						challenge2 = new Challenge();
						challenge2.set_attack_stat(-1,2);
						challenge2.set_defense_stat(-1,1);
						challenge2.set_variability(0);
						challenge2.set_text("");
						consequence2 = new Consequence();
						
						consequence2.set_consume(FPalace_helper.cum_volume_id);
						consequence2.add_consequence(0,0, "",0);
						
						
					a3.add_challenge(challenge2,consequence2);
				
				cclass_nun.add_attack(a3,5);
			
			return cclass_nun;
		}
		
		//Primary: Sex Appeal, Seconday: Cha ... controls character standing (moving them to the sideline...)
		public static function cclass_dominatrix():Character_class{
			var cclass_dom:Character_class = new Character_class();
			cclass_dom.set_name("Dominatrix");
			
			cclass_dom.set_bonus(FPalace_helper.sex_appeal_id,2);
			cclass_dom.set_bonus(FPalace_helper.cha_id,1);
			
			cclass_dom.add_class_skill(FPalace_skills.people_id);
			cclass_dom.add_class_skill(FPalace_skills.striking_id);
			
			//Slap of love - increase standing with target, while dealing normal attack damage
			var a:Action = new Action();
				a.set_name("Loving Slap");
				a.set_attack_flag(Action.attack_type_single_target, "Skills");
				a.set_requirement(FPalace_helper.curr_fatigue_id,1);
				a.set_attack_description("Strike out with love on a single foe. ");
				//dodge
				var challenge:Challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.striking_id);
				challenge.set_defense_stat(FPalace_skills.dodging_id);
				challenge.set_variability(10);
				challenge.set_text("Loving Slap");
				var consequence:Consequence = new Consequence();
				consequence.add_consequence(FPalace_helper.curr_hp_id,0, "</n2> slaps </n>, ",0,1,0,1);
				consequence.add_consequence(0,0, "</n2> slaps out at air. ",-1);
				
				a.add_challenge(challenge,consequence);
				
				challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.striking_id);
				challenge.set_defense_stat(FPalace_skills.parrying_id);
				challenge.set_variability(10);
				challenge.set_text("");
				consequence = new Consequence();
				consequence.add_consequence(FPalace_helper.curr_hp_id,0, "",0,1,0,2);
				consequence.add_consequence(0,0, "only to have the hand redirected. ",-1);
				
				a.add_challenge(challenge,consequence);
				//block
				challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.striking_id);
				challenge.set_defense_stat(FPalace_skills.blocking_id);
				challenge.set_variability(10);
				challenge.set_text("");
				consequence = new Consequence();
				consequence.set_max_damage(4);
				consequence.add_consequence(FPalace_helper.curr_hp_id,Consequence.amt_from_roll_const, "and the full force of the blow hits its mark. ",0,0,0,3);
				consequence.add_consequence(FPalace_helper.curr_hp_id,-1, "</n> manages to cover </noun>self just in time. ",-1,0,0,3);
				consequence.amt_by_roll_flag();
				
				a.add_challenge(challenge,consequence);
				
				challenge = new Challenge();
				challenge.set_attack_stat(FPalace_helper.sex_appeal_id);
				challenge.set_defense_stat(FPalace_helper.wis_id);
				challenge.set_variability(20);
				challenge.set_text("");
				consequence = new Consequence();
				consequence.add_consequence(Character.relations_affect_id,8,"The promise of more on </n2>s face leaves </n> confused as to where </pronoun> stands with </n2>. ",0);
				consequence.add_consequence(FPalace_helper.curr_hp_id,0, "</n> ignores the look </n2> gives </noun>! ",-1);
				
				a.add_challenge(challenge,consequence);
			cclass_dom.add_attack(a);
			
			//false swipe - increase standing with target, won't actually hit if it could kill target
			a = new Action();
				a.set_name("False Swipe");
				a.set_attack_flag(Action.attack_type_single_target, "Skills");
				a.set_requirement(FPalace_helper.curr_fatigue_id,1);
				a.set_attack_description("Strike out with concern for your single foes well being. ");
				//dodge
				challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.striking_id);
				challenge.set_defense_stat(FPalace_skills.dodging_id);
				challenge.set_variability(10);
				challenge.set_text("False Swipe");
				consequence = new Consequence();
				consequence.add_consequence(FPalace_helper.curr_hp_id,0, "</n2> slaps </n>, ",0,1,0,1);
				consequence.add_consequence(0,0, "</n2> slaps out at air. ",-1);
				
				a.add_challenge(challenge,consequence);
				
				challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.striking_id);
				challenge.set_defense_stat(FPalace_skills.parrying_id);
				challenge.set_variability(10);
				challenge.set_text("");
				consequence = new Consequence();
				consequence.add_consequence(FPalace_helper.curr_hp_id,0, "",0,1,0,2);
				consequence.add_consequence(0,0, "only to have the hand redirected. ",-1);
				
				a.add_challenge(challenge,consequence);
				//Health check
				challenge = new Challenge();
				challenge.set_attack_stat(-1,5);
				challenge.set_defense_stat(FPalace_helper.curr_hp_id);
				challenge.set_variability(0);
				challenge.set_text("");
				consequence = new Consequence();
				consequence.add_consequence(FPalace_helper.curr_hp_id,0, "",-1,1,0,3);
				consequence.add_consequence(0,0, "but holds back on the blow. ",0,0,0,4);
				
				a.add_challenge(challenge,consequence);
				//block
				challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.striking_id);
				challenge.set_defense_stat(FPalace_skills.blocking_id);
				challenge.set_variability(10);
				challenge.set_text("");
				consequence = new Consequence();
				consequence.set_max_damage(4);
				consequence.add_consequence(FPalace_helper.curr_hp_id,Consequence.amt_from_roll_const, "and the full force of the blow hits its mark. ",0,0,0,4);
				consequence.add_consequence(FPalace_helper.curr_hp_id,-1, "</n> manages to cover </noun>self just in time. ",-1,0,0,4);
				consequence.amt_by_roll_flag();
				
				a.add_challenge(challenge,consequence);
				
				challenge = new Challenge();
				challenge.set_attack_stat(FPalace_helper.sex_appeal_id);
				challenge.set_defense_stat(FPalace_helper.wis_id);
				challenge.set_variability(20);
				challenge.set_text("");
				consequence = new Consequence();
				consequence.add_consequence(Character.relations_affect_id,8,"The promise of more on </n2>s face leaves </n> confused as to where </pronoun> stands with </n2>. ",0);
				consequence.add_consequence(FPalace_helper.curr_hp_id,0, "</n> ignores the look </n2> gives </noun>! ",-1);
				
				a.add_challenge(challenge,consequence);
			cclass_dom.add_attack(a,3);
			
			//Want a way to take control of a character
			
			//Commanding tone - pretty much a stronger version of "talk down"
			
			return cclass_dom;
		}
		
		//Primary: Sex Appeal, Seconday: Will
		public static function cclass_sexmagus():Character_class{
				var cclass_sexmagux:Character_class = new Character_class();
				cclass_sexmagux.set_name("Sex Magus");
				cclass_sexmagux.set_bonus(FPalace_helper.sex_appeal_id,2);
				cclass_sexmagux.set_bonus(FPalace_helper.will_id,1);
				
				cclass_sexmagux.add_class_skill(FPalace_skills.magic_id);
				cclass_sexmagux.add_class_skill(FPalace_skills.physical_magic_id);
				cclass_sexmagux.add_class_skill(FPalace_skills.mental_magic_id);
				//Lvl 1 - Lust Thief
				var a3:Action = new Action();
				a3.set_requirement(FPalace_helper.curr_mp_id,1);
					a3.set_name("Lust Thief");
					a3.set_attack_description("Steal the lust of a single target. ");
					a3.set_attack_flag(Action.attack_type_single_target, "Magic");
					//Need an effect on both characters here... (target loses lust, user gains lust) - done through blowback below
					a3.set_blowback(FPalace_helper.lust_id,0);
						var challenge2:Challenge = new Challenge(true);
						challenge2.set_attack_stat(FPalace_skills.physical_magic_id);
						challenge2.set_defense_stat(FPalace_skills.magic_id);
						challenge2.set_variability(20);
						challenge2.set_text("Lust Thief");
						var consequence2:Consequence = new Consequence();
						consequence2.amt_by_roll_flag();
						consequence2.add_consequence(FPalace_helper.lust_id,Consequence.amt_from_roll_const, "</n2> licks </noun2> finger and points at </n> and </n> seems to lose some of </noun> lusty appearance. ",0);
						
						consequence2.add_consequence(0,0, "</n2> attempts to control the flows of lust in the room, but fails.",-1);
															
					a3.add_challenge(challenge2,consequence2);
				
				cclass_sexmagux.add_attack(a3);
				
				//Lvl 2 - some sort of "groping hand" attack...
				a3 = new Action();
				a3.set_requirement(FPalace_helper.lust_id,10);
				a3.set_requirement(FPalace_helper.curr_mp_id,2);
					a3.set_name("Groping Hand");
					a3.set_attack_description("Grope a single target with a magical hand. ");
					a3.set_attack_flag(Action.attack_type_single_target, "Magic");
					
					challenge2 = new Challenge(true);
					challenge2.set_attack_stat(FPalace_skills.mental_magic_id);
					challenge2.set_defense_stat(-1,5);
					challenge2.set_variability(10);
					challenge2.set_text("Groping Hand");
					consequence2 = new Consequence();
					consequence2.add_consequence(0,0, "</n2> moves </noun2> hands in an intrecate manner though strangely ends with what looks like groping. ",0,0,0,1);
					consequence2.add_consequence(FPalace_helper.lust_id,40, "</n2> moves </noun2> hands in a series of clumsy gestures that do little but look like groping at the air. ",-1,0,0,-1,true);
					
					a3.add_challenge(challenge2,consequence2);
					
					challenge2 = new Challenge(true);
					challenge2.set_attack_stat(FPalace_skills.physical_magic_id);
					challenge2.set_defense_stat(FPalace_skills.magic_id);
					challenge2.set_variability(10);
					challenge2.set_text("");
					consequence2 = new Consequence();
					consequence2.amt_by_roll_flag();
					consequence2.set_max_damage(4);
					consequence2.add_consequence(FPalace_helper.curr_hp_id,Consequence.amt_from_roll_const, "</n> can't help but stop as </pronoun> feels a hand groping </objnoun>. ",0);
					consequence2.add_consequence(FPalace_helper.lust_id,5, "",0);
					consequence2.add_consequence(0,0, "Nothing happens! ",-1);
									
					
					a3.add_challenge(challenge2,consequence2);
					
				cclass_sexmagux.add_attack(a3,2);
				
				//Lvl 3 - spell to destroy a piece of targets equipment
				
				//Lvl 4 - spell to change gender of target
				
				//Lvl 5 - BE Ray
				a3 = new Action();
				a3.set_requirement(FPalace_helper.lust_id,10);
				a3.set_requirement(FPalace_helper.curr_mp_id,2);
					a3.set_name("BE Ray");
					a3.set_attack_description("Increase the size of a single foes breasts. ");
					a3.set_attack_flag(Action.attack_type_single_target, "Magic");
					
					challenge2 = new Challenge(true);
					challenge2.set_attack_stat(FPalace_skills.mental_magic_id);
					challenge2.set_defense_stat(-1,10);
					challenge2.set_variability(10);
					challenge2.set_text("BE Ray");
					consequence2 = new Consequence();
					consequence2.add_consequence(0,0, "</n2> moves </noun2> hands in an intrecate manner culminating in a beam that launches from </noun2> towards </n>. ",0,0,0,1);
					consequence2.add_consequence(FPalace_helper.lust_id,40, "</n2> moves </noun2> hands in a series of clumsy gestures that do little but generate a quickly disipating pink cloud. ",-1,0,0,-1,true);
					
					a3.add_challenge(challenge2,consequence2);
					
					challenge2 = new Challenge(true);
					challenge2.set_attack_stat(FPalace_skills.physical_magic_id);
					challenge2.set_defense_stat(FPalace_skills.magic_id);
					challenge2.set_variability(2);
					challenge2.set_text("");
					consequence2 = new Consequence();
					consequence2.amt_by_roll_flag();
					consequence2.set_max_damage(3);
					consequence2.add_consequence(-FPalace_helper.breast_size_id,Consequence.amt_from_roll_const, "The beam strikes </n>, and there is a visible stiring in </noun> chest. ",0);
					consequence2.add_consequence(-FPalace_helper.lust_id,Consequence.amt_from_roll_const, "",0,0,0,2);
					consequence2.add_consequence(0,0, "The beam shoots true, but </n> resists its effects! ",-1);
									
					
					a3.add_challenge(challenge2,consequence2);
					
					challenge2 = new Challenge();
					challenge2.set_attack_stat(-1,0);
					challenge2.set_defense_stat(FPalace_helper.breast_size_id);
					challenge2.set_variability(0);
					challenge2.set_text("");
					consequence2 = new Consequence();
					//has tits! do nothing
					consequence2.add_consequence(0,0, "",-1);
					//add dem titties!
					consequence2.add_consequence(0,0, "</n> feels a sudden stir from </noun> chest. ",0);
					consequence2.add_change_effect(FPalace_helper.new_breasts(null));
						
					
					a3.add_challenge(challenge2,consequence2);
				cclass_sexmagux.add_attack(a3,5);
				
				//Lvl 5 - PE Ray
				a3 = new Action();
				a3.set_requirement(FPalace_helper.lust_id,10);
				a3.set_requirement(FPalace_helper.curr_mp_id,2);
					a3.set_name("PE Ray");
					a3.set_attack_description("Increase the size of a single foes penis. ");
					a3.set_attack_flag(Action.attack_type_single_target, "Magic");
					
					challenge2 = new Challenge(true);
					challenge2.set_attack_stat(FPalace_skills.mental_magic_id);
					challenge2.set_defense_stat(-1,10);
					challenge2.set_variability(10);
					challenge2.set_text("PE Ray");
					consequence2 = new Consequence();
					consequence2.add_consequence(0,0, "</n2> moves </noun2> hands in an intrecate manner culminating in a beam that launches from </noun2> towards </n>. ",0,0,0,1);
					consequence2.add_consequence(FPalace_helper.lust_id,40, "</n2> moves </noun2> hands in a series of clumsy gestures that do little but generate a quickly disipating pink cloud. ",-1,0,0,-1,true);
					
					a3.add_challenge(challenge2,consequence2);
					
					challenge2 = new Challenge(true);
					challenge2.set_attack_stat(FPalace_skills.physical_magic_id);
					challenge2.set_defense_stat(FPalace_skills.magic_id);
					challenge2.set_variability(2);
					challenge2.set_text("");
					consequence2 = new Consequence();
					consequence2.amt_by_roll_flag();
					consequence2.set_max_damage(6);
					consequence2.add_consequence(-FPalace_helper.penis_length_id,Consequence.amt_from_roll_const, "The beam strikes </n>, and there is a visible stiring in </noun> groin. ",0);
					consequence2.add_consequence(-FPalace_helper.lust_id,Consequence.amt_from_roll_const, "",0,0,0,2);
					consequence2.add_consequence(0,0, "The beam shoots true, but </n> resists its effects! ",-1);
									
					a3.add_challenge(challenge2,consequence2);
					
					challenge2 = new Challenge();
					challenge2.set_attack_stat(-1,0);
					challenge2.set_defense_stat(FPalace_helper.penis_length_id);
					challenge2.set_variability(0);
					challenge2.set_text("");
					consequence2 = new Consequence();
					//has a dick. Grow the girth!
					consequence2.add_consequence(FPalace_helper.penis_girth_id,1.5, "",-1,0,0,3);
					//add a dick!
					consequence2.add_consequence(0,0, "</n> feels a sudden stir from </noun> groin. ",0,0,0,3);
					consequence2.add_change_effect(FPalace_helper.new_penis(null));
						
					a3.add_challenge(challenge2,consequence2);
					
					challenge2 = new Challenge();
					challenge2.set_attack_stat(-1,0);
					challenge2.set_defense_stat(FPalace_helper.balls_size_id);
					challenge2.set_variability(0);
					challenge2.set_text("");
					consequence2 = new Consequence();
					//has balls. Grow the girth!
					consequence2.add_consequence(FPalace_helper.balls_size_id,1.5, "",-1);
					//add a dick!
					consequence2.add_consequence(0,0, "",0);
					consequence2.add_change_effect(FPalace_helper.new_balls(null));
						
					a3.add_challenge(challenge2,consequence2);
				cclass_sexmagux.add_attack(a3,5);
				
				//Lvl 6 - spell to create bra/jockstrap to lower weight added by over-heavy endowments
				
				//Lvl 7 spell to change orientation: add and remove likes....
				
				//Lvl 9 - spell to create illusory harem
								
				return cclass_sexmagux
		}
		
		//Primary: Sex Appeal, Seconday: Int
		public static function cclass_alchemist():Character_class{
				var cclass_alchemist:Character_class = new Character_class();
				cclass_alchemist.set_name("Alchemist");
					
				cclass_alchemist.set_bonus(FPalace_helper.sex_appeal_id,2);
				cclass_alchemist.set_bonus(FPalace_helper.int_id,1);
				
				cclass_alchemist.add_class_skill(FPalace_skills.knowledge_id);
				cclass_alchemist.add_class_skill(FPalace_skills.item_alchemy_effects_id);
				cclass_alchemist.add_class_skill(FPalace_skills.alchemy_id);
			
				
				var a:Action = new Action();
					a.set_personal();
					a.set_attack_flag(-1, "Skills");
					a.set_name("Alchemy");
					a.set_alchemy_flag();
					
				cclass_alchemist.add_action(a);
				
				//this is an attempt to make alchemy more effective - works! - see alchemy in Character for how the skill works
					a = new Action();
					a.set_name("");
					a.set_alchemy_flag();
					
					
				cclass_alchemist.add_action(a,3);
				
				a = new Action();
				a.set_personal();
				a.set_attack_flag(-1, "Skills");
				a.set_name("Dilute");
				a.set_dialogue("",0);
				
				var challenge:Challenge = new Challenge(true);
				challenge.set_tick_cost(Main.t1_min);
				challenge.set_attack_stat(-1,1);
				challenge.set_defense_stat(-1,0);
				challenge.set_variability(0);
				challenge.set_text("Dilute");
				
				var dconsequence:Dynamic_Consequence = new Dynamic_Consequence();
				dconsequence.set_consequence_list("</n> quickly distills down the </choice>. ", Dynamic_Consequence.list_inventory_alchemy, Dynamic_Consequence.list_dilute);//Should only be listing alchemical potions here...
				dconsequence.add_consequence(0,0,"Choose item to dilute:\n", 0);
				
				a.add_challenge(challenge,dconsequence);
								
				cclass_alchemist.add_action(a,3);
				
				//'use item' on others
				a = new Action();
				a.set_name("Item Attack");
				a.set_attack_description("Force a single foe to use an item of your chosing. ");
				a.set_attack_flag(Action.attack_type_single_target, "Skills");
				a.set_requirement(FPalace_helper.curr_fatigue_id,1);
				//a.set_delayed_trigger();
				
				challenge = new Challenge(true);
				challenge.set_attack_stat(-1,1);
				challenge.set_defense_stat(-1,0);
				challenge.set_variability(0);
				challenge.set_text("Item Attack");
				
				dconsequence = new Dynamic_Consequence();
				dconsequence.set_consequence_list("", Dynamic_Consequence.list_inventory);
				dconsequence.add_consequence(0,0,"", 0,0,0,1);
				
				a.add_challenge(challenge,dconsequence);
				
				challenge = new Challenge();
				challenge.set_attack_stat(Character.relations_affect_id);
				challenge.set_defense_stat(-1,0);
				challenge.set_variability(0);
				challenge.set_text("");
				
				var consequence:Consequence = new Consequence();
				consequence.add_consequence(0,0,"", 0,0,0,3);
				consequence.add_consequence(0,0,"",-1,0,0,2);
				
				a.add_challenge(challenge,consequence);
				
				challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.grappling_id);
				challenge.set_defense_stat(FPalace_skills.grappling_id);
				challenge.set_variability(10);
				challenge.set_text("");
				
				consequence = new Consequence();
				consequence.add_consequence(0,0,"", 0,0,0,3);
				consequence.add_consequence(0,0,"</n> knocks </n2>s attempt at item use asside. ",-1);
				
				a.add_challenge(challenge,consequence);
				
				challenge = new Challenge();
				challenge.set_attack_stat(-1,1);
				challenge.set_defense_stat(-1,0);
				challenge.set_variability(0);
				challenge.set_text("");
				
				dconsequence = new Dynamic_Consequence();
				dconsequence.set_consequence_list("", Dynamic_Consequence.list_nolist, Dynamic_Consequence.list_useitemonother);
				
				a.add_challenge(challenge,dconsequence);
				
				cclass_alchemist.add_attack(a,3);
				
					a = new Action();
					a.set_name("");
					a.set_alchemy_flag();
					
					
				cclass_alchemist.add_action(a,5);
				
				a = new Action();
				a.set_personal();
				a.set_attack_flag(-1, "Skills");
				a.set_name("Refine");
				a.set_dialogue("",0);
				
				challenge = new Challenge(true);
				challenge.set_attack_stat(-1,1);
				challenge.set_defense_stat(-1,0);
				challenge.set_variability(0);
				challenge.set_text("Refine");
				
				dconsequence = new Dynamic_Consequence();
				dconsequence.set_consequence_list("", Dynamic_Consequence.list_inventory_alchemy);
				dconsequence.add_consequence(0,0,"Choose item to refine:\n", 0,0,0,1);
				
				a.add_challenge(challenge,dconsequence);
				
				challenge = new Challenge(true);
				challenge.set_attack_stat(-1,1);
				challenge.set_defense_stat(-1,0);
				challenge.set_variability(0);
				challenge.set_text("Refine");
				
				dconsequence = new Dynamic_Consequence();
				dconsequence.set_consequence_list("", Dynamic_Consequence.list_nolist, Dynamic_Consequence.list_refine);
				dconsequence.add_consequence(0,0,"Choose property to remove:\n", 0,0,0,2);
				
				a.add_challenge(challenge,dconsequence);
				
				challenge = new Challenge();
				challenge.set_tick_cost(Main.t30_min);
				challenge.set_attack_stat(-1,1);
				challenge.set_defense_stat(-1,0);
				challenge.set_variability(0);
				challenge.set_text("");
				
				dconsequence = new Dynamic_Consequence();
				dconsequence.set_consequence_list("</n> does </noun> best to refine the </choice>. ", Dynamic_Consequence.list_nolist, Dynamic_Consequence.list_remove_alchemy);
				
				a.add_challenge(challenge,dconsequence);
				
				cclass_alchemist.add_action(a,5);
				
				//Mutagen
				a = new Action();
				a.set_name("Jekylls Mutagen");
				a.set_attack_flag(Action.attack_type_self_target, "Skills");
				a.set_attack_description("Quickly mix a potion to increase your strength, at the cost of your intelligence. ");
				a.set_requirement(FPalace_helper.curr_fatigue_id,2);
				
				challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.alchemy_id);
				challenge.set_defense_stat(-1,10);
				challenge.set_variability(10);
				challenge.set_text("Jekylls Mutagen");
				consequence = new Consequence();
				
				var tf:Tick_Effect = new Tick_Effect();
				tf.set_end_tick(Main.t1_hour*12);
				var c2:Consequence = new Consequence();
				c2.add_consequence(FPalace_helper.int_id,2, "", 0,0,1);
				c2.add_consequence(FPalace_helper.str_id,-4, "", 0,0,1);
				
				tf.set_end_consequence(c2);
				
				c2 = new Consequence();
				c2.add_consequence(FPalace_helper.int_id,-2, "", 0,0,1);
				c2.add_consequence(FPalace_helper.str_id,4, "", 0,0,1);
				tf.set_tick_consequence(1, c2);
				
				consequence.add_consequence(0,0, "</n2> rapidly mixes a potion and drinks it. ",0,0,0,-1, false, tf);
				consequence.add_consequence(FPalace_helper.curr_hp_id,-2, "</n2> clumsily mixes a potion and drinks it. ",-1);
				
				a.add_challenge(challenge,consequence);
				
				cclass_alchemist.add_attack(a,7);
				
				var a2:Action = new Action();
				a2.set_name("Jekylls Mutagen");
				a2.set_attack_flag(-1, "Skills");
				a2.set_dialogue("",0);
				a2.set_personal();
				a2.set_requirement(FPalace_helper.curr_fatigue_id,2);
				
				a2.add_challenge(challenge,consequence);
				
				cclass_alchemist.add_action(a2, 7);
				
				a = new Action();
				a.set_name("Bimbos Brew");
				a.set_attack_description("Quickly mix a potion that increases how pretty you are, at the cost of your intelligence. ");
				a.set_attack_flag(Action.attack_type_self_target, "Skills");
				a.set_requirement(FPalace_helper.curr_fatigue_id,1);
				
				challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.alchemy_id);
				challenge.set_defense_stat(-1,15);
				challenge.set_variability(10);
				challenge.set_text("Bimbos Brew");
				consequence = new Consequence();
				
				tf = new Tick_Effect();
				tf.set_end_tick(Main.t1_hour*12);
				c2 = new Consequence();
				c2.add_consequence(FPalace_helper.int_id,6, "", 0,0,1);
				c2.add_consequence(FPalace_helper.sex_appeal_id,-4, "", 0,0,1);
				
				tf.set_end_consequence(c2);
				
				c2 = new Consequence();
				c2.add_consequence(FPalace_helper.int_id,-6, "", 0,0,1);
				c2.add_consequence(FPalace_helper.sex_appeal_id,4, "", 0,0,1);
				tf.set_tick_consequence(1, c2);
				
				consequence.add_consequence(0,0, "</n2> rapidly mixes a potion and drinks it. ",0,0,0,-1, false, tf);
				consequence.add_consequence(FPalace_helper.curr_hp_id,-2, "</n2> clumsily mixes a potion and drinks it. ",-1);
				
				a.add_challenge(challenge,consequence);
				
				cclass_alchemist.add_attack(a,5);
				
				a2 = new Action();
				a2.set_name("Bimbos Brew");
				a2.set_attack_flag(-1, "Skills");
				a2.set_dialogue("",0);
				a2.set_personal();
				a2.set_requirement(FPalace_helper.curr_fatigue_id,1);
				
				a2.add_challenge(challenge,consequence);
				
				cclass_alchemist.add_action(a2, 5);
				
				//Would also like a map 'hot spot' for finding ingredients
				
				return cclass_alchemist;
		}
		
		//Primary: Sex Appeal, Seconday: Strength
		public static function cclass_gene_splice():Character_class{
				var cclass_gene_splice:Character_class = new Character_class();
				cclass_gene_splice.set_name("Venutian Artist");
				cclass_gene_splice.set_bonus(FPalace_helper.sex_appeal_id,2);
				cclass_gene_splice.set_bonus(FPalace_helper.str_id,1);
				
				cclass_gene_splice.add_class_skill(FPalace_skills.fight_id);
				cclass_gene_splice.add_class_skill(FPalace_skills.grappling_id);
			
				var a3:Action = new Action();//lower resistence to lust attacks and increase lust
					a3.set_name("Pin");
					a3.set_attack_description("Pin a foe to the gound. ");
					a3.set_attack_flag(Action.attack_type_single_target, "Skills");
					a3.set_requirement(FPalace_helper.curr_fatigue_id,1);
						var challenge2:Challenge = new Challenge(true);
						challenge2.set_attack_stat(FPalace_skills.grappling_id);
						challenge2.set_defense_stat(FPalace_skills.grappling_id);
						challenge2.set_variability(10);
						challenge2.set_text("Pin");
						var consequence2:Consequence = new Consequence();
						consequence2.add_consequence(FPalace_helper.wis_id,-2, "</n2> pins </n> to the ground, making </objnoun> more pliable. ",0,0,1);
						consequence2.add_consequence(FPalace_helper.dex_id,-2, "",0,0,1);
						consequence2.add_consequence(FPalace_helper.lust_id,10, "</n> seems to like it. ",5);
						consequence2.add_consequence(0,0, "</n2> attempts to pin </n> to the ground but fails.",-1);
									
					a3.add_challenge(challenge2,consequence2);
				
				cclass_gene_splice.add_attack(a3);
				
				//lvl 2 Hip Check: Mostly standard attack. Damage is determined by hip/butt size
				a3 = new Action();
					a3.set_name("Hip Check");
					a3.set_attack_description("Strike with your hips at a single foe. ");
					a3.set_attack_flag(Action.attack_type_single_target, "Skills");
					a3.set_requirement(FPalace_helper.hips_id,1,false);
						challenge2 = new Challenge(true);
						challenge2.set_attack_stat(FPalace_skills.grappling_id);
						challenge2.set_defense_stat(FPalace_skills.grappling_id);
						challenge2.set_variability(10);
						challenge2.set_text("Hip Check");
						consequence2 = new Consequence();
						consequence2.add_consequence(FPalace_helper.curr_hp_id,-1, "</n2> launches </noun2> butt at </n>, striking successfully. ",0,0,0,1);
						consequence2.add_consequence(FPalace_helper.lust_id,5, "</n> seems to like it. ",5);
						consequence2.add_consequence(FPalace_helper.lust_id,2, "</n2> attempts to strike </n> with </noun2> ass but misses. ",-1);
									
					a3.add_challenge(challenge2,consequence2);
					
					challenge2 = new Challenge();
						challenge2.set_attack_stat(FPalace_helper.hips_id);
						challenge2.set_defense_stat(-1,20);
						challenge2.set_text("");
						challenge2.set_variability(0);
						consequence2 = new Consequence();
						consequence2.amt_by_roll_flag(["r", "/", 4.0]);
						consequence2.set_damage_type(FPalace_helper.lust_damage_type().get_id());
						consequence2.set_max_damage(10)
						consequence2.add_consequence(FPalace_helper.curr_hp_id,Consequence.amt_from_roll_const, "The full weight of </n2>s buttox crashes into </n>. ",0);
						consequence2.add_consequence(-FPalace_helper.lust_id,Consequence.amt_from_roll_const, "</n> is having a great time. ",5);
						consequence2.add_consequence(FPalace_helper.lust_id,5, "</n> manages to divert most of the blow, but still ends up blushing from the contact. ",-1);
									
					a3.add_challenge(challenge2,consequence2);
				
				cclass_gene_splice.add_attack(a3,3);
				
				//lvl 3 Breast drop: Mostly standard attack. Damage is determine by breast size
				a3 = new Action();
					a3.set_name("Breast Drop");
					a3.set_attack_description("Strike with your breasts at a single foe. ");
					a3.set_attack_flag(Action.attack_type_single_target, "Skills");
					a3.set_requirement(FPalace_helper.breast_size_id,1,false);
						challenge2 = new Challenge(true);
						challenge2.set_attack_stat(FPalace_skills.grappling_id);
						challenge2.set_defense_stat(FPalace_skills.grappling_id);
						challenge2.set_variability(10);
						challenge2.set_text("Breast Drop");
						consequence2 = new Consequence();
						consequence2.add_consequence(FPalace_helper.curr_hp_id,-1, "</n2> launches </noun2> breasts at </n>, striking successfully. ",0,0,0,1);
						consequence2.add_consequence(FPalace_helper.lust_id,10, "</n> seems to like it. ",5);
						consequence2.add_consequence(FPalace_helper.lust_id,2, "</n2> attempts to strike </n> with </noun2> breasts but misses. ",-1);
									
					a3.add_challenge(challenge2,consequence2);
					
					challenge2 = new Challenge();
						challenge2.set_attack_stat(FPalace_helper.breast_size_id);
						challenge2.set_defense_stat(-1,2);
						challenge2.set_text("");
						challenge2.set_variability(0);
						consequence2 = new Consequence();
						consequence2.amt_by_roll_flag();
						consequence2.set_damage_type(FPalace_helper.lust_damage_type().get_id());
						consequence2.add_consequence(FPalace_helper.curr_hp_id,Consequence.amt_from_roll_const, "The full weight of </n2>s mammaries crashes into </n>. ",0);
						consequence2.add_consequence(-FPalace_helper.lust_id,Consequence.amt_from_roll_const, "</n> is having a great time. ",5);
						consequence2.add_consequence(FPalace_helper.lust_id,5, "</n> manages to divert most of the blow, but still ends up blushing from the contact. ",-1);
									
					a3.add_challenge(challenge2,consequence2);
				
				cclass_gene_splice.add_attack(a3,3);
				
				//lvl 3 Cock slap: Mostly standard attack. Damage is determine by cock length
				a3 = new Action();
					a3.set_name("Cock Slap");
					a3.set_attack_description("Strike with your penis at a single foe. ");
					a3.set_attack_flag(Action.attack_type_single_target, "Skills");
					a3.set_requirement(FPalace_helper.penis_length_id,1,false);
						challenge2 = new Challenge(true);
						challenge2.set_attack_stat(FPalace_skills.grappling_id);
						challenge2.set_defense_stat(FPalace_skills.grappling_id);
						challenge2.set_variability(10);
						challenge2.set_text("Cock Slap");
						consequence2 = new Consequence();
						consequence2.add_consequence(FPalace_helper.curr_hp_id,-1, "</n2> launches </noun2> dick at </n>, striking successfully. ",0,0,0,1);
						consequence2.add_consequence(FPalace_helper.lust_id,10, "</n> seems to like it. ",5);
						consequence2.add_consequence(FPalace_helper.lust_id,2, "</n2> attempts to strike </n> with </noun2> dick but misses. ",-1);
									
					a3.add_challenge(challenge2,consequence2);
					
					challenge2 = new Challenge();
						challenge2.set_attack_stat(FPalace_helper.penis_length_id);
						challenge2.set_defense_stat(-1,3);
						challenge2.set_variability(0);
						challenge2.set_text("");
						consequence2 = new Consequence();
						consequence2.amt_by_roll_flag(["r", "/", 6.0]);
						consequence2.set_damage_type(FPalace_helper.lust_damage_type().get_id());
						consequence2.add_consequence(FPalace_helper.curr_hp_id,Consequence.amt_from_roll_const, "The full weight of </n2>s cock crashes into </n>. ",0);
						consequence2.add_consequence(-FPalace_helper.lust_id,Consequence.amt_from_roll_const, "</n> is having a great time. ",5);
						consequence2.add_consequence(FPalace_helper.lust_id,5, "</n> manages to divert most of the blow, but still ends up blushing from the contact. ",-1);
									
					a3.add_challenge(challenge2,consequence2);
				
				cclass_gene_splice.add_attack(a3,3);
				
				//lvl 5 Self targeting temporary boost? Strength boost with Beauty drop? Or maybe just get horny? Or maybe spend lust to get Strength?
				var a:Action = new Action();
				a.set_name("Inner Lust");
				a.set_attack_flag(Action.attack_type_self_target, "Skills");
				a.set_attack_description("Focus your lust into your physical strength. ");
				a.set_requirement(FPalace_helper.lust_id,20);
				
				var challenge:Challenge = new Challenge(true);
				challenge.set_attack_stat(-1,1);
				challenge.set_defense_stat(-1,0);
				challenge.set_text("Inner Lust");
				challenge.set_variability(0);
				var consequence:Consequence = new Consequence();
				
				var tf:Tick_Effect = new Tick_Effect();
				tf.set_end_tick(Main.t1_hour);
				var c2:Consequence = new Consequence();
				c2.add_consequence(FPalace_helper.str_id,4, "", 0,0,1);
				
				tf.set_end_consequence(c2);
				
				c2 = new Consequence();
				c2.add_consequence(FPalace_helper.str_id,-4, "", 0,0,1);
				tf.set_tick_consequence(1, c2);
				
				consequence.add_consequence(0,0, "</n2> focuses </noun2> lust inwards. ",0,0,0,-1, false, tf);
				
				a.add_challenge(challenge,consequence);
				
				cclass_gene_splice.add_attack(a,5);
				
				//lvl 6 Flying Press: Mostly standard attack. Damage is determined by weight
				a3 = new Action();
					a3.set_name("Flying Press");
					a3.set_attack_description("Strike with your entire body at a single foe. ");
					a3.set_attack_flag(Action.attack_type_single_target, "Skills");
					a3.set_requirement(FPalace_helper.hips_id,1,false);
						challenge2 = new Challenge(true);
						challenge2.set_attack_stat(FPalace_skills.grappling_id);
						challenge2.set_defense_stat(FPalace_skills.grappling_id);
						challenge2.set_variability(20);
						challenge2.set_text("Flying Press");
						consequence2 = new Consequence();
						consequence2.add_consequence(FPalace_helper.curr_hp_id,-1, "</n2> launches </noun2>self into the air at </n>, striking successfully. ",0,0,0,1);
						consequence2.add_consequence(FPalace_helper.lust_id,5, "</n> seems to like the view. ",5);
						consequence2.add_consequence(FPalace_helper.lust_id,2, "</n2> launches </noun2>self into the air to strike </n> but misses. ",-1);
									
					a3.add_challenge(challenge2,consequence2);
					
					challenge2 = new Challenge();
						challenge2.set_attack_stat(FPalace_helper.weight_id);
						challenge2.set_defense_stat(-1,20);
						challenge2.set_text("");
						challenge2.set_variability(0);
						consequence2 = new Consequence();
						consequence2.amt_by_roll_flag(["r", "/", 20.0]);
						consequence2.set_damage_type(FPalace_helper.lust_damage_type().get_id());
						consequence2.add_consequence(FPalace_helper.curr_hp_id,Consequence.amt_from_roll_const, "The full weight of </n2>s body crashes into </n>. ",0);
						consequence2.add_consequence(-FPalace_helper.lust_id,Consequence.amt_from_roll_const, "</n> is having a great time. ",5);
						consequence2.add_consequence(FPalace_helper.lust_id,5, "</n> manages to divert most of the blow, but still ends up blushing from the contact. ",-1);
									
					a3.add_challenge(challenge2,consequence2);
				
				cclass_gene_splice.add_attack(a3,6);
				
				//lvl 7 Cum blast: Mostly standard attack. Damage is determine by cum volume
				a3 = new Action();
					a3.set_name("Cum Blast");
					a3.set_attack_description("Strike with the force of your cum at a single foe. ");
					a3.set_attack_flag(Action.attack_type_single_target, "Skills");
					a3.set_requirement(FPalace_helper.cum_volume_id,1,false);
						challenge2 = new Challenge();
						challenge2.set_attack_stat(FPalace_helper.cum_volume_id);
						challenge2.set_defense_stat(FPalace_helper.dex_id);
						challenge2.set_variability(10);
						challenge2.set_text("Cum Blast");
						consequence2 = new Consequence();
						consequence2.add_consequence(FPalace_helper.curr_hp_id,-1, "</n2> launches </noun2> dick forward and starts spurting cum, the blast splattering on </n>. ",0,0,0,1);
						consequence2.add_consequence(FPalace_helper.lust_id,10, "</n> seems to like it. ",5);
						consequence2.add_consequence(FPalace_helper.lust_id,2, "</n2> launches </noun2> dick forward and starts spurting cum, but </n> dodges out of the way. ",-1);
									
					a3.add_challenge(challenge2,consequence2);
					
					challenge2 = new Challenge();
						challenge2.set_attack_stat(FPalace_helper.cum_volume_id);
						challenge2.set_defense_stat(-1,2);
						challenge2.set_variability(0);
						challenge2.set_text("");
						consequence2 = new Consequence();
						consequence2.set_damage_type(FPalace_helper.lust_damage_type().get_id());
						consequence2.amt_by_roll_flag(["r", "/", 2.0]);
						consequence2.add_consequence(FPalace_helper.curr_hp_id,Consequence.amt_from_roll_const, "It hits </n> with a fair amount of force. ",0);
						consequence2.add_consequence(-FPalace_helper.lust_id,Consequence.amt_from_roll_const, "</n> is having a great time. ",5);
						consequence2.add_consequence(FPalace_helper.lust_id,5, "</n> manages to avoid getting too much on <noun>, but still ends up blushing from the contact. ",-1);
									
					a3.add_challenge(challenge2,consequence2);
				
				cclass_gene_splice.add_attack(a3,7);
				
				//lvl 7 Milk blast: Mostly standard attack. Damage is determine by milk volume
				a3 = new Action();
					a3.set_name("Milk Blast");
					a3.set_attack_flag(Action.attack_type_single_target, "Skills");
					a3.set_attack_description("Strike with your milk at a single foe. ");
					a3.set_requirement(FPalace_helper.milk_volume_id,1,false);
						
						challenge = new Challenge(true);
						challenge.set_attack_stat(-1,0);
						challenge.set_attack_status_id(Tick_Effect.lactating_status);
						challenge.set_defense_stat(-1,1);
						challenge.set_variability(0);
						challenge.set_text("Milk Blast");
						consequence = new Consequence();
						consequence.add_consequence(0,0,"",0,0,0,2);
						consequence.add_consequence(0,0,"", -1,0,0,1);
						
						a3.add_challenge(challenge,consequence);
						
						challenge = new Challenge(true);
						challenge.set_attack_stat(FPalace_skills.grappling_id);
						challenge.set_defense_stat(-1,15);
						challenge.set_variability(20);
						challenge.set_text("");
						
						tf = new Tick_Effect();
						tf.set_status_id(Tick_Effect.lactating_status);
						tf.set_end_tick(Main.t1_hour);
						
						consequence = new Consequence();
						consequence.add_consequence(0,0,"</n2> forces </noun2> body to lactate. ", 0,0,0,2,true,tf);
						consequence.add_consequence(0,0,"</n2> tries to force lactation but fails. ", -1);
						
						a3.add_challenge(challenge,consequence);
						
						challenge2 = new Challenge();
						challenge2.set_attack_stat(FPalace_helper.milk_volume_id);
						challenge2.set_defense_stat(FPalace_helper.dex_id);
						challenge2.set_variability(10);
						challenge2.set_text("");
						consequence2 = new Consequence();
						consequence2.add_consequence(FPalace_helper.curr_hp_id,-1, "</n2> launches </noun2> breasts forward and they start spraying milk, the blast splattering on </n>. ",0,0,0,3);
						consequence2.add_consequence(FPalace_helper.lust_id,10, "</n> seems to like it. ",5);
						consequence2.add_consequence(FPalace_helper.lust_id,2, "</n2> launches </noun2> breasts forward and starts spurting milk, but </n> dodges out of the way. ",-1);
									
					a3.add_challenge(challenge2,consequence2);
					
					challenge2 = new Challenge();
						challenge2.set_attack_stat(FPalace_helper.milk_volume_id);
						challenge2.set_defense_stat(-1,20);
						challenge2.set_text("");
						challenge2.set_variability(0);
						consequence2 = new Consequence();
						consequence2.set_damage_type(FPalace_helper.lust_damage_type().get_id());
						consequence2.amt_by_roll_flag(["r", "/", 20.0]);
						consequence2.add_consequence(FPalace_helper.curr_hp_id,Consequence.amt_from_roll_const, "It hits </n> with a fair amount of force. ",0);
						consequence2.add_consequence(-FPalace_helper.lust_id,Consequence.amt_from_roll_const, "</n> is having a great time. ",5);
						consequence2.add_consequence(FPalace_helper.lust_id,5, "</n> manages to avoid getting too much on <noun>, but still ends up blushing from the contact. ",-1);
									
					a3.add_challenge(challenge2,consequence2);
				
				cclass_gene_splice.add_attack(a3,7);
				
				//lvl 9 Hormone Swarm - damage health and increase lust of target using lust
				a3 = new Action();
					a3.set_name("Hormone Swarm");
					a3.set_attack_flag(Action.attack_type_single_target, "Skills");
					a3.set_attack_description("Strike with your lust at a single foe. ");
					a3.set_requirement(FPalace_helper.lust_id,50,false);
						challenge2 = new Challenge();
						challenge2.set_attack_stat(FPalace_helper.lust_id);
						challenge2.set_defense_stat(FPalace_helper.dex_id);
						challenge2.set_variability(10);
						challenge2.set_text("Hormone Swarm");
						consequence2 = new Consequence();
						consequence2.add_consequence(FPalace_helper.curr_hp_id,0, "</n2> exudes </noun2> hormones at </n>, who is unaware of what is happening. ",0,0,0,1);
						consequence2.add_consequence(FPalace_helper.lust_id,10, "</n> seems to like it. ",5);
						consequence2.add_consequence(FPalace_helper.lust_id,2, "</n2> exudes </noun2> hormones at </n>, but </n> dodges out of the way. ",-1);
									
					a3.add_challenge(challenge2,consequence2);
					
					challenge2 = new Challenge();
						challenge2.set_attack_stat(FPalace_helper.lust_id);
						challenge2.set_defense_stat(-1,5);
						challenge2.set_text("");
						challenge2.set_variability(0);
						consequence2 = new Consequence();
						consequence2.set_damage_type(FPalace_helper.lust_damage_type().get_id());
						consequence2.amt_by_roll_flag(["r", "/", 5.0]);
						consequence2.add_consequence(FPalace_helper.curr_hp_id,Consequence.amt_from_roll_const, "It hits </n> with a fair amount of force. ",0,0,0,2);
						consequence2.add_consequence(-FPalace_helper.lust_id,Consequence.amt_from_roll_const, "</n> is having a great time. ",5);
						
						consequence2.add_consequence(FPalace_helper.lust_id,5, "</n> manages to avoid getting too much on <noun>, but still ends up blushing from the contact. ",-1,0,0,2);
						consequence2.add_consequence(FPalace_helper.curr_hp_id,-1, "",-1);
									
					a3.add_challenge(challenge2,consequence2);
					
					challenge2 = new Challenge();
						challenge2.set_attack_stat(FPalace_helper.lust_id);
						challenge2.set_defense_stat(-1,0);
						challenge2.set_text("");
						challenge2.set_variability(0);
						consequence2 = new Consequence();
						consequence2.amt_by_roll_flag();
						consequence2.add_consequence(FPalace_helper.lust_id,Consequence.amt_from_roll_const, "",0,0,0,-1,true);
															
					a3.add_challenge(challenge2,consequence2);
				
				cclass_gene_splice.add_attack(a3,9);
				
				return cclass_gene_splice;
		}		
		
		//Primary: Willpower, Seconday: Strength
		public static function cclass_warmage():Character_class{
			var cclass_wm:Character_class = new Character_class();
			cclass_wm.set_name("War Mage");
			
			cclass_wm.set_bonus(FPalace_helper.will_id,2);
			cclass_wm.set_bonus(FPalace_helper.str_id,1);
			
			cclass_wm.add_class_skill(FPalace_skills.magic_id);
			cclass_wm.add_class_skill(FPalace_skills.fight_id);
			
			return cclass_wm;
		}
		
		//Primary: Willpower, Seconday: Dexterity
		public static function cclass_chronomancer():Character_class{
			var cclass_cm:Character_class = new Character_class();
			cclass_cm.set_name("Chronomancer");
			
			cclass_cm.set_bonus(FPalace_helper.will_id,2);
			cclass_cm.set_bonus(FPalace_helper.dex_id,1);
			
			cclass_cm.add_class_skill(FPalace_skills.magic_id);
			cclass_cm.add_class_skill(FPalace_skills.covert_id);
			
			return cclass_cm;
		}
		
		//Primary: Willpower, Seconday: Constitution
		public static function cclass_necromancer():Character_class{
			var cclass_nm:Character_class = new Character_class();
			cclass_nm.set_name("Necromancer");
			
			cclass_nm.set_bonus(FPalace_helper.will_id,2);
			cclass_nm.set_bonus(FPalace_helper.con_id,1);
			
			cclass_nm.add_class_skill(FPalace_skills.magic_id);
			cclass_nm.add_class_skill(FPalace_skills.adventure_id);
			
			return cclass_nm;
		}
		
		//Primary: Willpower, Seconday: Beauty
		public static function cclass_summoner():Character_class{
			var cclass_s:Character_class = new Character_class();
			cclass_s.set_name("Summoner");
			
			cclass_s.set_bonus(FPalace_helper.will_id,2);
			cclass_s.set_bonus(FPalace_helper.sex_appeal_id,1);
			
			cclass_s.add_class_skill(FPalace_skills.magic_id);
			
			return cclass_s;
		}
		
		//Primary: Willpower, Seconday: Wisdom
		public static function cclass_sorcerer():Character_class{
			var cclass_s:Character_class = new Character_class();
			cclass_s.set_name("Sorcerer");
			
			cclass_s.set_bonus(FPalace_helper.will_id,2);
			cclass_s.set_bonus(FPalace_helper.wis_id,1);
			
			cclass_s.add_class_skill(FPalace_skills.magic_id);
			cclass_s.add_class_skill(FPalace_skills.crafting_id);
			
			return cclass_s;
		}
		
		//Primary: Willpower, Seconday: Intelligence
		public static function cclass_wizard():Character_class{
			var cclass_w:Character_class = new Character_class();
			cclass_w.set_name("Wizard");
			
			cclass_w.set_bonus(FPalace_helper.will_id,2);
			cclass_w.set_bonus(FPalace_helper.int_id,1);
			
			cclass_w.add_class_skill(FPalace_skills.magic_id);
			cclass_w.add_class_skill(FPalace_skills.knowledge_id);
			
			return cclass_w;
		}
		
		//Primary: Willpower, Seconday: Charisma
		public static function cclass_witch():Character_class{
			var cclass_w:Character_class = new Character_class();
			cclass_w.set_name("Witch");
			
			cclass_w.set_bonus(FPalace_helper.will_id,2);
			cclass_w.set_bonus(FPalace_helper.cha_id,1);
			
			cclass_w.add_class_skill(FPalace_skills.magic_id);
			cclass_w.add_class_skill(FPalace_skills.people_id);
			
			return cclass_w;
		}
		
		//Primary: Wisdom, Seconday: Strength
		public static function cclass_crusader():Character_class{
			var cclass_c:Character_class = new Character_class();
			cclass_c.set_name("Crusader");
			
			cclass_c.set_bonus(FPalace_helper.wis_id,2);
			cclass_c.set_bonus(FPalace_helper.str_id,1);
			
			cclass_c.add_class_skill(FPalace_skills.crafting_id);
			cclass_c.add_class_skill(FPalace_skills.fight_id);
			
			return cclass_c;
		}
		
		//Primary: Wisdom, Seconday: Dexterity
		public static function cclass_druid():Character_class{
			var cclass_d:Character_class = new Character_class();
			cclass_d.set_name("Druid");
			
			cclass_d.set_bonus(FPalace_helper.wis_id,2);
			cclass_d.set_bonus(FPalace_helper.dex_id,1);
			
			cclass_d.add_class_skill(FPalace_skills.crafting_id);
			cclass_d.add_class_skill(FPalace_skills.covert_id);
			
			return cclass_d;
		}
		
		//Primary: Wisdom, Seconday: Constitution
		public static function cclass_medic():Character_class{
			var cclass_m:Character_class = new Character_class();
			cclass_m.set_name("Medic");
			
			cclass_m.set_bonus(FPalace_helper.wis_id,2);
			cclass_m.set_bonus(FPalace_helper.con_id,1);
			
			cclass_m.add_class_skill(FPalace_skills.crafting_id);
			cclass_m.add_class_skill(FPalace_skills.adventure_id);
			
			return cclass_m;
		}
		
		//Primary: Wisdom, Seconday: Beauty
		public static function cclass_oracle():Character_class{
			var cclass_o:Character_class = new Character_class();
			cclass_o.set_name("Oracle");
			
			cclass_o.set_bonus(FPalace_helper.wis_id,2);
			cclass_o.set_bonus(FPalace_helper.sex_appeal_id,1);
			
			cclass_o.add_class_skill(FPalace_skills.crafting_id);
			
			return cclass_o;
		}
		
		//Primary: Wisdom, Seconday: Willpower
		public static function cclass_cleric():Character_class{
			var cclass_c:Character_class = new Character_class();
			cclass_c.set_name("Cleric");
			
			cclass_c.set_bonus(FPalace_helper.wis_id,2);
			cclass_c.set_bonus(FPalace_helper.will_id,1);
			
			cclass_c.add_class_skill(FPalace_skills.crafting_id);
			cclass_c.add_class_skill(FPalace_skills.magic_id);
			
			return cclass_c;
		}
		
		//Primary: Wisdom, Seconday: Intelligence
		public static function cclass_monk():Character_class{
			var cclass_m:Character_class = new Character_class();
			cclass_m.set_name("Monk");
			
			cclass_m.set_bonus(FPalace_helper.wis_id,2);
			cclass_m.set_bonus(FPalace_helper.int_id,1);
			
			cclass_m.add_class_skill(FPalace_skills.crafting_id);
			cclass_m.add_class_skill(FPalace_skills.knowledge_id);
			
			return cclass_m;
		}
		
		//Primary: Wisdom, Seconday: Charisma
		public static function cclass_prophet():Character_class{
			var cclass_p:Character_class = new Character_class();
			cclass_p.set_name("Prophet");
			
			cclass_p.set_bonus(FPalace_helper.wis_id,2);
			cclass_p.set_bonus(FPalace_helper.cha_id,1);
			
			cclass_p.add_class_skill(FPalace_skills.crafting_id);
			cclass_p.add_class_skill(FPalace_skills.people_id);
			
			return cclass_p;
		}
		
		//Primary: Intelligence, Seconday: Strength
		public static function cclass_duelist():Character_class{
			var cclass_d:Character_class = new Character_class();
			cclass_d.set_name("Duelist");
			
			cclass_d.set_bonus(FPalace_helper.int_id,2);
			cclass_d.set_bonus(FPalace_helper.str_id,1);
			
			cclass_d.add_class_skill(FPalace_skills.knowledge_id);
			cclass_d.add_class_skill(FPalace_skills.fight_id);
			
			return cclass_d;
		}
		
		//Primary: Intelligence, Seconday: Dexterity
		public static function cclass_assassin():Character_class{
			var cclass_a:Character_class = new Character_class();
			cclass_a.set_name("Assassin");
			
			cclass_a.set_bonus(FPalace_helper.int_id,2);
			cclass_a.set_bonus(FPalace_helper.dex_id,1);
			
			cclass_a.add_class_skill(FPalace_skills.knowledge_id);
			cclass_a.add_class_skill(FPalace_skills.covert_id);
			
			return cclass_a;
		}
		
		//Primary: Intelligence, Seconday: Constitution
		public static function cclass_scholar():Character_class{
			var cclass_s:Character_class = new Character_class();
			cclass_s.set_name("Scholar");
			
			cclass_s.set_bonus(FPalace_helper.int_id,2);
			cclass_s.set_bonus(FPalace_helper.con_id,1);
			
			cclass_s.add_class_skill(FPalace_skills.knowledge_id);
			cclass_s.add_class_skill(FPalace_skills.adventure_id);
			
			return cclass_s;
		}
		
		//Primary: Intelligence, Seconday: Beauty
		public static function cclass_gambler():Character_class{
			var cclass_g:Character_class = new Character_class();
			cclass_g.set_name("Gambler");
			
			cclass_g.set_bonus(FPalace_helper.int_id,2);
			cclass_g.set_bonus(FPalace_helper.sex_appeal_id,1);
			
			cclass_g.add_class_skill(FPalace_skills.knowledge_id);
			
			return cclass_g;
		}
		
		//Primary: Intelligence, Seconday: Willpower
		public static function cclass_bibliomancer():Character_class{
			var cclass_b:Character_class = new Character_class();
			cclass_b.set_name("Bibliomancer");
			
			cclass_b.set_bonus(FPalace_helper.int_id,2);
			cclass_b.set_bonus(FPalace_helper.will_id,1);
			
			cclass_b.add_class_skill(FPalace_skills.knowledge_id);
			cclass_b.add_class_skill(FPalace_skills.magic_id);
			
			return cclass_b;
		}
		
		//Primary: Intelligence, Seconday: Wisdom
		public static function cclass_occultist():Character_class{
			var cclass_o:Character_class = new Character_class();
			cclass_o.set_name("Occultist");
			
			cclass_o.set_bonus(FPalace_helper.int_id,2);
			cclass_o.set_bonus(FPalace_helper.wis_id,1);
			
			cclass_o.add_class_skill(FPalace_skills.knowledge_id);
			cclass_o.add_class_skill(FPalace_skills.crafting_id);
			
			return cclass_o;
		}
		
		//Primary: Intelligence, Seconday: Charisma
		public static function cclass_archeologist():Character_class{
			var cclass_a:Character_class = new Character_class();
			cclass_a.set_name("Archeologist");
			
			cclass_a.set_bonus(FPalace_helper.int_id,2);
			cclass_a.set_bonus(FPalace_helper.cha_id,1);
			
			cclass_a.add_class_skill(FPalace_skills.knowledge_id);
			cclass_a.add_class_skill(FPalace_skills.people_id);
			
			return cclass_a;
		}
		
		//Primary: Charisma, Seconday: Strength
		public static function cclass_swashbuckler():Character_class{
			var cclass_s:Character_class = new Character_class();
			cclass_s.set_name("Swashbuckler");
			
			cclass_s.set_bonus(FPalace_helper.cha_id,2);
			cclass_s.set_bonus(FPalace_helper.str_id,1);
			
			cclass_s.add_class_skill(FPalace_skills.fight_id);
			cclass_s.add_class_skill(FPalace_skills.people_id);
			
			return cclass_s;
		}
		
		//Primary: Charisma, Seconday: Dexterity
		public static function cclass_bard():Character_class{
			var cclass_b:Character_class = new Character_class();
			cclass_b.set_name("Bard");
			
			cclass_b.set_bonus(FPalace_helper.cha_id,2);
			cclass_b.set_bonus(FPalace_helper.dex_id,1);
			
			cclass_b.add_class_skill(FPalace_skills.covert_id);
			cclass_b.add_class_skill(FPalace_skills.people_id);
			
			return cclass_b;
		}
		
		//Primary: Charisma, Seconday: Constitution
		public static function cclass_lord():Character_class{
			var cclass_l:Character_class = new Character_class();
			cclass_l.set_name("Lord");
			
			cclass_l.set_bonus(FPalace_helper.cha_id,2);
			cclass_l.set_bonus(FPalace_helper.con_id,1);
			
			cclass_l.add_class_skill(FPalace_skills.adventure_id);
			cclass_l.add_class_skill(FPalace_skills.people_id);
			
			return cclass_l;
		}
		
		//Primary: Charisma, Seconday: Beauty
		public static function cclass_diplomat():Character_class{
			var cclass_d:Character_class = new Character_class();
			cclass_d.set_name("Diplomat");
			
			cclass_d.set_bonus(FPalace_helper.cha_id,2);
			cclass_d.set_bonus(FPalace_helper.sex_appeal_id,1);
			
			cclass_d.add_class_skill(FPalace_skills.people_id);
			
			return cclass_d;
		}
		
		//Primary: Charisma, Seconday: Willpower
		public static function cclass_beastmaster():Character_class{
			var cclass_bm:Character_class = new Character_class();
			cclass_bm.set_name("Beast Master");
			
			cclass_bm.set_bonus(FPalace_helper.cha_id,2);
			cclass_bm.set_bonus(FPalace_helper.will_id,1);
			
			cclass_bm.add_class_skill(FPalace_skills.magic_id);
			cclass_bm.add_class_skill(FPalace_skills.people_id);
			
			return cclass_bm;
		}
		
		//Primary: Charisma, Seconday: Wisdom
		public static function cclass_missionary():Character_class{
			var cclass_m:Character_class = new Character_class();
			cclass_m.set_name("Missionary");
			
			cclass_m.set_bonus(FPalace_helper.cha_id,2);
			cclass_m.set_bonus(FPalace_helper.wis_id,1);
			
			cclass_m.add_class_skill(FPalace_skills.crafting_id);
			cclass_m.add_class_skill(FPalace_skills.people_id);
			
			return cclass_m;
		}
		
		//Primary: Charisma, Seconday: Intelligence
		public static function cclass_spy():Character_class{
			var cclass_s:Character_class = new Character_class();
			cclass_s.set_name("Spy");
			
			cclass_s.set_bonus(FPalace_helper.cha_id,2);
			cclass_s.set_bonus(FPalace_helper.int_id,1);
			
			cclass_s.add_class_skill(FPalace_skills.knowledge_id);
			cclass_s.add_class_skill(FPalace_skills.people_id);
			
			return cclass_s;
		}
		
		//Starter class
		public static function cclass_adventurer():Character_class{
			var cclass:Character_class = new Character_class();
			cclass.set_name("Adventurer");
			
			cclass.add_class_skill(FPalace_skills.map_sight_id);
			
			cclass.set_bonus(FPalace_helper.str_id,1);
			cclass.set_bonus(FPalace_helper.dex_id,1);
			cclass.set_bonus(FPalace_helper.con_id,1);
			cclass.set_bonus(FPalace_helper.sex_appeal_id,1);
			cclass.set_bonus(FPalace_helper.will_id,1);
			cclass.set_bonus(FPalace_helper.wis_id,1);
			cclass.set_bonus(FPalace_helper.int_id,1);
			cclass.set_bonus(FPalace_helper.cha_id,1);
			
			return cclass;
		}	
				
		//JOBS
		public static function job_caravan_merchant():Character_job{
			var job:Character_job = new Character_job();
			job.set_name("merchant");
			
			var a:Action = new Action();
			a.set_name("Trade");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.Healing_Potion());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.Tent());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.bottled_abortion());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.knife());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.reduction_salve());
			job.new_action(a);
			
			return job;
		}
		
		public static function job_nunnery_merchant():Character_job{
			var job:Character_job = new Character_job();
			job.set_name("nun");
			
			var a:Action = new Action();
			a.set_name("Trade");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.fem_pills());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.man_pills());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.maternity_bra());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.mighty_whities());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.habit());
			job.new_action(a);
			
			job.new_topic(FPalace_topics.nunnery_recieve_delivery());
			
			return job;
		}
		
		public static function job_expedition_leader():Character_job{
			var job:Character_job = new Character_job();
			job.set_name("expedition leader");
			
			var a:Action = new Action();
			a.set_name("Trade");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.Healing_Potion());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.bottled_abortion());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.reduction_salve());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.naughty_pictures());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.the_pill());
			job.new_action(a);
			
			job.new_topic(FPalace_topics.pimping_aint_easy());
			job.new_topic(FPalace_topics.topic_amazon_homeland());
			job.new_topic(FPalace_topics.keeping_the_girl_calm());
			
			return job;
		}
		
		public static function job_farm_stall_attendent():Character_job{
			var job:Character_job = new Character_job();
			job.set_name("stall attendent");
			var a:Action = new Action();
			a.set_name("Trade");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.Healing_Potion());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.bottled_abortion());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.reduction_salve());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.bovine_milk_jug());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.lactaid());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.cowboy_hat());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.pitch_fork());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.pregnaid());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.milk_jug());
			job.new_action(a);
			
			return job;
		}
		
		public static function job_century_city_corner_store_clerk():Character_job{
			var job:Character_job = new Character_job();
			job.set_name("store clerk");
			var a:Action = new Action();
			a.set_name("Trade");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.Healing_Potion());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.Tent());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.chocoate_bar());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.baseball_cap());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.sunglasses());
			job.new_action(a);
			
			return job;
		}
		
		public static function job_corrections_officer():Character_job{
			var job:Character_job = new Character_job();
			job.set_name("corrections officer");
			
			var a:Action = new Action();
			a.set_name("Trade");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.shy_mask());
			job.new_action(a);
			
			return job;
		}
		
		public static function job_century_city_clothing_store_clerk():Character_job{
			var job:Character_job = new Character_job();
			job.set_name("clothing store clerk");
			
			var a:Action = new Action();
			a.set_name("Trade");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.black_tshirt());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.white_tshirt());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.black_pencil_skirt());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.tightie_whities());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.baggy_bluejeans());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.normal_bluejeans());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.spandex_suit());
			job.new_action(a);
			
			return job;
		}
		
		public static function job_century_city_shoe_store_clerk():Character_job{
			var job:Character_job = new Character_job();
			job.set_name("shoe store clerk");
			
			var a:Action = new Action();
			a.set_name("Trade");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.black_heels());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.black_dress_shoes());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.sneakers());
			job.new_action(a);
						
			return job;
		}
		
		public static function job_century_city_medical_supplies_clerk():Character_job{
			var job:Character_job = new Character_job();
			job.set_name("pharmacist");
			
			var a:Action = new Action();
			a.set_name("Trade");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.Healing_Potion());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.plain_jane_potion());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.lactaid());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.scalpel());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.bottled_abortion());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.reduction_salve());
			job.new_action(a);				
			
			return job;
		}
		
		public static function job_fpalace_shopkeeper():Character_job{
			var job:Character_job = new Character_job();
			job.set_name("shopkeeper");
			
			var q:Quest = new Quest();
			
			q.new_objective("",Quest.room_action,null,1,Main.t1_hour*8);
			q.new_objective("",Quest.wait_action,null,2,Main.t1_hour*8);
			q.new_objective("",Quest.no_action,null,0,Main.t1_hour*8);
			
			job.new_objective(q);
			
			var a:Action = new Action();
			a.set_name("Trade");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.Healing_Potion());
			job.new_action(a);
						
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.vial_of_goo());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.red_lipstick());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.bottled_abortion());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.reduction_salve());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.Tent());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.robe());
			job.new_action(a);
			
			return job;
		}
		
		public static function job_school_store_shopkeeper():Character_job{
			var job:Character_job = new Character_job();
			job.set_name("shopkeeper");
			
			var a:Action = new Action();
			a.set_name("Trade");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.Healing_Potion());
			job.new_action(a);
						
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.black_rimmed_glasses());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.plaid_blazer());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.plaid_skirt());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.knee_high_socks());
			job.new_action(a);
			
			
			return job;
		}
		
		public static function job_lux_invira_alchemist():Character_job{
			var job:Character_job = new Character_job();
			job.set_name("Strange Hermit");			
			
			var a:Action = new Action();
			a.set_name("Trade");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.Healing_Draught());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.vial_of_ichor());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.bottled_abortion());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.reduction_salve());
			job.new_action(a);
			
			return job;		
		}
		
		public static function job_witch_potionmaster():Character_job{
			var job:Character_job = new Character_job();
			job.set_name("Potion-Mistress");	
			
			var a:Action = new Action();
			a.set_name("Trade");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.Senip_Sangria());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.pregnaid());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.weight_loss_pills());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.Wests_Bourban());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.maidens_wand());
			job.new_action(a);
			
			return job;
		}
		
		public static function job_chastity_witch():Character_job{
			var job:Character_job = new Character_job();
			job.set_name("Witch");	
			
			var a:Action = new Action();
			a.set_name("Trade");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.Healing_Draught());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.bottled_abortion());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.reduction_salve());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.doggy_bone());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.fishy_fruit());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.upsidedown_potion());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.froggy_feijoa());
			job.new_action(a);
			
			return job;			
		}
		
		public static function job_lux_invira_general_merchant():Character_job{
			var job:Character_job = new Character_job();
			job.set_name("shop-keeper");			
			
			var a:Action = new Action();
			a.set_name("Trade");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.leather_tube_top());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.leather_skirt());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.Loincloth());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.spear());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.Tent());
			job.new_action(a);			
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.hooked_tip());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.the_pill());
			job.new_action(a);
			
			return job;
		}
		
		public static function job_lux_invira_lingerie():Character_job{
			var job:Character_job = new Character_job();
			job.set_name("clerk");
			
			var a:Action = new Action();
			a.set_name("Trade");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.red_bra());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.pushup_bra());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.red_g_string());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.black_hose());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.leather_panties());
			job.new_action(a);
			
			
			
			return job;
		}
		
		public static function job_mensch_slaver():Character_job{
			var job:Character_job = new Character_job();
			job.set_name("slaver");
			
			var a:Action = new Action();
			a.set_name("Trade");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.whip());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.bleach());
			job.new_action(a);
			
			return job;
		}
		
		public static function job_mensch_smith():Character_job{
			var job:Character_job = new Character_job();
			job.set_name("smith");
			
			var a:Action = new Action();
			a.set_name("Trade");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.bronze_salet());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.bronze_breastplate());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.bronze_greaves());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.bronze_short_sword());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.bronze_shield());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.blade_balance());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.slanted_plates());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.bronze_gauntlets());
			job.new_action(a);			
			
			return job;
		}
		
		public static function job_mensch_librarian():Character_job{
			var job:Character_job = new Character_job();
			job.set_name("librarian");
			
			var a:Action = new Action();
			a.set_name("Trade");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.hardcover_war_and_peace());
			job.new_action(a);	
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.shield_recipe());
			job.new_action(a);
			
			
			return job;
		}
		
		public static function job_benevol_herbalist():Character_job{
			var job:Character_job = new Character_job();
			job.set_name("herbalist");
			
			var a:Action = new Action();
			a.set_name("Trade");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.Stubby_twig());
			job.new_action(a);	
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.Fem_HipSize());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.donkey_daikon());
			job.new_action(a);	
			
			return job;
		}
		
		public static function job_benevol_jeweller():Character_job{
			var job:Character_job = new Character_job();
			job.set_name("jeweller");
			
			var a:Action = new Action();
			a.set_name("Trade");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.gold_medallion());
			job.new_action(a);	
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.gold_ring());
			job.new_action(a);	
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.silver_circlet());
			job.new_action(a);	
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.ring_recipe());
			job.new_action(a);	
			
			
			return job;
		}
		
		public static function job_benevol_librarian():Character_job{
			var job:Character_job = new Character_job();
			job.set_name("librarian");
			
			var a:Action = new Action();
			a.set_name("Trade");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.hardcover_war_and_peace());
			job.new_action(a);	
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.bronze_shortsword_recipe());
			job.new_action(a);	
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.spear_recipe());
			job.new_action(a);				
			
			return job;
		}
		
		public static function job_industria_seamstress():Character_job{
			var job:Character_job = new Character_job();
			job.set_name("seamstress");
			
			var a:Action = new Action();
			a.set_name("Trade");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.Blue_silk_shirt());
			job.new_action(a);			
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.Blue_silk_boxers());
			job.new_action(a);			
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.Blue_silk_pants());
			job.new_action(a);			
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.wool_lining());
			job.new_action(a);			
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.goggles());
			job.new_action(a);					
			
			return job;
		}
		
		public static function job_industria_grocer():Character_job{
			var job:Character_job = new Character_job();
			job.set_name("grocer");
			
			var a:Action = new Action();
			a.set_name("Trade");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.sexsnake_egg());
			job.new_action(a);	
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.arachnid_egg());
			job.new_action(a);	
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.scaled_egg());
			job.new_action(a);	
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.actino_egg());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.jade_egg());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.goblin_giblets());
			job.new_action(a);
			
			return job;
		}
		
		public static function job_aghapei_guru():Character_job{
			var job:Character_job = new Character_job();
			job.set_name("guru");
			
			var a:Action = new Action();
			a.set_name("Trade");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.snowy_flower());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.height_potion());
			job.new_action(a);
			
			return job;
		}
		
		public static function job_aghapei_seamstress():Character_job{
			var job:Character_job = new Character_job();
			job.set_name("seamstress");
			
			var a:Action = new Action();
			a.set_name("Trade");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.Overalls());
			job.new_action(a);	
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.ripped_jean_shorts());
			job.new_action(a);	
			
			return job;
		}
		
		public static function job_aghapei_librarian():Character_job{
			var job:Character_job = new Character_job();
			job.set_name("librarian");
			
			var a:Action = new Action();
			a.set_name("Trade");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.hardcover_war_and_peace());
			job.new_action(a);	
			
			return job;
		}
		
		public static function job_ahimsa_shopkeeper():Character_job{
			var job:Character_job = job_caravan_merchant();
			job.set_name("shopkeeper");
			
			var a:Action = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.elvish_bread());
			job.new_action(a);			
			
			return job;
		}
		
		public static function job_ahimsa_doctor():Character_job{
			var job:Character_job = new Character_job();
			job.set_name("doctor");
			
			var a:Action = new Action();
			a.set_name("Trade");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.Healing_Potion());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.bottled_abortion());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.reduction_salve());
			job.new_action(a);
			
			return job;
		}
		
		public static function job_ahimsa_librarian():Character_job{
			var job:Character_job = new Character_job();
			job.set_name("librarian");
			
			var a:Action = new Action();
			a.set_name("Trade");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.hardcover_war_and_peace());
			job.new_action(a);	
			
			return job;
		}
		
		public static function job_ahimsa_cobler():Character_job{
			var job:Character_job = new Character_job();
			job.set_name("cobbler");
			
			var a:Action = new Action();
			a.set_name("Trade");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.green_leather_sandals());
			job.new_action(a);
			
			return job;			
		}
		
		public static function job_ahimsa_smith():Character_job{
			var job:Character_job = new Character_job();
			job.set_name("smith");
			
			var a:Action = new Action();
			a.set_name("Trade");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.elvish_rapier());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.strong_grip());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.rapier_recipe());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.greaves_recipe());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.breastplate_recipe());
			job.new_action(a);
			
			return job;			
		}
		
		public static function job_ahimsa_seamstress():Character_job{
			var job:Character_job = new Character_job();
			job.set_name("seamstress");
			
			var a:Action = new Action();
			a.set_name("Trade");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.red_tunic());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.brown_elvish_gown());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.gown_recipe());
			job.new_action(a);			
			
			return job;
		}
		
		public static function job_castilla_seamstress():Character_job{
			var job:Character_job = new Character_job();
			job.set_name("seamstress");
			
			var a:Action = new Action();
			a.set_name("Trade");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.fancy_pee_cap());
			job.new_action(a);	
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.blue_apron());
			job.new_action(a);	
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.white_blouse());
			job.new_action(a);	
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.white_dress_shirt());
			job.new_action(a);	
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.blue_slacks());
			job.new_action(a);	
			
			return job;
		}
		
		public static function job_castilla_cobbler():Character_job{
			var job:Character_job = new Character_job();
			job.set_name("cobbler");
			
			var a:Action = new Action();
			a.set_name("Trade");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.hard_leather_boots());
			job.new_action(a);	
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.black_boots());
			job.new_action(a);	
			
			return job;
		}
		
		public static function job_bee_hive_shopkeeper():Character_job{
			var job:Character_job = job_caravan_merchant();
			job.set_name("shopkeeper");
			
			var a:Action = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.Honey());
			job.new_action(a);	
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.weight_loss_pills());
			job.new_action(a);	
			
			return job;
		}
		
		public static function job_equine_encampment_shopkeeper():Character_job{
			var job:Character_job = job_caravan_merchant();
			job.set_name("shopkeeper");
			
			var a:Action = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.Stallion_Stout());
			job.new_action(a);	
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.rabbity_carrot());
			job.new_action(a);	
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.dirty_haltertop());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.Fem_BreastSize());
			job.new_action(a);	
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.spermacide());
			job.new_action(a);	
			
			return job;
		}
		
		public static function job_century_city_gro_clerk():Character_job{
			//Uses human lives in the production of their drugs
			var job:Character_job = new Character_job();
			job.set_name("Shop Clerk");
			
			var a:Action = new Action();
			a.set_name("Trade");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.Spam_PLength());
			job.new_action(a);			
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.Spam_PGirth());
			job.new_action(a);				
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.Spam_BallSize());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.Spam_BustSize());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.Fem_BreastSize());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.Fem_NipSize());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.Fem_ClitSize());
			job.new_action(a);
			
			return job;
		}
		
		public static function nunnery_drug_dealer():Character_job{
			//Uses semen and milk in the production of their drugs
			var job:Character_job = new Character_job();
			job.set_name("Dealer");
			
			var a:Action = new Action();
			a.set_name("Trade");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.Spam_CumV());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.Fem_HipSize());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.Fem_WaistSize());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.Medic_SemenFertility());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.Medic_WombFertility());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.Medic_MilkProd());
			job.new_action(a);
			
			return job;
		}
		
		public static function witches_potionmaking_student():Character_job{
			//Uses magic and placebo effects in the production of their drugs
			var job:Character_job = new Character_job();
			job.set_name("Potionmaking Student");
			
			var a:Action = new Action();
			a.set_name("Trade");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.Spam_ErRat());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.Fem_HairLength());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.Fem_HairColour());
			job.new_action(a);	
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.Fem_eyeColour());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.Medic_AnalWidth());
			job.new_action(a);	
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.Medic_VagWidth());
			job.new_action(a);	
			
			return job;
		}
		
		public static function job_burrowton_cheesemonger():Character_job{
			var job:Character_job = new Character_job();
			job.set_name("Cheesemonger");
			
			var a:Action = new Action();
			a.set_name("Trade");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.strong_cheese());
			job.new_action(a);
			
			a = new Action();
			a.set_name("");
			a.set_trade_flag();
			a.set_trade_item(FPalace_items.milk_jug());
			job.new_action(a);
			
			return job;
		}
		
		public static function job_caravan_guard():Character_job{
			var job:Character_job = new Character_job();
			job.set_name("guard");
			
			return job;
		}
		
		public static function job_palace_bouncer():Character_job{
			var job:Character_job = new Character_job();
			job.set_name("bouncer");
			
			return job;
		}
		
		public static function job_palace_bartender():Character_job{
			var job:Character_job = new Character_job();
			job.set_name("bartender");
			
			return job;
		}
		
		public static function job_palace_greeting_girl():Character_job{
			var job:Character_job = new Character_job();
			job.set_name("greeting girl");
			
			return job;
		}
		
		public static function job_palace_protestor():Character_job{
			var job:Character_job = new Character_job();
			job.set_name("Crazed Protestor");
			
			return job;
		}
		
		public static function job_amazon_venutian_master():Character_job{
			var job:Character_job = new Character_job();
			job.set_name("Tantric Master");
			
			return job;
		}
		
		public static function job_inkeep():Character_job{
			var job:Character_job = new Character_job();
			job.set_name("Innkeep");
			
			job.new_topic(FPalace_topics.inkeeper_topic());
			
			return job;
		}
		
		public static function job_doctor():Character_job{
			var job:Character_job = new Character_job();
			job.set_name("Doctor");
			
			job.new_topic(FPalace_topics.doctor_topic());
			
			return job;
		}
		
		public static function job_prostitute():Character_job{
			var job:Character_job = new Character_job();
			job.set_name("Prostitute");
			
			var a:Action = new Action();
			a.set_name("Prostitute");
			a.set_status_change(" is prostituting </objnoun>self here")
			a.set_personal();
			a.set_dialogue("</n> takes a few minutes and attempts to prostitue </objnoun>self. ",0);
			var chall:Challenge = new Challenge();
			chall.set_room_challenge(Challenge.non_party_count);
			chall.set_defense_stat(-1,1);
			chall.set_variability(0);
			chall.set_text("");
			var cons:Consequence = new Consequence();
			cons.add_consequence(FPalace_helper.lust_id,0, "There are people about, and </n> quickly approaches a straggler. ",0,0,0,1);//folks about, see if we can prostitute ourselves to them
			cons.add_consequence(FPalace_helper.lust_id,0, "Unfortunately, it doesn't look like there's anyone around. ",-1);//nobodies around...
			
			a.add_challenge(chall, cons);
			
			chall = new Challenge(true);
			chall.set_room_challenge(Challenge.get_non_party_target);//pick one of the characters in the room here to be interacting with (they become the 'attacker')
			chall.set_attack_stat(FPalace_skills.flirting_id);
			chall.set_defense_stat(-1,10);
			chall.set_variability(20);
			chall.set_text("");
			chall.set_tick_cost(Main.t30_min);
			cons = new Consequence();			
			cons.add_consequence(FPalace_helper.lust_id,0, "</n> finds someone who seems to be </c2>. ",-1);
			cons.add_consequence(FPalace_helper.lust_id,0, "</n> does </noun> best, but no one is biting. ",0);
			
			a.add_challenge(chall, cons);
			
			chall = new Challenge(true);			
			chall.set_attack_stat(FPalace_skills.flirting_id);
			chall.set_defense_stat(Character.attraction_id);
			chall.set_variability(5);
			chall.set_text("interested");
			cons = new Consequence();			
			cons.add_consequence(FPalace_helper.lust_id,0, "</n2> takes a moment to flirt with </n>. ",0,0,0,3);
			cons.add_consequence(FPalace_helper.lust_id,0, "</n2> begins to approach </n>, but </pronoun> raises a hand to stop </objnoun2>. ",-1);
			
			a.add_challenge(chall, cons);
			
			chall = new Challenge(true);			
			chall.set_attack_stat(FPalace_skills.flirting_id);
			chall.set_defense_stat(Character.attraction_id);
			chall.set_variability(20);
			chall.set_text("");
			cons = new Consequence();			
			cons.add_consequence(FPalace_helper.lust_id,50, "</n2> whispers into </n>s ear as </pronoun2> gropes and feels </objnoun> up. </n> quickly agrees to the price. ",0,0,0,4);
			cons.add_consequence(FPalace_helper.lust_id,20, "</n2> whispers into </n>s ear as </pronoun2> gropes and feels </objnoun> up. </n> stops </n2> dead when it comes to the matter of the price. ",-1);
			
			a.add_challenge(chall, cons);
			
			chall = new Challenge(true);			
			chall.set_attack_stat(FPalace_skills.sex_id);
			chall.set_defense_stat(Character.attraction_id);
			chall.set_variability(20);
			chall.set_text("");
			chall.set_tick_cost(Main.t30_min);
			cons = new Consequence();			
			cons.add_consequence(FPalace_helper.lust_id,-100, "</n2> has a furious romp with </n>, quickly bringing </objnoun> to climax. </n> reaches for </noun> wallet with a smile. ",0,0,0,5);
			cons.add_consequence(FPalace_helper.lust_id,-40, "</n2> has a tedious fuck with </n>, but before long </pronoun> stops </objnoun2> and begins offering to pay. ",-1,0,0,5);
			
			a.add_challenge(chall, cons);
			
			chall = new Challenge();			
			chall.set_attack_stat(-1,4);
			chall.set_defense_stat(Character.gold_id);
			chall.set_variability(0);
			chall.set_text("");
			var iconsequence:Item_Consequence = new Item_Consequence();
			iconsequence.add_consequence(Character.relations_affect_id,5, "</n> pays </n2>. ",-1,0,0,-1,true);
			iconsequence.add_consequence(Character.relations_affect_id,-5, "</n> looks disapointed as </pronoun> finds </noun> wallet devoid of gold to pay with. ",0,0,0,-1,true);
			iconsequence.add_item_reward(FPalace_items.gold(-5), -1, false, false);
			iconsequence.add_item_reward(FPalace_items.gold(5), -1);
			
			a.add_challenge(chall, iconsequence);
			
			job.new_action(a);			
			
			return job;
		}
	}
	
}
