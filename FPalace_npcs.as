package  {
	
	public class FPalace_npcs {

		public function FPalace_npcs() {
			// constructor code
		}
		
		//Static NPCs
		
		public static function FPalace_guardian():Character{
			var creature:Character = base_herm(FPalace_races.race_human());
			creature.set_name("Vivian");
			creature.set_surname("Armstrong");
			//creature.set_move();			
			creature.set_character_class(FPalace_classes.cclass_gene_splice());
			creature.set_xp(800);
			
			creature.set_gold(100);
			creature.apply_affect_by_id(FPalace_helper.age_id,15,0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.int_id,5,0,null,Body.change_stats_total);
			creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
			creature.skills.set_skill_value(creature, FPalace_skills.trade_id, 5);
			creature.skills.set_skill_value(creature, FPalace_skills.valuing_id, 5);
			creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 5);
			creature.skills.set_skill_value(creature, FPalace_skills.melee_id, 5);
			creature.skills.set_skill_value(creature, FPalace_skills.defence_id, 5);
			creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
			creature.skills.set_skill_value(creature, FPalace_skills.flirting_id, 10);
			creature.skills.set_skill_value(creature, FPalace_skills.sex_id, 10);
			creature.skills.set_skill_value(creature, FPalace_skills.blowjobs_id, 10);
			
			creature.equip(FPalace_items.robe(),0);
			
			creature.add_to_possessions(FPalace_items.FPalace_membership());
			
			creature.personality.new_allegiance(FPalace_helper.get_sin_mob(), creature);
			creature.personality.new_allegiance(FPalace_helper.get_amazon_mob(), creature);	
			creature.personality.set_job(FPalace_classes.job_expedition_leader(), creature);
			
			/*
			trace("(FPalace_npcs.FPalace_guardian)");
			trace(creature.statistics(creature));
			trace(creature.appearance(1));
			*/
			//creature.char_sprite_id = FPalace_helper.test_img;
			
			creature.reset_stats();
			creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
			
			return creature;			
		}
		
		public static function FPalace_legdig():Character{
			/*
			"Legdig is a small grey mouse about 4'3 in height by default with large ears and neck length curly hair which is a red and white 
			pinstripe colour flowing out from the crown of his head, similar to a peppermint candy. 
			He has a feminine face with full black lips, two sharp buck teeth which stick out a little bit, a little pink nose and bushy 
			eyelashes, his eyes are yellow and have a piercing look to them, while he has an iris he lacks pupils. 
			He has narrow shoulders but his hips are broader than with width of his shoulders and this makes him look more like a flat 
			chested female, the exception is the equine shaft he possesses which is about a third of his height (17") when erect but a comfortable 
			6 inches when flaccid, his balls a similar proportion and also follow this rule. 
			His tail is twice as long as he is tall and is also red and white pinstripe. 				
			He is a candied mouse too and will become larger in proportion to any sugary food he is given but the extra mass can also be used 
			to give himself additional body parts.
			If he gets hot or wet he has a tendency to become liquid for a short time, similar to the goos around but will eventually set on 
			his own.			
			he's usually very laid back but becomes somewhat desperate when they're even the slightest bit horny, they're very submissive at 
			first in order to entice their "pray" but if that doesn't work they'll become a lot more forward and try to take you by force, no 
			isn't an answer and he can't be talked down, They will become a lot stronger like this (because why not, it'll be quite funny, maybe 
			you can make him a little boss encounter, bigger rewards the more you deny em"
			*/
			var creature:Character = new Character();
			var race:Race = FPalace_races.race_anthro_mouse();
			creature.new_body_part(FPalace_helper.new_hair(race));
			creature.new_body_part(FPalace_helper.new_head(race));
			creature.new_body_part(FPalace_helper.new_eyes(race));
			creature.new_body_part(FPalace_helper.new_torso(race));
			creature.new_body_part(FPalace_helper.new_left_arms(race));
			creature.new_body_part(FPalace_helper.new_left_hands(race));
			creature.new_body_part(FPalace_helper.new_right_arms(race));
			creature.new_body_part(FPalace_helper.new_right_hands(race));
			creature.new_body_part(FPalace_helper.new_hips(race));
			creature.new_body_part(FPalace_helper.new_left_legs(race));
			creature.new_body_part(FPalace_helper.new_left_feet(race));
			creature.new_body_part(FPalace_helper.new_right_legs(race));
			creature.new_body_part(FPalace_helper.new_right_feet(race));
			creature.new_body_part(FPalace_helper.new_tail(race));
			
			race = FPalace_races.race_anthro_equine();
			
			creature.new_body_part(FPalace_helper.new_penis(race));
			creature.new_body_part(FPalace_helper.new_balls(race));
			
			creature.personality.determine_orient(creature.sex);
			
			creature.set_name("Legdig");
			//creature.set_move();			
			creature.set_character_class(FPalace_classes.cclass_fleshstealer());
			creature.set_xp(400);
			
			creature.set_gold(100);
			
			creature.apply_affect_by_id(FPalace_helper.eye_colour_id,4,0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.hair_length_id,10,0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.hair_colour_id,2,0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.bust_id,-2,0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.waist_id,-4,0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.height_id,-1,0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.erection_ratio_id,-0.17,0,null,Body.change_stats_total);
			
			creature.equip(FPalace_items.robe(),0);
			
			creature.add_to_possessions(FPalace_items.FPalace_membership());
			creature.add_to_possessions(FPalace_items.strong_cheese());			
			
			creature.personality.new_allegiance(FPalace_helper.get_sin_mob(), creature);
			
			/*
			trace("(FPalace_npcs.FPalace_legdig)");
			trace(creature.statistics(creature));
			trace(creature.appearance(1));
			*/
			
			creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
			creature.skills.set_skill_value(creature, FPalace_skills.trade_id, 5);
			creature.skills.set_skill_value(creature, FPalace_skills.valuing_id, 5);
			creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 5);
			creature.skills.set_skill_value(creature, FPalace_skills.melee_id, 5);
			creature.skills.set_skill_value(creature, FPalace_skills.defence_id, 5);
			creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
			
			//creature.char_sprite_id = FPalace_helper.test_img;
			
			creature.reset_stats();
			creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
			
			return creature;
		}
		
		public static function FPalace_bartender():Character{
			var fpalace_bartender:Character = base_herm(FPalace_races.race_human());
			fpalace_bartender.set_name("Sascha Malone");
			fpalace_bartender.set_character_class(FPalace_classes.cclass_stripper());
			fpalace_bartender.set_xp(4000);
			
			fpalace_bartender.apply_affect_by_id(FPalace_helper.age_id, 5 ,0,null,Body.change_stats_total);
			//should have a default status of "is standing behind the bar"
			fpalace_bartender.skills.set_skill_value(fpalace_bartender, FPalace_skills.fight_id, 5);
			fpalace_bartender.skills.set_skill_value(fpalace_bartender, FPalace_skills.melee_id, 5);
			fpalace_bartender.skills.set_skill_value(fpalace_bartender, FPalace_skills.defence_id, 5);
			fpalace_bartender.skills.set_skill_value(fpalace_bartender, FPalace_skills.people_id, 5);
			fpalace_bartender.skills.set_skill_value(fpalace_bartender, FPalace_skills.item_effects_id, 5);
			fpalace_bartender.skills.set_skill_value(fpalace_bartender, FPalace_skills.flirting_id, 10);
			fpalace_bartender.skills.set_skill_value(fpalace_bartender, FPalace_skills.sex_id, 10);
			fpalace_bartender.skills.set_skill_value(fpalace_bartender, FPalace_skills.blowjobs_id, 10);
			
			fpalace_bartender.personality.new_allegiance(FPalace_helper.get_sin_mob(), fpalace_bartender);
			fpalace_bartender.personality.new_allegiance(FPalace_helper.get_empress_mob(), fpalace_bartender);
			fpalace_bartender.personality.new_allegiance(FPalace_helper.get_amazon_mob(), fpalace_bartender);
			fpalace_bartender.personality.set_job(FPalace_classes.job_palace_bartender(), fpalace_bartender);
			
			/*
			trace("(FPalace_npcs.FPalace_bartender)");
			trace(creature.statistics(creature));
			trace(creature.appearance(1));
			*/
			
			fpalace_bartender.reset_stats();
			fpalace_bartender.apply_affect_by_id(FPalace_helper.curr_hp_id, fpalace_bartender.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
			fpalace_bartender.apply_affect_by_id(FPalace_helper.curr_mp_id, fpalace_bartender.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
			fpalace_bartender.apply_affect_by_id(FPalace_helper.curr_fatigue_id, fpalace_bartender.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
			
			return fpalace_bartender;
		}
		
		public static function venutian_arts_teacher():Character{
			var venutian_sensei:Character = base_herm(FPalace_races.race_human());
			venutian_sensei.set_name("Junius Jutsu");
			venutian_sensei.set_character_class(FPalace_classes.cclass_gene_splice());
			venutian_sensei.set_xp(4000);
			
			venutian_sensei.apply_affect_by_id(FPalace_helper.breast_size_id, 2,0,null,Body.change_stats_total);
			venutian_sensei.apply_affect_by_id(FPalace_helper.penis_length_id, 6,0,null,Body.change_stats_total);
			venutian_sensei.apply_affect_by_id(FPalace_helper.penis_girth_id, 2,0,null,Body.change_stats_total);
			venutian_sensei.apply_affect_by_id(FPalace_helper.balls_size_id, 2,0,null,Body.change_stats_total);
			venutian_sensei.apply_affect_by_id(FPalace_helper.age_id, 20,0,null,Body.change_stats_total);

			venutian_sensei.skills.set_skill_value(venutian_sensei, FPalace_skills.fight_id, 5);
			venutian_sensei.skills.set_skill_value(venutian_sensei, FPalace_skills.melee_id, 5);
			venutian_sensei.skills.set_skill_value(venutian_sensei, FPalace_skills.grappling_id, 50);
			venutian_sensei.skills.set_skill_value(venutian_sensei, FPalace_skills.defence_id, 5);
			venutian_sensei.skills.set_skill_value(venutian_sensei, FPalace_skills.people_id, 5);
			venutian_sensei.skills.set_skill_value(venutian_sensei, FPalace_skills.item_effects_id, 5);
			venutian_sensei.skills.set_skill_value(venutian_sensei, FPalace_skills.flirting_id, 10);
			venutian_sensei.skills.set_skill_value(venutian_sensei, FPalace_skills.sex_id, 10);
			venutian_sensei.skills.set_skill_value(venutian_sensei, FPalace_skills.blowjobs_id, 10);
			
			venutian_sensei.personality.set_job(FPalace_classes.job_amazon_venutian_master(), venutian_sensei);
			venutian_sensei.personality.new_allegiance(FPalace_helper.get_sin_mob(), venutian_sensei);
			venutian_sensei.personality.new_allegiance(FPalace_helper.get_amazon_mob(), venutian_sensei);
			
			/*
			trace("(FPalace_npcs.venutian_arts_teacher)");
			trace(creature.statistics(creature));
			trace(creature.appearance(1));
			*/
			
			venutian_sensei.reset_stats();
			venutian_sensei.apply_affect_by_id(FPalace_helper.curr_hp_id, venutian_sensei.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
			venutian_sensei.apply_affect_by_id(FPalace_helper.curr_mp_id, venutian_sensei.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
			venutian_sensei.apply_affect_by_id(FPalace_helper.curr_fatigue_id, venutian_sensei.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
			
			return venutian_sensei;
		}
		
		public static function amazonian_alchemist():Character{
			var alchemist:Character = base_herm(FPalace_races.race_human());
			alchemist.set_name("Alexis Willy");
			alchemist.set_character_class(FPalace_classes.cclass_alchemist());
			alchemist.set_xp(4000);
			alchemist.apply_affect_by_id(FPalace_helper.breast_size_id, -1,0,null,Body.change_stats_total);
			alchemist.apply_affect_by_id(FPalace_helper.penis_length_id, -9,0,null,Body.change_stats_total);
			alchemist.apply_affect_by_id(FPalace_helper.penis_girth_id, -3,0,null,Body.change_stats_total);
			alchemist.apply_affect_by_id(FPalace_helper.balls_size_id, -3,0,null,Body.change_stats_total);
			alchemist.apply_affect_by_id(FPalace_helper.age_id, 25,0,null,Body.change_stats_total);

			alchemist.skills.set_skill_value(alchemist, FPalace_skills.fight_id, 5);
			alchemist.skills.set_skill_value(alchemist, FPalace_skills.melee_id, 5);
			alchemist.skills.set_skill_value(alchemist, FPalace_skills.item_alchemy_effects_id, 50);
			alchemist.skills.set_skill_value(alchemist, FPalace_skills.alchemy_id, 50);
			alchemist.skills.set_skill_value(alchemist, FPalace_skills.defence_id, 5);
			alchemist.skills.set_skill_value(alchemist, FPalace_skills.people_id, 5);
			alchemist.skills.set_skill_value(alchemist, FPalace_skills.item_effects_id, 5);
			alchemist.skills.set_skill_value(alchemist, FPalace_skills.flirting_id, 10);
			alchemist.skills.set_skill_value(alchemist, FPalace_skills.sex_id, 10);
			alchemist.skills.set_skill_value(alchemist, FPalace_skills.blowjobs_id, 10);
			
			alchemist.personality.set_job(FPalace_classes.job_lux_invira_alchemist(), alchemist);
			alchemist.personality.new_allegiance(FPalace_helper.get_sin_mob(), alchemist);
			alchemist.personality.new_allegiance(FPalace_helper.get_amazon_mob(), alchemist);
			
			/*
			trace("(FPalace_npcs.amazonian_alchemist)");
			trace(creature.statistics(creature));
			trace(creature.appearance(1));
			*/
			
			alchemist.reset_stats();
			alchemist.apply_affect_by_id(FPalace_helper.curr_hp_id, alchemist.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
			alchemist.apply_affect_by_id(FPalace_helper.curr_mp_id, alchemist.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
			alchemist.apply_affect_by_id(FPalace_helper.curr_fatigue_id, alchemist.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
			
			alchemist.personality.add_conversation_topic(FPalace_topics.collecting_ingredients());
			
			return alchemist;
		}
		
		public static function castilla_witch():Character{//This is Granny Weatherwax, except not, because copyright
			var witch:Character = base_female(FPalace_races.race_human());
			witch.set_name("Granny");
			witch.set_move(2);
			witch.set_character_class(FPalace_classes.cclass_witch());
			witch.set_xp(4000);
			
			witch.apply_affect_by_id(FPalace_helper.breast_size_id, -2,0,null,Body.change_stats_total);
			witch.apply_affect_by_id(FPalace_helper.age_id, 35,0,null,Body.change_stats_total);
			
			witch.hold(FPalace_items.maidens_wand(),0);

			witch.skills.set_skill_value(witch, FPalace_skills.fight_id, 5);
			witch.skills.set_skill_value(witch, FPalace_skills.melee_id, 5);
			witch.skills.set_skill_value(witch, FPalace_skills.item_alchemy_effects_id, 50);
			witch.skills.set_skill_value(witch, FPalace_skills.alchemy_id, 50);
			witch.skills.set_skill_value(witch, FPalace_skills.defence_id, 5);
			witch.skills.set_skill_value(witch, FPalace_skills.people_id, 5);
			witch.skills.set_skill_value(witch, FPalace_skills.item_effects_id, 5);
			
			witch.personality.set_job(FPalace_classes.job_chastity_witch(), witch);
			witch.personality.new_allegiance(FPalace_helper.get_chastity_mob(), witch);
			witch.personality.new_allegiance(FPalace_helper.get_humility_mob(), witch);
			
			/*
			trace("(FPalace_npcs.castilla_witch)");
			trace(creature.statistics(creature));
			trace(creature.appearance(1));
			*/
			
			witch.reset_stats();
			witch.apply_affect_by_id(FPalace_helper.curr_hp_id, witch.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
			witch.apply_affect_by_id(FPalace_helper.curr_mp_id, witch.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
			witch.apply_affect_by_id(FPalace_helper.curr_fatigue_id, witch.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
			
			return witch;
		}
		
		public static function FPalace_greeting_girl():Character{
			var creature:Character = new Character("Lindsay Long");
			
			var race:Race = FPalace_races.race_human();
			
			creature.new_body_part(FPalace_helper.new_hair(race));
			creature.new_body_part(FPalace_helper.new_head(race));
			creature.new_body_part(FPalace_helper.new_eyes(race));
			creature.new_body_part(FPalace_helper.new_torso(race));
			creature.new_body_part(FPalace_helper.new_left_arms(race));
			creature.new_body_part(FPalace_helper.new_left_hands(race));
			creature.new_body_part(FPalace_helper.new_right_arms(race));
			creature.new_body_part(FPalace_helper.new_right_hands(race));
			creature.new_body_part(FPalace_helper.new_hips(race));
			creature.new_body_part(FPalace_helper.new_left_legs(race));
			creature.new_body_part(FPalace_helper.new_left_feet(race));
			creature.new_body_part(FPalace_helper.new_right_legs(race));
			creature.new_body_part(FPalace_helper.new_right_feet(race));
			creature.new_body_part(FPalace_helper.new_breasts(race));
			creature.new_body_part(FPalace_helper.new_penis(race));
			creature.new_body_part(FPalace_helper.new_vagina(race));
			creature.new_body_part(FPalace_helper.new_clit(race));
			
			creature.personality.determine_orient(creature.sex);
			creature.personality.set_job(FPalace_classes.job_palace_greeting_girl(), creature);
			creature.personality.new_allegiance(FPalace_helper.get_sin_mob(), creature);
			creature.personality.new_allegiance(FPalace_helper.get_amazon_mob(), creature);
			
			creature.set_character_class(FPalace_classes.cclass_stripper());

			creature.apply_affect_by_id(FPalace_helper.age_id, -5,0,null,Body.change_stats_total);

			creature.equip(FPalace_items.bunny_suit(),0);
			
			creature.equip(FPalace_items.bunny_ears(),0);

			creature.add_to_possessions(FPalace_items.FPalace_membership());

			creature.set_xp(28);
			
			creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 5);
			creature.skills.set_skill_value(creature, FPalace_skills.melee_id, 5);
			creature.skills.set_skill_value(creature, FPalace_skills.defence_id, 5);
			creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
			creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
			creature.skills.set_skill_value(creature, FPalace_skills.flirting_id, 10);
			creature.skills.set_skill_value(creature, FPalace_skills.sex_id, 10);
			creature.skills.set_skill_value(creature, FPalace_skills.blowjobs_id, 10);
			
			/*
			trace("(FPalace_npcs.FPalace_greeting_girl)");
			trace(creature.statistics(creature));
			trace(creature.appearance(1));
			*/
			
			creature.set_gold(20);
			creature.reset_stats();
			creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
			
			return creature;
		}
		
		public static function FPalace_bouncer_1():Character{
			var creature:Character = base_herm(FPalace_races.race_human());
			creature.set_name("Miss Tulip");
			creature.set_character_class(FPalace_classes.cclass_gene_splice());
			creature.set_xp(400);
			
			creature.apply_affect_by_id(FPalace_helper.penis_length_id,3,0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.penis_girth_id ,1,0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.balls_size_id ,1,0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.cum_volume_id ,50,0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.height_id ,1,0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.age_id, 4,0,null,Body.change_stats_total);
									
			creature.set_gold(10);
			
			creature.equip(FPalace_items.black_tshirt(),0);
			creature.equip(FPalace_items.baggy_bluejeans(),0);
			creature.equip(FPalace_items.black_boots(),0);
			creature.equip(FPalace_items.black_leather_jacket(),0);
			creature.equip(FPalace_items.sunglasses(),0);
			
			creature.personality.new_allegiance(FPalace_helper.get_sin_mob(), creature);
			creature.personality.new_allegiance(FPalace_helper.get_amazon_mob(), creature);
			creature.personality.set_job(FPalace_classes.job_palace_bouncer(), creature);
			
			creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 5);
			creature.skills.set_skill_value(creature, FPalace_skills.melee_id, 5);
			creature.skills.set_skill_value(creature, FPalace_skills.unarmed_id, 5);
			creature.skills.set_skill_value(creature, FPalace_skills.defence_id, 5);
			creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
			creature.skills.set_skill_value(creature, FPalace_skills.flirting_id, 10);
			creature.skills.set_skill_value(creature, FPalace_skills.sex_id, 10);
			creature.skills.set_skill_value(creature, FPalace_skills.blowjobs_id, 10);
			
			/*
			trace("(FPalace_npcs.FPalace_bouncer_1)");
			trace(creature.statistics(creature));
			trace(creature.appearance(1));
			*/
			
			creature.reset_stats();
			creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
			
			return creature;
		}
		
		public static function FPalace_bouncer_2():Character{
			var creature:Character = base_herm(FPalace_races.race_human());
			creature.set_name("Miss Croup");
			creature.set_character_class(FPalace_classes.cclass_gene_splice());
			creature.set_xp(400);
			
			creature.apply_affect_by_id(FPalace_helper.breast_size_id ,2,0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.nipple_size_id ,0.25,0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.milk_volume_id ,50,0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.age_id, 4,0,null,Body.change_stats_total);
			
			creature.set_gold(10);
			
			creature.equip(FPalace_items.white_tshirt(),0);
			creature.equip(FPalace_items.normal_bluejeans(),0);
			creature.equip(FPalace_items.black_boots(),0);
			creature.equip(FPalace_items.black_leather_jacket(),0);
			
			creature.add_to_possessions(FPalace_items.lactaid());
			creature.add_to_possessions(FPalace_items.lactaid());
			
			creature.personality.new_allegiance(FPalace_helper.get_sin_mob(), creature);
			creature.personality.new_allegiance(FPalace_helper.get_amazon_mob(), creature);
			creature.personality.set_job(FPalace_classes.job_palace_bouncer(), creature);
			
			creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 5);
			creature.skills.set_skill_value(creature, FPalace_skills.melee_id, 5);
			creature.skills.set_skill_value(creature, FPalace_skills.unarmed_id, 5);
			creature.skills.set_skill_value(creature, FPalace_skills.defence_id, 5);
			creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
			creature.skills.set_skill_value(creature, FPalace_skills.flirting_id, 10);
			creature.skills.set_skill_value(creature, FPalace_skills.sex_id, 10);
			creature.skills.set_skill_value(creature, FPalace_skills.blowjobs_id, 10);
			
			/*
			trace("(FPalace_npcs.FPalace_bouncer_2)");
			trace(creature.statistics(creature));
			trace(creature.appearance(1));
			*/
			
			creature.reset_stats();
			creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
			
			return creature;
		}
		
		public static function grasslands_protestor():Character{
			var creature:Character = base_male(FPalace_races.race_human());
			creature.set_name("Martin Milk");
			creature.set_character_class(FPalace_classes.cclass_missionary());						
			creature.set_xp(200);
			
			creature.apply_affect_by_id(FPalace_helper.int_id,5,0,null,Body.change_stats_total);
			
			creature.set_gold(100);
			
			creature.equip(FPalace_items.blue_scrub_top(),0);
			creature.equip(FPalace_items.blue_scrub_bottom(),0);
			creature.equip(FPalace_items.black_dress_shoes(),0);
			creature.equip(FPalace_items.blue_surgical_mask(),0);
			
			creature.equip(FPalace_items.bloody_lab_coat(),0);			
			
			creature.hold(FPalace_items.scalpel(),0);
			
			creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 5);
			creature.skills.set_skill_value(creature, FPalace_skills.melee_id, 5);
			creature.skills.set_skill_value(creature, FPalace_skills.one_handed_id, 5);
			creature.skills.set_skill_value(creature, FPalace_skills.defence_id, 5);
			creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
			creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
			
			creature.personality.add_conversation_topic(FPalace_topics.topic_fpalace_protest());
			creature.personality.add_conversation_topic(FPalace_topics.topic_crazy_surgeon());
			creature.personality.set_job(FPalace_classes.job_palace_protestor(), creature);
			creature.personality.new_allegiance(FPalace_helper.get_chastity_mob(), creature);
			
			/*
			trace("(FPalace_npcs.grasslands_protestor)");
			trace(creature.statistics(creature));
			trace(creature.appearance(1));
			*/
			
			creature.reset_stats();
			creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
			return creature;
		}
		
		public static function FPalace_Artist_Linty():Character{
			var creature:Character = base_female(FPalace_races.race_human());
			creature.set_name("Linty");
			creature.set_character_class(FPalace_classes.cclass_sexmagus());
			creature.set_xp(500);
			creature.set_move(2);
			//should probably ask Linty about this, but...
			creature.apply_affect_by_id(FPalace_helper.age_id,-7,0,null,Body.change_stats_total);
			creature.new_body_part(FPalace_helper.new_penis(FPalace_races.race_human()));
			creature.new_body_part(FPalace_helper.new_balls(FPalace_races.race_human()));
			
			creature.apply_affect_by_id(FPalace_helper.int_id,3,0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.bust_id,2.5,0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.hips_id,2.5,0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.breast_size_id,1,0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.penis_length_id,8,0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.penis_girth_id,2.5,0,null,Body.change_stats_total);
			
			creature.set_gold(50);
			
			creature.equip(FPalace_items.black_rimmed_glasses(),0);
			creature.equip(FPalace_items.pushup_bra(),0);
			creature.equip(FPalace_items.red_g_string(),0);
			creature.equip(FPalace_items.knee_high_socks(),0);
			creature.equip(FPalace_items.white_blouse(),0);
			creature.equip(FPalace_items.plaid_skirt(),0);
			creature.equip(FPalace_items.black_dress_shoes(),0);
			
			creature.add_to_possessions(FPalace_items.FPalace_membership());
			
			creature.personality.new_allegiance(FPalace_helper.get_sin_mob(), creature);
			creature.personality.add_conversation_topic(FPalace_topics.topic_linty_art());
			
			creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
			creature.skills.set_skill_value(creature, FPalace_skills.trade_id, 5);
			creature.skills.set_skill_value(creature, FPalace_skills.valuing_id, 5);
			creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 5);
			creature.skills.set_skill_value(creature, FPalace_skills.melee_id, 5);
			creature.skills.set_skill_value(creature, FPalace_skills.defence_id, 5);
			creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
			creature.skills.set_skill_value(creature, FPalace_skills.flirting_id, 10);
			creature.skills.set_skill_value(creature, FPalace_skills.sex_id, 10);
			creature.skills.set_skill_value(creature, FPalace_skills.blowjobs_id, 10);
			
			/*
			trace("(FPalace_npcs.FPalace_Artist_Linty)");
			trace(creature.statistics(creature));
			trace(creature.appearance(1));
			*/
			
			creature.reset_stats();
			creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
			
			return creature;
		}
		
		public static function freedom_farms_heidi():Character{
			var heidi:Character = new Character("Heidi");
			var race:Race = FPalace_races.race_human();
			heidi.set_move(2);
			
			heidi.new_body_part(FPalace_helper.new_hair(race));
			heidi.new_body_part(FPalace_helper.new_head(race));
			heidi.new_body_part(FPalace_helper.new_eyes(race));
			heidi.new_body_part(FPalace_helper.new_torso(race));
			heidi.new_body_part(FPalace_helper.new_left_arms(race));
			heidi.new_body_part(FPalace_helper.new_left_hands(race));
			heidi.new_body_part(FPalace_helper.new_right_arms(race));
			heidi.new_body_part(FPalace_helper.new_right_hands(race));
			heidi.new_body_part(FPalace_helper.new_hips(race));
			heidi.new_body_part(FPalace_helper.new_left_legs(race));
			heidi.new_body_part(FPalace_helper.new_left_feet(race));
			heidi.new_body_part(FPalace_helper.new_right_legs(race));
			heidi.new_body_part(FPalace_helper.new_right_feet(race));
			heidi.new_body_part(FPalace_helper.new_breasts(race,2));			
			heidi.new_body_part(FPalace_helper.new_vagina(race));
			heidi.new_body_part(FPalace_helper.new_clit(race));
			
			race = FPalace_races.race_anthro_bovine();
			heidi.new_body_part(FPalace_helper.new_penis(race));
			heidi.new_body_part(FPalace_helper.new_balls(race));
			
			heidi.set_character_class(FPalace_classes.cclass_sword_dancer());
			
			heidi.personality.add_like(FPalace_helper.trait_is_bovine());
			heidi.personality.determine_orient(heidi.sex);
			heidi.personality.new_allegiance(FPalace_helper.get_freedom_farm_mob(), heidi);
			heidi.personality.new_allegiance(FPalace_helper.get_diligence_mob(), heidi);
			
			heidi.set_xp(100);
			
			heidi.skills.set_skill_value(heidi, FPalace_skills.people_id, 5);
			heidi.skills.set_skill_value(heidi, FPalace_skills.fight_id, 5);
			heidi.skills.set_skill_value(heidi, FPalace_skills.item_effects_id, 5);
			heidi.skills.set_skill_value(heidi, FPalace_skills.flirting_id, 5);
			heidi.skills.set_skill_value(heidi, FPalace_skills.sex_id, 5);
			heidi.skills.set_skill_value(heidi, FPalace_skills.blowjobs_id, 5);
			
			heidi.set_gold(100);
			
			heidi.apply_affect_by_id(FPalace_helper.str_id, 8,0,null,Body.change_stats_total);
			heidi.apply_affect_by_id(FPalace_helper.dex_id, 4,0,null,Body.change_stats_total);
			heidi.apply_affect_by_id(FPalace_helper.con_id, 8,0,null,Body.change_stats_total);
			heidi.apply_affect_by_id(FPalace_helper.sex_appeal_id, 10,0,null,Body.change_stats_total);
			heidi.apply_affect_by_id(FPalace_helper.will_id, 6,0,null,Body.change_stats_total);
			heidi.apply_affect_by_id(FPalace_helper.cha_id, 5,0,null,Body.change_stats_total);
			heidi.apply_affect_by_id(FPalace_helper.age_id,-3,0,null,Body.change_stats_total);
			heidi.apply_affect_by_id(FPalace_helper.lust_id, -heidi.get_stat(FPalace_helper.lust_id),0,null,Body.change_stats_total);
			
			//heidi.equip(FPalace_items.Overalls(),0);
			
			/*
			trace("(FPalace_npcs.freedom_farms_heidi)");
			trace(creature.statistics(creature));
			trace(creature.appearance(1));
			*/
			
			heidi.reset_stats();
			heidi.apply_affect_by_id(FPalace_helper.curr_hp_id, heidi.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
			heidi.apply_affect_by_id(FPalace_helper.curr_mp_id, heidi.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
			heidi.apply_affect_by_id(FPalace_helper.curr_fatigue_id, heidi.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
			
			heidi.personality.add_conversation_topic(FPalace_topics.looking_for_cum());
			
			return heidi;
		}
		
		public static function freedom_farms_sarah():Character{
			var creature:Character = new Character("Sarah");
			var race:Race = FPalace_races.race_human();
			
			creature.new_body_part(FPalace_helper.new_hair(race));
			creature.new_body_part(FPalace_helper.new_head(race));
			creature.new_body_part(FPalace_helper.new_eyes(race));
			creature.new_body_part(FPalace_helper.new_torso(race));
			creature.new_body_part(FPalace_helper.new_left_arms(race));
			creature.new_body_part(FPalace_helper.new_left_hands(race));
			creature.new_body_part(FPalace_helper.new_right_arms(race));
			creature.new_body_part(FPalace_helper.new_right_hands(race));
			creature.new_body_part(FPalace_helper.new_hips(race));
			creature.new_body_part(FPalace_helper.new_left_legs(race));
			creature.new_body_part(FPalace_helper.new_left_feet(race));
			creature.new_body_part(FPalace_helper.new_right_legs(race));
			creature.new_body_part(FPalace_helper.new_right_feet(race));			
			creature.new_body_part(FPalace_helper.new_penis(race));
			creature.new_body_part(FPalace_helper.new_balls(race));
			
			race = FPalace_races.race_anthro_bovine();
			creature.new_body_part(FPalace_helper.new_vagina(race,9,7));
			creature.new_body_part(FPalace_helper.new_clit(race));
			creature.new_body_part(FPalace_helper.new_breasts(race,9,4,1800));
			creature.new_body_part(FPalace_helper.new_udder(race));
			
			creature.set_character_class(FPalace_classes.cclass_fertility_nun());
			
			creature.personality.determine_orient(creature.sex);
			//Sarah has been locked up her entire life... she has no allegiances
			//creature.personality.new_allegiance(FPalace_helper.get_freedom_farm_mob(), creature);
			//creature.personality.new_allegiance(FPalace_helper.get_diligence_mob(), creature);
			
			creature.set_xp(100);
			
			creature.skills.set_skill_value(creature, FPalace_skills.people_id, 1);
			creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 5);
			
			creature.apply_affect_by_id(FPalace_helper.str_id, 2,0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.dex_id, 4,0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.con_id, 8,0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.sex_appeal_id, 6,0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.will_id, -2,0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.cha_id, 3,0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.min_lust_id, 40,0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.age_id,-3,0,null,Body.change_stats_total);
				
			
			creature.set_gold(0);
			
			/*
			trace("(FPalace_npcs.freedom_farms_sarah)");
			trace(creature.statistics(creature));
			trace(creature.appearance(1));
			*/
			
			creature.reset_stats();
			creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
			
			return creature;
		}
		
		public static function freedom_farms_lilly():Character{
			var creature:Character = base_female(FPalace_races.race_human());
			creature.set_name("Lilly");
			var race:Race = FPalace_races.race_human();
			creature.set_character_class(FPalace_classes.cclass_adventurer());
			creature.set_xp(22);
			
			creature.apply_affect_by_id(FPalace_helper.breast_size_id,4,0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.milk_volume_id,430,0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.dex_id, 4,0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.con_id, 6,0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.int_id, 6,0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.will_id, 5,0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.cha_id, 6,0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.age_id,-8,0,null,Body.change_stats_total);
			
			creature.set_gold(75);
			
			creature.equip(FPalace_items.Overalls(),0);			
			
			creature.personality.add_like(FPalace_helper.trait_is_bovine());
			creature.personality.set_job(FPalace_classes.job_farm_stall_attendent(), creature);
			creature.personality.new_allegiance(FPalace_helper.get_freedom_farm_mob(), creature);
			creature.personality.new_allegiance(FPalace_helper.get_diligence_mob(), creature);
			//Want to have some actions around Lilly that increase the size of her breasts... starts off as a tomboy farm girl (15 yrs old)
				//Would like a quest to help either Heidi (lillys older sister) or a brother to form a relationship with her
			
			creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
			creature.skills.set_skill_value(creature, FPalace_skills.trade_id, 5);
			creature.skills.set_skill_value(creature, FPalace_skills.valuing_id, 5);
			creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
			
			/*
			trace("(FPalace_npcs.freedom_farms_lilly)");
			trace(creature.statistics(creature));
			trace(creature.appearance(1));
			*/
			
			creature.reset_stats();
			creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
			
			return creature;
		}
		
		public static function freedom_farms_lucy():Character{
			var creature:Character = base_female(FPalace_races.race_human());
			creature.set_name("Lucy");
			creature.set_move(2);
			creature.set_character_class(FPalace_classes.cclass_adventurer());
			creature.set_xp(22);
			
			creature.apply_affect_by_id(FPalace_helper.breast_size_id,4,0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.milk_volume_id,430,0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.dex_id, 4,0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.con_id, 6,0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.int_id, 6,0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.will_id, 5,0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.cha_id, 6,0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.age_id,-15,0,null,Body.change_stats_total);
			
			creature.set_gold(75);
			
			creature.equip(FPalace_items.Overalls(),0);
			
			creature.personality.add_like(FPalace_helper.trait_is_bovine());
			creature.personality.new_allegiance(FPalace_helper.get_freedom_farm_mob(), creature);
			creature.personality.new_allegiance(FPalace_helper.get_diligence_mob(), creature);
			
			creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
			creature.skills.set_skill_value(creature, FPalace_skills.trade_id, 5);
			creature.skills.set_skill_value(creature, FPalace_skills.valuing_id, 5);
			creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
			
			/*
			trace("(FPalace_npcs.freedom_farms_lucy)");
			trace(creature.statistics(creature));
			trace(creature.appearance(1));
			*/
			
			creature.reset_stats();
			creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
			
			var q:Quest = new Quest();
			q.set_name("Become more like Heidi");
			q.new_objective("Grow a penis. ",Quest.part_action,[FPalace_helper.new_penis(null)]);
			q.add_conversation_topic(FPalace_topics.Being_like_big_sister(),0);
			q.set_end_step(1);
			q.add_end_reward([100]);
			creature.personality.new_objective(q,creature);
			
			return creature;
		}
		
		public static function freedom_farms_john():Character{
			var John:Character = base_male(FPalace_races.race_human());
			John.set_name("John");
			var race:Race = FPalace_races.race_human();
			John.set_move(2);
			John.set_character_class(FPalace_classes.cclass_adventurer());
			John.set_xp(100);
			
			John.apply_affect_by_id(FPalace_helper.str_id, 3,0,null,Body.change_stats_total);
			John.apply_affect_by_id(FPalace_helper.dex_id, 2,0,null,Body.change_stats_total);
			John.apply_affect_by_id(FPalace_helper.con_id, 10,0,null,Body.change_stats_total);
			John.apply_affect_by_id(FPalace_helper.cha_id, 5,0,null,Body.change_stats_total);
			John.apply_affect_by_id(FPalace_helper.age_id, 15,0,null,Body.change_stats_total);
			
			John.set_gold(175);
			
			John.equip(FPalace_items.be_cock_ring(),0);
			John.equip(FPalace_items.Overalls(),0);
						
			John.skills.set_skill_value(John, FPalace_skills.people_id, 5);
			John.skills.set_skill_value(John, FPalace_skills.trade_id, 5);
			John.skills.set_skill_value(John, FPalace_skills.valuing_id, 5);
			John.skills.set_skill_value(John, FPalace_skills.fight_id, 5);
			John.skills.set_skill_value(John, FPalace_skills.melee_id, 5);
			John.skills.set_skill_value(John, FPalace_skills.defence_id, 5);
			John.skills.set_skill_value(John, FPalace_skills.item_effects_id, 5);
			
			John.personality.add_like(FPalace_helper.trait_is_bovine());
			John.personality.new_allegiance(FPalace_helper.get_freedom_farm_mob(), John);
			John.personality.new_allegiance(FPalace_helper.get_diligence_mob(), John);
			
			/*
			trace("(FPalace_npcs.freedom_farms_john)");
			trace(creature.statistics(creature));
			trace(creature.appearance(1));
			*/
			
			John.reset_stats();
			John.apply_affect_by_id(FPalace_helper.curr_hp_id, John.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
			John.apply_affect_by_id(FPalace_helper.curr_mp_id, John.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
			John.apply_affect_by_id(FPalace_helper.curr_fatigue_id, John.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
			
			var q:Quest = new Quest();
			q.set_name("Taking care of the farm");
			q.new_objective("Find a farm-hand. ",Quest.talk_action,null);
			q.add_conversation_topic(FPalace_topics.clearing_the_field(q),0);
			q.new_objective("Get the milk delivered. ",Quest.talk_action,null);
			q.add_conversation_topic(FPalace_topics.delivery_to_nunnery(q),1);
			q.set_end_step(2);
			q.add_end_reward([100]);
			
			John.personality.new_objective(q,John);			
			
			return John;
		}
		
		public static function freedom_farms_daisy():Character{
			var creature:Character = base_female(FPalace_races.race_human());
			creature.set_name("Daisy");
			
			creature.apply_affect_by_id(FPalace_helper.dex_id, 6,0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.con_id, 4,0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.int_id, 6,0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.will_id, 5,0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.cha_id, 6,0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.breast_size_id, 4,0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.milk_volume_id, 430,0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.age_id, 14,0,null,Body.change_stats_total);
			
			//should be dressed like standard housewife... some sort of sundress, open top shoes, panties, and a super-bra to contain her tits
			
			creature.set_gold(10);
			
			creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
			
			creature.personality.add_like(FPalace_helper.trait_is_bovine());
			creature.personality.new_allegiance(FPalace_helper.get_freedom_farm_mob(), creature);
			creature.personality.new_allegiance(FPalace_helper.get_diligence_mob(), creature);
			
			/*
			trace("(FPalace_npcs.freedom_farms_daisy)");
			trace(creature.statistics(creature));
			trace(creature.appearance(1));
			*/
			
			creature.reset_stats();
			creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
			
			return creature;
		}
		
		public static function century_city_anna():Character{
			var creature:Character = base_herm(FPalace_races.race_human());
			creature.set_name("Anna Johnson");
			creature.set_move(2);
			creature.set_character_class(FPalace_classes.cclass_summoner() );
			creature.set_xp(20);
			
			creature.apply_affect_by_id(FPalace_helper.age_id, -10);
			creature.apply_affect_by_id(FPalace_helper.penis_length_id, 4.2);
			creature.apply_affect_by_id(FPalace_helper.penis_girth_id, 3.9);
			
			creature.set_gold(10);
			
			creature.equip(FPalace_items.pushup_bra(),0);
			creature.equip(FPalace_items.Blue_silk_boxers(),0);
			creature.equip(FPalace_items.knee_high_socks(),0);
			creature.equip(FPalace_items.white_blouse(),0);
			creature.equip(FPalace_items.plaid_skirt(),0);
			creature.equip(FPalace_items.black_dress_shoes(),0);
			creature.equip(FPalace_items.shy_mask(),0);
			
			creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 2);
			creature.skills.set_skill_value(creature, FPalace_skills.people_id, 1);
			creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
			
			creature.personality.new_allegiance(FPalace_helper.get_humility_mob(), creature);
			
			/*
			trace("(FPalace_npcs.century_city_anna)");
			trace(creature.statistics(creature));
			trace(creature.appearance(1));
			*/
			
			creature.reset_stats();
			creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
			
			return creature;
		}
		
		public static function century_city_zoe():Character{
			var creature:Character = base_herm(FPalace_races.race_human());
			creature.set_name("Zoe Johnson");
			creature.set_move(2);
			creature.set_character_class(FPalace_classes.cclass_summoner() );
			creature.set_xp(20);
			
			creature.apply_affect_by_id(FPalace_helper.age_id, -7);
			creature.apply_affect_by_id(FPalace_helper.breast_size_id, 1);
			creature.apply_affect_by_id(FPalace_helper.penis_length_id, 16.2);
			creature.apply_affect_by_id(FPalace_helper.penis_girth_id, 6.1);
			
			creature.set_gold(10);
			
			creature.equip(FPalace_items.pushup_bra(),0);
			creature.equip(FPalace_items.Blue_silk_boxers(),0);
			creature.equip(FPalace_items.knee_high_socks(),0);
			creature.equip(FPalace_items.white_blouse(),0);
			creature.equip(FPalace_items.plaid_skirt(),0);
			creature.equip(FPalace_items.black_dress_shoes(),0);
			creature.equip(FPalace_items.shy_mask(),0);
			
			creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 2);
			creature.skills.set_skill_value(creature, FPalace_skills.people_id, 1);
			creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
			
			creature.personality.new_allegiance(FPalace_helper.get_humility_mob(), creature);
			
			/*
			trace("(FPalace_npcs.century_city_zoe)");
			trace(creature.statistics(creature));
			trace(creature.appearance(1));
			*/
			
			creature.reset_stats();
			creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
			
			return creature;
		}
		
		public static function century_city_catherine():Character{
			var creature:Character = base_herm(FPalace_races.race_human());
			creature.set_name("Catherine Johnson");
			creature.set_move(2);
			creature.set_character_class(FPalace_classes.cclass_summoner() );
			creature.set_xp(20);
			
			creature.apply_affect_by_id(FPalace_helper.age_id, 9);
			creature.apply_affect_by_id(FPalace_helper.height_id, -34,0,null,Body.prorate_change_total);
			creature.apply_affect_by_id(FPalace_helper.breast_size_id, 1.5);
			creature.apply_affect_by_id(FPalace_helper.penis_length_id, 19.2);
			creature.apply_affect_by_id(FPalace_helper.penis_girth_id, 8.9);
			
			creature.set_gold(10);
			
			creature.equip(FPalace_items.Blue_silk_boxers(),0);
			creature.equip(FPalace_items.white_blouse(),0);
			creature.equip(FPalace_items.shy_mask(),0);
			
			creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 2);
			creature.skills.set_skill_value(creature, FPalace_skills.people_id, 1);
			creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
			
			creature.personality.new_allegiance(FPalace_helper.get_humility_mob(), creature);
			
			/*
			trace("(FPalace_npcs.century_city_catherine)");
			trace(creature.statistics(creature));
			trace(creature.appearance(1));
			*/
			
			creature.reset_stats();
			creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
			
			return creature;
		}
		
		public static function century_city_brian():Character{
			var creature:Character = base_male(FPalace_races.race_human());
			creature.set_name("Brian Johnson");
			creature.set_move(2);
			creature.set_character_class(FPalace_classes.cclass_summoner() );
			creature.set_xp(20);
			
			creature.apply_affect_by_id(FPalace_helper.age_id, -17);
			creature.apply_affect_by_id(FPalace_helper.penis_length_id, 9.7);
			creature.apply_affect_by_id(FPalace_helper.penis_girth_id, 6.8);
			creature.apply_affect_by_id(FPalace_helper.erection_ratio_id, 0.3);
			creature.set_gold(10);
			
			creature.equip(FPalace_items.Blue_silk_boxers(),0);
			creature.equip(FPalace_items.shy_mask(),0);
			
			creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 2);
			creature.skills.set_skill_value(creature, FPalace_skills.people_id, 1);
			creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
			
			creature.personality.new_allegiance(FPalace_helper.get_humility_mob(), creature);
			
			/*
			trace("(FPalace_npcs.century_city_brian)");
			trace(creature.statistics(creature));
			trace(creature.appearance(1));
			*/
			
			creature.reset_stats();
			creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
			
			return creature;
		}
		
		public static function futa_high_shemale_sammy():Character{
			var creature:Character = new Character();//Shemale Sammy Stone... 15 inch cock that causes breast/cock growth when cum is consumed(not in place)
			creature.set_name("Samantha Stone");
			creature.set_move(2);
			
			var race:Race = FPalace_races.race_human();
						
			creature.new_body_part(FPalace_helper.new_hair(race));
			creature.new_body_part(FPalace_helper.new_head(race));
			creature.new_body_part(FPalace_helper.new_eyes(race));
			creature.new_body_part(FPalace_helper.new_torso(race));
			creature.new_body_part(FPalace_helper.new_left_arms(race));
			creature.new_body_part(FPalace_helper.new_left_hands(race));
			creature.new_body_part(FPalace_helper.new_right_arms(race));
			creature.new_body_part(FPalace_helper.new_right_hands(race));
			creature.new_body_part(FPalace_helper.new_hips(race));
			creature.new_body_part(FPalace_helper.new_left_legs(race));
			creature.new_body_part(FPalace_helper.new_left_feet(race));
			creature.new_body_part(FPalace_helper.new_right_legs(race));
			creature.new_body_part(FPalace_helper.new_right_feet(race));
			creature.new_body_part(FPalace_helper.new_breasts(race));
						
			creature.set_character_class(FPalace_classes.cclass_summoner() );
			creature.set_xp(20);
			
			creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 2);
			creature.skills.set_skill_value(creature, FPalace_skills.people_id, 1);
			creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
			
			creature.set_gold(10);
			
			creature.apply_affect_by_id(FPalace_helper.age_id, -9);
			
			creature.new_body_part(FPalace_helper.new_penis(race));
			creature.new_body_part(FPalace_helper.new_balls(race));
			
			creature.personality.determine_orient(creature.sex);
			
			creature.equip(FPalace_items.pushup_bra(),0);
			creature.equip(FPalace_items.Blue_silk_boxers(),0);
			creature.equip(FPalace_items.knee_high_socks(),0);
			creature.equip(FPalace_items.white_blouse(),0);
			creature.equip(FPalace_items.plaid_skirt(),0);
			creature.equip(FPalace_items.black_dress_shoes(),0);
			creature.equip(FPalace_items.shy_mask(),0);
			
			creature.personality.new_allegiance(FPalace_helper.get_humility_mob(), creature);
			
			/*
			trace("(FPalace_npcs.futa_high_shemale_sammy)");
			trace(creature.statistics(creature));
			trace(creature.appearance(1));
			*/
			
			creature.reset_stats();
			creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
			
			return creature;
		}
		
		public static function futa_high_teacher_timmins():Character{
			var creature:Character = base_herm(FPalace_races.race_human());//Teacher... Miss Vicki Timmins... twin two foot long members when erect
			creature.set_name("Vicki Timmins");
			creature.set_move(2);
			creature.new_body_part(FPalace_helper.new_penis(FPalace_races.race_human()));
			creature.set_character_class(FPalace_classes.cclass_summoner() );
			creature.set_xp(20);
			
			creature.apply_affect_by_id(FPalace_helper.age_id, 3);
			
			creature.set_gold(10);
			
			creature.equip(FPalace_items.red_bra(),0);
			creature.equip(FPalace_items.red_g_string(),0);
			creature.equip(FPalace_items.black_hose(),0);
			creature.equip(FPalace_items.white_blouse(),0);
			creature.equip(FPalace_items.black_pencil_skirt(),0);
			creature.equip(FPalace_items.black_heels(),0);
			creature.equip(FPalace_items.shy_mask(),0);
			
			creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 2);
			creature.skills.set_skill_value(creature, FPalace_skills.people_id, 2);
			creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
			creature.skills.set_skill_value(creature, FPalace_skills.flirting_id, 5);
			creature.skills.set_skill_value(creature, FPalace_skills.sex_id, 5);
			creature.skills.set_skill_value(creature, FPalace_skills.blowjobs_id, 5);
			
			creature.personality.new_allegiance(FPalace_helper.get_humility_mob(), creature);
			
			/*
			trace("(FPalace_npcs.futa_high_teacher_timmins)");
			trace(creature.statistics(creature));
			trace(creature.appearance(1));
			*/
			
			creature.reset_stats();
			creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
			
			return creature;
		}
		
		public static function futa_high_queen_jane():Character{
			var creature:Character = new Character();//Jane Poolman.. 18 inch dick. Queen of the highschool.
			creature.set_name("Jane Poolman");
			creature.set_move(2);
			var race:Race = FPalace_races.race_human();
			creature.new_body_part(FPalace_helper.new_hair(race));
			creature.new_body_part(FPalace_helper.new_head(race));
			creature.new_body_part(FPalace_helper.new_eyes(race));
			creature.new_body_part(FPalace_helper.new_torso(race));
			creature.new_body_part(FPalace_helper.new_left_arms(race));
			creature.new_body_part(FPalace_helper.new_left_hands(race));
			creature.new_body_part(FPalace_helper.new_right_arms(race));
			creature.new_body_part(FPalace_helper.new_right_hands(race));
			creature.new_body_part(FPalace_helper.new_hips(race));
			creature.new_body_part(FPalace_helper.new_left_legs(race));
			creature.new_body_part(FPalace_helper.new_left_feet(race));
			creature.new_body_part(FPalace_helper.new_right_legs(race));
			creature.new_body_part(FPalace_helper.new_right_feet(race));
			creature.new_body_part(FPalace_helper.new_breasts(race));
			creature.new_body_part(FPalace_helper.new_vagina(race));
			creature.new_body_part(FPalace_helper.new_clit(race));
			creature.new_body_part(FPalace_helper.new_penis(race));
			
			creature.set_character_class(FPalace_classes.cclass_alchemist() );
			creature.set_xp(20);
			
			creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 1);
			creature.skills.set_skill_value(creature, FPalace_skills.people_id, 2);
			creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
			
			creature.personality.determine_orient(creature.sex);
			
			creature.apply_affect_by_id(FPalace_helper.age_id, -10);
			
			creature.equip(FPalace_items.pushup_bra(),0);
			creature.equip(FPalace_items.red_g_string(),0);
			creature.equip(FPalace_items.knee_high_socks(),0);
			creature.equip(FPalace_items.white_blouse(),0);
			creature.equip(FPalace_items.plaid_skirt(),0);
			creature.equip(FPalace_items.black_dress_shoes(),0);
			creature.equip(FPalace_items.shy_mask(),0);
			
			creature.personality.new_allegiance(FPalace_helper.get_humility_mob(), creature);
			
			/*
			trace("(FPalace_npcs.futa_high_queen_jane)");
			trace(creature.statistics(creature));
			trace(creature.appearance(1));
			*/
			
			creature.reset_stats();
			creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
			
			return creature;
		}
		
		public static function futa_amazon_guardian():Character{
			var creature:Character = base_herm(FPalace_races.race_human());
			creature.set_name("The Guardian");
			//creature.set_move();
			//should probably ask The Guardian about this, but... s/he gets to be one of the leaders of the village
			creature.set_character_class(FPalace_classes.cclass_gene_splice());
			creature.set_xp(22);
			
			creature.apply_affect_by_id(FPalace_helper.int_id,6,0,null,Body.change_stats_total);
			
			creature.set_gold(100);
			
			creature.equip(FPalace_items.queens_cock_ring(),0);
			
			creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 5);
			creature.skills.set_skill_value(creature, FPalace_skills.melee_id, 5);
			creature.skills.set_skill_value(creature, FPalace_skills.defence_id, 5);
			creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
			creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
			creature.skills.set_skill_value(creature, FPalace_skills.flirting_id, 10);
			creature.skills.set_skill_value(creature, FPalace_skills.sex_id, 10);
			creature.skills.set_skill_value(creature, FPalace_skills.blowjobs_id, 10);
			
			creature.personality.add_conversation_topic(FPalace_topics.topic_amazon_excursion());
			creature.personality.new_allegiance(FPalace_helper.get_sin_mob(), creature);
			creature.personality.new_allegiance(FPalace_helper.get_amazon_mob(), creature);
			
			/*
			trace("(FPalace_npcs.futa_amazon_guardian)");
			trace(creature.statistics(creature));
			trace(creature.appearance(1));
			*/
			
			creature.reset_stats();
			creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
			
			return creature;
		}
		
		public static function hills_rampion():Character{
			var creature:Character = base_female(FPalace_races.race_human());//Basically a rapunzel clone... Need to make sure she is blonde haired
			creature.set_name("Rampion");
			creature.set_move(2);
			creature.set_character_class(FPalace_classes.cclass_adventurer() );
			creature.set_xp(20);
			
			creature.apply_affect_by_id(FPalace_helper.age_id, -6);
			creature.apply_affect_by_id(FPalace_helper.hair_length_id,12,0,null,Body.change_stats_total);
			
			creature.set_gold(10);
			
			creature.equip(FPalace_items.rapunzels_ribbon(),0);
			
			creature.personality.new_allegiance(FPalace_helper.get_chastity_mob(), creature);
			
			creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 2);
			creature.skills.set_skill_value(creature, FPalace_skills.people_id, 2);
			creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
			
			/*
			trace("(FPalace_npcs.hills_rampion)");
			trace(creature.statistics(creature));
			trace(creature.appearance(1));
			*/
			
			creature.reset_stats();
			creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
			
			return creature;
		}
		
		public static function witches_potionmaster():Character{
			var creature:Character = base_female(FPalace_races.race_human());
			creature.set_name("Cynthia West");
			creature.set_move(2);
			creature.set_character_class(FPalace_classes.cclass_witch());
			creature.set_xp(20);
			
			creature.apply_affect_by_id(FPalace_helper.age_id, 12);
			creature.apply_affect_by_id(FPalace_helper.breast_size_id,2,0,null,Body.change_stats_total);			
			
			creature.equip(FPalace_items.red_bra(),0);
			creature.equip(FPalace_items.red_g_string(),0);
			creature.equip(FPalace_items.black_hose(),0);
			creature.equip(FPalace_items.white_blouse(),0);
			creature.equip(FPalace_items.black_pencil_skirt(),0);
			creature.equip(FPalace_items.black_heels(),0);
			
			creature.hold(FPalace_items.maidens_wand(),0);
			
			creature.set_gold(100);			
			
			creature.skills.set_skill_value(creature, FPalace_skills.magic_id, 2);
			creature.skills.set_skill_value(creature, FPalace_skills.people_id, 2);
			creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
			
			creature.personality.set_job(FPalace_classes.job_witch_potionmaster(), creature);
			creature.personality.new_allegiance(FPalace_helper.get_humility_mob(), creature);
			
			/*
			trace("(FPalace_npcs.witches_potionmaster)");
			trace(creature.statistics(creature));
			trace(creature.appearance(1));
			*/
			
			creature.reset_stats();
			creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
			creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
			
			return creature;
		}
		
		//Dynamic Npcs
		private static var mermaid_template:Character_template;
		public static function lake_mermaid():Character_template{
			if(mermaid_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = new Character();
				creature.set_move(2);
				var race:Race = FPalace_races.race_human();
				
				creature.new_body_part(FPalace_helper.new_head(race));
				creature.new_body_part(FPalace_helper.new_eyes(race,0));
				creature.new_body_part(FPalace_helper.new_torso(race));
				creature.new_body_part(FPalace_helper.new_left_arms(race));
				creature.new_body_part(FPalace_helper.new_left_hands(race));
				creature.new_body_part(FPalace_helper.new_right_arms(race));
				creature.new_body_part(FPalace_helper.new_right_hands(race));
				creature.new_body_part(FPalace_helper.new_breasts(race));
				
				race = FPalace_races.race_anthro_fish();
				creature.new_body_part(FPalace_helper.new_hips(race));			
				creature.new_body_part(FPalace_helper.new_vagina(race));
				creature.new_body_part(FPalace_helper.new_clit(race));
				creature.new_body_part(FPalace_helper.new_tail(race));
				
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(11);
				
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.covert_id, 10);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.set_gold(3);
				
				creature.add_to_possessions(FPalace_items.fishy_fruit());
				
				creature.personality.determine_orient(creature.sex);
				/*
				trace("(FPalace_npcs.lake_mermaid)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				
				template.set_char_to_clone(creature);
				
				template.set_stat_jiggle(FPalace_helper.str_id,7,13);
				template.set_stat_jiggle(FPalace_helper.dex_id,7,13);
				template.set_stat_jiggle(FPalace_helper.con_id,8,14);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,7,13);
				template.set_stat_jiggle(FPalace_helper.int_id,7,13);
				template.set_stat_jiggle(FPalace_helper.wis_id,9,15);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.breast_size_id, 3, 5);
				template.set_stat_jiggle(FPalace_helper.nipple_size_id,0.1,2);
				template.set_stat_jiggle(FPalace_helper.bust_id,24,36);
				template.set_stat_jiggle(FPalace_helper.waist_id,20,32);
				template.set_stat_jiggle(FPalace_helper.hips_id,24,36);
				template.set_stat_jiggle(FPalace_helper.height_id,80,150);//average is 147... which is apparently 5'6" or 66 inches
				//template.set_stat_jiggle(FPalace_helper.age_id,16,28);
				mermaid_template = template;
			}
			return mermaid_template;
		}
		
		private static var jellyfish_template:Character_template;
		public static function lake_jellyfish():Character_template{
			if(jellyfish_template == null){
				trace("(FPalace_npcs)Should be making a jellyfish... but I'm lazy and just making a slime instead.");
				jellyfish_template = goo_slime();
			}
			return jellyfish_template;//temporary... look at the darn name for what it's suppsoed to be
		}
		
		private static var goo_girl_template:Character_template;
		public static function goo_girl():Character_template{
			if(goo_girl_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = new Character();
				creature.set_move(2);
				var race:Race = FPalace_races.race_goo();
				
				creature.new_body_part(FPalace_helper.new_head(race));
				creature.new_body_part(FPalace_helper.new_eyes(race,0));
				creature.new_body_part(FPalace_helper.new_torso(race));
				creature.new_body_part(FPalace_helper.new_left_arms(race));
				creature.new_body_part(FPalace_helper.new_left_hands(race));
				creature.new_body_part(FPalace_helper.new_right_arms(race));
				creature.new_body_part(FPalace_helper.new_right_hands(race));
				creature.new_body_part(FPalace_helper.new_hips(race));
				creature.new_body_part(FPalace_helper.new_left_legs(race));
				creature.new_body_part(FPalace_helper.new_left_feet(race));
				creature.new_body_part(FPalace_helper.new_right_legs(race));
				creature.new_body_part(FPalace_helper.new_right_feet(race));
				creature.new_body_part(FPalace_helper.new_breasts(race));
				creature.new_body_part(FPalace_helper.new_vagina(race));
				creature.new_body_part(FPalace_helper.new_clit(race));
				
				creature.set_character_class(FPalace_classes.cclass_fleshstealer());
				creature.set_xp(11);
				
				creature.apply_affect_by_id(FPalace_helper.biomass_consumed, 165 ,0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.breast_size_id, 1 ,0,null,Body.change_stats_total);
				
				creature.set_gold(3);
				
				creature.add_to_possessions(FPalace_items.vial_of_goo());
				
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 3);
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 3);	
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.flirting_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.sex_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.blowjobs_id, 5);
				
				creature.personality.add_conversation_topic(FPalace_topics.topic_wicked_grin());
				creature.personality.new_allegiance(FPalace_helper.get_empress_mob(), creature);
				creature.personality.determine_orient(creature.sex);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.goo_girl)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				
				template.set_stat_jiggle(FPalace_helper.str_id,7,13);
				template.set_stat_jiggle(FPalace_helper.dex_id,7,13);
				template.set_stat_jiggle(FPalace_helper.con_id,8,14);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,7,13);
				template.set_stat_jiggle(FPalace_helper.int_id,7,13);
				template.set_stat_jiggle(FPalace_helper.wis_id,9,15);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.height_id,130,164);//average is 147... which is apparently 5'6" or 66 inches
				template.set_stat_jiggle(FPalace_helper.biomass_consumed, 21, 350);
				template.set_stat_jiggle(FPalace_helper.breast_size_id, 2, 5);
				template.set_stat_jiggle(FPalace_helper.nipple_size_id,0.1,2);
				template.set_stat_jiggle(FPalace_helper.bust_id,24,36);
				template.set_stat_jiggle(FPalace_helper.waist_id,20,32);
				template.set_stat_jiggle(FPalace_helper.hips_id,24,36);
				//template.set_stat_jiggle(FPalace_helper.age_id,16,28);
				goo_girl_template = template;
			}
			return goo_girl_template;
		}
		
		private static var FPalace_Librarian_template:Character_template;
		public static function FPalace_Librarian():Character_template{
			if(FPalace_Librarian_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_herm(FPalace_races.race_human());
				creature.set_move(2);
				creature.set_character_class(FPalace_classes.cclass_sexmagus());
				creature.set_xp(20);
				
				creature.set_gold(10);
				
				creature.equip(FPalace_items.black_rimmed_glasses(),0);
				creature.equip(FPalace_items.red_lipstick(),0);
				creature.equip(FPalace_items.red_bra(),0);
				creature.equip(FPalace_items.red_g_string(),0);
				creature.equip(FPalace_items.black_hose(),0);
				creature.equip(FPalace_items.white_blouse(),0);
				creature.equip(FPalace_items.black_pencil_skirt(),0);
				creature.equip(FPalace_items.black_heels(),0);
				
				creature.hold(FPalace_items.hardcover_war_and_peace(),0);
				
				creature.add_to_possessions(FPalace_items.FPalace_membership());
				
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.melee_id, 2);
				creature.skills.set_skill_value(creature, FPalace_skills.defence_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.flirting_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.sex_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.blowjobs_id, 5);
				
				creature.personality.new_allegiance(FPalace_helper.get_sin_mob(), creature);
				creature.personality.new_allegiance(FPalace_helper.get_amazon_mob(), creature);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.FPalace_Librarian)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				template.set_stat_jiggle(FPalace_helper.str_id,7,13);
				template.set_stat_jiggle(FPalace_helper.dex_id,7,13);
				template.set_stat_jiggle(FPalace_helper.con_id,10,16);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,10,16);
				template.set_stat_jiggle(FPalace_helper.int_id,7,13);
				template.set_stat_jiggle(FPalace_helper.wis_id,7,13);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.height_id,140,168);
				template.set_stat_jiggle(FPalace_helper.cum_volume_id,50,500);
				template.set_stat_jiggle(FPalace_helper.milk_volume_id,100,500);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,6);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,5,11);
				template.set_stat_jiggle(FPalace_helper.vaginal_width_id,1,6);
				template.set_stat_jiggle(FPalace_helper.vaginal_depth_id,5,11);
				//template.set_stat_jiggle(FPalace_helper.semen_fertility_id,0.3,0.6);
				//template.set_stat_jiggle(FPalace_helper.egg_fertility_id,0.7,0.99);
				template.set_stat_jiggle(FPalace_helper.erection_ratio_id,0.4,0.65);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,2,36);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);			
				template.set_stat_jiggle(FPalace_helper.breast_size_id, 1, 6);
				template.set_stat_jiggle(FPalace_helper.nipple_size_id,0.5,1);
				template.set_stat_jiggle(FPalace_helper.bust_id,24,36);
				template.set_stat_jiggle(FPalace_helper.waist_id,20,32);
				template.set_stat_jiggle(FPalace_helper.hips_id,24,36);
				template.set_stat_jiggle(FPalace_helper.penis_length_id,6,24);
				template.set_stat_jiggle(FPalace_helper.penis_girth_id,2,8);
				template.set_stat_jiggle(FPalace_helper.balls_size_id,2,6);			
				//template.set_stat_jiggle(FPalace_helper.age_id,20,27);
				FPalace_Librarian_template = template;
			}
			
			return FPalace_Librarian_template;
		}
		
		private static var FPalace_Futa_template:Character_template;
		public static function FPalace_Futa():Character_template{
			if(FPalace_Futa_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = new Character();
				
				creature.set_move(2);
				
				var race:Race = FPalace_races.race_human();
				
				creature.new_body_part(FPalace_helper.new_hair(race));
				creature.new_body_part(FPalace_helper.new_head(race));
				creature.new_body_part(FPalace_helper.new_eyes(race));
				creature.new_body_part(FPalace_helper.new_torso(race));
				creature.new_body_part(FPalace_helper.new_left_arms(race));
				creature.new_body_part(FPalace_helper.new_left_hands(race));
				creature.new_body_part(FPalace_helper.new_right_arms(race));
				creature.new_body_part(FPalace_helper.new_right_hands(race));
				creature.new_body_part(FPalace_helper.new_hips(race));
				creature.new_body_part(FPalace_helper.new_left_legs(race));
				creature.new_body_part(FPalace_helper.new_left_feet(race));
				creature.new_body_part(FPalace_helper.new_right_legs(race));
				creature.new_body_part(FPalace_helper.new_right_feet(race));
				creature.new_body_part(FPalace_helper.new_breasts(race));
				creature.new_body_part(FPalace_helper.new_penis(race));
				creature.new_body_part(FPalace_helper.new_vagina(race));
				creature.new_body_part(FPalace_helper.new_clit(race));
				
				creature.set_character_class(FPalace_classes.cclass_adventurer() );
				
				creature.set_xp(20);
				
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.melee_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.defence_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.flirting_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.sex_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.blowjobs_id, 5);
				
				creature.personality.determine_orient(creature.sex);
				
				creature.set_gold(10);
				
				creature.equip(FPalace_items.robe(),0);
				
				creature.add_to_possessions(FPalace_items.FPalace_membership());
				
				creature.personality.new_allegiance(FPalace_helper.get_sin_mob(), creature);
				creature.personality.new_allegiance(FPalace_helper.get_amazon_mob(), creature);
				creature.personality.set_job(FPalace_classes.job_prostitute(), creature);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.FPalace_Futa)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				template.set_stat_jiggle(FPalace_helper.str_id,7,13);
				template.set_stat_jiggle(FPalace_helper.dex_id,7,13);
				template.set_stat_jiggle(FPalace_helper.con_id,7,13);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,9,15);
				template.set_stat_jiggle(FPalace_helper.int_id,7,13);
				template.set_stat_jiggle(FPalace_helper.wis_id,7,13);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.height_id,125,170);
				template.set_stat_jiggle(FPalace_helper.cum_volume_id,200,1000);
				template.set_stat_jiggle(FPalace_helper.milk_volume_id,150,1000);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,2,7);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,4,16);
				template.set_stat_jiggle(FPalace_helper.vaginal_width_id,2,7);
				template.set_stat_jiggle(FPalace_helper.vaginal_depth_id,4,16);
				//template.set_stat_jiggle(FPalace_helper.egg_fertility_id,0.7,0.8);
				template.set_stat_jiggle(FPalace_helper.erection_ratio_id,0.3,0.6);			
				template.set_stat_jiggle(FPalace_helper.breast_size_id, 2, 6);
				template.set_stat_jiggle(FPalace_helper.nipple_size_id,0.5,2);
				template.set_stat_jiggle(FPalace_helper.bust_id,24,36);
				template.set_stat_jiggle(FPalace_helper.waist_id,20,32);
				template.set_stat_jiggle(FPalace_helper.hips_id,24,36);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,2,36);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.penis_length_id,6,24);
				template.set_stat_jiggle(FPalace_helper.penis_girth_id,2,8);
				//template.set_stat_jiggle(FPalace_helper.age_id,16,24);
				FPalace_Futa_template = template;
			}
			return FPalace_Futa_template;
		}
		
		private static var FPalace_Herm_template:Character_template;
		public static function FPalace_Herm():Character_template{
			if(FPalace_Herm_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_herm(FPalace_races.race_human())
				creature.set_move(2);
				creature.set_character_class(FPalace_classes.cclass_adventurer() );
				creature.set_xp(20);
				
				creature.set_gold(10);
				
				creature.equip(FPalace_items.robe(),0);
				
				creature.add_to_possessions(FPalace_items.FPalace_membership());
				
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.melee_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.defence_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.flirting_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.sex_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.blowjobs_id, 5);
				
				creature.personality.new_allegiance(FPalace_helper.get_sin_mob(), creature);
				creature.personality.new_allegiance(FPalace_helper.get_amazon_mob(), creature);
				creature.personality.set_job(FPalace_classes.job_prostitute(), creature);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.FPalace_Herm)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				template.set_stat_jiggle(FPalace_helper.str_id,7,13);
				template.set_stat_jiggle(FPalace_helper.dex_id,7,13);
				template.set_stat_jiggle(FPalace_helper.con_id,10,16);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,10,16);
				template.set_stat_jiggle(FPalace_helper.int_id,7,13);
				template.set_stat_jiggle(FPalace_helper.wis_id,7,13);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.height_id,140,166);
				template.set_stat_jiggle(FPalace_helper.cum_volume_id,22,500);
				template.set_stat_jiggle(FPalace_helper.milk_volume_id,150,500);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,2,7);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,4,16);
				template.set_stat_jiggle(FPalace_helper.vaginal_width_id,2,7);
				template.set_stat_jiggle(FPalace_helper.vaginal_depth_id,4,16);
				//template.set_stat_jiggle(FPalace_helper.semen_fertility_id,0.25,0.45);
				//template.set_stat_jiggle(FPalace_helper.egg_fertility_id,0.7,0.9);
				template.set_stat_jiggle(FPalace_helper.erection_ratio_id,0.4,0.8);
				template.set_stat_jiggle(FPalace_helper.breast_size_id, 1, 6);
				template.set_stat_jiggle(FPalace_helper.nipple_size_id,0.5,1);
				template.set_stat_jiggle(FPalace_helper.bust_id,24,36);
				template.set_stat_jiggle(FPalace_helper.waist_id,20,32);
				template.set_stat_jiggle(FPalace_helper.hips_id,24,36);			
				template.set_stat_jiggle(FPalace_helper.hair_length_id,2,36);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.penis_length_id,6,24);
				template.set_stat_jiggle(FPalace_helper.penis_girth_id,2,8);
				template.set_stat_jiggle(FPalace_helper.balls_size_id,2,6);
				//template.set_stat_jiggle(FPalace_helper.age_id,16,24);
				FPalace_Herm_template = template;
			}
			return FPalace_Herm_template;
		}
		
		private static var FPalace_Shemale_template:Character_template;
		public static function FPalace_Shemale():Character_template{
			if(FPalace_Shemale_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = new Character();
				creature.set_move(2);
				
				var race:Race = FPalace_races.race_human();
							
				creature.new_body_part(FPalace_helper.new_hair(race));
				creature.new_body_part(FPalace_helper.new_head(race));
				creature.new_body_part(FPalace_helper.new_eyes(race));
				creature.new_body_part(FPalace_helper.new_torso(race));
				creature.new_body_part(FPalace_helper.new_left_arms(race));
				creature.new_body_part(FPalace_helper.new_left_hands(race));
				creature.new_body_part(FPalace_helper.new_right_arms(race));
				creature.new_body_part(FPalace_helper.new_right_hands(race));
				creature.new_body_part(FPalace_helper.new_hips(race));
				creature.new_body_part(FPalace_helper.new_left_legs(race));
				creature.new_body_part(FPalace_helper.new_left_feet(race));
				creature.new_body_part(FPalace_helper.new_right_legs(race));
				creature.new_body_part(FPalace_helper.new_right_feet(race));
				creature.new_body_part(FPalace_helper.new_breasts(race));
				creature.new_body_part(FPalace_helper.new_penis(race));
				creature.new_body_part(FPalace_helper.new_balls(race));
				
				creature.set_character_class(FPalace_classes.cclass_adventurer() );
				creature.set_xp(20);
				
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.melee_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.defence_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.flirting_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.sex_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.blowjobs_id, 5);
				
				creature.personality.determine_orient(creature.sex);
				
				creature.set_gold(10);
				
				creature.equip(FPalace_items.robe(),0);
				
				creature.add_to_possessions(FPalace_items.FPalace_membership());
				
				creature.personality.new_allegiance(FPalace_helper.get_sin_mob(), creature);
				creature.personality.new_allegiance(FPalace_helper.get_amazon_mob(), creature);
				creature.personality.set_job(FPalace_classes.job_prostitute(), creature);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.FPalace_Shemale)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				template.set_stat_jiggle(FPalace_helper.str_id,7,13);
				template.set_stat_jiggle(FPalace_helper.dex_id,7,13);
				template.set_stat_jiggle(FPalace_helper.con_id,7,13);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,8,14);
				template.set_stat_jiggle(FPalace_helper.int_id,7,13);
				template.set_stat_jiggle(FPalace_helper.wis_id,7,13);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.height_id,145,175);
				//template.set_stat_jiggle(FPalace_helper.cum_volume_id,10,22);
				template.set_stat_jiggle(FPalace_helper.milk_volume_id,150,250);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,2,7);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,4,16);
				//template.set_stat_jiggle(FPalace_helper.semen_fertility_id,0.04,0.06);
				template.set_stat_jiggle(FPalace_helper.erection_ratio_id,0.85,0.95);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,2,36);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.breast_size_id, 3, 5);
				template.set_stat_jiggle(FPalace_helper.nipple_size_id,0.5,1);
				template.set_stat_jiggle(FPalace_helper.bust_id,24,36);
				template.set_stat_jiggle(FPalace_helper.waist_id,20,32);
				template.set_stat_jiggle(FPalace_helper.hips_id,24,36);			
				template.set_stat_jiggle(FPalace_helper.penis_length_id,6,24);
				template.set_stat_jiggle(FPalace_helper.penis_girth_id,2,8);
				template.set_stat_jiggle(FPalace_helper.balls_size_id,2,6);
				//template.set_stat_jiggle(FPalace_helper.age_id,16,24);
				FPalace_Shemale_template = template;
			}
			return FPalace_Shemale_template;
		}
		
		private static var burrowton_inkeep_template:Character_template;
		public static function burrowton_inkeep():Character_template{
			if(burrowton_inkeep_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_male(FPalace_races.race_anthro_rabbit());
				creature.new_body_part(FPalace_helper.new_tail(FPalace_races.race_anthro_rabbit()));
				creature.set_character_class(FPalace_classes.cclass_adventurer() );
				creature.set_xp(20);
				
				creature.set_gold(10);
				
				creature.hold(FPalace_items.knife(),0);
				
				creature.add_to_possessions(FPalace_items.rabbity_carrot());
				
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.melee_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.one_handed_id, 2);
				creature.skills.set_skill_value(creature, FPalace_skills.defence_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.covert_id, 10);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.personality.set_job(FPalace_classes.job_inkeep(), creature);
				creature.personality.new_allegiance(FPalace_helper.get_charity_mob(), creature);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.burrowton_inkeep)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				template.set_stat_jiggle(FPalace_helper.str_id,9,15);
				template.set_stat_jiggle(FPalace_helper.dex_id,14,20);
				template.set_stat_jiggle(FPalace_helper.con_id,7,13);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,8,14);
				template.set_stat_jiggle(FPalace_helper.int_id,8,14);
				template.set_stat_jiggle(FPalace_helper.wis_id,9,16);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.bust_id,25,31);
				template.set_stat_jiggle(FPalace_helper.waist_id,25,31);
				template.set_stat_jiggle(FPalace_helper.hips_id,25,31);
				template.set_stat_jiggle(FPalace_helper.height_id,170,200);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,1,2);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,3);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,3,8);
				//template.set_stat_jiggle(FPalace_helper.age_id,8,12);
				burrowton_inkeep_template = template;
			}
			
			return burrowton_inkeep_template;
		}
		
		private static var burrowton_guy_template:Character_template;
		public static function burrowton_guy():Character_template{
			if(burrowton_guy_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_male(FPalace_races.race_anthro_mouse());
				creature.new_body_part(FPalace_helper.new_tail(FPalace_races.race_anthro_mouse()));
				creature.set_move(2);
				creature.set_character_class(FPalace_classes.cclass_adventurer() );
				creature.set_xp(20);
				
				creature.hold(FPalace_items.knife(),0);
				
				creature.add_to_possessions(FPalace_items.strong_cheese());
				
				creature.set_gold(10);
				
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.melee_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.one_handed_id, 2);
				creature.skills.set_skill_value(creature, FPalace_skills.defence_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.covert_id, 10);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.personality.new_allegiance(FPalace_helper.get_charity_mob(), creature);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.burrowton_guy)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				template.set_stat_jiggle(FPalace_helper.str_id,7,13);
				template.set_stat_jiggle(FPalace_helper.dex_id,14,20);
				template.set_stat_jiggle(FPalace_helper.con_id,7,13);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,9,15);
				template.set_stat_jiggle(FPalace_helper.int_id,10,16);
				template.set_stat_jiggle(FPalace_helper.wis_id,11,17);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.bust_id,20,32);
				template.set_stat_jiggle(FPalace_helper.waist_id,20,26);
				template.set_stat_jiggle(FPalace_helper.hips_id,24,36);
				template.set_stat_jiggle(FPalace_helper.height_id,140,170);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,2,36);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,3);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,3,8);
				//template.set_stat_jiggle(FPalace_helper.age_id,7,11);
				burrowton_guy_template = template;
			}
			return burrowton_guy_template;
		}
		
		private static var burrowton_cheesemonger_template:Character_template;
		public static function burrowton_cheesemonger():Character_template{
			if(burrowton_cheesemonger_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_male(FPalace_races.race_anthro_mouse());
				creature.new_body_part(FPalace_helper.new_tail(FPalace_races.race_anthro_mouse()));
				creature.set_character_class(FPalace_classes.cclass_adventurer() );
				creature.set_xp(20);
				
				creature.set_gold(10);
				
				creature.hold(FPalace_items.knife(),0);
				
				creature.add_to_possessions(FPalace_items.strong_cheese());
				
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.melee_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.one_handed_id, 2);
				creature.skills.set_skill_value(creature, FPalace_skills.defence_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.covert_id, 10);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.personality.set_job(FPalace_classes.job_burrowton_cheesemonger(), creature);
				creature.personality.new_allegiance(FPalace_helper.get_charity_mob(), creature);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.burrowton_cheesemonger)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				template.set_stat_jiggle(FPalace_helper.str_id,9,15);
				template.set_stat_jiggle(FPalace_helper.dex_id,14,20);
				template.set_stat_jiggle(FPalace_helper.con_id,7,13);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,8,14);
				template.set_stat_jiggle(FPalace_helper.int_id,8,14);
				template.set_stat_jiggle(FPalace_helper.wis_id,9,16);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.bust_id,25,31);
				template.set_stat_jiggle(FPalace_helper.waist_id,25,31);
				template.set_stat_jiggle(FPalace_helper.hips_id,25,31);
				template.set_stat_jiggle(FPalace_helper.height_id,170,200);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,1,2);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,3);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,3,8);
				//template.set_stat_jiggle(FPalace_helper.age_id,8,12);
				burrowton_cheesemonger_template = template;
			}
			
			return burrowton_cheesemonger_template;
		}
		
		private static var rabbit_guy_template:Character_template;
		public static function rabbit_guy():Character_template{
			if(rabbit_guy_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_male(FPalace_races.race_anthro_rabbit());
				creature.new_body_part(FPalace_helper.new_tail(FPalace_races.race_anthro_rabbit()));
				creature.set_move(2);
				creature.set_character_class(FPalace_classes.cclass_adventurer() );
				creature.set_xp(20);
				
				creature.hold(FPalace_items.knife(),0);
				
				creature.add_to_possessions(FPalace_items.rabbity_carrot());
				
				creature.set_gold(10);
				
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.melee_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.one_handed_id, 2);
				creature.skills.set_skill_value(creature, FPalace_skills.defence_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.covert_id, 10);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.personality.new_allegiance(FPalace_helper.get_charity_mob(), creature);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.rabbit_guy)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				template.set_stat_jiggle(FPalace_helper.str_id,7,13);
				template.set_stat_jiggle(FPalace_helper.dex_id,14,20);
				template.set_stat_jiggle(FPalace_helper.con_id,7,13);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,9,15);
				template.set_stat_jiggle(FPalace_helper.int_id,10,16);
				template.set_stat_jiggle(FPalace_helper.wis_id,11,17);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.bust_id,20,32);
				template.set_stat_jiggle(FPalace_helper.waist_id,20,26);
				template.set_stat_jiggle(FPalace_helper.hips_id,24,36);
				template.set_stat_jiggle(FPalace_helper.height_id,140,170);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,2,36);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,3);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,3,8);
				//template.set_stat_jiggle(FPalace_helper.age_id,7,11);
				rabbit_guy_template = template;
			}
			return rabbit_guy_template;
		}
		
		private static var rabbit_girl_template:Character_template;
		public static function rabbit_girl():Character_template{
			if(rabbit_girl_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_female(FPalace_races.race_anthro_rabbit());
				creature.new_body_part(FPalace_helper.new_tail(FPalace_races.race_anthro_rabbit()));
				creature.set_move(2);
				creature.set_character_class(FPalace_classes.cclass_adventurer() );
				creature.set_xp(20);
				
				creature.equip(FPalace_items.leather_tube_top(),0);
				creature.equip(FPalace_items.leather_panties(),0);
				creature.equip(FPalace_items.leather_skirt(),0);
				
				creature.hold(FPalace_items.knife(),0);
				
				creature.add_to_possessions(FPalace_items.rabbity_carrot());
				
				creature.set_gold(10);
				
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.melee_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.one_handed_id, 2);
				creature.skills.set_skill_value(creature, FPalace_skills.defence_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.covert_id, 10);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.personality.new_allegiance(FPalace_helper.get_charity_mob(), creature);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.rabbit_girl)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				template.set_stat_jiggle(FPalace_helper.str_id,7,13);
				template.set_stat_jiggle(FPalace_helper.dex_id,14,20);
				template.set_stat_jiggle(FPalace_helper.con_id,7,13);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,9,15);
				template.set_stat_jiggle(FPalace_helper.int_id,7,13);
				template.set_stat_jiggle(FPalace_helper.wis_id,11,17);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.height_id,140,160);
				template.set_stat_jiggle(FPalace_helper.milk_volume_id,50,150);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,3);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,3,8);
				template.set_stat_jiggle(FPalace_helper.vaginal_width_id,1,2);
				template.set_stat_jiggle(FPalace_helper.vaginal_depth_id,3,8);
				//template.set_stat_jiggle(FPalace_helper.egg_fertility_id,10,15);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,2,36);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.breast_size_id, 1, 4);
				template.set_stat_jiggle(FPalace_helper.nipple_size_id,0.5,1);
				template.set_stat_jiggle(FPalace_helper.bust_id,20,32);
				template.set_stat_jiggle(FPalace_helper.waist_id,20,26);
				template.set_stat_jiggle(FPalace_helper.hips_id,24,36);
				//template.set_stat_jiggle(FPalace_helper.age_id,7,11);
				rabbit_girl_template = template;
			}
			return rabbit_girl_template;
		}
		
		private static var burrowton_girl_template:Character_template;
		public static function burrowton_girl():Character_template{
			if(burrowton_girl_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_female(FPalace_races.race_anthro_mouse());
				creature.new_body_part(FPalace_helper.new_tail(FPalace_races.race_anthro_mouse()));
				creature.set_move(2);
				creature.set_character_class(FPalace_classes.cclass_adventurer() );
				creature.set_xp(20);
				
				creature.equip(FPalace_items.leather_tube_top(),0);
				creature.equip(FPalace_items.leather_panties(),0);
				creature.equip(FPalace_items.leather_skirt(),0);
				
				creature.hold(FPalace_items.knife(),0);
				
				creature.add_to_possessions(FPalace_items.strong_cheese());
				
				creature.set_gold(10);
				
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.melee_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.one_handed_id, 2);
				creature.skills.set_skill_value(creature, FPalace_skills.defence_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.covert_id, 10);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.personality.new_allegiance(FPalace_helper.get_charity_mob(), creature);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.burrowton_girl)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				template.set_stat_jiggle(FPalace_helper.str_id,7,13);
				template.set_stat_jiggle(FPalace_helper.dex_id,14,20);
				template.set_stat_jiggle(FPalace_helper.con_id,7,13);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,9,15);
				template.set_stat_jiggle(FPalace_helper.int_id,7,13);
				template.set_stat_jiggle(FPalace_helper.wis_id,11,17);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.height_id,140,160);
				template.set_stat_jiggle(FPalace_helper.milk_volume_id,50,150);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,3);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,3,8);
				template.set_stat_jiggle(FPalace_helper.vaginal_width_id,1,2);
				template.set_stat_jiggle(FPalace_helper.vaginal_depth_id,3,8);
				//template.set_stat_jiggle(FPalace_helper.egg_fertility_id,10,15);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,2,36);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.breast_size_id, 1, 4);
				template.set_stat_jiggle(FPalace_helper.nipple_size_id,0.5,1);
				template.set_stat_jiggle(FPalace_helper.bust_id,20,32);
				template.set_stat_jiggle(FPalace_helper.waist_id,20,26);
				template.set_stat_jiggle(FPalace_helper.hips_id,24,36);
				//template.set_stat_jiggle(FPalace_helper.age_id,7,11);
				burrowton_girl_template = template;
			}
			return burrowton_girl_template;
		}
		
		private static var goo_slime_template:Character_template;
		public static function goo_slime():Character_template{
			if(goo_slime_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = new Character();
				
				creature.set_move(2);
				//creature.apply_affect_by_id(FPalace_helper.age_id,-21);
				var race:Race = FPalace_races.race_goo();
							
				creature.new_body_part(FPalace_helper.new_goo_head(race));
				creature.new_body_part(FPalace_helper.new_eyes(race,0));
				
				creature.set_character_class(FPalace_classes.cclass_fleshstealer());
				creature.set_xp(1);
				
				creature.skills.set_skill_value(creature, FPalace_skills.covert_id, 10);
				creature.skills.set_skill_value(creature, FPalace_skills.ranged_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.dodging_id, 5);
							
				creature.add_to_possessions(FPalace_items.vial_of_goo());
				
				creature.personality.add_conversation_topic(FPalace_topics.topic_wicked_grin());
				creature.personality.new_allegiance(FPalace_helper.get_empress_mob(), creature);
				creature.personality.new_allegiance(FPalace_helper.get_monster_mob(), creature);			
				
				//creature.personality.determine_orient(creature.sex);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				
				creature.char_sprite_id = FPalace_helper.goo_char_img;
				
				/*
				trace("(FPalace_npcs.goo_slime)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				template.set_stat_jiggle(FPalace_helper.str_id,1,3);
				template.set_stat_jiggle(FPalace_helper.dex_id,1,3);
				template.set_stat_jiggle(FPalace_helper.con_id,1,3);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,1,3);
				template.set_stat_jiggle(FPalace_helper.int_id,1,3);
				template.set_stat_jiggle(FPalace_helper.wis_id,1,3);
				template.set_stat_jiggle(FPalace_helper.will_id,1,3);
				template.set_stat_jiggle(FPalace_helper.cha_id,1,3);
				template.set_stat_jiggle(FPalace_helper.height_id,9,13);
				//template.set_stat_jiggle(FPalace_helper.age_id,1,3);
				goo_slime_template = template;
			}
			return goo_slime_template;
		}
		
		private static var tsunedere_shark_template:Character_template;
		public static function tsunedere_shark():Character_template{
			if(tsunedere_shark_template == null){
				trace("(FPalace_npcs)Should be making a shark-girl... but I'm lazy and just making a slime instead.");
				tsunedere_shark_template = goo_slime();
			}
			return tsunedere_shark_template;//temporary... look at the darn name for what it's suppsoed to be
		}
		
		private static var oppai_octopus_template:Character_template;
		public static function oppai_octopus():Character_template{
			if(oppai_octopus_template == null){
				oppai_octopus_template = goo_slime();
				trace("(FPalace_npcs)Should be making an octopus-girl... but I'm lazy and just making a slime instead.");
			}
			return oppai_octopus_template;//temporary... look at the darn name for what it's suppsoed to be
		}
		
		private static var stealing_seagull_template:Character_template;
		public static function stealing_seagull():Character_template{
			if(stealing_seagull_template == null){
				trace("(FPalace_npcs)Should be making a seagull... but I'm lazy and just making a slime instead.");
				stealing_seagull_template = goo_slime();
			}
			return stealing_seagull_template;//temporary... look at the darn name for what it's suppsoed to be
		}
		
		private static var horny_equine_template:Character_template;
		public static function horny_equine():Character_template{
			if(horny_equine_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_male(FPalace_races.race_anthro_equine());
				creature.new_body_part(FPalace_helper.new_tail(FPalace_races.race_anthro_equine()));
				creature.set_move(2);
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(20);
				
				creature.set_gold(10);
				
				creature.equip(FPalace_items.Overalls(),0);
				
				creature.add_to_possessions(FPalace_items.Stallion_Stout());
				
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 3);
				creature.skills.set_skill_value(creature, FPalace_skills.melee_id, 3);
				creature.skills.set_skill_value(creature, FPalace_skills.defence_id, 3);
				creature.skills.set_skill_value(creature, FPalace_skills.covert_id, 10);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.lust_id, 70,0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.horny_equine)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				template.set_stat_jiggle(FPalace_helper.str_id,13,19);
				template.set_stat_jiggle(FPalace_helper.dex_id,8,14);
				template.set_stat_jiggle(FPalace_helper.con_id,7,13);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,9,15);
				template.set_stat_jiggle(FPalace_helper.int_id,6,12);
				template.set_stat_jiggle(FPalace_helper.wis_id,7,13);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.bust_id,26,38);
				template.set_stat_jiggle(FPalace_helper.waist_id,26,38);
				template.set_stat_jiggle(FPalace_helper.hips_id,26,32);
				template.set_stat_jiggle(FPalace_helper.height_id,190,230);
				template.set_stat_jiggle(FPalace_helper.cum_volume_id,220,400);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,5);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,1,16);
				//template.set_stat_jiggle(FPalace_helper.semen_fertility_id,0.04,0.06);
				template.set_stat_jiggle(FPalace_helper.erection_ratio_id,0.4,0.6);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,1,2);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.penis_length_id,12,24);
				template.set_stat_jiggle(FPalace_helper.penis_girth_id,9,18);
				template.set_stat_jiggle(FPalace_helper.balls_size_id,2,6);
				//template.set_stat_jiggle(FPalace_helper.age_id,17,19);
				horny_equine_template = template;
			}
			return horny_equine_template;
		}
		
		private static var horny_feline_template:Character_template;
		public static function horny_feline():Character_template{
			if(horny_feline_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_male(FPalace_races.race_anthro_feline())
				creature.set_move(2);
				creature.set_character_class(FPalace_classes.cclass_adventurer() );
				creature.set_xp(11);
				
				creature.add_to_possessions(FPalace_items.catnip());
				
				creature.set_gold(3);
				
				creature.personality.new_allegiance(FPalace_helper.get_charity_mob(), creature);
				
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.melee_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.unarmed_id, 2);
				creature.skills.set_skill_value(creature, FPalace_skills.defence_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.covert_id, 10);
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.lust_id, 50,0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.horny_feline)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				template.set_stat_jiggle(FPalace_helper.str_id,7,13);
				template.set_stat_jiggle(FPalace_helper.dex_id,12,19);
				template.set_stat_jiggle(FPalace_helper.con_id,8,14);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,13,19);
				template.set_stat_jiggle(FPalace_helper.int_id,6,12);
				template.set_stat_jiggle(FPalace_helper.wis_id,10,14);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.bust_id,20,30);
				template.set_stat_jiggle(FPalace_helper.waist_id,20,24);
				template.set_stat_jiggle(FPalace_helper.hips_id,22,32);
				template.set_stat_jiggle(FPalace_helper.height_id,150,190);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,2,20);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,4);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,3,8);
				//template.set_stat_jiggle(FPalace_helper.age_id,13,19);
				horny_feline_template = template;
			}
			return horny_feline_template;
		}
		
		private static var male_elf_template:Character_template;
		public static function male_elf():Character_template{
			if(male_elf_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_male(FPalace_races.race_elf());
				creature.set_move(2);
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(11);
				
				creature.equip(FPalace_items.green_leather_sandals(),0);
							
				creature.hold(FPalace_items.elvish_rapier(),0);
							
				creature.add_to_possessions(FPalace_items.elvish_bread());
				
				creature.set_gold(5);
				
				creature.personality.new_allegiance(FPalace_helper.get_patience_mob(), creature);			
				
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.melee_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.one_handed_id, 2);
				creature.skills.set_skill_value(creature, FPalace_skills.defence_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.male_elf)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				template.set_stat_jiggle(FPalace_helper.str_id,5,11);
				template.set_stat_jiggle(FPalace_helper.dex_id,10,16);
				template.set_stat_jiggle(FPalace_helper.con_id,8,14);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,11,17);
				template.set_stat_jiggle(FPalace_helper.int_id,7,13);
				template.set_stat_jiggle(FPalace_helper.wis_id,11,17);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,7,13);
				template.set_stat_jiggle(FPalace_helper.bust_id,20,30);
				template.set_stat_jiggle(FPalace_helper.waist_id,20,24);
				template.set_stat_jiggle(FPalace_helper.hips_id,22,32);
				template.set_stat_jiggle(FPalace_helper.height_id,120,170);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,2,36);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,4);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,3,8);
				//template.set_stat_jiggle(FPalace_helper.age_id,190,350);
				male_elf_template = template;
			}
			return male_elf_template;
		}
		
		private static var female_elf_template:Character_template;
		public static function female_elf():Character_template{
			if(female_elf_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_female(FPalace_races.race_elf());
				creature.set_move(2);
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(11);
				
				creature.equip(FPalace_items.silver_circlet(),0);
				creature.equip(FPalace_items.brown_elvish_gown(),0);
				creature.equip(FPalace_items.green_leather_sandals(),0);
							
				creature.hold(FPalace_items.elvish_rapier(),0);
							
				creature.add_to_possessions(FPalace_items.elvish_bread());
				
				creature.set_gold(3);
				
				creature.personality.new_allegiance(FPalace_helper.get_patience_mob(), creature);			
				
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.melee_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.one_handed_id, 2);
				creature.skills.set_skill_value(creature, FPalace_skills.defence_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.female_elf)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				template.set_stat_jiggle(FPalace_helper.str_id,5,11);
				template.set_stat_jiggle(FPalace_helper.dex_id,10,16);
				template.set_stat_jiggle(FPalace_helper.con_id,8,14);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,11,17);
				template.set_stat_jiggle(FPalace_helper.int_id,7,13);
				template.set_stat_jiggle(FPalace_helper.wis_id,11,17);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,7,13);
				template.set_stat_jiggle(FPalace_helper.breast_size_id, 1, 6);
				template.set_stat_jiggle(FPalace_helper.nipple_size_id,0.5,2);
				template.set_stat_jiggle(FPalace_helper.bust_id,20,30);
				template.set_stat_jiggle(FPalace_helper.waist_id,20,24);
				template.set_stat_jiggle(FPalace_helper.hips_id,22,32);
				template.set_stat_jiggle(FPalace_helper.height_id,120,170);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,2,36);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.milk_volume_id,50,150);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,4);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,3,8);
				template.set_stat_jiggle(FPalace_helper.vaginal_width_id,1,4);
				template.set_stat_jiggle(FPalace_helper.vaginal_depth_id,3,8);
				//template.set_stat_jiggle(FPalace_helper.egg_fertility_id,0.4,0.6);
				//template.set_stat_jiggle(FPalace_helper.age_id,190,350);
				female_elf_template = template;
			}
			return female_elf_template;
		}
		
		private static var cat_guy_template:Character_template;
		public static function cat_guy():Character_template{
			if(cat_guy_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_male(FPalace_races.race_anthro_feline())
				creature.set_move(2);
				creature.set_character_class(FPalace_classes.cclass_adventurer() );
				creature.set_xp(11);
				
				creature.add_to_possessions(FPalace_items.catnip());
				
				creature.set_gold(3);
				
				creature.personality.new_allegiance(FPalace_helper.get_charity_mob(), creature);
				
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.melee_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.unarmed_id, 2);
				creature.skills.set_skill_value(creature, FPalace_skills.defence_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.cat_guy)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				template.set_stat_jiggle(FPalace_helper.str_id,7,13);
				template.set_stat_jiggle(FPalace_helper.dex_id,12,19);
				template.set_stat_jiggle(FPalace_helper.con_id,8,14);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,13,19);
				template.set_stat_jiggle(FPalace_helper.int_id,6,12);
				template.set_stat_jiggle(FPalace_helper.wis_id,10,14);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.bust_id,20,30);
				template.set_stat_jiggle(FPalace_helper.waist_id,20,24);
				template.set_stat_jiggle(FPalace_helper.hips_id,22,32);
				template.set_stat_jiggle(FPalace_helper.height_id,150,190);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,2,20);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,4);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,3,8);
				//template.set_stat_jiggle(FPalace_helper.age_id,13,19);
				cat_guy_template = template;
			}
			return cat_guy_template;
		}
		
		private static var cat_girl_template:Character_template;
		public static function cat_girl():Character_template{
			if(cat_girl_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_female(FPalace_races.race_anthro_feline())
				creature.set_move(2);
				creature.new_body_part(FPalace_helper.new_breasts(FPalace_races.race_anthro_feline()));
				creature.new_body_part(FPalace_helper.new_breasts(FPalace_races.race_anthro_feline()));
				creature.new_body_part(FPalace_helper.new_tail(FPalace_races.race_anthro_feline()));
				creature.set_character_class(FPalace_classes.cclass_adventurer() );
				creature.set_xp(11);
				
				creature.equip(FPalace_items.dirty_haltertop(),0);
				creature.equip(FPalace_items.ripped_jean_shorts(),0);
				
				
				creature.add_to_possessions(FPalace_items.catnip());
				
				creature.set_gold(3);
				
				creature.personality.new_allegiance(FPalace_helper.get_charity_mob(), creature);
				
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.melee_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.unarmed_id, 2);
				creature.skills.set_skill_value(creature, FPalace_skills.defence_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.cat_girl)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				template.set_stat_jiggle(FPalace_helper.str_id,7,13);
				template.set_stat_jiggle(FPalace_helper.dex_id,12,19);
				template.set_stat_jiggle(FPalace_helper.con_id,8,14);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,13,19);
				template.set_stat_jiggle(FPalace_helper.int_id,6,12);
				template.set_stat_jiggle(FPalace_helper.wis_id,10,14);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.breast_size_id, 1, 5);
				template.set_stat_jiggle(FPalace_helper.nipple_size_id,0.5,2);
				template.set_stat_jiggle(FPalace_helper.bust_id,20,30);
				template.set_stat_jiggle(FPalace_helper.waist_id,20,24);
				template.set_stat_jiggle(FPalace_helper.hips_id,22,32);
				template.set_stat_jiggle(FPalace_helper.height_id,150,190);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,2,20);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.milk_volume_id,50,150);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,4);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,3,8);
				template.set_stat_jiggle(FPalace_helper.vaginal_width_id,1,4);
				template.set_stat_jiggle(FPalace_helper.vaginal_depth_id,3,8);
				//template.set_stat_jiggle(FPalace_helper.egg_fertility_id,0.4,0.6);
				//template.set_stat_jiggle(FPalace_helper.age_id,13,19);
				cat_girl_template = template;
			}
			return cat_girl_template;
		}
		
		private static var lizard_guy_template:Character_template;
		public static function lizard_guy():Character_template{
			if(lizard_guy_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_male(FPalace_races.race_anthro_lizard())
				creature.set_move(2);
				creature.new_body_part(FPalace_helper.new_tail(FPalace_races.race_anthro_lizard()));
				creature.set_character_class(FPalace_classes.cclass_adventurer() );
				creature.set_xp(11);
				
				creature.add_to_possessions(FPalace_items.scaled_egg());
				
				creature.set_gold(3);
				
				creature.personality.new_allegiance(FPalace_helper.get_diligence_mob(),creature);
				
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.melee_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.unarmed_id, 2);
				creature.skills.set_skill_value(creature, FPalace_skills.defence_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.lizard_guy)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				template.set_stat_jiggle(FPalace_helper.str_id,9,15);
				template.set_stat_jiggle(FPalace_helper.dex_id,12,19);
				template.set_stat_jiggle(FPalace_helper.con_id,8,14);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,13,19);
				template.set_stat_jiggle(FPalace_helper.int_id,11,17);
				template.set_stat_jiggle(FPalace_helper.wis_id,10,14);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,6,12);
				template.set_stat_jiggle(FPalace_helper.bust_id,20,30);
				template.set_stat_jiggle(FPalace_helper.waist_id,20,24);
				template.set_stat_jiggle(FPalace_helper.hips_id,22,32);
				template.set_stat_jiggle(FPalace_helper.height_id,150,190);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,2,20);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,4);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,3,8);
				//template.set_stat_jiggle(FPalace_helper.age_id,19,25);
				lizard_guy_template = template;
			}
			return lizard_guy_template;
		}
		
		private static var lizard_girl_template:Character_template;
		public static function lizard_girl():Character_template{
			if(lizard_girl_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_female(FPalace_races.race_anthro_lizard())
				creature.set_move(2);
				creature.new_body_part(FPalace_helper.new_tail(FPalace_races.race_anthro_lizard()));
				creature.set_character_class(FPalace_classes.cclass_adventurer() );
				creature.set_xp(11);
				
				creature.equip(FPalace_items.dirty_haltertop(),0);
				creature.equip(FPalace_items.ripped_jean_shorts(),0);			
				
				creature.add_to_possessions(FPalace_items.scaled_egg());
				
				creature.set_gold(3);
				
				creature.personality.new_allegiance(FPalace_helper.get_diligence_mob(),creature);
				
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.melee_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.unarmed_id, 2);
				creature.skills.set_skill_value(creature, FPalace_skills.defence_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.lizard_girl)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				template.set_stat_jiggle(FPalace_helper.str_id,9,15);
				template.set_stat_jiggle(FPalace_helper.dex_id,12,19);
				template.set_stat_jiggle(FPalace_helper.con_id,8,14);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,13,19);
				template.set_stat_jiggle(FPalace_helper.int_id,11,17);
				template.set_stat_jiggle(FPalace_helper.wis_id,10,14);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,6,12);
				template.set_stat_jiggle(FPalace_helper.breast_size_id, 1, 5);
				template.set_stat_jiggle(FPalace_helper.nipple_size_id,0.5,2);
				template.set_stat_jiggle(FPalace_helper.bust_id,20,30);
				template.set_stat_jiggle(FPalace_helper.waist_id,20,24);
				template.set_stat_jiggle(FPalace_helper.hips_id,22,32);
				template.set_stat_jiggle(FPalace_helper.height_id,150,190);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,2,20);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.milk_volume_id,50,150);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,4);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,3,8);
				template.set_stat_jiggle(FPalace_helper.vaginal_width_id,1,4);
				template.set_stat_jiggle(FPalace_helper.vaginal_depth_id,3,8);
				//template.set_stat_jiggle(FPalace_helper.egg_fertility_id,0.4,0.6);
				//template.set_stat_jiggle(FPalace_helper.age_id,19,25);
				lizard_girl_template = template;
			}
			return lizard_girl_template;
		}
		
		private static var bee_girl_template:Character_template;
		public static function bee_girl():Character_template{
			if(bee_girl_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_female(FPalace_races.race_anthro_bee());
				creature.set_move(2);
				creature.new_body_part(FPalace_helper.new_thorax(FPalace_races.race_anthro_bee()));
				creature.new_body_part(FPalace_helper.new_abdomen(FPalace_races.race_anthro_bee()));			
				creature.set_character_class(FPalace_classes.cclass_adventurer() );
				creature.set_xp(11);
				
				creature.add_to_possessions(FPalace_items.Honey());
				
				creature.set_gold(3);
				
				creature.personality.new_allegiance(FPalace_helper.get_diligence_mob(), creature);
				
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.melee_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.unarmed_id, 2);
				creature.skills.set_skill_value(creature, FPalace_skills.defence_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.covert_id, 10);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.bee_girl)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				template.set_stat_jiggle(FPalace_helper.str_id,9,15);
				template.set_stat_jiggle(FPalace_helper.dex_id,15,22);
				template.set_stat_jiggle(FPalace_helper.con_id,8,14);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,11,17);
				template.set_stat_jiggle(FPalace_helper.int_id,9,15);
				template.set_stat_jiggle(FPalace_helper.wis_id,10,14);
				template.set_stat_jiggle(FPalace_helper.will_id,5,11);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.breast_size_id, 2, 4);
				template.set_stat_jiggle(FPalace_helper.nipple_size_id,0.5,2);
				template.set_stat_jiggle(FPalace_helper.bust_id,30,40);
				template.set_stat_jiggle(FPalace_helper.waist_id,30,34);
				template.set_stat_jiggle(FPalace_helper.hips_id,22,32);
				template.set_stat_jiggle(FPalace_helper.height_id,150,190);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,2,20);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.milk_volume_id,50,150);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,4);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,3,8);
				template.set_stat_jiggle(FPalace_helper.vaginal_width_id,1,4);
				template.set_stat_jiggle(FPalace_helper.vaginal_depth_id,3,8);
				//template.set_stat_jiggle(FPalace_helper.egg_fertility_id,0.4,0.6);
				//template.set_stat_jiggle(FPalace_helper.age_id,13,19);
				bee_girl_template = template;
			}
			return bee_girl_template;
		}
		
		private static var spider_girl_template:Character_template;
		public static function spider_girl():Character_template{
			if(spider_girl_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = new Character();
				
				creature.set_move(2);
				var race:Race = FPalace_races.race_human();
				
				creature.new_body_part(FPalace_helper.new_hair(race));
				creature.new_body_part(FPalace_helper.new_head(race));
				creature.new_body_part(FPalace_helper.new_eyes(race));
				creature.new_body_part(FPalace_helper.new_torso(race));
				creature.new_body_part(FPalace_helper.new_left_arms(race));
				creature.new_body_part(FPalace_helper.new_left_hands(race));
				creature.new_body_part(FPalace_helper.new_right_arms(race));
				creature.new_body_part(FPalace_helper.new_right_hands(race));
				creature.new_body_part(FPalace_helper.new_hips(race));
				creature.new_body_part(FPalace_helper.new_breasts(race));
				creature.new_body_part(FPalace_helper.new_clit(race));
				race = FPalace_races.race_anthro_spider();
				creature.new_body_part(FPalace_helper.new_vagina(race));
				creature.new_body_part(FPalace_helper.new_thorax(race));
				creature.new_body_part(FPalace_helper.new_left_legs(race));
				creature.new_body_part(FPalace_helper.new_left_feet(race));
				creature.new_body_part(FPalace_helper.new_right_legs(race));
				creature.new_body_part(FPalace_helper.new_right_feet(race));
				creature.new_body_part(FPalace_helper.new_left_legs(race));
				creature.new_body_part(FPalace_helper.new_left_feet(race));
				creature.new_body_part(FPalace_helper.new_right_legs(race));
				creature.new_body_part(FPalace_helper.new_right_feet(race));
				creature.new_body_part(FPalace_helper.new_left_legs(race));
				creature.new_body_part(FPalace_helper.new_left_feet(race));
				creature.new_body_part(FPalace_helper.new_right_legs(race));
				creature.new_body_part(FPalace_helper.new_right_feet(race));
				creature.new_body_part(FPalace_helper.new_left_legs(race));
				creature.new_body_part(FPalace_helper.new_left_feet(race));
				creature.new_body_part(FPalace_helper.new_right_legs(race));
				creature.new_body_part(FPalace_helper.new_right_feet(race));
				creature.new_body_part(FPalace_helper.new_abdomen(race));
				
				creature.personality.determine_orient(creature.sex);
				creature.personality.new_allegiance(FPalace_helper.get_patience_mob(), creature);
				
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(11);
				
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.melee_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.defence_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.covert_id, 10);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.add_to_possessions(FPalace_items.vial_of_ichor());
				
				creature.set_gold(3);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.spider_girl)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				template.set_stat_jiggle(FPalace_helper.str_id,29,35);
				template.set_stat_jiggle(FPalace_helper.dex_id,25,31);
				template.set_stat_jiggle(FPalace_helper.con_id,22,28);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,15,22);
				template.set_stat_jiggle(FPalace_helper.int_id,8,14);
				template.set_stat_jiggle(FPalace_helper.wis_id,10,16);
				template.set_stat_jiggle(FPalace_helper.will_id,8,14);
				template.set_stat_jiggle(FPalace_helper.cha_id,9,15);
				template.set_stat_jiggle(FPalace_helper.breast_size_id, 1, 5);
				template.set_stat_jiggle(FPalace_helper.nipple_size_id,0.5,2);
				template.set_stat_jiggle(FPalace_helper.bust_id,28,32);
				template.set_stat_jiggle(FPalace_helper.waist_id,24,28);
				template.set_stat_jiggle(FPalace_helper.hips_id,28,32);
				template.set_stat_jiggle(FPalace_helper.height_id,330,400);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,12,36);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.milk_volume_id,50,150);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,4);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,3,8);
				template.set_stat_jiggle(FPalace_helper.vaginal_width_id,1,4);
				template.set_stat_jiggle(FPalace_helper.vaginal_depth_id,3,8);
				//template.set_stat_jiggle(FPalace_helper.egg_fertility_id,0.4,0.6);
				//template.set_stat_jiggle(FPalace_helper.age_id,15,21);
				spider_girl_template = template;
			}
			
			return spider_girl_template;
		}		
		
		private static var cow_herm_template:Character_template;
		public static function cow_herm():Character_template{
			if(cow_herm_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_herm(FPalace_races.race_anthro_bovine());
				creature.set_move(2);
				creature.new_body_part(FPalace_helper.new_horns(FPalace_races.race_anthro_bovine()));
				creature.new_body_part(FPalace_helper.new_udder(FPalace_races.race_anthro_bovine()));
				creature.new_body_part(FPalace_helper.new_tail(FPalace_races.race_anthro_bovine()));
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(20);
				
				creature.set_gold(10);
				
				creature.equip(FPalace_items.cowboy_hat(),0);
				creature.equip(FPalace_items.Overalls(),0);
				
				creature.hold(FPalace_items.pitch_fork(),0);
				
				creature.personality.new_allegiance(FPalace_helper.get_freedom_farm_mob(), creature);
				creature.personality.new_allegiance(FPalace_helper.get_diligence_mob(), creature);
				
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.melee_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.defence_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.cow_herm)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				template.set_stat_jiggle(FPalace_helper.str_id,11,17);
				template.set_stat_jiggle(FPalace_helper.dex_id,4,11);
				template.set_stat_jiggle(FPalace_helper.con_id,10,16);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,16,22);
				template.set_stat_jiggle(FPalace_helper.int_id,5,11);
				template.set_stat_jiggle(FPalace_helper.wis_id,7,13);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.height_id,180,190);
				template.set_stat_jiggle(FPalace_helper.cum_volume_id,800,1100);
				template.set_stat_jiggle(FPalace_helper.milk_volume_id,1250,2000);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,5);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,3,9);
				template.set_stat_jiggle(FPalace_helper.vaginal_width_id,8,14);
				template.set_stat_jiggle(FPalace_helper.vaginal_depth_id,28,34);
				//template.set_stat_jiggle(FPalace_helper.semen_fertility_id,0.30,0.35);
				//template.set_stat_jiggle(FPalace_helper.egg_fertility_id,0.7,0.8);
				template.set_stat_jiggle(FPalace_helper.erection_ratio_id,0.3,0.5);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,2,36);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.breast_size_id, 4, 8);
				template.set_stat_jiggle(FPalace_helper.nipple_size_id,1,3);
				template.set_stat_jiggle(FPalace_helper.bust_id,24,36);
				template.set_stat_jiggle(FPalace_helper.waist_id,20,32);
				template.set_stat_jiggle(FPalace_helper.hips_id,24,36);
				template.set_stat_jiggle(FPalace_helper.penis_length_id,30,42);
				template.set_stat_jiggle(FPalace_helper.penis_girth_id,10,14);
				template.set_stat_jiggle(FPalace_helper.balls_size_id,2,6);
				//template.set_stat_jiggle(FPalace_helper.age_id,16,24);
				cow_herm_template = template;
			}
			return cow_herm_template;
		}
		
		private static var cow_girl_template:Character_template;
		public static function cow_girl():Character_template{
			if(cow_girl_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_female(FPalace_races.race_anthro_bovine());
				creature.new_body_part(FPalace_helper.new_horns(FPalace_races.race_anthro_bovine()));
				creature.new_body_part(FPalace_helper.new_tail(FPalace_races.race_anthro_bovine()));
				creature.new_body_part(FPalace_helper.new_udder(FPalace_races.race_anthro_bovine()));
				creature.set_move(2);
				
				creature.set_gold(10);
				
				creature.equip(FPalace_items.cowboy_hat(),0);
				creature.equip(FPalace_items.Overalls(),0);
				
				creature.hold(FPalace_items.pitch_fork(),0);
				
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(20);
				
				creature.personality.new_allegiance(FPalace_helper.get_freedom_farm_mob(), creature);
				creature.personality.new_allegiance(FPalace_helper.get_diligence_mob(), creature);
				
				
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.melee_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.defence_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.cow_girl)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				template.set_stat_jiggle(FPalace_helper.str_id,11,17);
				template.set_stat_jiggle(FPalace_helper.dex_id,4,10);
				template.set_stat_jiggle(FPalace_helper.con_id,8,14);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,14,20);
				template.set_stat_jiggle(FPalace_helper.int_id,5,11);
				template.set_stat_jiggle(FPalace_helper.wis_id,9,15);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.height_id,180,190);
				template.set_stat_jiggle(FPalace_helper.milk_volume_id,1000,1700);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,5);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,3,9);
				template.set_stat_jiggle(FPalace_helper.vaginal_width_id,8,14);
				template.set_stat_jiggle(FPalace_helper.vaginal_depth_id,28,34);
				//template.set_stat_jiggle(FPalace_helper.egg_fertility_id,0.4,0.5);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,10,36);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.breast_size_id, 4, 6);
				template.set_stat_jiggle(FPalace_helper.nipple_size_id,1,3);
				template.set_stat_jiggle(FPalace_helper.bust_id,24,36);
				template.set_stat_jiggle(FPalace_helper.waist_id,20,32);
				template.set_stat_jiggle(FPalace_helper.hips_id,24,36);
				//template.set_stat_jiggle(FPalace_helper.age_id,16,24);
				cow_girl_template = template;
			}
			return cow_girl_template;
		}
		
		private static var freedom_farms_breeder_template:Character_template;
		public static function freedom_farms_breeder():Character_template{
			if(freedom_farms_breeder_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_female(FPalace_races.race_anthro_bovine());
				creature.set_move(2);
				creature.new_body_part(FPalace_helper.new_horns(FPalace_races.race_anthro_bovine()));
				creature.new_body_part(FPalace_helper.new_udder(FPalace_races.race_anthro_bovine()));
				creature.new_body_part(FPalace_helper.new_tail(FPalace_races.race_anthro_bovine()));
				
				creature.apply_affect_by_id(FPalace_helper.breast_size_id, 1,0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.milk_volume_id, 930,0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.vaginal_width_id, 3,0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.vaginal_depth_id, 5,0,null,Body.change_stats_total);
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(20);
				
				creature.set_gold(1);
				
				//want some sort of "breeding" outfit... 
				//probably a cow-bell at the very least
				
				creature.personality.add_like(FPalace_helper.trait_is_human());
				creature.personality.new_allegiance(FPalace_helper.get_freedom_farm_mob(), creature);
				creature.personality.new_allegiance(FPalace_helper.get_diligence_mob(), creature);
				
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 1);
				creature.skills.set_skill_value(creature, FPalace_skills.defence_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.freedom_farms_breeder)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				template.set_stat_jiggle(FPalace_helper.str_id,11,17);
				template.set_stat_jiggle(FPalace_helper.dex_id,4,11);
				template.set_stat_jiggle(FPalace_helper.con_id,8,14);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,13,19);
				template.set_stat_jiggle(FPalace_helper.int_id,5,11);
				template.set_stat_jiggle(FPalace_helper.wis_id,9,15);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.height_id,165,185);
				template.set_stat_jiggle(FPalace_helper.milk_volume_id,1750,2500);
				template.set_stat_jiggle(FPalace_helper.vaginal_width_id,11,17);
				template.set_stat_jiggle(FPalace_helper.vaginal_depth_id,33,39);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,11,17);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,33,39);
				//template.set_stat_jiggle(FPalace_helper.egg_fertility_id,0.40,0.75);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,10,36);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.bust_id,24,36);
				template.set_stat_jiggle(FPalace_helper.waist_id,22,32);
				template.set_stat_jiggle(FPalace_helper.hips_id,24,36);
				template.set_stat_jiggle(FPalace_helper.breast_size_id, 5, 8);
				template.set_stat_jiggle(FPalace_helper.nipple_size_id,2,4);
				//template.set_stat_jiggle(FPalace_helper.age_id,16,28);
				freedom_farms_breeder_template = template;
			}
			return freedom_farms_breeder_template;
		}
		
		private static var farm_crowgirl_template:Character_template;
		public static function farm_crowgirl():Character_template{
			if(farm_crowgirl_template == null){
				trace("(FPalace_npcs)Should be making a crow-girl... but I'm lazy and just making a slime instead.");
				farm_crowgirl_template = goo_slime();
			}
			return farm_crowgirl_template;//temporary... look at the darn name for what it's suppsoed to be
		}
		
		private static var mountain_cougar_template:Character_template;
		public static function mountain_cougar():Character_template{
			if(mountain_cougar_template == null){
				trace("(FPalace_npcs)Should be making a cougar... but I'm lazy and just making a slime instead.");
				mountain_cougar_template = goo_slime();
			}
			return mountain_cougar_template;//temporary... look at the darn name for what it's suppsoed to be
		}
		
		private static var mountain_harpy_template:Character_template;
		public static function mountain_harpy():Character_template{
			if(mountain_harpy_template == null){
				trace("(FPalace_npcs)Should be making a harpy... but I'm lazy and just making a slime instead.");
				mountain_harpy_template = goo_slime()
			}
			return mountain_harpy_template;//temporary... look at the darn name for what it's suppsoed to be
		}
		
		private static var mountain_goatgirl_template:Character_template;
		public static function mountain_goatgirl():Character_template{
			if(mountain_goatgirl_template == null){
				trace("(FPalace_npcs)Should be making a goat-girl... but I'm lazy and just making a slime instead.");
				mountain_goatgirl_template =goo_slime();
			}
			return mountain_goatgirl_template;//temporary... look at the darn name for what it's suppsoed to be
		}
		
		private static var volcano_salamander_template:Character_template;
		public static function volcano_salamander():Character_template{
			if(volcano_salamander_template == null){
				trace("(FPalace_npcs)Should be making a salamander... but I'm lazy and just making a slime instead.");
				volcano_salamander_template = goo_slime();
			}
			return volcano_salamander_template;//temporary... look at the darn name for what it's suppsoed to be
		}
		
		private static var volcano_roc_template:Character_template;
		public static function volcano_roc():Character_template{
			if(volcano_roc_template == null){
				trace("(FPalace_npcs)Should be making a roc... but I'm lazy and just making a slime instead.");
				volcano_roc_template = goo_slime();
			}
			return volcano_roc_template;//temporary... look at the darn name for what it's suppsoed to be
		}
		
		private static var beach_crab_template:Character_template;
		public static function beach_crab():Character_template{
			if(beach_crab_template == null){
				trace("(FPalace_npcs)Should be making a crab... but I'm lazy and just making a slime instead.");
				beach_crab_template = goo_slime();
			}
			return beach_crab_template;//temporary... look at the darn name for what it's suppsoed to be
		}
		
		private static var beach_otter_template:Character_template;
		public static function beach_otter():Character_template{
			if(beach_otter_template == null){
				trace("(FPalace_npcs)Should be making an otter-girl... but I'm lazy and just making a slime instead.");
				beach_otter_template = goo_slime();
			}
			return beach_otter_template;//temporary... look at the darn name for what it's suppsoed to be
		}
		
		private static var beach_turtle_template:Character_template;
		public static function beach_turtle():Character_template{
			if(beach_turtle_template == null){
				trace("(FPalace_npcs)Should be making an turtle-girl... but I'm lazy and just making a slime instead.");
				beach_turtle_template = goo_slime();
			}
			return beach_turtle_template;//temporary... look at the darn name for what it's suppsoed to be
		}
		
		private static var nunnery_shopkeeper_template:Character_template;
		public static function nunnery_shopkeeper():Character_template{
			if(nunnery_shopkeeper_template == null){
				var template:Character_template = nunnery_nun().clone();
				template.char_to_clone.set_gold(100);
				template.char_to_clone.personality.set_job(FPalace_classes.job_nunnery_merchant(), template.char_to_clone);
				nunnery_shopkeeper_template = template;
			}
						
			return nunnery_shopkeeper_template;
		}
		
		private static var nunnery_dealer_template:Character_template;
		public static function nunnery_dealer():Character_template{
			if(nunnery_dealer_template == null){
				var template:Character_template = nunnery_nun().clone();
				template.char_to_clone.set_gold(100);
				template.char_to_clone.personality.set_job(FPalace_classes.nunnery_drug_dealer(), template.char_to_clone);
				nunnery_dealer_template = template;
			}
						
			return nunnery_dealer_template;
		}
		
		private static var nunnery_nun_template:Character_template;
		public static function nunnery_nun():Character_template{
			if(nunnery_nun_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_female(FPalace_races.race_human());
				creature.set_character_class(FPalace_classes.cclass_fertility_nun());
				creature.set_xp(20);
				creature.set_move(2);
				creature.set_gold(10);
				
				//dressed in a nuns habbit		
				creature.equip(FPalace_items.horny_chastity_belt(),0);
				creature.equip(FPalace_items.habit(),0);
				
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.melee_id, 2);
				creature.skills.set_skill_value(creature, FPalace_skills.defence_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.nunnery_nun)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				template.set_stat_jiggle(FPalace_helper.str_id,7,13);
				template.set_stat_jiggle(FPalace_helper.dex_id,7,13);
				template.set_stat_jiggle(FPalace_helper.con_id,7,13);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,10,18);
				template.set_stat_jiggle(FPalace_helper.int_id,8,14);
				template.set_stat_jiggle(FPalace_helper.wis_id,10,16);
				template.set_stat_jiggle(FPalace_helper.will_id,9,15);
				template.set_stat_jiggle(FPalace_helper.cha_id,10,16);
				template.set_stat_jiggle(FPalace_helper.breast_size_id, 3, 5);
				template.set_stat_jiggle(FPalace_helper.nipple_size_id,0.5,2);
				template.set_stat_jiggle(FPalace_helper.bust_id,24,36);
				template.set_stat_jiggle(FPalace_helper.waist_id,20,24);
				template.set_stat_jiggle(FPalace_helper.hips_id,24,36);
				template.set_stat_jiggle(FPalace_helper.height_id,110,170);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,12,36);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.milk_volume_id,250,500);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,5);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,3,16);
				template.set_stat_jiggle(FPalace_helper.vaginal_width_id,1,5);
				template.set_stat_jiggle(FPalace_helper.vaginal_depth_id,3,16);
				//template.set_stat_jiggle(FPalace_helper.egg_fertility_id,0.45,0.99);
				//template.set_stat_jiggle(FPalace_helper.age_id,20,27);
				nunnery_nun_template = template;
			}
			
			return nunnery_nun_template;
		}
		
		private static var grasslands_merchant_template:Character_template;
		public static function grasslands_caravan_merchant():Character_template{
			if(grasslands_merchant_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_male(FPalace_races.race_human());
				creature.set_move(2);
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(20);
				
				creature.set_gold(100);
				
				creature.equip(FPalace_items.fancy_pee_cap(),0);
				creature.equip(FPalace_items.Blue_silk_boxers(),0);
				creature.equip(FPalace_items.Blue_silk_shirt(),0);
				creature.equip(FPalace_items.Blue_silk_pants(),0);
				creature.equip(FPalace_items.Red_fur_overcoat(),0);
				creature.equip(FPalace_items.gold_medallion(),0);
				creature.equip(FPalace_items.gold_ring(),0);
				
				creature.equip(FPalace_items.black_dress_shoes(),0);
				
				creature.hold(FPalace_items.knife(),0);
				
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.trade_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.valuing_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.covert_id, 10);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.personality.set_job(FPalace_classes.job_caravan_merchant(), creature);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.grasslands_caravan_merchant)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				
				template.set_stat_jiggle(FPalace_helper.str_id,9,15);
				template.set_stat_jiggle(FPalace_helper.dex_id,7,13);
				template.set_stat_jiggle(FPalace_helper.con_id,7,13);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,7,13);
				template.set_stat_jiggle(FPalace_helper.int_id,8,14);
				template.set_stat_jiggle(FPalace_helper.wis_id,7,13);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.height_id,150,164);
				//template.set_stat_jiggle(FPalace_helper.cum_volume_id,2,7);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,3);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,2,6);
				//template.set_stat_jiggle(FPalace_helper.semen_fertility_id,0.04,0.06);
				template.set_stat_jiggle(FPalace_helper.erection_ratio_id,0.65,0.75);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,1,4);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);			
				template.set_stat_jiggle(FPalace_helper.bust_id,28,38);
				template.set_stat_jiggle(FPalace_helper.waist_id,26,38);
				template.set_stat_jiggle(FPalace_helper.hips_id,28,38);
				template.set_stat_jiggle(FPalace_helper.penis_length_id,4,8);
				template.set_stat_jiggle(FPalace_helper.penis_girth_id,4/3,8/3);
				template.set_stat_jiggle(FPalace_helper.balls_size_id,1,2);
				//template.set_stat_jiggle(FPalace_helper.age_id,21,30);
				grasslands_merchant_template = template;
			}
			return grasslands_merchant_template;
		}
		
		private static var grasslands_guard_template:Character_template;
		public static function grasslands_caravan_guard():Character_template{
			if(grasslands_guard_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_male(FPalace_races.race_human());
				creature.set_move(2);
				creature.set_character_class(FPalace_classes.cclass_warrior());
				creature.set_xp(200);
				
				creature.set_gold(25);
				
				creature.equip(FPalace_items.bronze_salet(),0);
				creature.equip(FPalace_items.red_tunic(),0);
				creature.equip(FPalace_items.bronze_breastplate(),0);
				creature.equip(FPalace_items.bronze_greaves(),0);
				creature.equip(FPalace_items.hard_leather_boots(),0);
				creature.equip(FPalace_items.bronze_gauntlets(),0);
							
				creature.hold(FPalace_items.bronze_short_sword(),0);
				creature.hold(FPalace_items.bronze_shield(),0);
				
				creature.add_to_possessions(FPalace_items.plain_jane_potion());			
				
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 1);
				creature.skills.set_skill_value(creature, FPalace_skills.melee_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.one_handed_id, 2);
				creature.skills.set_skill_value(creature, FPalace_skills.defence_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.blocking_id, 2);
				creature.skills.set_skill_value(creature, FPalace_skills.parrying_id, 2);
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 2);
				creature.skills.set_skill_value(creature, FPalace_skills.covert_id, 10);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.personality.set_job(FPalace_classes.job_caravan_guard(), creature);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.grasslands_caravan_guard)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				
				template.set_stat_jiggle(FPalace_helper.str_id,9,15);
				template.set_stat_jiggle(FPalace_helper.dex_id,7,13);
				template.set_stat_jiggle(FPalace_helper.con_id,7,13);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,7,13);
				template.set_stat_jiggle(FPalace_helper.int_id,8,14);
				template.set_stat_jiggle(FPalace_helper.wis_id,7,13);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.height_id,155,169);
				//template.set_stat_jiggle(FPalace_helper.cum_volume_id,2,7);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,3);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,2,6);
				//template.set_stat_jiggle(FPalace_helper.semen_fertility_id,0.04,0.06);
				template.set_stat_jiggle(FPalace_helper.erection_ratio_id,0.65,0.75);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,1,4);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);			
				template.set_stat_jiggle(FPalace_helper.bust_id,28,38);
				template.set_stat_jiggle(FPalace_helper.waist_id,26,38);
				template.set_stat_jiggle(FPalace_helper.hips_id,28,38);
				template.set_stat_jiggle(FPalace_helper.penis_length_id,4,8);
				template.set_stat_jiggle(FPalace_helper.penis_girth_id,4/3,8/3);
				template.set_stat_jiggle(FPalace_helper.balls_size_id,1,2);
				//template.set_stat_jiggle(FPalace_helper.age_id,17,26);
				
				grasslands_guard_template = template;
			}
			
			return grasslands_guard_template;
		}
		
		private static var male_human_century_city_template:Character_template;
		public static function male_human_century_city():Character_template{
			if(male_human_century_city_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_male(FPalace_races.race_human());
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(22);
				creature.set_move(2);
				creature.set_gold(7);
				
				creature.equip(FPalace_items.white_tshirt(),0);
				creature.equip(FPalace_items.normal_bluejeans(),0);
				creature.equip(FPalace_items.sneakers(),0);
				creature.equip(FPalace_items.baseball_cap(),0);
				creature.equip(FPalace_items.shy_mask(),0);
				
				creature.personality.new_allegiance(FPalace_helper.get_humility_mob(), creature);
				
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.male_human_century_city)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				
				template.set_stat_jiggle(FPalace_helper.str_id,9,15);
				template.set_stat_jiggle(FPalace_helper.dex_id,7,13);
				template.set_stat_jiggle(FPalace_helper.con_id,7,13);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,7,13);
				template.set_stat_jiggle(FPalace_helper.int_id,8,14);
				template.set_stat_jiggle(FPalace_helper.wis_id,7,13);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.bust_id,28,38);
				template.set_stat_jiggle(FPalace_helper.waist_id,26,38);
				template.set_stat_jiggle(FPalace_helper.hips_id,28,38);
				template.set_stat_jiggle(FPalace_helper.height_id,140,180);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,1,4);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.erection_ratio_id,0.4,0.6);
				//template.set_stat_jiggle(FPalace_helper.cum_volume_id,4,8);
				template.set_stat_jiggle(FPalace_helper.penis_length_id,4,8);
				template.set_stat_jiggle(FPalace_helper.penis_girth_id,4/3,8/3);
				template.set_stat_jiggle(FPalace_helper.balls_size_id,1,2);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,2);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,2,6);
				//template.set_stat_jiggle(FPalace_helper.semen_fertility_id,0.04,0.06);
				//template.set_stat_jiggle(FPalace_helper.age_id,17,24);
				male_human_century_city_template = template;
			}
			return male_human_century_city_template;
		}
		
		private static var female_human_century_city_template:Character_template;
		public static function female_human_century_city():Character_template{
			if(female_human_century_city_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_female(FPalace_races.race_human());
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(22);
				creature.set_move(2);
				creature.set_gold(5);
				
				creature.equip(FPalace_items.black_tshirt(),0);
				creature.equip(FPalace_items.shy_mask(),0);
				
				creature.personality.new_allegiance(FPalace_helper.get_humility_mob(), creature);
				
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.female_human_century_city)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				
				template.set_stat_jiggle(FPalace_helper.str_id,7,13);
				template.set_stat_jiggle(FPalace_helper.dex_id,7,13);
				template.set_stat_jiggle(FPalace_helper.con_id,8,14);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,8,14);
				template.set_stat_jiggle(FPalace_helper.int_id,7,13);
				template.set_stat_jiggle(FPalace_helper.wis_id,9,15);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.breast_size_id, 1, 4);
				template.set_stat_jiggle(FPalace_helper.nipple_size_id,0.5,1);
				template.set_stat_jiggle(FPalace_helper.bust_id,24,36);
				template.set_stat_jiggle(FPalace_helper.waist_id,22,32);
				template.set_stat_jiggle(FPalace_helper.hips_id,24,36);
				template.set_stat_jiggle(FPalace_helper.height_id,120,160);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,10,24);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.milk_volume_id,50,125);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,2,4);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,5,7);
				template.set_stat_jiggle(FPalace_helper.vaginal_width_id,2,4);
				template.set_stat_jiggle(FPalace_helper.vaginal_depth_id,6,8);
				//template.set_stat_jiggle(FPalace_helper.egg_fertility_id,0.4,0.6);
				//template.set_stat_jiggle(FPalace_helper.age_id,22,30);
				female_human_century_city_template = template;
			}
			return female_human_century_city_template;
		}
		
		private static var century_city_inkeep_template:Character_template;
		public static function century_city_inkeep():Character_template{
			if(century_city_inkeep_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_female(FPalace_races.race_human());
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(22);
				
				creature.set_gold(75);
				
				creature.equip(FPalace_items.black_tshirt(),0);
				creature.equip(FPalace_items.shy_mask(),0);
				
				creature.personality.set_job(FPalace_classes.job_inkeep(), creature);
				creature.personality.new_allegiance(FPalace_helper.get_humility_mob(), creature);
				
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.trade_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.valuing_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.century_city_inkeep)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				
				template.set_stat_jiggle(FPalace_helper.str_id,7,13);
				template.set_stat_jiggle(FPalace_helper.dex_id,7,13);
				template.set_stat_jiggle(FPalace_helper.con_id,8,14);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,8,14);
				template.set_stat_jiggle(FPalace_helper.int_id,7,13);
				template.set_stat_jiggle(FPalace_helper.wis_id,9,15);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.breast_size_id, 1, 4);
				template.set_stat_jiggle(FPalace_helper.nipple_size_id,0.5,1);
				template.set_stat_jiggle(FPalace_helper.bust_id,24,36);
				template.set_stat_jiggle(FPalace_helper.waist_id,22,32);
				template.set_stat_jiggle(FPalace_helper.hips_id,24,36);
				template.set_stat_jiggle(FPalace_helper.height_id,120,160);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,10,24);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.milk_volume_id,50,125);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,2,4);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,5,7);
				template.set_stat_jiggle(FPalace_helper.vaginal_width_id,2,4);
				template.set_stat_jiggle(FPalace_helper.vaginal_depth_id,6,8);
				//template.set_stat_jiggle(FPalace_helper.egg_fertility_id,0.4,0.6);
				//template.set_stat_jiggle(FPalace_helper.age_id,22,30);
				century_city_inkeep_template = template;
			}
			return century_city_inkeep_template;
		}
		
		private static var century_city_doctor_template:Character_template;
		public static function century_city_doctor():Character_template{
			if(century_city_doctor_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_male(FPalace_races.race_human());
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(22);
				
				creature.set_gold(75);
				
				creature.equip(FPalace_items.black_tshirt(),0);
				creature.equip(FPalace_items.shy_mask(),0);
				
				creature.personality.set_job(FPalace_classes.job_doctor(), creature);
				creature.personality.new_allegiance(FPalace_helper.get_humility_mob(), creature);
				
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.trade_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.valuing_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.century_city_doctor)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				
				template.set_stat_jiggle(FPalace_helper.str_id,7,13);
				template.set_stat_jiggle(FPalace_helper.dex_id,7,13);
				template.set_stat_jiggle(FPalace_helper.con_id,8,14);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,8,14);
				template.set_stat_jiggle(FPalace_helper.int_id,7,13);
				template.set_stat_jiggle(FPalace_helper.wis_id,9,15);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.bust_id,24,36);
				template.set_stat_jiggle(FPalace_helper.waist_id,22,32);
				template.set_stat_jiggle(FPalace_helper.hips_id,24,36);
				template.set_stat_jiggle(FPalace_helper.height_id,120,160);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,10,24);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,2,4);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,5,7);
				//template.set_stat_jiggle(FPalace_helper.age_id,22,30);
				century_city_doctor_template = template;
			}
			return century_city_doctor_template;
		}
		
		private static var gro_corp_doctor_template:Character_template;
		public static function gro_corp_doctor():Character_template{
			if(gro_corp_doctor_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_male(FPalace_races.race_human());
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(22);
				
				creature.set_gold(75);
				
				creature.equip(FPalace_items.black_tshirt(),0);
				creature.equip(FPalace_items.shy_mask(),0);
				
				creature.personality.set_job(FPalace_classes.job_doctor(), creature);
				creature.personality.new_allegiance(FPalace_helper.get_humility_mob(), creature);
				
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.trade_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.valuing_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.century_city_doctor)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				
				template.set_stat_jiggle(FPalace_helper.str_id,7,13);
				template.set_stat_jiggle(FPalace_helper.dex_id,7,13);
				template.set_stat_jiggle(FPalace_helper.con_id,8,14);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,8,14);
				template.set_stat_jiggle(FPalace_helper.int_id,7,13);
				template.set_stat_jiggle(FPalace_helper.wis_id,9,15);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.bust_id,24,36);
				template.set_stat_jiggle(FPalace_helper.waist_id,22,32);
				template.set_stat_jiggle(FPalace_helper.hips_id,24,36);
				template.set_stat_jiggle(FPalace_helper.height_id,120,160);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,10,24);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,2,4);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,5,7);
				//template.set_stat_jiggle(FPalace_helper.age_id,22,30);
				gro_corp_doctor_template = template;
			}
			return gro_corp_doctor_template;
		}
		
		private static var gro_corp_receptionist_template:Character_template;
		public static function gro_corp_receptionist():Character_template{
			if(gro_corp_receptionist_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_female(FPalace_races.race_human());
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(22);			
				
				creature.set_gold(75);
				
				creature.equip(FPalace_items.black_tshirt(),0);
				creature.equip(FPalace_items.shy_mask(),0);
				
				creature.personality.set_job(FPalace_classes.job_century_city_gro_clerk(), creature);
				creature.personality.new_allegiance(FPalace_helper.get_humility_mob(), creature);
				
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.trade_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.valuing_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.century_city_clothing_store_clerk)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				
				template.set_stat_jiggle(FPalace_helper.str_id,7,13);
				template.set_stat_jiggle(FPalace_helper.dex_id,7,13);
				template.set_stat_jiggle(FPalace_helper.con_id,8,14);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,8,14);
				template.set_stat_jiggle(FPalace_helper.int_id,7,13);
				template.set_stat_jiggle(FPalace_helper.wis_id,9,15);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.breast_size_id, 1, 4);
				template.set_stat_jiggle(FPalace_helper.nipple_size_id,0.5,1);
				template.set_stat_jiggle(FPalace_helper.bust_id,24,36);
				template.set_stat_jiggle(FPalace_helper.waist_id,22,32);
				template.set_stat_jiggle(FPalace_helper.hips_id,24,36);
				template.set_stat_jiggle(FPalace_helper.height_id,120,160);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,10,24);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.milk_volume_id,50,125);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,2,4);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,5,7);
				template.set_stat_jiggle(FPalace_helper.vaginal_width_id,2,4);
				template.set_stat_jiggle(FPalace_helper.vaginal_depth_id,6,8);
				//template.set_stat_jiggle(FPalace_helper.egg_fertility_id,0.4,0.6);
				//template.set_stat_jiggle(FPalace_helper.age_id,22,30);
				gro_corp_receptionist_template = template;
			}
			return gro_corp_receptionist_template;
		}
		
		private static var century_city_shopkeeper_template:Character_template;
		public static function century_city_shopkeeper():Character_template{
			if(century_city_shopkeeper_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_male(FPalace_races.race_human());
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(22);
				
				creature.set_gold(75);
				
				creature.equip(FPalace_items.white_tshirt(),0);
				creature.equip(FPalace_items.normal_bluejeans(),0);
				creature.equip(FPalace_items.blue_apron(),0);
				creature.equip(FPalace_items.sneakers(),0);
				creature.equip(FPalace_items.baseball_cap(),0);
				creature.equip(FPalace_items.shy_mask(),0);
				
				creature.personality.new_allegiance(FPalace_helper.get_humility_mob(), creature);
				creature.personality.set_job(FPalace_classes.job_century_city_corner_store_clerk(), creature);
				
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.trade_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.valuing_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.century_city_shopkeeper)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				
				template.set_stat_jiggle(FPalace_helper.str_id,9,15);
				template.set_stat_jiggle(FPalace_helper.dex_id,7,13);
				template.set_stat_jiggle(FPalace_helper.con_id,7,13);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,7,13);
				template.set_stat_jiggle(FPalace_helper.int_id,8,14);
				template.set_stat_jiggle(FPalace_helper.wis_id,7,13);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.bust_id,28,38);
				template.set_stat_jiggle(FPalace_helper.waist_id,26,38);
				template.set_stat_jiggle(FPalace_helper.hips_id,28,38);
				template.set_stat_jiggle(FPalace_helper.height_id,140,180);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,1,4);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.erection_ratio_id,0.4,0.6);
				//template.set_stat_jiggle(FPalace_helper.cum_volume_id,4,8);
				template.set_stat_jiggle(FPalace_helper.penis_length_id,4,8);
				template.set_stat_jiggle(FPalace_helper.penis_girth_id,4/3,8/3);
				template.set_stat_jiggle(FPalace_helper.balls_size_id,1,2);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,2);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,2,6);
				//template.set_stat_jiggle(FPalace_helper.semen_fertility_id,0.04,0.06);
				//template.set_stat_jiggle(FPalace_helper.age_id,17,24);
				century_city_shopkeeper_template = template;
			}
			return century_city_shopkeeper_template;
		}
		
		private static var correction_office_shopkeeper_template:Character_template;
		public static function correction_office_shopkeeper():Character_template{
			if(correction_office_shopkeeper_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_female(FPalace_races.race_human());
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(22);
				
				creature.set_gold(75);
				
				creature.equip(FPalace_items.blue_scrub_top(),0);
				creature.equip(FPalace_items.blue_scrub_bottom(),0);
				creature.equip(FPalace_items.black_dress_shoes(),0);
				creature.equip(FPalace_items.bloody_lab_coat(),0);
				creature.equip(FPalace_items.shy_mask(),0);
				
				creature.personality.set_job(FPalace_classes.job_corrections_officer(), creature);
				creature.personality.determine_orient(creature.sex);
				creature.personality.new_allegiance(FPalace_helper.get_humility_mob(), creature);
				
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.trade_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.valuing_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.correction_office_shopkeeper)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				
				template.set_stat_jiggle(FPalace_helper.str_id,7,13);
				template.set_stat_jiggle(FPalace_helper.dex_id,7,13);
				template.set_stat_jiggle(FPalace_helper.con_id,8,14);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,8,14);
				template.set_stat_jiggle(FPalace_helper.int_id,7,13);
				template.set_stat_jiggle(FPalace_helper.wis_id,9,15);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.breast_size_id, 1, 4);
				template.set_stat_jiggle(FPalace_helper.nipple_size_id,0.5,1);
				template.set_stat_jiggle(FPalace_helper.bust_id,24,36);
				template.set_stat_jiggle(FPalace_helper.waist_id,22,32);
				template.set_stat_jiggle(FPalace_helper.hips_id,24,36);
				template.set_stat_jiggle(FPalace_helper.height_id,120,160);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,10,24);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.milk_volume_id,50,125);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,2,4);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,5,7);
				template.set_stat_jiggle(FPalace_helper.vaginal_width_id,2,4);
				template.set_stat_jiggle(FPalace_helper.vaginal_depth_id,6,8);
				//template.set_stat_jiggle(FPalace_helper.egg_fertility_id,0.4,0.6);
				//template.set_stat_jiggle(FPalace_helper.age_id,22,30);
				correction_office_shopkeeper_template = template;
			}
			return correction_office_shopkeeper_template;
		}
		
		private static var century_city_clothing_store_clerk_template:Character_template;
		public static function century_city_clothing_store_clerk():Character_template{
			if(century_city_clothing_store_clerk_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_female(FPalace_races.race_human());
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(22);			
				
				creature.set_gold(75);
				
				creature.equip(FPalace_items.black_tshirt(),0);
				creature.equip(FPalace_items.shy_mask(),0);
				
				creature.personality.set_job(FPalace_classes.job_century_city_clothing_store_clerk(), creature);
				creature.personality.new_allegiance(FPalace_helper.get_humility_mob(), creature);
				
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.trade_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.valuing_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.century_city_clothing_store_clerk)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				
				template.set_stat_jiggle(FPalace_helper.str_id,7,13);
				template.set_stat_jiggle(FPalace_helper.dex_id,7,13);
				template.set_stat_jiggle(FPalace_helper.con_id,8,14);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,8,14);
				template.set_stat_jiggle(FPalace_helper.int_id,7,13);
				template.set_stat_jiggle(FPalace_helper.wis_id,9,15);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.breast_size_id, 1, 4);
				template.set_stat_jiggle(FPalace_helper.nipple_size_id,0.5,1);
				template.set_stat_jiggle(FPalace_helper.bust_id,24,36);
				template.set_stat_jiggle(FPalace_helper.waist_id,22,32);
				template.set_stat_jiggle(FPalace_helper.hips_id,24,36);
				template.set_stat_jiggle(FPalace_helper.height_id,120,160);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,10,24);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.milk_volume_id,50,125);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,2,4);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,5,7);
				template.set_stat_jiggle(FPalace_helper.vaginal_width_id,2,4);
				template.set_stat_jiggle(FPalace_helper.vaginal_depth_id,6,8);
				//template.set_stat_jiggle(FPalace_helper.egg_fertility_id,0.4,0.6);
				//template.set_stat_jiggle(FPalace_helper.age_id,22,30);
				century_city_clothing_store_clerk_template = template;
			}
			return century_city_clothing_store_clerk_template;
		}
		
		private static var century_city_shoe_store_clerk_template:Character_template;
		public static function century_city_shoe_store_clerk():Character_template{
			if(century_city_shoe_store_clerk_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_female(FPalace_races.race_human());
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(22);
				creature.set_gold(75);
				
				creature.equip(FPalace_items.black_tshirt(),0);
				creature.equip(FPalace_items.shy_mask(),0);
				
				creature.personality.set_job(FPalace_classes.job_century_city_shoe_store_clerk(), creature);
				creature.personality.new_allegiance(FPalace_helper.get_humility_mob(), creature);
				
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.trade_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.valuing_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.century_city_shoe_store_clerk)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				
				template.set_stat_jiggle(FPalace_helper.str_id,7,13);
				template.set_stat_jiggle(FPalace_helper.dex_id,7,13);
				template.set_stat_jiggle(FPalace_helper.con_id,8,14);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,8,14);
				template.set_stat_jiggle(FPalace_helper.int_id,7,13);
				template.set_stat_jiggle(FPalace_helper.wis_id,9,15);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.breast_size_id, 1, 4);
				template.set_stat_jiggle(FPalace_helper.nipple_size_id,0.5,1);
				template.set_stat_jiggle(FPalace_helper.bust_id,24,36);
				template.set_stat_jiggle(FPalace_helper.waist_id,22,32);
				template.set_stat_jiggle(FPalace_helper.hips_id,24,36);
				template.set_stat_jiggle(FPalace_helper.height_id,120,160);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,10,24);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.milk_volume_id,50,125);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,2,4);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,5,7);
				template.set_stat_jiggle(FPalace_helper.vaginal_width_id,2,4);
				template.set_stat_jiggle(FPalace_helper.vaginal_depth_id,6,8);
				//template.set_stat_jiggle(FPalace_helper.egg_fertility_id,0.4,0.6);
				//template.set_stat_jiggle(FPalace_helper.age_id,22,30);
				century_city_shoe_store_clerk_template = template;
			}
			
			return century_city_shoe_store_clerk_template;
		}
		
		private static var century_city_medical_supplies_clerk_template:Character_template;
		public static function century_city_medical_supplies_clerk():Character_template{
			if(century_city_medical_supplies_clerk_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_female(FPalace_races.race_human());
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(22);
				
				creature.set_gold(75);
				
				creature.equip(FPalace_items.black_tshirt(),0);
				creature.equip(FPalace_items.shy_mask(),0);
				
				creature.personality.set_job(FPalace_classes.job_century_city_medical_supplies_clerk(), creature);
				creature.personality.new_allegiance(FPalace_helper.get_humility_mob(), creature);
				
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.trade_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.valuing_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.century_city_medical_supplies_clerk)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				
				template.set_stat_jiggle(FPalace_helper.str_id,7,13);
				template.set_stat_jiggle(FPalace_helper.dex_id,7,13);
				template.set_stat_jiggle(FPalace_helper.con_id,8,14);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,8,14);
				template.set_stat_jiggle(FPalace_helper.int_id,7,13);
				template.set_stat_jiggle(FPalace_helper.wis_id,9,15);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.breast_size_id, 1, 4);
				template.set_stat_jiggle(FPalace_helper.nipple_size_id,0.5,1);
				template.set_stat_jiggle(FPalace_helper.bust_id,24,36);
				template.set_stat_jiggle(FPalace_helper.waist_id,22,32);
				template.set_stat_jiggle(FPalace_helper.hips_id,24,36);
				template.set_stat_jiggle(FPalace_helper.height_id,120,160);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,10,24);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.milk_volume_id,50,125);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,2,4);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,5,7);
				template.set_stat_jiggle(FPalace_helper.vaginal_width_id,2,4);
				template.set_stat_jiggle(FPalace_helper.vaginal_depth_id,6,8);
				//template.set_stat_jiggle(FPalace_helper.egg_fertility_id,0.4,0.6);
				//template.set_stat_jiggle(FPalace_helper.age_id,22,30);
				century_city_medical_supplies_clerk_template = template;
			}
			return century_city_medical_supplies_clerk_template;
		}
		
		private static var fpalace_shopkeeper_template:Character_template;
		public static function fpalace_shopkeeper():Character_template{
			if(fpalace_shopkeeper_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = new Character();
				
				creature.set_move(2);//AH-HA! She stays in the right place thanks to the quest associated with her job, despite being free to go where she pleases!
				var race:Race = FPalace_races.race_goo();
				
				creature.new_body_part(FPalace_helper.new_head(race));
				creature.new_body_part(FPalace_helper.new_eyes(race,0));
				creature.new_body_part(FPalace_helper.new_torso(race));
				creature.new_body_part(FPalace_helper.new_left_arms(race));
				creature.new_body_part(FPalace_helper.new_left_hands(race));
				creature.new_body_part(FPalace_helper.new_right_arms(race));
				creature.new_body_part(FPalace_helper.new_right_hands(race));
				creature.new_body_part(FPalace_helper.new_hips(race));
				creature.new_body_part(FPalace_helper.new_left_legs(race));
				creature.new_body_part(FPalace_helper.new_left_feet(race));
				creature.new_body_part(FPalace_helper.new_right_legs(race));
				creature.new_body_part(FPalace_helper.new_right_feet(race));
				creature.new_body_part(FPalace_helper.new_breasts(race));
				creature.new_body_part(FPalace_helper.new_vagina(race));
				creature.new_body_part(FPalace_helper.new_clit(race));
				
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(11);
				
				creature.apply_affect_by_id(FPalace_helper.biomass_consumed, 165 ,0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.breast_size_id, 2 ,0,null,Body.change_stats_total);
				
				creature.set_gold(300);
				
				creature.add_to_possessions(FPalace_items.vial_of_goo());
				
				creature.equip(FPalace_items.Red_fur_overcoat(),0);
				creature.equip(FPalace_items.gold_medallion(),0);
				creature.equip(FPalace_items.gold_ring(),0);
				
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.trade_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.valuing_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.personality.set_job(FPalace_classes.job_fpalace_shopkeeper(), creature);
				creature.personality.add_conversation_topic(FPalace_topics.topic_wicked_grin());
				creature.personality.new_allegiance(FPalace_helper.get_empress_mob(), creature);
				
				creature.personality.determine_orient(creature.sex);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.fpalace_shopkeeper)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				
				template.set_stat_jiggle(FPalace_helper.str_id,7,13);
				template.set_stat_jiggle(FPalace_helper.dex_id,7,13);
				template.set_stat_jiggle(FPalace_helper.con_id,8,14);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,7,13);
				template.set_stat_jiggle(FPalace_helper.int_id,7,13);
				template.set_stat_jiggle(FPalace_helper.wis_id,9,15);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.height_id,130,164);
				template.set_stat_jiggle(FPalace_helper.biomass_consumed, 21, 350);
				template.set_stat_jiggle(FPalace_helper.breast_size_id, 2, 5);
				template.set_stat_jiggle(FPalace_helper.nipple_size_id,0.1,2);
				template.set_stat_jiggle(FPalace_helper.bust_id,24,36);
				template.set_stat_jiggle(FPalace_helper.waist_id,20,32);
				template.set_stat_jiggle(FPalace_helper.hips_id,24,36);
				//template.set_stat_jiggle(FPalace_helper.age_id,22,34);
				
				fpalace_shopkeeper_template = template;
			}
			
			return fpalace_shopkeeper_template;
		}
		
		private static var school_store_shopkeeper_template:Character_template;
		public static function school_store_shopkeeper():Character_template{
			if(school_store_shopkeeper_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_male(FPalace_races.race_human());
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(20);
				
				creature.apply_affect_by_id(FPalace_helper.age_id, -10);
				
				creature.equip(FPalace_items.tightie_whities(),0);
				creature.equip(FPalace_items.white_dress_shirt(),0);
				creature.equip(FPalace_items.plaid_blazer(),0);
				creature.equip(FPalace_items.blue_slacks(),0);
				creature.equip(FPalace_items.black_dress_shoes(),0);
				creature.equip(FPalace_items.shy_mask(),0);
				
				creature.personality.set_job(FPalace_classes.job_school_store_shopkeeper(), creature);
				creature.personality.new_allegiance(FPalace_helper.get_humility_mob(), creature);
				creature.personality.determine_orient(creature.sex);
				
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 2);
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 1);
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 1);
				creature.skills.set_skill_value(creature, FPalace_skills.trade_id, 3);
				creature.skills.set_skill_value(creature, FPalace_skills.valuing_id, 1);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.school_store_shopkeeper)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				template.set_stat_jiggle(FPalace_helper.str_id,8,14);
				template.set_stat_jiggle(FPalace_helper.dex_id,6,12);
				template.set_stat_jiggle(FPalace_helper.con_id,6,12);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,6,12);
				template.set_stat_jiggle(FPalace_helper.int_id,7,13);
				template.set_stat_jiggle(FPalace_helper.wis_id,6,12);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,7,13);
				template.set_stat_jiggle(FPalace_helper.bust_id,26,32);
				template.set_stat_jiggle(FPalace_helper.waist_id,26,32);
				template.set_stat_jiggle(FPalace_helper.hips_id,26,32);
				template.set_stat_jiggle(FPalace_helper.height_id,120,160);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,1,4);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.erection_ratio_id,0.4,0.6);
				//template.set_stat_jiggle(FPalace_helper.cum_volume_id,3,7);
				template.set_stat_jiggle(FPalace_helper.penis_length_id,4,8);
				template.set_stat_jiggle(FPalace_helper.penis_girth_id,4/3,8/3);
				template.set_stat_jiggle(FPalace_helper.balls_size_id,1,2);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,2);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,2,6);
				//template.set_stat_jiggle(FPalace_helper.semen_fertility_id,0.04,0.06);
				//template.set_stat_jiggle(FPalace_helper.age_id,12,18);
				school_store_shopkeeper_template = template;
			}
			return school_store_shopkeeper_template;
		}
		
		private static var lux_invira_inkeep_template:Character_template;
		public static function lux_invira_inkeep():Character_template{
			if(lux_invira_inkeep_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_herm(FPalace_races.race_human());
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(22);
				
				creature.set_gold(75);
				
				creature.equip(FPalace_items.Loincloth(),0);
				
				creature.personality.set_job(FPalace_classes.job_inkeep(), creature);
				creature.personality.new_allegiance(FPalace_helper.get_sin_mob(), creature);
				creature.personality.new_allegiance(FPalace_helper.get_amazon_mob(), creature);
				
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.melee_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.defence_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.trade_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.valuing_id, 2);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.flirting_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.sex_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.blowjobs_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.lux_invira_inkeep)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				
				template.set_stat_jiggle(FPalace_helper.str_id,9,15);
				template.set_stat_jiggle(FPalace_helper.dex_id,7,13);
				template.set_stat_jiggle(FPalace_helper.con_id,11,17);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,13,19);
				template.set_stat_jiggle(FPalace_helper.int_id,7,13);
				template.set_stat_jiggle(FPalace_helper.wis_id,7,13);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.breast_size_id, 3, 6);
				template.set_stat_jiggle(FPalace_helper.nipple_size_id,0.5,2);
				template.set_stat_jiggle(FPalace_helper.bust_id,30,42);
				template.set_stat_jiggle(FPalace_helper.waist_id,26,38);
				template.set_stat_jiggle(FPalace_helper.hips_id,30,42);
				template.set_stat_jiggle(FPalace_helper.height_id,170,200);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,12,36);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.erection_ratio_id,0.25,0.5);
				template.set_stat_jiggle(FPalace_helper.milk_volume_id,300,600);
				template.set_stat_jiggle(FPalace_helper.cum_volume_id,1500,2500);
				template.set_stat_jiggle(FPalace_helper.penis_length_id,18,36);
				template.set_stat_jiggle(FPalace_helper.penis_girth_id,6,12);
				template.set_stat_jiggle(FPalace_helper.balls_size_id,4,9);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,5);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,3,16);
				template.set_stat_jiggle(FPalace_helper.vaginal_width_id,1,5);
				template.set_stat_jiggle(FPalace_helper.vaginal_depth_id,3,16);
				//template.set_stat_jiggle(FPalace_helper.semen_fertility_id,0.4,0.45);
				//template.set_stat_jiggle(FPalace_helper.egg_fertility_id,0.8,0.95);
				//template.set_stat_jiggle(FPalace_helper.age_id,20,26);
				lux_invira_inkeep_template = template;
			}
			
			return lux_invira_inkeep_template;
		}
		
		private static var lux_invira_shopkeeper_template:Character_template;
		public static function lux_invira_shopkeeper():Character_template{
			if(lux_invira_shopkeeper_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_herm(FPalace_races.race_human());
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(22);
				
				creature.apply_affect_by_id(FPalace_helper.age_id, 15);
				
				creature.set_gold(75);
				
				creature.equip(FPalace_items.Loincloth(),0);
				creature.equip(FPalace_items.Red_fur_overcoat(),0);
				creature.equip(FPalace_items.gold_medallion(),0);
				creature.equip(FPalace_items.gold_ring(),0);
				
				creature.personality.set_job(FPalace_classes.job_lux_invira_general_merchant(), creature);
				creature.personality.new_allegiance(FPalace_helper.get_sin_mob(), creature);
				creature.personality.new_allegiance(FPalace_helper.get_amazon_mob(), creature);
				
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.melee_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.defence_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.trade_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.valuing_id, 2);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.flirting_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.sex_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.blowjobs_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.lux_invira_shopkeeper)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				
				template.set_stat_jiggle(FPalace_helper.str_id,9,15);
				template.set_stat_jiggle(FPalace_helper.dex_id,7,13);
				template.set_stat_jiggle(FPalace_helper.con_id,11,17);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,13,19);
				template.set_stat_jiggle(FPalace_helper.int_id,7,13);
				template.set_stat_jiggle(FPalace_helper.wis_id,7,13);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.breast_size_id, 3, 6);
				template.set_stat_jiggle(FPalace_helper.nipple_size_id,0.5,2);
				template.set_stat_jiggle(FPalace_helper.bust_id,30,42);
				template.set_stat_jiggle(FPalace_helper.waist_id,26,38);
				template.set_stat_jiggle(FPalace_helper.hips_id,30,42);
				template.set_stat_jiggle(FPalace_helper.height_id,170,200);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,12,36);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.erection_ratio_id,0.25,0.5);
				template.set_stat_jiggle(FPalace_helper.milk_volume_id,300,600);
				template.set_stat_jiggle(FPalace_helper.cum_volume_id,1500,2500);
				template.set_stat_jiggle(FPalace_helper.penis_length_id,18,36);
				template.set_stat_jiggle(FPalace_helper.penis_girth_id,6,12);
				template.set_stat_jiggle(FPalace_helper.balls_size_id,4,9);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,5);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,3,16);
				template.set_stat_jiggle(FPalace_helper.vaginal_width_id,1,5);
				template.set_stat_jiggle(FPalace_helper.vaginal_depth_id,3,16);
				//template.set_stat_jiggle(FPalace_helper.semen_fertility_id,0.4,0.45);
				//template.set_stat_jiggle(FPalace_helper.egg_fertility_id,0.8,0.95);
				//template.set_stat_jiggle(FPalace_helper.age_id,35,41);
				
				lux_invira_shopkeeper_template = template;
			}
			
			return lux_invira_shopkeeper_template;
		}
		
		private static var lux_invira_lingerie_template:Character_template;
		public static function lux_invira_lingerie():Character_template{
			if(lux_invira_lingerie_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_herm(FPalace_races.race_human());
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(22);
				
				creature.apply_affect_by_id(FPalace_helper.age_id, 15);
				
				creature.set_gold(75);
				
				creature.equip(FPalace_items.Loincloth(),0);
				creature.equip(FPalace_items.red_bra(),0);
				creature.equip(FPalace_items.gold_medallion(),0);
				creature.equip(FPalace_items.gold_ring(),0);
				creature.personality.set_job(FPalace_classes.job_lux_invira_lingerie(), creature);
				
				creature.personality.new_allegiance(FPalace_helper.get_sin_mob(), creature);
				creature.personality.new_allegiance(FPalace_helper.get_amazon_mob(), creature);
				
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.melee_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.defence_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.trade_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.valuing_id, 2);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.flirting_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.sex_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.blowjobs_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.lux_invira_lingerie)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				
				template.set_stat_jiggle(FPalace_helper.str_id,9,15);
				template.set_stat_jiggle(FPalace_helper.dex_id,7,13);
				template.set_stat_jiggle(FPalace_helper.con_id,11,17);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,13,19);
				template.set_stat_jiggle(FPalace_helper.int_id,7,13);
				template.set_stat_jiggle(FPalace_helper.wis_id,7,13);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.breast_size_id, 3, 6);
				template.set_stat_jiggle(FPalace_helper.nipple_size_id,0.5,2);
				template.set_stat_jiggle(FPalace_helper.bust_id,30,42);
				template.set_stat_jiggle(FPalace_helper.waist_id,26,38);
				template.set_stat_jiggle(FPalace_helper.hips_id,30,42);
				template.set_stat_jiggle(FPalace_helper.height_id,170,200);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,12,36);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.erection_ratio_id,0.25,0.5);
				template.set_stat_jiggle(FPalace_helper.milk_volume_id,300,600);
				template.set_stat_jiggle(FPalace_helper.cum_volume_id,1500,2500);
				template.set_stat_jiggle(FPalace_helper.penis_length_id,18,36);
				template.set_stat_jiggle(FPalace_helper.penis_girth_id,6,12);
				template.set_stat_jiggle(FPalace_helper.balls_size_id,4,9);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,5);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,3,16);
				template.set_stat_jiggle(FPalace_helper.vaginal_width_id,1,5);
				template.set_stat_jiggle(FPalace_helper.vaginal_depth_id,3,16);
				//template.set_stat_jiggle(FPalace_helper.semen_fertility_id,0.4,0.45);
				//template.set_stat_jiggle(FPalace_helper.egg_fertility_id,0.8,0.95);
				//template.set_stat_jiggle(FPalace_helper.age_id,35,41);
				lux_invira_lingerie_template = template;
			}
			return lux_invira_lingerie_template;
		}
		
		private static var mensch_cow_guy_template:Character_template;
		public static function mensch_cow_guy():Character_template{
			if(mensch_cow_guy_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_male(FPalace_races.race_anthro_bovine())
				creature.new_body_part(FPalace_helper.new_horns(FPalace_races.race_anthro_bovine()));
				creature.new_body_part(FPalace_helper.new_tail(FPalace_races.race_anthro_bovine()));
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(20);
				creature.set_move(2);
				creature.set_gold(10);
				
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.personality.new_allegiance(FPalace_helper.get_temperance_mob(), creature);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.mensch_cow_guy)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				template.set_stat_jiggle(FPalace_helper.str_id,11,17);
				template.set_stat_jiggle(FPalace_helper.dex_id,4,11);
				template.set_stat_jiggle(FPalace_helper.con_id,10,16);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,16,22);
				template.set_stat_jiggle(FPalace_helper.int_id,5,11);
				template.set_stat_jiggle(FPalace_helper.wis_id,7,13);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.bust_id,24,36);
				template.set_stat_jiggle(FPalace_helper.waist_id,20,32);
				template.set_stat_jiggle(FPalace_helper.hips_id,24,36);
				template.set_stat_jiggle(FPalace_helper.height_id,160,210);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,2,36);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,5);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,3,16);
				//template.set_stat_jiggle(FPalace_helper.age_id,16,24);
				mensch_cow_guy_template = template;
			}
			return mensch_cow_guy_template;
		}
		
		private static var mensch_cow_girl_template:Character_template;
		public static function mensch_cow_girl():Character_template{
			if(mensch_cow_girl_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_female(FPalace_races.race_anthro_bovine())
				creature.new_body_part(FPalace_helper.new_udder(FPalace_races.race_anthro_bovine()));
				creature.new_body_part(FPalace_helper.new_tail(FPalace_races.race_anthro_bovine()));
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(20);
				creature.set_move(2);
				creature.set_gold(10);
				
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.personality.new_allegiance(FPalace_helper.get_temperance_mob(), creature);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.mensch_cow_girl)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				template.set_stat_jiggle(FPalace_helper.str_id,11,17);
				template.set_stat_jiggle(FPalace_helper.dex_id,4,11);
				template.set_stat_jiggle(FPalace_helper.con_id,10,16);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,16,22);
				template.set_stat_jiggle(FPalace_helper.int_id,5,11);
				template.set_stat_jiggle(FPalace_helper.wis_id,7,13);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.bust_id,24,36);
				template.set_stat_jiggle(FPalace_helper.waist_id,20,32);
				template.set_stat_jiggle(FPalace_helper.hips_id,24,36);
				template.set_stat_jiggle(FPalace_helper.height_id,160,210);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,2,36);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,5);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,3,16);
				//template.set_stat_jiggle(FPalace_helper.age_id,16,24);
				mensch_cow_girl_template = template;
			}
			return mensch_cow_girl_template;
		}
		
		private static var mensch_citizen_template:Character_template;
		public static function mensch_citizen():Character_template{
			if(mensch_citizen_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_female(FPalace_races.race_human());
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(20);
				creature.set_move(2);
				creature.set_gold(5);
				
				creature.personality.new_allegiance(FPalace_helper.get_temperance_mob(), creature);
				
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.mensch_citizen)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				template.set_stat_jiggle(FPalace_helper.str_id,7,13);
				template.set_stat_jiggle(FPalace_helper.dex_id,12,19);
				template.set_stat_jiggle(FPalace_helper.con_id,8,14);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,13,19);
				template.set_stat_jiggle(FPalace_helper.int_id,6,12);
				template.set_stat_jiggle(FPalace_helper.wis_id,10,14);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,10,16);
				template.set_stat_jiggle(FPalace_helper.bust_id,23,30);
				template.set_stat_jiggle(FPalace_helper.waist_id,20,24);
				template.set_stat_jiggle(FPalace_helper.hips_id,22,32);
				template.set_stat_jiggle(FPalace_helper.height_id,150,190);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,2,20);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,4);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,3,8);
				//template.set_stat_jiggle(FPalace_helper.age_id,20,26);
				mensch_citizen_template = template;
			}
			return mensch_citizen_template;
		}
		
		private static var mensch_woman_template:Character_template;
		public static function mensch_woman():Character_template{
			if(mensch_woman_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_female(FPalace_races.race_human());
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(20);
				creature.set_move(2);
				creature.set_gold(25);
				
				creature.personality.new_allegiance(FPalace_helper.get_temperance_mob(), creature);
				
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.mensch_woman)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				template.set_stat_jiggle(FPalace_helper.str_id,7,13);
				template.set_stat_jiggle(FPalace_helper.dex_id,12,19);
				template.set_stat_jiggle(FPalace_helper.con_id,8,14);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,13,19);
				template.set_stat_jiggle(FPalace_helper.int_id,6,12);
				template.set_stat_jiggle(FPalace_helper.wis_id,10,14);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,10,16);
				template.set_stat_jiggle(FPalace_helper.breast_size_id, 4, 6);
				template.set_stat_jiggle(FPalace_helper.nipple_size_id,0.5,2);
				template.set_stat_jiggle(FPalace_helper.bust_id,23,30);
				template.set_stat_jiggle(FPalace_helper.waist_id,20,24);
				template.set_stat_jiggle(FPalace_helper.hips_id,22,32);
				template.set_stat_jiggle(FPalace_helper.height_id,150,190);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,2,20);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.milk_volume_id,50,150);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,4);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,3,8);
				template.set_stat_jiggle(FPalace_helper.vaginal_width_id,1,4);
				template.set_stat_jiggle(FPalace_helper.vaginal_depth_id,3,8);
				//template.set_stat_jiggle(FPalace_helper.egg_fertility_id,0.4,0.6);
				//template.set_stat_jiggle(FPalace_helper.age_id,20,26);
				mensch_woman_template = template;
			}
			return mensch_woman_template;
		}
		
		private static var mensch_inkeep_template:Character_template;
		public static function mensch_inkeep():Character_template{
			if(mensch_inkeep_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_female(FPalace_races.race_anthro_feline());
				creature.new_body_part(FPalace_helper.new_breasts(FPalace_races.race_anthro_feline()));
				creature.new_body_part(FPalace_helper.new_breasts(FPalace_races.race_anthro_feline()));
				creature.new_body_part(FPalace_helper.new_tail(FPalace_races.race_anthro_feline()));
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(20);
				
				creature.set_gold(250);
				
				creature.equip(FPalace_items.fancy_pee_cap(),0);
				creature.equip(FPalace_items.red_g_string(),0);
				creature.equip(FPalace_items.Blue_silk_shirt(),0);
				creature.equip(FPalace_items.Blue_silk_pants(),0);
				creature.equip(FPalace_items.black_dress_shoes(),0);
				
				creature.hold(FPalace_items.whip(),0);
				
				creature.personality.new_allegiance(FPalace_helper.get_temperance_mob(), creature);
				creature.personality.set_job(FPalace_classes.job_inkeep(), creature);
				
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.trade_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.valuing_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.covert_id, 10);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.mensch_inkeep)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				template.set_stat_jiggle(FPalace_helper.str_id,7,13);
				template.set_stat_jiggle(FPalace_helper.dex_id,12,19);
				template.set_stat_jiggle(FPalace_helper.con_id,8,14);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,13,19);
				template.set_stat_jiggle(FPalace_helper.int_id,6,12);
				template.set_stat_jiggle(FPalace_helper.wis_id,10,14);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,10,16);
				template.set_stat_jiggle(FPalace_helper.breast_size_id, 4, 6);
				template.set_stat_jiggle(FPalace_helper.nipple_size_id,0.5,2);
				template.set_stat_jiggle(FPalace_helper.bust_id,23,30);
				template.set_stat_jiggle(FPalace_helper.waist_id,20,24);
				template.set_stat_jiggle(FPalace_helper.hips_id,22,32);
				template.set_stat_jiggle(FPalace_helper.height_id,150,190);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,2,20);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.milk_volume_id,50,150);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,4);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,3,8);
				template.set_stat_jiggle(FPalace_helper.vaginal_width_id,1,4);
				template.set_stat_jiggle(FPalace_helper.vaginal_depth_id,3,8);
				//template.set_stat_jiggle(FPalace_helper.egg_fertility_id,0.4,0.6);
				//template.set_stat_jiggle(FPalace_helper.age_id,20,26);
				mensch_inkeep_template = template;
			}
			return mensch_inkeep_template;
		}
		
		private static var mensch_slaver_template:Character_template;
		public static function mensch_slaver():Character_template{
			if(mensch_slaver_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_female(FPalace_races.race_anthro_feline());
				creature.new_body_part(FPalace_helper.new_breasts(FPalace_races.race_anthro_feline()));
				creature.new_body_part(FPalace_helper.new_breasts(FPalace_races.race_anthro_feline()));
				creature.new_body_part(FPalace_helper.new_tail(FPalace_races.race_anthro_feline()));
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(20);
				creature.set_gold(250);
				
				creature.equip(FPalace_items.fancy_pee_cap(),0);
				creature.equip(FPalace_items.red_g_string(),0);
				creature.equip(FPalace_items.Blue_silk_shirt(),0);
				creature.equip(FPalace_items.Blue_silk_pants(),0);
				creature.equip(FPalace_items.Red_fur_overcoat(),0);
				creature.equip(FPalace_items.gold_medallion(),0);
				creature.equip(FPalace_items.gold_ring(),0);
				creature.equip(FPalace_items.black_dress_shoes(),0);
				
				creature.hold(FPalace_items.whip(),0);
				
				creature.personality.new_allegiance(FPalace_helper.get_temperance_mob(), creature);
				creature.personality.set_job(FPalace_classes.job_mensch_slaver(), creature);
				
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.trade_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.valuing_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.covert_id, 10);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.mensch_slaver)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				template.set_stat_jiggle(FPalace_helper.str_id,7,13);
				template.set_stat_jiggle(FPalace_helper.dex_id,12,19);
				template.set_stat_jiggle(FPalace_helper.con_id,8,14);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,13,19);
				template.set_stat_jiggle(FPalace_helper.int_id,6,12);
				template.set_stat_jiggle(FPalace_helper.wis_id,10,14);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,10,16);
				template.set_stat_jiggle(FPalace_helper.breast_size_id, 4, 6);
				template.set_stat_jiggle(FPalace_helper.nipple_size_id,0.5,2);
				template.set_stat_jiggle(FPalace_helper.bust_id,23,30);
				template.set_stat_jiggle(FPalace_helper.waist_id,20,24);
				template.set_stat_jiggle(FPalace_helper.hips_id,22,32);
				template.set_stat_jiggle(FPalace_helper.height_id,150,190);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,2,20);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.milk_volume_id,50,150);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,4);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,3,8);
				template.set_stat_jiggle(FPalace_helper.vaginal_width_id,1,4);
				template.set_stat_jiggle(FPalace_helper.vaginal_depth_id,3,8);
				//template.set_stat_jiggle(FPalace_helper.egg_fertility_id,0.4,0.6);
				//template.set_stat_jiggle(FPalace_helper.age_id,20,26);
				mensch_slaver_template = template;
			}
			return mensch_slaver_template;
		}
		
		private static var mensch_smith_template:Character_template;
		public static function mensch_smith():Character_template{
			if(mensch_smith_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_herm(FPalace_races.race_anthro_bovine())
				creature.new_body_part(FPalace_helper.new_horns(FPalace_races.race_anthro_bovine()));
				creature.new_body_part(FPalace_helper.new_udder(FPalace_races.race_anthro_bovine()));
				creature.new_body_part(FPalace_helper.new_tail(FPalace_races.race_anthro_bovine()));
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(20);
				
				creature.set_gold(10);
				
				//Should have a hammer and leather overalls
				
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.melee_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.defence_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.personality.new_allegiance(FPalace_helper.get_temperance_mob(), creature);
				creature.personality.set_job(FPalace_classes.job_mensch_smith(), creature);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.mensch_smith)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				template.set_stat_jiggle(FPalace_helper.str_id,11,17);
				template.set_stat_jiggle(FPalace_helper.dex_id,4,11);
				template.set_stat_jiggle(FPalace_helper.con_id,10,16);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,16,22);
				template.set_stat_jiggle(FPalace_helper.int_id,5,11);
				template.set_stat_jiggle(FPalace_helper.wis_id,7,13);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.breast_size_id, 4, 8);
				template.set_stat_jiggle(FPalace_helper.nipple_size_id,2,4);
				template.set_stat_jiggle(FPalace_helper.bust_id,24,36);
				template.set_stat_jiggle(FPalace_helper.waist_id,20,32);
				template.set_stat_jiggle(FPalace_helper.hips_id,24,36);
				template.set_stat_jiggle(FPalace_helper.height_id,160,210);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,2,36);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.erection_ratio_id,0.15,0.25);
				template.set_stat_jiggle(FPalace_helper.milk_volume_id,1250,2000);
				template.set_stat_jiggle(FPalace_helper.cum_volume_id,800,1100);
				template.set_stat_jiggle(FPalace_helper.penis_length_id,30,42);
				template.set_stat_jiggle(FPalace_helper.penis_girth_id,10,14);
				template.set_stat_jiggle(FPalace_helper.balls_size_id,2,6);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,5);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,3,16);
				template.set_stat_jiggle(FPalace_helper.vaginal_width_id,8,14);
				template.set_stat_jiggle(FPalace_helper.vaginal_depth_id,28,34);
				//template.set_stat_jiggle(FPalace_helper.semen_fertility_id,0.25,0.4);
				//template.set_stat_jiggle(FPalace_helper.egg_fertility_id,0.7,0.9);
				//template.set_stat_jiggle(FPalace_helper.age_id,16,24);
				mensch_smith_template = template;
			}
			return mensch_smith_template;
		}
		
		private static var mensch_librarian_template:Character_template;
		public static function mensch_librarian():Character_template{
			if(mensch_librarian_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_male(FPalace_races.race_human());
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(20);
				
				creature.set_gold(50);
				
				//not sure on equipment
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.trade_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.valuing_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.personality.set_job(FPalace_classes.job_mensch_librarian(), creature);
				creature.personality.new_allegiance(FPalace_helper.get_temperance_mob(), creature);
				creature.personality.determine_orient(creature.sex);
							
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.mensch_librarian)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				
				template.set_stat_jiggle(FPalace_helper.str_id,9,15);
				template.set_stat_jiggle(FPalace_helper.dex_id,7,13);
				template.set_stat_jiggle(FPalace_helper.con_id,7,13);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,7,13);
				template.set_stat_jiggle(FPalace_helper.int_id,9,15);
				template.set_stat_jiggle(FPalace_helper.wis_id,9,15);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.bust_id,28,38);
				template.set_stat_jiggle(FPalace_helper.waist_id,26,38);
				template.set_stat_jiggle(FPalace_helper.hips_id,28,38);
				template.set_stat_jiggle(FPalace_helper.height_id,130,180);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,1,4);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.erection_ratio_id,0.4,0.6);
				//template.set_stat_jiggle(FPalace_helper.cum_volume_id,4,8);
				template.set_stat_jiggle(FPalace_helper.penis_length_id,4,8);
				template.set_stat_jiggle(FPalace_helper.penis_girth_id,4/3,8/3);
				template.set_stat_jiggle(FPalace_helper.balls_size_id,1,2);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,2);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,2,6);
				//template.set_stat_jiggle(FPalace_helper.semen_fertility_id,0.04,0.06);
				//template.set_stat_jiggle(FPalace_helper.age_id,21,30);
				mensch_librarian_template = template;
			}
			return mensch_librarian_template;
		}
		
		private static var benevol_donkey_citizen_template:Character_template;
		public static function benevol_donkey_citizen():Character_template{
			if(benevol_donkey_citizen_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_male(FPalace_races.race_anthro_donkey());
				creature.new_body_part(FPalace_helper.new_tail(FPalace_races.race_anthro_donkey()));
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(22);
				creature.set_move(2);
				creature.set_gold(10);
				
				creature.personality.new_allegiance(FPalace_helper.get_kindness_mob(), creature);
				
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.benevol_donkey_citizen)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				
				template.set_stat_jiggle(FPalace_helper.str_id,11,17);
				template.set_stat_jiggle(FPalace_helper.dex_id,5,11);
				template.set_stat_jiggle(FPalace_helper.con_id,7,13);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,7,13);
				template.set_stat_jiggle(FPalace_helper.int_id,8,14);
				template.set_stat_jiggle(FPalace_helper.wis_id,9,15);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,7,13);
				template.set_stat_jiggle(FPalace_helper.bust_id,28,38);
				template.set_stat_jiggle(FPalace_helper.waist_id,26,38);
				template.set_stat_jiggle(FPalace_helper.hips_id,28,38);
				//template.set_stat_jiggle(FPalace_helper.height_id,120,140);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,1,4);
				//template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				//template.set_stat_jiggle(FPalace_helper.penis_length_id,4,8);
				//template.set_stat_jiggle(FPalace_helper.penis_girth_id,4/3,8/3);
				//template.set_stat_jiggle(FPalace_helper.balls_size_id,1,2);
				//template.set_stat_jiggle(FPalace_helper.anal_width_id,1,2);
				//template.set_stat_jiggle(FPalace_helper.anal_depth_id,2,6);
				//template.set_stat_jiggle(FPalace_helper.semen_fertility_id,0.04,0.06);
				//template.set_stat_jiggle(FPalace_helper.age_id,110,150);
				benevol_donkey_citizen_template = template;
			}
			
			return benevol_donkey_citizen_template;
		}
		
		private static var benevol_female_donkey_template:Character_template;
		public static function benevol_female_donkey():Character_template{
			if(benevol_female_donkey_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_female(FPalace_races.race_anthro_donkey());
				creature.new_body_part(FPalace_helper.new_tail(FPalace_races.race_anthro_donkey()));
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(22);
				creature.set_move(2);
				creature.set_gold(10);
				
				creature.personality.new_allegiance(FPalace_helper.get_kindness_mob(), creature);
				
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.benevol_female_donkey)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				
				template.set_stat_jiggle(FPalace_helper.str_id,11,17);
				template.set_stat_jiggle(FPalace_helper.dex_id,5,11);
				template.set_stat_jiggle(FPalace_helper.con_id,7,13);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,7,13);
				template.set_stat_jiggle(FPalace_helper.int_id,8,14);
				template.set_stat_jiggle(FPalace_helper.wis_id,9,15);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,7,13);
				//template.set_stat_jiggle(FPalace_helper.bust_id,28,38);
				//template.set_stat_jiggle(FPalace_helper.waist_id,26,38);
				//template.set_stat_jiggle(FPalace_helper.hips_id,28,38);
				//template.set_stat_jiggle(FPalace_helper.height_id,120,140);
				//template.set_stat_jiggle(FPalace_helper.hair_length_id,1,4);
				//template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				//template.set_stat_jiggle(FPalace_helper.penis_length_id,4,8);
				//template.set_stat_jiggle(FPalace_helper.penis_girth_id,4/3,8/3);
				//template.set_stat_jiggle(FPalace_helper.balls_size_id,1,2);
				//template.set_stat_jiggle(FPalace_helper.anal_width_id,1,2);
				//template.set_stat_jiggle(FPalace_helper.anal_depth_id,2,6);
				//template.set_stat_jiggle(FPalace_helper.semen_fertility_id,0.04,0.06);
				//template.set_stat_jiggle(FPalace_helper.age_id,110,150);
				
				benevol_female_donkey_template = template;
			}
			
			return benevol_female_donkey_template;
		}
		
		private static var benevol_human_citizen_template:Character_template;
		public static function benevol_human_citizen():Character_template{
			if(benevol_human_citizen_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_male(FPalace_races.race_human());
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(22);
				creature.set_move(2);
				creature.set_gold(10);
				
				creature.personality.new_allegiance(FPalace_helper.get_kindness_mob(), creature);
				
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.benevol_human_citizen)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				
				template.set_stat_jiggle(FPalace_helper.str_id,11,17);
				template.set_stat_jiggle(FPalace_helper.dex_id,5,11);
				template.set_stat_jiggle(FPalace_helper.con_id,7,13);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,7,13);
				template.set_stat_jiggle(FPalace_helper.int_id,8,14);
				template.set_stat_jiggle(FPalace_helper.wis_id,9,15);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,7,13);
				
				benevol_human_citizen_template = template;
			}
			
			return benevol_human_citizen_template;
		}
		
		private static var benevol_female_citizen_template:Character_template;
		public static function benevol_female_citizen():Character_template{
			if(benevol_female_citizen_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_female(FPalace_races.race_human());
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(22);
				creature.set_move(2);
				creature.set_gold(10);
				
				creature.personality.new_allegiance(FPalace_helper.get_kindness_mob(), creature);
				
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.benevol_female_citizen)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				
				template.set_stat_jiggle(FPalace_helper.str_id,11,17);
				template.set_stat_jiggle(FPalace_helper.dex_id,5,11);
				template.set_stat_jiggle(FPalace_helper.con_id,7,13);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,7,13);
				template.set_stat_jiggle(FPalace_helper.int_id,8,14);
				template.set_stat_jiggle(FPalace_helper.wis_id,9,15);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,7,13);
				
				benevol_female_citizen_template = template;
			}
			
			return benevol_female_citizen_template;
		}
		
		private static var benevol_inkeep_template:Character_template;
		public static function benevol_inkeep():Character_template{
			if(benevol_inkeep_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_male(FPalace_races.race_anthro_donkey());
				creature.new_body_part(FPalace_helper.new_tail(FPalace_races.race_anthro_donkey()));
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(22);
				
				creature.set_gold(10);
				
				creature.personality.determine_orient(creature.sex);
				creature.personality.new_allegiance(FPalace_helper.get_kindness_mob(), creature);
				creature.personality.set_job(FPalace_classes.job_inkeep(), creature);
				
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.benevol_inkeep)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				
				template.set_stat_jiggle(FPalace_helper.str_id,11,17);
				template.set_stat_jiggle(FPalace_helper.dex_id,5,11);
				template.set_stat_jiggle(FPalace_helper.con_id,7,13);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,7,13);
				template.set_stat_jiggle(FPalace_helper.int_id,8,14);
				template.set_stat_jiggle(FPalace_helper.wis_id,9,15);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,7,13);
				template.set_stat_jiggle(FPalace_helper.bust_id,28,38);
				template.set_stat_jiggle(FPalace_helper.waist_id,26,38);
				template.set_stat_jiggle(FPalace_helper.hips_id,28,38);
				//template.set_stat_jiggle(FPalace_helper.height_id,120,140);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,1,4);
				//template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				//template.set_stat_jiggle(FPalace_helper.penis_length_id,4,8);
				//template.set_stat_jiggle(FPalace_helper.penis_girth_id,4/3,8/3);
				//template.set_stat_jiggle(FPalace_helper.balls_size_id,1,2);
				//template.set_stat_jiggle(FPalace_helper.anal_width_id,1,2);
				//template.set_stat_jiggle(FPalace_helper.anal_depth_id,2,6);
				//template.set_stat_jiggle(FPalace_helper.semen_fertility_id,0.04,0.06);
				//template.set_stat_jiggle(FPalace_helper.age_id,110,150);
				
				benevol_inkeep_template = template;
			}
			
			return benevol_inkeep_template;
		}
		
		private static var benevol_jeweller_template:Character_template;
		public static function benevol_jeweller():Character_template{
			if(benevol_jeweller_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_male(FPalace_races.race_dwarf());
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(22);
				
				creature.set_gold(75);
				
				creature.personality.set_job(FPalace_classes.job_benevol_jeweller(), creature);
				creature.personality.determine_orient(creature.sex);
				creature.personality.new_allegiance(FPalace_helper.get_kindness_mob(), creature);
				
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.trade_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.valuing_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.benevol_jeweller)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				
				template.set_stat_jiggle(FPalace_helper.str_id,11,17);
				template.set_stat_jiggle(FPalace_helper.dex_id,5,11);
				template.set_stat_jiggle(FPalace_helper.con_id,7,13);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,7,13);
				template.set_stat_jiggle(FPalace_helper.int_id,8,14);
				template.set_stat_jiggle(FPalace_helper.wis_id,9,15);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,7,13);
				template.set_stat_jiggle(FPalace_helper.bust_id,28,38);
				template.set_stat_jiggle(FPalace_helper.waist_id,26,38);
				template.set_stat_jiggle(FPalace_helper.hips_id,28,38);
				template.set_stat_jiggle(FPalace_helper.height_id,120,140);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,1,4);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.erection_ratio_id,0.4,0.6);
				//template.set_stat_jiggle(FPalace_helper.cum_volume_id,4,8);
				template.set_stat_jiggle(FPalace_helper.penis_length_id,4,8);
				template.set_stat_jiggle(FPalace_helper.penis_girth_id,4/3,8/3);
				template.set_stat_jiggle(FPalace_helper.balls_size_id,1,2);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,2);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,2,6);
				//template.set_stat_jiggle(FPalace_helper.semen_fertility_id,0.04,0.06);
				//template.set_stat_jiggle(FPalace_helper.age_id,110,150);
				
				benevol_jeweller_template = template;
			}
			return benevol_jeweller_template;
		}
		
		private static var benevol_librarian_template:Character_template;
		public static function benevol_librarian():Character_template{
			if(benevol_librarian_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_male(FPalace_races.race_human());
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(20);
				
				creature.set_gold(50);
				
				//not sure on equipment
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.trade_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.valuing_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.personality.set_job(FPalace_classes.job_benevol_librarian(), creature);
				creature.personality.new_allegiance(FPalace_helper.get_kindness_mob(), creature);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.benevol_librarian)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				
				template.set_stat_jiggle(FPalace_helper.str_id,9,15);
				template.set_stat_jiggle(FPalace_helper.dex_id,7,13);
				template.set_stat_jiggle(FPalace_helper.con_id,7,13);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,7,13);
				template.set_stat_jiggle(FPalace_helper.int_id,9,15);
				template.set_stat_jiggle(FPalace_helper.wis_id,9,15);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.bust_id,28,38);
				template.set_stat_jiggle(FPalace_helper.waist_id,26,38);
				template.set_stat_jiggle(FPalace_helper.hips_id,28,38);
				template.set_stat_jiggle(FPalace_helper.height_id,130,180);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,1,4);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.erection_ratio_id,0.4,0.6);
				//template.set_stat_jiggle(FPalace_helper.cum_volume_id,4,8);
				template.set_stat_jiggle(FPalace_helper.penis_length_id,4,8);
				template.set_stat_jiggle(FPalace_helper.penis_girth_id,4/3,8/3);
				template.set_stat_jiggle(FPalace_helper.balls_size_id,1,2);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,2);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,2,6);
				//template.set_stat_jiggle(FPalace_helper.semen_fertility_id,0.04,0.06);
				//template.set_stat_jiggle(FPalace_helper.age_id,21,30);
				
				benevol_librarian_template = template;
			}
			return benevol_librarian_template;
		}
		
		private static var benevol_herbalist_template:Character_template;
		public static function benevol_herbalist():Character_template{
			if(benevol_herbalist_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_female(FPalace_races.race_human());
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(22);
				creature.set_gold(75);
				
				//don't have items for equip yet... should have the appropriate outfit
				
				creature.personality.set_job(FPalace_classes.job_benevol_herbalist(), creature);
				creature.personality.new_allegiance(FPalace_helper.get_kindness_mob(), creature);
				
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.trade_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.valuing_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.benevol_herbalist)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				
				template.set_stat_jiggle(FPalace_helper.str_id,7,13);
				template.set_stat_jiggle(FPalace_helper.dex_id,7,13);
				template.set_stat_jiggle(FPalace_helper.con_id,8,14);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,8,14);
				template.set_stat_jiggle(FPalace_helper.int_id,7,13);
				template.set_stat_jiggle(FPalace_helper.wis_id,9,15);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.breast_size_id, 1, 4);
				template.set_stat_jiggle(FPalace_helper.nipple_size_id,0.5,1);
				template.set_stat_jiggle(FPalace_helper.bust_id,24,36);
				template.set_stat_jiggle(FPalace_helper.waist_id,22,32);
				template.set_stat_jiggle(FPalace_helper.hips_id,24,36);
				template.set_stat_jiggle(FPalace_helper.height_id,120,160);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,10,24);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.milk_volume_id,50,125);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,2,4);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,5,7);
				template.set_stat_jiggle(FPalace_helper.vaginal_width_id,2,4);
				template.set_stat_jiggle(FPalace_helper.vaginal_depth_id,6,8);
				//template.set_stat_jiggle(FPalace_helper.egg_fertility_id,0.4,0.6);
				//template.set_stat_jiggle(FPalace_helper.age_id,22,30);
				
				benevol_herbalist_template = template;
			}
			
			return benevol_herbalist_template;
		}
		
		private static var industria_female_citizen_template:Character_template;
		public static function industria_female_citizen():Character_template{
			if(industria_female_citizen_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_female(FPalace_races.race_human());
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(22);
				creature.set_move(2);
				creature.set_gold(7);
				
				//don't have items for equip yet... should have the appropriate outfit
				
				creature.personality.new_allegiance(FPalace_helper.get_diligence_mob(), creature);
				
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.industria_female_citizen)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				
				template.set_stat_jiggle(FPalace_helper.str_id,7,13);
				template.set_stat_jiggle(FPalace_helper.dex_id,7,13);
				template.set_stat_jiggle(FPalace_helper.con_id,8,14);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,8,14);
				template.set_stat_jiggle(FPalace_helper.int_id,7,13);
				template.set_stat_jiggle(FPalace_helper.wis_id,9,15);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.breast_size_id, 1, 4);
				template.set_stat_jiggle(FPalace_helper.nipple_size_id,0.5,1);
				template.set_stat_jiggle(FPalace_helper.bust_id,24,36);
				template.set_stat_jiggle(FPalace_helper.waist_id,22,32);
				template.set_stat_jiggle(FPalace_helper.hips_id,24,36);
				template.set_stat_jiggle(FPalace_helper.height_id,120,160);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,10,24);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.milk_volume_id,50,125);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,2,4);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,5,7);
				template.set_stat_jiggle(FPalace_helper.vaginal_width_id,2,4);
				template.set_stat_jiggle(FPalace_helper.vaginal_depth_id,6,8);
				//template.set_stat_jiggle(FPalace_helper.egg_fertility_id,0.4,0.6);
				//template.set_stat_jiggle(FPalace_helper.age_id,17,27);
				
				industria_female_citizen_template = template;
			}
			
			return industria_female_citizen_template;
		}
		
		private static var industria_male_citizen_template:Character_template;
		public static function industria_male_citizen():Character_template{
			if(industria_male_citizen_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_male(FPalace_races.race_human());
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(22);
				creature.set_move(2);
				creature.set_gold(7);
				
				//don't have items for equip yet... should have the appropriate outfit
				
				creature.personality.new_allegiance(FPalace_helper.get_diligence_mob(), creature);
				
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.industria_male_citizen)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				
				template.set_stat_jiggle(FPalace_helper.str_id,7,13);
				template.set_stat_jiggle(FPalace_helper.dex_id,7,13);
				template.set_stat_jiggle(FPalace_helper.con_id,8,14);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,8,14);
				template.set_stat_jiggle(FPalace_helper.int_id,7,13);
				template.set_stat_jiggle(FPalace_helper.wis_id,9,15);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.bust_id,24,36);
				template.set_stat_jiggle(FPalace_helper.waist_id,22,32);
				template.set_stat_jiggle(FPalace_helper.hips_id,24,36);
				template.set_stat_jiggle(FPalace_helper.height_id,120,160);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,10,24);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,2,4);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,5,7);
				//template.set_stat_jiggle(FPalace_helper.age_id,17,27);
				industria_male_citizen_template = template;
			}
			
			return industria_male_citizen_template;
		}
		
		private static var industria_seamstress_template:Character_template;
		public static function industria_seamstress():Character_template{
			if(industria_seamstress_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_female(FPalace_races.race_human());
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(22);
				
				creature.set_gold(75);
				
				//don't have items for equip yet... should have the appropriate outfit
				
				creature.personality.set_job(FPalace_classes.job_industria_seamstress(), creature);
				creature.personality.determine_orient(creature.sex);
				creature.personality.new_allegiance(FPalace_helper.get_diligence_mob(), creature);
				
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.trade_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.valuing_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.industria_seamstress)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				
				template.set_stat_jiggle(FPalace_helper.str_id,7,13);
				template.set_stat_jiggle(FPalace_helper.dex_id,7,13);
				template.set_stat_jiggle(FPalace_helper.con_id,8,14);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,8,14);
				template.set_stat_jiggle(FPalace_helper.int_id,7,13);
				template.set_stat_jiggle(FPalace_helper.wis_id,9,15);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.breast_size_id, 1, 4);
				template.set_stat_jiggle(FPalace_helper.nipple_size_id,0.5,1);
				template.set_stat_jiggle(FPalace_helper.bust_id,24,36);
				template.set_stat_jiggle(FPalace_helper.waist_id,22,32);
				template.set_stat_jiggle(FPalace_helper.hips_id,24,36);
				template.set_stat_jiggle(FPalace_helper.height_id,120,160);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,10,24);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.milk_volume_id,50,125);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,2,4);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,5,7);
				template.set_stat_jiggle(FPalace_helper.vaginal_width_id,2,4);
				template.set_stat_jiggle(FPalace_helper.vaginal_depth_id,6,8);
				//template.set_stat_jiggle(FPalace_helper.egg_fertility_id,0.4,0.6);
				//template.set_stat_jiggle(FPalace_helper.age_id,22,30);
				
				industria_seamstress_template = template;
			}
			
			return industria_seamstress_template;
		}
		
		private static var industria_inkeep_template:Character_template;
		public static function industria_inkeep():Character_template{
			if(industria_inkeep_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_female(FPalace_races.race_anthro_lizard());
				creature.new_body_part(FPalace_helper.new_tail(FPalace_races.race_anthro_lizard()));
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(22);
				
				creature.set_gold(75);
				
				//don't have items for equip yet... should have the appropriate outfit
				
				creature.personality.set_job(FPalace_classes.job_inkeep(), creature);
				creature.personality.new_allegiance(FPalace_helper.get_diligence_mob(), creature);
				creature.personality.determine_orient(creature.sex);
				
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.trade_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.valuing_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.industria_inkeep)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				
				template.set_stat_jiggle(FPalace_helper.str_id,7,13);
				template.set_stat_jiggle(FPalace_helper.dex_id,7,13);
				template.set_stat_jiggle(FPalace_helper.con_id,8,14);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,8,14);
				template.set_stat_jiggle(FPalace_helper.int_id,7,13);
				template.set_stat_jiggle(FPalace_helper.wis_id,9,15);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.breast_size_id, 1, 4);
				template.set_stat_jiggle(FPalace_helper.nipple_size_id,0.5,1);
				template.set_stat_jiggle(FPalace_helper.bust_id,24,36);
				template.set_stat_jiggle(FPalace_helper.waist_id,22,32);
				template.set_stat_jiggle(FPalace_helper.hips_id,24,36);
				template.set_stat_jiggle(FPalace_helper.height_id,120,160);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,10,24);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.milk_volume_id,50,125);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,2,4);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,5,7);
				template.set_stat_jiggle(FPalace_helper.vaginal_width_id,2,4);
				template.set_stat_jiggle(FPalace_helper.vaginal_depth_id,6,8);
				//template.set_stat_jiggle(FPalace_helper.egg_fertility_id,0.4,0.6);
				//template.set_stat_jiggle(FPalace_helper.age_id,22,30);
				industria_inkeep_template = template;
			}
			
			return industria_inkeep_template;
		}
		
		private static var industria_grocer_template:Character_template;
		public static function industria_grocer():Character_template{
			if(industria_grocer_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_female(FPalace_races.race_anthro_lizard());
				creature.new_body_part(FPalace_helper.new_tail(FPalace_races.race_anthro_lizard()));
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(22);
				
				creature.set_gold(75);
				
				//don't have items for equip yet... should have the appropriate outfit
				
				creature.personality.set_job(FPalace_classes.job_industria_grocer(), creature);
				creature.personality.new_allegiance(FPalace_helper.get_diligence_mob(), creature);
				
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.trade_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.valuing_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.industria_grocer)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				
				template.set_stat_jiggle(FPalace_helper.str_id,7,13);
				template.set_stat_jiggle(FPalace_helper.dex_id,7,13);
				template.set_stat_jiggle(FPalace_helper.con_id,8,14);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,8,14);
				template.set_stat_jiggle(FPalace_helper.int_id,7,13);
				template.set_stat_jiggle(FPalace_helper.wis_id,9,15);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.breast_size_id, 1, 4);
				template.set_stat_jiggle(FPalace_helper.nipple_size_id,0.5,1);
				template.set_stat_jiggle(FPalace_helper.bust_id,24,36);
				template.set_stat_jiggle(FPalace_helper.waist_id,22,32);
				template.set_stat_jiggle(FPalace_helper.hips_id,24,36);
				template.set_stat_jiggle(FPalace_helper.height_id,120,160);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,10,24);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.milk_volume_id,50,125);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,2,4);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,5,7);
				template.set_stat_jiggle(FPalace_helper.vaginal_width_id,2,4);
				template.set_stat_jiggle(FPalace_helper.vaginal_depth_id,6,8);
				//template.set_stat_jiggle(FPalace_helper.egg_fertility_id,0.4,0.6);
				//template.set_stat_jiggle(FPalace_helper.age_id,22,30);
				industria_grocer_template = template;
			}
			
			return industria_grocer_template;
		}
		
		private static var aghapei_citizen_template:Character_template;
		public static function aghapei_citizen():Character_template{
			if(aghapei_citizen_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_male(FPalace_races.race_human());
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(11);
				creature.set_move(2);
				creature.set_gold(3);
				
				creature.personality.new_allegiance(FPalace_helper.get_charity_mob(), creature);
				
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.melee_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.unarmed_id, 2);
				creature.skills.set_skill_value(creature, FPalace_skills.defence_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.aghapei_citizen)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				template.set_stat_jiggle(FPalace_helper.str_id,7,13);
				template.set_stat_jiggle(FPalace_helper.dex_id,12,19);
				template.set_stat_jiggle(FPalace_helper.con_id,8,14);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,13,19);
				template.set_stat_jiggle(FPalace_helper.int_id,6,12);
				template.set_stat_jiggle(FPalace_helper.wis_id,10,14);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.bust_id,20,30);
				template.set_stat_jiggle(FPalace_helper.waist_id,20,24);
				template.set_stat_jiggle(FPalace_helper.hips_id,22,32);
				template.set_stat_jiggle(FPalace_helper.height_id,150,190);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,2,20);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,4);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,3,8);
				//template.set_stat_jiggle(FPalace_helper.age_id,13,19);
				
				aghapei_citizen_template = template;
			}
			return aghapei_citizen_template;
		}
		
		private static var aghapei_woman_template:Character_template;
		public static function aghapei_woman():Character_template{
			if(aghapei_woman_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_female(FPalace_races.race_human());
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(11);
				creature.set_move(2);
				creature.set_gold(3);
				
				creature.personality.new_allegiance(FPalace_helper.get_charity_mob(), creature);
				
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.melee_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.unarmed_id, 2);
				creature.skills.set_skill_value(creature, FPalace_skills.defence_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.aghapei_woman)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				template.set_stat_jiggle(FPalace_helper.str_id,7,13);
				template.set_stat_jiggle(FPalace_helper.dex_id,12,19);
				template.set_stat_jiggle(FPalace_helper.con_id,8,14);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,13,19);
				template.set_stat_jiggle(FPalace_helper.int_id,6,12);
				template.set_stat_jiggle(FPalace_helper.wis_id,10,14);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.bust_id,20,30);
				template.set_stat_jiggle(FPalace_helper.waist_id,20,24);
				template.set_stat_jiggle(FPalace_helper.hips_id,22,32);
				template.set_stat_jiggle(FPalace_helper.height_id,150,190);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,2,20);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,4);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,3,8);
				//template.set_stat_jiggle(FPalace_helper.age_id,13,19);
				aghapei_woman_template = template;
			}
			return aghapei_woman_template;
		}
		
		private static var aghapei_inkeep_template:Character_template;
		public static function aghapei_inkeep():Character_template{
			if(aghapei_inkeep_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_female(FPalace_races.race_anthro_feline());
				creature.new_body_part(FPalace_helper.new_tail(FPalace_races.race_anthro_feline()));
				creature.new_body_part(FPalace_helper.new_breasts(FPalace_races.race_anthro_feline()));
				creature.new_body_part(FPalace_helper.new_breasts(FPalace_races.race_anthro_feline()));
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(11);
				
				creature.equip(FPalace_items.dirty_haltertop(),0);
				creature.equip(FPalace_items.ripped_jean_shorts(),0);
				
				creature.add_to_possessions(FPalace_items.catnip());
				
				creature.set_gold(3);
				
				creature.personality.new_allegiance(FPalace_helper.get_charity_mob(), creature);
				creature.personality.set_job(FPalace_classes.job_inkeep(), creature);
				
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.melee_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.unarmed_id, 2);
				creature.skills.set_skill_value(creature, FPalace_skills.defence_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.aghapei_inkeep)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				template.set_stat_jiggle(FPalace_helper.str_id,7,13);
				template.set_stat_jiggle(FPalace_helper.dex_id,12,19);
				template.set_stat_jiggle(FPalace_helper.con_id,8,14);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,13,19);
				template.set_stat_jiggle(FPalace_helper.int_id,6,12);
				template.set_stat_jiggle(FPalace_helper.wis_id,10,14);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.breast_size_id, 1, 5);
				template.set_stat_jiggle(FPalace_helper.nipple_size_id,0.5,2);
				template.set_stat_jiggle(FPalace_helper.bust_id,20,30);
				template.set_stat_jiggle(FPalace_helper.waist_id,20,24);
				template.set_stat_jiggle(FPalace_helper.hips_id,22,32);
				template.set_stat_jiggle(FPalace_helper.height_id,150,190);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,2,20);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.milk_volume_id,50,150);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,4);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,3,8);
				template.set_stat_jiggle(FPalace_helper.vaginal_width_id,1,4);
				template.set_stat_jiggle(FPalace_helper.vaginal_depth_id,3,8);
				//template.set_stat_jiggle(FPalace_helper.egg_fertility_id,0.4,0.6);
				//template.set_stat_jiggle(FPalace_helper.age_id,13,19);
				
				aghapei_inkeep_template = template;
			}
			return aghapei_inkeep_template;
		}
		
		private static var aghapei_seamstress_template:Character_template;
		public static function aghapei_seamstress():Character_template{
			if(aghapei_seamstress_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_female(FPalace_races.race_anthro_feline());
				creature.new_body_part(FPalace_helper.new_tail(FPalace_races.race_anthro_feline()));
				creature.new_body_part(FPalace_helper.new_breasts(FPalace_races.race_anthro_feline()));
				creature.new_body_part(FPalace_helper.new_breasts(FPalace_races.race_anthro_feline()));
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(11);
				
				creature.equip(FPalace_items.dirty_haltertop(),0);
				creature.equip(FPalace_items.ripped_jean_shorts(),0);
				
				creature.add_to_possessions(FPalace_items.catnip());
				
				creature.set_gold(3);
				
				creature.personality.new_allegiance(FPalace_helper.get_charity_mob(), creature);
				creature.personality.set_job(FPalace_classes.job_aghapei_seamstress(), creature);
				
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.melee_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.unarmed_id, 2);
				creature.skills.set_skill_value(creature, FPalace_skills.defence_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.aghapei_seamstress)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				template.set_stat_jiggle(FPalace_helper.str_id,7,13);
				template.set_stat_jiggle(FPalace_helper.dex_id,12,19);
				template.set_stat_jiggle(FPalace_helper.con_id,8,14);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,13,19);
				template.set_stat_jiggle(FPalace_helper.int_id,6,12);
				template.set_stat_jiggle(FPalace_helper.wis_id,10,14);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.breast_size_id, 1, 5);
				template.set_stat_jiggle(FPalace_helper.nipple_size_id,0.5,2);
				template.set_stat_jiggle(FPalace_helper.bust_id,20,30);
				template.set_stat_jiggle(FPalace_helper.waist_id,20,24);
				template.set_stat_jiggle(FPalace_helper.hips_id,22,32);
				template.set_stat_jiggle(FPalace_helper.height_id,150,190);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,2,20);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.milk_volume_id,50,150);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,4);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,3,8);
				template.set_stat_jiggle(FPalace_helper.vaginal_width_id,1,4);
				template.set_stat_jiggle(FPalace_helper.vaginal_depth_id,3,8);
				//template.set_stat_jiggle(FPalace_helper.egg_fertility_id,0.4,0.6);
				//template.set_stat_jiggle(FPalace_helper.age_id,13,19);
				aghapei_seamstress_template = template;
			}
			return aghapei_seamstress_template;
		}
		
		private static var aghapei_librarian_template:Character_template;
		public static function aghapei_librarian():Character_template{
			if(aghapei_librarian_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_male(FPalace_races.race_anthro_feline());
				creature.new_body_part(FPalace_helper.new_tail(FPalace_races.race_anthro_feline()));
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(20);
				
				creature.set_gold(50);
				
				//not sure on equipment
				
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.trade_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.valuing_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.personality.new_allegiance(FPalace_helper.get_charity_mob(), creature);
				creature.personality.set_job(FPalace_classes.job_aghapei_librarian(), creature);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.aghapei_librarian)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				
				template.set_stat_jiggle(FPalace_helper.str_id,9,15);
				template.set_stat_jiggle(FPalace_helper.dex_id,11,17);
				template.set_stat_jiggle(FPalace_helper.con_id,7,13);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,11,17);
				template.set_stat_jiggle(FPalace_helper.int_id,7,13);
				template.set_stat_jiggle(FPalace_helper.wis_id,7,13);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.bust_id,28,38);
				template.set_stat_jiggle(FPalace_helper.waist_id,26,38);
				template.set_stat_jiggle(FPalace_helper.hips_id,28,38);
				template.set_stat_jiggle(FPalace_helper.height_id,130,180);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,1,4);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.erection_ratio_id,0.4,0.6);
				//template.set_stat_jiggle(FPalace_helper.cum_volume_id,4,8);
				template.set_stat_jiggle(FPalace_helper.penis_length_id,4,8);
				template.set_stat_jiggle(FPalace_helper.penis_girth_id,4/3,8/3);
				template.set_stat_jiggle(FPalace_helper.balls_size_id,1,2);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,2);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,2,6);
				//template.set_stat_jiggle(FPalace_helper.semen_fertility_id,0.04,0.06);
				//template.set_stat_jiggle(FPalace_helper.age_id,21,30);
				
				aghapei_librarian_template = template;
			}
			return aghapei_librarian_template;
		}
		
		private static var aghapei_guru_template:Character_template;
		public static function aghapei_guru():Character_template{
			if(aghapei_guru_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_male(FPalace_races.race_human());
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(20);
				
				creature.personality.new_allegiance(FPalace_helper.get_charity_mob(), creature);
				creature.personality.set_job(FPalace_classes.job_aghapei_guru(), creature);
				
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.trade_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.valuing_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.set_gold(50);
				
				creature.equip(FPalace_items.gold_ring(),0);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.aghapei_guru)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				
				template.set_stat_jiggle(FPalace_helper.str_id,9,15);
				template.set_stat_jiggle(FPalace_helper.dex_id,7,13);
				template.set_stat_jiggle(FPalace_helper.con_id,7,13);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,7,13);
				template.set_stat_jiggle(FPalace_helper.int_id,9,15);
				template.set_stat_jiggle(FPalace_helper.wis_id,9,15);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.bust_id,28,38);
				template.set_stat_jiggle(FPalace_helper.waist_id,26,38);
				template.set_stat_jiggle(FPalace_helper.hips_id,28,38);
				template.set_stat_jiggle(FPalace_helper.height_id,130,180);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,1,4);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.erection_ratio_id,0.4,0.6);
				//template.set_stat_jiggle(FPalace_helper.cum_volume_id,4,8);
				template.set_stat_jiggle(FPalace_helper.penis_length_id,4,8);
				template.set_stat_jiggle(FPalace_helper.penis_girth_id,4/3,8/3);
				template.set_stat_jiggle(FPalace_helper.balls_size_id,1,2);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,2);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,2,6);
				//template.set_stat_jiggle(FPalace_helper.semen_fertility_id,0.04,0.06);
				//template.set_stat_jiggle(FPalace_helper.age_id,45,60);
				
				aghapei_guru_template = template;
			}
			return aghapei_guru_template;
		}
		
		private static var ahimsa_inkeep_template:Character_template;
		public static function ahimsa_inkeep():Character_template{
			if(ahimsa_inkeep_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_male(FPalace_races.race_elf());
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(22);
				
				creature.set_gold(75);
				//Dunno what he should be wearing... thinking a toga of some sort
				creature.equip(FPalace_items.red_tunic(),0);
				
				creature.personality.set_job(FPalace_classes.job_inkeep(), creature);
				creature.personality.new_allegiance(FPalace_helper.get_patience_mob(), creature);
				
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.trade_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.valuing_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.ahimsa_inkeep)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				
				template.set_stat_jiggle(FPalace_helper.str_id,7,13);
				template.set_stat_jiggle(FPalace_helper.dex_id,9,15);
				template.set_stat_jiggle(FPalace_helper.con_id,7,13);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,9,15);
				template.set_stat_jiggle(FPalace_helper.int_id,8,14);
				template.set_stat_jiggle(FPalace_helper.wis_id,9,15);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,7,13);
				template.set_stat_jiggle(FPalace_helper.bust_id,24,34);
				template.set_stat_jiggle(FPalace_helper.waist_id,22,34);
				template.set_stat_jiggle(FPalace_helper.hips_id,24,34);
				template.set_stat_jiggle(FPalace_helper.height_id,140,180);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,1,4);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.erection_ratio_id,0.4,0.6);
				//template.set_stat_jiggle(FPalace_helper.cum_volume_id,4,8);
				template.set_stat_jiggle(FPalace_helper.penis_length_id,4,8);
				template.set_stat_jiggle(FPalace_helper.penis_girth_id,4/3,8/3);
				template.set_stat_jiggle(FPalace_helper.balls_size_id,1,2);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,2);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,2,6);
				//template.set_stat_jiggle(FPalace_helper.semen_fertility_id,0.04,0.06);
				//template.set_stat_jiggle(FPalace_helper.age_id,220,300);
				
				ahimsa_inkeep_template = template;
			}
			
			return ahimsa_inkeep_template;
		}
		
		private static var ahimsa_shopkeeper_template:Character_template;
		public static function ahimsa_shopkeeper():Character_template{
			if(ahimsa_shopkeeper_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_male(FPalace_races.race_elf());
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(22);
				
				creature.set_gold(75);
				//Dunno what he should be wearing... thinking a toga of some sort
				creature.equip(FPalace_items.red_tunic(),0);
				creature.equip(FPalace_items.gold_medallion(),0);
				creature.equip(FPalace_items.gold_ring(),0);
				
				creature.personality.set_job(FPalace_classes.job_ahimsa_shopkeeper(), creature);
				creature.personality.determine_orient(creature.sex);
				creature.personality.new_allegiance(FPalace_helper.get_patience_mob(), creature);
				
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.trade_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.valuing_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.ahimsa_shopkeeper)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				
				template.set_stat_jiggle(FPalace_helper.str_id,7,13);
				template.set_stat_jiggle(FPalace_helper.dex_id,9,15);
				template.set_stat_jiggle(FPalace_helper.con_id,7,13);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,9,15);
				template.set_stat_jiggle(FPalace_helper.int_id,8,14);
				template.set_stat_jiggle(FPalace_helper.wis_id,9,15);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,7,13);
				template.set_stat_jiggle(FPalace_helper.bust_id,24,34);
				template.set_stat_jiggle(FPalace_helper.waist_id,22,34);
				template.set_stat_jiggle(FPalace_helper.hips_id,24,34);
				template.set_stat_jiggle(FPalace_helper.height_id,140,180);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,1,4);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.erection_ratio_id,0.4,0.6);
				//template.set_stat_jiggle(FPalace_helper.cum_volume_id,4,8);
				template.set_stat_jiggle(FPalace_helper.penis_length_id,4,8);
				template.set_stat_jiggle(FPalace_helper.penis_girth_id,4/3,8/3);
				template.set_stat_jiggle(FPalace_helper.balls_size_id,1,2);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,2);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,2,6);
				//template.set_stat_jiggle(FPalace_helper.semen_fertility_id,0.04,0.06);
				//template.set_stat_jiggle(FPalace_helper.age_id,220,300);
				
				ahimsa_shopkeeper_template = template;
			}
			
			return ahimsa_shopkeeper_template;
		}
		
		private static var ahimsa_librarian_template:Character_template;
		public static function ahimsa_librarian():Character_template{
			if(ahimsa_librarian_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_male(FPalace_races.race_elf());
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(22);
				
				creature.set_gold(75);
				//Dunno what he should be wearing... thinking a toga of some sort
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				
				creature.personality.set_job(FPalace_classes.job_ahimsa_librarian(), creature);
				creature.personality.determine_orient(creature.sex);
				creature.personality.new_allegiance(FPalace_helper.get_patience_mob(), creature);
				
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.trade_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.valuing_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				/*
				trace("(FPalace_npcs.ahimsa_librarian)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				
				template.set_stat_jiggle(FPalace_helper.str_id,7,13);
				template.set_stat_jiggle(FPalace_helper.dex_id,9,15);
				template.set_stat_jiggle(FPalace_helper.con_id,7,13);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,9,15);
				template.set_stat_jiggle(FPalace_helper.int_id,8,14);
				template.set_stat_jiggle(FPalace_helper.wis_id,9,15);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,7,13);
				template.set_stat_jiggle(FPalace_helper.bust_id,24,34);
				template.set_stat_jiggle(FPalace_helper.waist_id,22,34);
				template.set_stat_jiggle(FPalace_helper.hips_id,24,34);
				template.set_stat_jiggle(FPalace_helper.height_id,140,180);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,1,4);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.erection_ratio_id,0.4,0.6);
				//template.set_stat_jiggle(FPalace_helper.cum_volume_id,4,8);
				template.set_stat_jiggle(FPalace_helper.penis_length_id,4,8);
				template.set_stat_jiggle(FPalace_helper.penis_girth_id,4/3,8/3);
				template.set_stat_jiggle(FPalace_helper.balls_size_id,1,2);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,2);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,2,6);
				//template.set_stat_jiggle(FPalace_helper.semen_fertility_id,0.04,0.06);
				//template.set_stat_jiggle(FPalace_helper.age_id,220,300);
				
				ahimsa_librarian_template = template;
			}
			
			return ahimsa_librarian_template;
		}
		
		private static var ahimsa_cobler_template:Character_template;
		public static function ahimsa_cobler():Character_template{
			if(ahimsa_cobler_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_male(FPalace_races.race_elf());
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(22);
				
				creature.set_gold(75);
				//Dunno what he should be wearing... thinking a toga of some sort
				creature.equip(FPalace_items.red_tunic(),0);
				creature.equip(FPalace_items.gold_medallion(),0);
				creature.equip(FPalace_items.gold_ring(),0);
				
				creature.personality.set_job(FPalace_classes.job_ahimsa_cobler(), creature);
				creature.personality.determine_orient(creature.sex);
				creature.personality.new_allegiance(FPalace_helper.get_patience_mob(), creature);
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.trade_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.valuing_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.ahimsa_cobler)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				
				template.set_stat_jiggle(FPalace_helper.str_id,7,13);
				template.set_stat_jiggle(FPalace_helper.dex_id,9,15);
				template.set_stat_jiggle(FPalace_helper.con_id,7,13);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,9,15);
				template.set_stat_jiggle(FPalace_helper.int_id,8,14);
				template.set_stat_jiggle(FPalace_helper.wis_id,9,15);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,7,13);
				template.set_stat_jiggle(FPalace_helper.bust_id,24,34);
				template.set_stat_jiggle(FPalace_helper.waist_id,22,34);
				template.set_stat_jiggle(FPalace_helper.hips_id,24,34);
				template.set_stat_jiggle(FPalace_helper.height_id,140,180);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,1,4);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.erection_ratio_id,0.4,0.6);
				//template.set_stat_jiggle(FPalace_helper.cum_volume_id,4,8);
				template.set_stat_jiggle(FPalace_helper.penis_length_id,4,8);
				template.set_stat_jiggle(FPalace_helper.penis_girth_id,4/3,8/3);
				template.set_stat_jiggle(FPalace_helper.balls_size_id,1,2);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,2);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,2,6);
				//template.set_stat_jiggle(FPalace_helper.semen_fertility_id,0.04,0.06);
				//template.set_stat_jiggle(FPalace_helper.age_id,220,300);
				
				ahimsa_cobler_template = template;
			}
			
			return ahimsa_cobler_template;
		}
		
		private static var ahimsa_smith_template:Character_template;
		public static function ahimsa_smith():Character_template{
			if(ahimsa_smith_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_male(FPalace_races.race_elf());
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(22);
				
				creature.set_gold(75);
				
				//Dunno what he should be wearing... thinking a toga of some sort
				creature.equip(FPalace_items.red_tunic(),0);
				creature.equip(FPalace_items.gold_medallion(),0);
				creature.equip(FPalace_items.gold_ring(),0);
				
				creature.personality.set_job(FPalace_classes.job_ahimsa_smith(), creature);
				creature.personality.new_allegiance(FPalace_helper.get_patience_mob(), creature);
				
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.trade_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.valuing_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.crafting_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.smithing_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.ahimsa_smith)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				
				template.set_stat_jiggle(FPalace_helper.str_id,7,13);
				template.set_stat_jiggle(FPalace_helper.dex_id,9,15);
				template.set_stat_jiggle(FPalace_helper.con_id,7,13);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,9,15);
				template.set_stat_jiggle(FPalace_helper.int_id,8,14);
				template.set_stat_jiggle(FPalace_helper.wis_id,9,15);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,7,13);
				template.set_stat_jiggle(FPalace_helper.bust_id,24,34);
				template.set_stat_jiggle(FPalace_helper.waist_id,22,34);
				template.set_stat_jiggle(FPalace_helper.hips_id,24,34);
				template.set_stat_jiggle(FPalace_helper.height_id,140,180);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,1,4);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.erection_ratio_id,0.4,0.6);
				//template.set_stat_jiggle(FPalace_helper.cum_volume_id,4,8);
				template.set_stat_jiggle(FPalace_helper.penis_length_id,4,8);
				template.set_stat_jiggle(FPalace_helper.penis_girth_id,4/3,8/3);
				template.set_stat_jiggle(FPalace_helper.balls_size_id,1,2);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,2);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,2,6);
				//template.set_stat_jiggle(FPalace_helper.semen_fertility_id,0.04,0.06);
				//template.set_stat_jiggle(FPalace_helper.age_id,220,300);
				
				ahimsa_smith_template = template;
			}
			
			return ahimsa_smith_template;
		}
		
		private static var ahimsa_seamstress_template:Character_template;
		public static function ahimsa_seamstress():Character_template{
			if(ahimsa_seamstress_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_female(FPalace_races.race_elf());
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(11);
				
				creature.equip(FPalace_items.silver_circlet(),0);
				creature.equip(FPalace_items.brown_elvish_gown(),0);
				creature.equip(FPalace_items.green_leather_sandals(),0);
							
				creature.hold(FPalace_items.elvish_rapier(),0);
							
				creature.add_to_possessions(FPalace_items.elvish_bread());
				
				creature.set_gold(75);
				
				creature.personality.new_allegiance(FPalace_helper.get_patience_mob(), creature);
				creature.personality.set_job(FPalace_classes.job_ahimsa_seamstress(), creature);
				
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.melee_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.one_handed_id, 2);
				creature.skills.set_skill_value(creature, FPalace_skills.defence_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.trade_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.valuing_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.ahimsa_seamstress)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				template.set_stat_jiggle(FPalace_helper.str_id,5,11);
				template.set_stat_jiggle(FPalace_helper.dex_id,10,16);
				template.set_stat_jiggle(FPalace_helper.con_id,8,14);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,11,17);
				template.set_stat_jiggle(FPalace_helper.int_id,7,13);
				template.set_stat_jiggle(FPalace_helper.wis_id,11,17);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,7,13);
				template.set_stat_jiggle(FPalace_helper.breast_size_id, 1, 6);
				template.set_stat_jiggle(FPalace_helper.nipple_size_id,0.5,2);
				template.set_stat_jiggle(FPalace_helper.bust_id,20,30);
				template.set_stat_jiggle(FPalace_helper.waist_id,20,24);
				template.set_stat_jiggle(FPalace_helper.hips_id,22,32);
				template.set_stat_jiggle(FPalace_helper.height_id,120,170);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,2,36);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.milk_volume_id,50,150);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,4);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,3,8);
				template.set_stat_jiggle(FPalace_helper.vaginal_width_id,1,4);
				template.set_stat_jiggle(FPalace_helper.vaginal_depth_id,3,8);
				//template.set_stat_jiggle(FPalace_helper.egg_fertility_id,0.4,0.6);
				//template.set_stat_jiggle(FPalace_helper.age_id,190,350);
				
				ahimsa_seamstress_template = template;
			}
			
			return ahimsa_seamstress_template;
		}
		
		private static var ahimsa_doctor_template:Character_template;
		public static function ahimsa_doctor():Character_template{
			if(ahimsa_doctor_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_male(FPalace_races.race_elf());
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(22);
				
				creature.set_gold(75);
				
				//Dunno what he should be wearing... thinking a toga of some sort
				creature.equip(FPalace_items.gold_medallion(),0);
				creature.equip(FPalace_items.gold_ring(),0);
				
				creature.hold(FPalace_items.scalpel(),0);
				
				creature.personality.set_job(FPalace_classes.job_ahimsa_doctor(), creature);
				creature.personality.new_allegiance(FPalace_helper.get_patience_mob(), creature);
				
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.trade_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.valuing_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.ahimsa_doctor)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				
				template.set_stat_jiggle(FPalace_helper.str_id,7,13);
				template.set_stat_jiggle(FPalace_helper.dex_id,9,15);
				template.set_stat_jiggle(FPalace_helper.con_id,7,13);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,9,15);
				template.set_stat_jiggle(FPalace_helper.int_id,10,16);
				template.set_stat_jiggle(FPalace_helper.wis_id,9,15);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,7,13);
				template.set_stat_jiggle(FPalace_helper.bust_id,24,34);
				template.set_stat_jiggle(FPalace_helper.waist_id,22,34);
				template.set_stat_jiggle(FPalace_helper.hips_id,24,34);
				template.set_stat_jiggle(FPalace_helper.height_id,140,180);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,1,4);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.erection_ratio_id,0.4,0.6);
				//template.set_stat_jiggle(FPalace_helper.cum_volume_id,4,8);
				template.set_stat_jiggle(FPalace_helper.penis_length_id,4,8);
				template.set_stat_jiggle(FPalace_helper.penis_girth_id,4/3,8/3);
				template.set_stat_jiggle(FPalace_helper.balls_size_id,1,2);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,2);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,2,6);
				//template.set_stat_jiggle(FPalace_helper.semen_fertility_id,0.04,0.06);
				//template.set_stat_jiggle(FPalace_helper.age_id,220,300);
				
				ahimsa_doctor_template = template;
			}
			
			return ahimsa_doctor_template;
		}
		
		private static var female_human_castilla_template:Character_template;
		public static function female_human_castilla():Character_template{
			if(female_human_castilla_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_female(FPalace_races.race_human());
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(22);
				creature.set_move(2);
				creature.set_gold(5);
				
				//don't have items for equip yet... should have the appropriate outfit for being in a hive
				
				creature.personality.new_allegiance(FPalace_helper.get_chastity_mob(), creature);
				
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.equip(FPalace_items.chastity_belt(),0);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.female_human_castilla)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				
				template.set_stat_jiggle(FPalace_helper.str_id,7,13);
				template.set_stat_jiggle(FPalace_helper.dex_id,7,13);
				template.set_stat_jiggle(FPalace_helper.con_id,8,14);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,8,14);
				template.set_stat_jiggle(FPalace_helper.int_id,7,13);
				template.set_stat_jiggle(FPalace_helper.wis_id,9,15);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.breast_size_id, 1, 4);
				template.set_stat_jiggle(FPalace_helper.nipple_size_id,0.5,1);
				template.set_stat_jiggle(FPalace_helper.bust_id,24,36);
				template.set_stat_jiggle(FPalace_helper.waist_id,22,32);
				template.set_stat_jiggle(FPalace_helper.hips_id,24,36);
				template.set_stat_jiggle(FPalace_helper.height_id,120,160);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,10,24);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.milk_volume_id,50,125);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,2,4);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,5,7);
				template.set_stat_jiggle(FPalace_helper.vaginal_width_id,2,4);
				template.set_stat_jiggle(FPalace_helper.vaginal_depth_id,6,8);
				//template.set_stat_jiggle(FPalace_helper.egg_fertility_id,0.4,0.6);
				//template.set_stat_jiggle(FPalace_helper.age_id,17,28);
				
				female_human_castilla_template = template;
			}
			
			return female_human_castilla_template;
		}
		
		private static var male_human_castilla_template:Character_template;
		public static function male_human_castilla():Character_template{
			if(male_human_castilla_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_male(FPalace_races.race_human());
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(20);
				creature.set_gold(5);
				creature.set_move(2);
				creature.hold(FPalace_items.knife(),0);
				
				creature.personality.new_allegiance(FPalace_helper.get_chastity_mob(), creature);
				
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.male_human_castilla)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				
				template.set_stat_jiggle(FPalace_helper.str_id,9,15);
				template.set_stat_jiggle(FPalace_helper.dex_id,7,13);
				template.set_stat_jiggle(FPalace_helper.con_id,7,13);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,7,13);
				template.set_stat_jiggle(FPalace_helper.int_id,9,15);
				template.set_stat_jiggle(FPalace_helper.wis_id,9,15);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.bust_id,28,38);
				template.set_stat_jiggle(FPalace_helper.waist_id,26,38);
				template.set_stat_jiggle(FPalace_helper.hips_id,28,38);
				template.set_stat_jiggle(FPalace_helper.height_id,130,180);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,1,4);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.erection_ratio_id,0.4,0.6);
				//template.set_stat_jiggle(FPalace_helper.cum_volume_id,4,8);
				template.set_stat_jiggle(FPalace_helper.penis_length_id,4,8);
				template.set_stat_jiggle(FPalace_helper.penis_girth_id,4/3,8/3);
				template.set_stat_jiggle(FPalace_helper.balls_size_id,1,2);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,2);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,2,6);
				//template.set_stat_jiggle(FPalace_helper.semen_fertility_id,0.04,0.06);
				//template.set_stat_jiggle(FPalace_helper.age_id,21,30);
				
				male_human_castilla_template = template;
			}
			return male_human_castilla_template;
		}
		
		private static var female_canine_castilla_template:Character_template;
		public static function female_canine_castilla():Character_template{
			if(female_canine_castilla_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_female(FPalace_races.race_anthro_canine());
				creature.new_body_part(FPalace_helper.new_tail(FPalace_races.race_anthro_canine()));
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(22);
				creature.set_move(2);
				creature.set_gold(5);
				
				//don't have items for equip yet... should have the appropriate outfit for being in a hive
				
				creature.personality.new_allegiance(FPalace_helper.get_chastity_mob(), creature);
				
				creature.equip(FPalace_items.chastity_belt(),0);
				
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.female_canine_castilla)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				
				template.set_stat_jiggle(FPalace_helper.str_id,7,13);
				template.set_stat_jiggle(FPalace_helper.dex_id,7,13);
				template.set_stat_jiggle(FPalace_helper.con_id,8,14);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,8,14);
				template.set_stat_jiggle(FPalace_helper.int_id,7,13);
				template.set_stat_jiggle(FPalace_helper.wis_id,9,15);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.breast_size_id, 1, 4);
				template.set_stat_jiggle(FPalace_helper.nipple_size_id,0.5,1);
				template.set_stat_jiggle(FPalace_helper.bust_id,24,36);
				template.set_stat_jiggle(FPalace_helper.waist_id,22,32);
				template.set_stat_jiggle(FPalace_helper.hips_id,24,36);
				template.set_stat_jiggle(FPalace_helper.height_id,120,160);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,10,24);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.milk_volume_id,50,125);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,2,4);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,5,7);
				template.set_stat_jiggle(FPalace_helper.vaginal_width_id,2,4);
				template.set_stat_jiggle(FPalace_helper.vaginal_depth_id,6,8);
				//template.set_stat_jiggle(FPalace_helper.egg_fertility_id,0.4,0.6);
				//template.set_stat_jiggle(FPalace_helper.age_id,17,28);
				
				female_canine_castilla_template = template;
			}
			
			return female_canine_castilla_template;
		}
		
		private static var male_canine_castilla_template:Character_template;
		public static function male_canine_castilla():Character_template{
			if(male_canine_castilla_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_male(FPalace_races.race_anthro_canine());
				creature.new_body_part(FPalace_helper.new_tail(FPalace_races.race_anthro_canine()));
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(20);
				creature.set_gold(5);
				creature.set_move(2);
				creature.hold(FPalace_items.knife(),0);
				
				creature.personality.new_allegiance(FPalace_helper.get_chastity_mob(), creature);
				
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.male_canine_castilla)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				
				template.set_stat_jiggle(FPalace_helper.str_id,9,15);
				template.set_stat_jiggle(FPalace_helper.dex_id,7,13);
				template.set_stat_jiggle(FPalace_helper.con_id,7,13);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,7,13);
				template.set_stat_jiggle(FPalace_helper.int_id,9,15);
				template.set_stat_jiggle(FPalace_helper.wis_id,9,15);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.bust_id,28,38);
				template.set_stat_jiggle(FPalace_helper.waist_id,26,38);
				template.set_stat_jiggle(FPalace_helper.hips_id,28,38);
				template.set_stat_jiggle(FPalace_helper.height_id,130,180);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,1,4);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.erection_ratio_id,0.4,0.6);
				//template.set_stat_jiggle(FPalace_helper.cum_volume_id,4,8);
				template.set_stat_jiggle(FPalace_helper.penis_length_id,4,8);
				template.set_stat_jiggle(FPalace_helper.penis_girth_id,4/3,8/3);
				template.set_stat_jiggle(FPalace_helper.balls_size_id,1,2);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,2);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,2,6);
				//template.set_stat_jiggle(FPalace_helper.semen_fertility_id,0.04,0.06);
				//template.set_stat_jiggle(FPalace_helper.age_id,21,30);
				
				male_canine_castilla_template = template;
			}
			
			return male_canine_castilla_template;
		}
		
		private static var castilla_seamstress_template:Character_template;
		public static function castilla_seamstress():Character_template{
			if(castilla_seamstress_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_female(FPalace_races.race_human());
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(22);
				
				creature.set_gold(75);
				
				creature.equip(FPalace_items.chastity_belt(),0);
				
				creature.personality.set_job(FPalace_classes.job_castilla_seamstress(), creature);
				creature.personality.new_allegiance(FPalace_helper.get_chastity_mob(), creature);
				
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.trade_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.valuing_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.castilla_seamstress)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				
				template.set_stat_jiggle(FPalace_helper.str_id,7,13);
				template.set_stat_jiggle(FPalace_helper.dex_id,7,13);
				template.set_stat_jiggle(FPalace_helper.con_id,8,14);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,8,14);
				template.set_stat_jiggle(FPalace_helper.int_id,7,13);
				template.set_stat_jiggle(FPalace_helper.wis_id,9,15);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.breast_size_id, 1, 4);
				template.set_stat_jiggle(FPalace_helper.nipple_size_id,0.5,1);
				template.set_stat_jiggle(FPalace_helper.bust_id,24,36);
				template.set_stat_jiggle(FPalace_helper.waist_id,22,32);
				template.set_stat_jiggle(FPalace_helper.hips_id,24,36);
				template.set_stat_jiggle(FPalace_helper.height_id,120,160);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,10,24);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.milk_volume_id,50,125);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,2,4);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,5,7);
				template.set_stat_jiggle(FPalace_helper.vaginal_width_id,2,4);
				template.set_stat_jiggle(FPalace_helper.vaginal_depth_id,6,8);
				//template.set_stat_jiggle(FPalace_helper.egg_fertility_id,0.4,0.6);
				//template.set_stat_jiggle(FPalace_helper.age_id,22,30);
				
				castilla_seamstress_template = template;
			}
			
			return castilla_seamstress_template;
		}
		
		private static var castilla_inkeep_template:Character_template;
		public static function castilla_inkeep():Character_template{
			if(castilla_inkeep_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_male(FPalace_races.race_human());
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(20);
				creature.set_gold(50);
				
				creature.equip(FPalace_items.Blue_silk_boxers(),0);
				creature.equip(FPalace_items.Blue_silk_shirt(),0);
				creature.equip(FPalace_items.Blue_silk_pants(),0);			
				creature.equip(FPalace_items.black_dress_shoes(),0);
				
				creature.hold(FPalace_items.knife(),0);
				
				creature.personality.new_allegiance(FPalace_helper.get_chastity_mob(), creature);
				creature.personality.set_job(FPalace_classes.job_inkeep(), creature);
				
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.trade_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.valuing_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.castilla_inkeep)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				
				template.set_stat_jiggle(FPalace_helper.str_id,9,15);
				template.set_stat_jiggle(FPalace_helper.dex_id,7,13);
				template.set_stat_jiggle(FPalace_helper.con_id,7,13);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,7,13);
				template.set_stat_jiggle(FPalace_helper.int_id,9,15);
				template.set_stat_jiggle(FPalace_helper.wis_id,9,15);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.bust_id,28,38);
				template.set_stat_jiggle(FPalace_helper.waist_id,26,38);
				template.set_stat_jiggle(FPalace_helper.hips_id,28,38);
				template.set_stat_jiggle(FPalace_helper.height_id,130,180);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,1,4);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.erection_ratio_id,0.4,0.6);
				//template.set_stat_jiggle(FPalace_helper.cum_volume_id,4,8);
				template.set_stat_jiggle(FPalace_helper.penis_length_id,4,8);
				template.set_stat_jiggle(FPalace_helper.penis_girth_id,4/3,8/3);
				template.set_stat_jiggle(FPalace_helper.balls_size_id,1,2);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,2);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,2,6);
				//template.set_stat_jiggle(FPalace_helper.semen_fertility_id,0.04,0.06);
				//template.set_stat_jiggle(FPalace_helper.age_id,21,30);
				
				castilla_inkeep_template = template;
			}
			
			return castilla_inkeep_template;
		}
		
		private static var castilla_cobbler_template:Character_template;
		public static function castilla_cobbler():Character_template{
			if(castilla_cobbler_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_male(FPalace_races.race_human());
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(20);
				creature.set_gold(50);
				
				creature.equip(FPalace_items.Blue_silk_boxers(),0);
				creature.equip(FPalace_items.Blue_silk_shirt(),0);
				creature.equip(FPalace_items.Blue_silk_pants(),0);
				creature.equip(FPalace_items.gold_medallion(),0);
				creature.equip(FPalace_items.gold_ring(),0);
				
				creature.equip(FPalace_items.black_dress_shoes(),0);
				
				creature.hold(FPalace_items.knife(),0);
				
				creature.personality.new_allegiance(FPalace_helper.get_chastity_mob(), creature);
				creature.personality.set_job(FPalace_classes.job_castilla_cobbler(), creature);
				
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.trade_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.valuing_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.castilla_cobbler)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				
				template.set_stat_jiggle(FPalace_helper.str_id,9,15);
				template.set_stat_jiggle(FPalace_helper.dex_id,7,13);
				template.set_stat_jiggle(FPalace_helper.con_id,7,13);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,7,13);
				template.set_stat_jiggle(FPalace_helper.int_id,9,15);
				template.set_stat_jiggle(FPalace_helper.wis_id,9,15);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.bust_id,28,38);
				template.set_stat_jiggle(FPalace_helper.waist_id,26,38);
				template.set_stat_jiggle(FPalace_helper.hips_id,28,38);
				template.set_stat_jiggle(FPalace_helper.height_id,130,180);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,1,4);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.erection_ratio_id,0.4,0.6);
				//template.set_stat_jiggle(FPalace_helper.cum_volume_id,4,8);
				template.set_stat_jiggle(FPalace_helper.penis_length_id,4,8);
				template.set_stat_jiggle(FPalace_helper.penis_girth_id,4/3,8/3);
				template.set_stat_jiggle(FPalace_helper.balls_size_id,1,2);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,2);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,2,6);
				//template.set_stat_jiggle(FPalace_helper.semen_fertility_id,0.04,0.06);
				//template.set_stat_jiggle(FPalace_helper.age_id,21,30);
				
				castilla_cobbler_template = template;
			}
			
			return castilla_cobbler_template;
		}
		
		private static var bee_hive_shopkeeper_template:Character_template;
		public static function bee_hive_shopkeeper():Character_template{
			if(bee_hive_shopkeeper_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_male(FPalace_races.race_human());
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(22);
				
				creature.set_gold(75);
				//don't have items for equip yet... should have the appropriate outfit for being in a hive
				
				creature.personality.set_job(FPalace_classes.job_bee_hive_shopkeeper(), creature);
				creature.personality.new_allegiance(FPalace_helper.get_diligence_mob(), creature);
				
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.trade_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.valuing_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.bee_hive_shopkeeper)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				
				template.set_stat_jiggle(FPalace_helper.str_id,7,13);
				template.set_stat_jiggle(FPalace_helper.dex_id,7,13);
				template.set_stat_jiggle(FPalace_helper.con_id,8,14);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,8,14);
				template.set_stat_jiggle(FPalace_helper.int_id,7,13);
				template.set_stat_jiggle(FPalace_helper.wis_id,9,15);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.bust_id,24,36);
				template.set_stat_jiggle(FPalace_helper.waist_id,22,32);
				template.set_stat_jiggle(FPalace_helper.hips_id,24,36);
				template.set_stat_jiggle(FPalace_helper.height_id,120,160);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,10,24);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,2,4);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,5,7);
				//template.set_stat_jiggle(FPalace_helper.age_id,22,30);
				
				bee_hive_shopkeeper_template = template;
			}
			
			return bee_hive_shopkeeper_template;
		}
		
		private static var encampment_equine_template:Character_template;
		public static function encampment_equine():Character_template{
			if(encampment_equine_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_male(FPalace_races.race_anthro_equine())
				creature.new_body_part(FPalace_helper.new_tail(FPalace_races.race_anthro_equine()));
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(20);
				creature.set_move(2);
				creature.set_gold(10);
				
				creature.equip(FPalace_items.Overalls(),0);
				
				creature.personality.new_allegiance(FPalace_helper.get_kindness_mob(), creature);
							
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 3);
				creature.skills.set_skill_value(creature, FPalace_skills.melee_id, 3);
				creature.skills.set_skill_value(creature, FPalace_skills.defence_id, 3);
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.encampment_equine)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				
				template.set_stat_jiggle(FPalace_helper.str_id,13,19);
				template.set_stat_jiggle(FPalace_helper.dex_id,8,14);
				template.set_stat_jiggle(FPalace_helper.con_id,7,13);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,9,15);
				template.set_stat_jiggle(FPalace_helper.int_id,6,12);
				template.set_stat_jiggle(FPalace_helper.wis_id,7,13);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.bust_id,26,38);
				template.set_stat_jiggle(FPalace_helper.waist_id,26,38);
				template.set_stat_jiggle(FPalace_helper.hips_id,26,32);
				template.set_stat_jiggle(FPalace_helper.height_id,190,230);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,1,2);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.erection_ratio_id,0.25,0.5);
				template.set_stat_jiggle(FPalace_helper.cum_volume_id,220,400);
				template.set_stat_jiggle(FPalace_helper.penis_length_id,12,24);
				template.set_stat_jiggle(FPalace_helper.penis_girth_id,4,8);
				template.set_stat_jiggle(FPalace_helper.balls_size_id,2,6);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,5);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,1,16);
				//template.set_stat_jiggle(FPalace_helper.semen_fertility_id,0.04,0.06);
				//template.set_stat_jiggle(FPalace_helper.age_id,17,26);
				
				encampment_equine_template = template;
			}
			
			return encampment_equine_template;
		}
		
		private static var encampment_woman_template:Character_template;
		public static function encampment_woman():Character_template{
			if(encampment_woman_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_female(FPalace_races.race_anthro_equine())
				creature.new_body_part(FPalace_helper.new_tail(FPalace_races.race_anthro_equine()));
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(20);
				creature.set_move(2);
				creature.set_gold(10);
				
				creature.equip(FPalace_items.Overalls(),0);
				
				creature.personality.new_allegiance(FPalace_helper.get_kindness_mob(), creature);
							
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 3);
				creature.skills.set_skill_value(creature, FPalace_skills.melee_id, 3);
				creature.skills.set_skill_value(creature, FPalace_skills.defence_id, 3);
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.encampment_woman)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				
				template.set_stat_jiggle(FPalace_helper.str_id,13,19);
				template.set_stat_jiggle(FPalace_helper.dex_id,8,14);
				template.set_stat_jiggle(FPalace_helper.con_id,7,13);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,9,15);
				template.set_stat_jiggle(FPalace_helper.int_id,6,12);
				template.set_stat_jiggle(FPalace_helper.wis_id,7,13);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.bust_id,26,38);
				template.set_stat_jiggle(FPalace_helper.waist_id,26,38);
				template.set_stat_jiggle(FPalace_helper.hips_id,26,32);
				template.set_stat_jiggle(FPalace_helper.height_id,190,230);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,1,2);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,5);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,1,16);
				//template.set_stat_jiggle(FPalace_helper.age_id,17,26);
				
				encampment_woman_template = template;
			}
			
			return encampment_woman_template;
		}
		
		private static var encampment_inkeep_template:Character_template;
		public static function encampment_inkeep():Character_template{
			if(encampment_inkeep_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_male(FPalace_races.race_anthro_equine())
				creature.new_body_part(FPalace_helper.new_tail(FPalace_races.race_anthro_equine()));
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(20);
				
				creature.set_gold(100);
				
				creature.equip(FPalace_items.Overalls(),0);
				
				creature.personality.set_job(FPalace_classes.job_inkeep(), creature);
				creature.personality.new_allegiance(FPalace_helper.get_kindness_mob(), creature);
							
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 3);
				creature.skills.set_skill_value(creature, FPalace_skills.melee_id, 3);
				creature.skills.set_skill_value(creature, FPalace_skills.defence_id, 3);
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.trade_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.valuing_id, 2);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.encampment_inkeep)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				
				template.set_stat_jiggle(FPalace_helper.str_id,13,19);
				template.set_stat_jiggle(FPalace_helper.dex_id,8,14);
				template.set_stat_jiggle(FPalace_helper.con_id,7,13);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,9,15);
				template.set_stat_jiggle(FPalace_helper.int_id,6,12);
				template.set_stat_jiggle(FPalace_helper.wis_id,7,13);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.bust_id,26,38);
				template.set_stat_jiggle(FPalace_helper.waist_id,26,38);
				template.set_stat_jiggle(FPalace_helper.hips_id,26,32);
				template.set_stat_jiggle(FPalace_helper.height_id,190,230);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,1,2);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.erection_ratio_id,0.25,0.5);
				//template.set_stat_jiggle(FPalace_helper.cum_volume_id,220,400);
				template.set_stat_jiggle(FPalace_helper.penis_length_id,12,24);
				template.set_stat_jiggle(FPalace_helper.penis_girth_id,4,8);
				template.set_stat_jiggle(FPalace_helper.balls_size_id,2,6);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,5);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,1,16);
				//template.set_stat_jiggle(FPalace_helper.semen_fertility_id,0.04,0.06);
				//template.set_stat_jiggle(FPalace_helper.age_id,30,35);
				
				encampment_inkeep_template = template;
			}
			
			return encampment_inkeep_template;
		}
		
		private static var equine_encampment_shopkeeper_template:Character_template;
		public static function equine_encampment_shopkeeper():Character_template{
			if(equine_encampment_shopkeeper_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_male(FPalace_races.race_anthro_equine());
				creature.new_body_part(FPalace_helper.new_tail(FPalace_races.race_anthro_equine()));
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(20);
				
				creature.set_gold(100);
				
				creature.equip(FPalace_items.Overalls(),0);
				creature.equip(FPalace_items.Red_fur_overcoat(),0);
				creature.equip(FPalace_items.gold_medallion(),0);
				creature.equip(FPalace_items.gold_ring(),0);
				
				creature.personality.set_job(FPalace_classes.job_equine_encampment_shopkeeper(), creature);
				creature.personality.new_allegiance(FPalace_helper.get_kindness_mob(), creature);
							
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 3);
				creature.skills.set_skill_value(creature, FPalace_skills.melee_id, 3);
				creature.skills.set_skill_value(creature, FPalace_skills.defence_id, 3);
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.trade_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.valuing_id, 2);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.equine_encampment_shopkeeper)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				
				template.set_stat_jiggle(FPalace_helper.str_id,13,19);
				template.set_stat_jiggle(FPalace_helper.dex_id,8,14);
				template.set_stat_jiggle(FPalace_helper.con_id,7,13);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,9,15);
				template.set_stat_jiggle(FPalace_helper.int_id,6,12);
				template.set_stat_jiggle(FPalace_helper.wis_id,7,13);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.bust_id,26,38);
				template.set_stat_jiggle(FPalace_helper.waist_id,26,38);
				template.set_stat_jiggle(FPalace_helper.hips_id,26,32);
				template.set_stat_jiggle(FPalace_helper.height_id,190,230);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,1,2);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.erection_ratio_id,0.25,0.5);
				//template.set_stat_jiggle(FPalace_helper.cum_volume_id,220,400);
				template.set_stat_jiggle(FPalace_helper.penis_length_id,12,24);
				template.set_stat_jiggle(FPalace_helper.penis_girth_id,4,8);
				template.set_stat_jiggle(FPalace_helper.balls_size_id,2,6);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,5);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,1,16);
				//template.set_stat_jiggle(FPalace_helper.semen_fertility_id,0.04,0.06);
				//template.set_stat_jiggle(FPalace_helper.age_id,17,19);
				
				equine_encampment_shopkeeper_template = template;
			}
			
			return equine_encampment_shopkeeper_template;
		}
		
		private static var witches_student_template:Character_template;
		public static function witches_student():Character_template{
			if(witches_student_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_female(FPalace_races.race_human());
				creature.set_move(2);
				creature.set_character_class(FPalace_classes.cclass_witch());
				creature.set_xp(20);
				
				creature.apply_affect_by_id(FPalace_helper.age_id, -10);
				
				creature.equip(FPalace_items.pushup_bra(),0);
				creature.equip(FPalace_items.red_g_string(),0);
				creature.equip(FPalace_items.knee_high_socks(),0);
				creature.equip(FPalace_items.white_blouse(),0);
				creature.equip(FPalace_items.plaid_skirt(),0);
				creature.equip(FPalace_items.black_dress_shoes(),0);
				
				creature.hold(FPalace_items.maidens_wand(),0);
				
				creature.skills.set_skill_value(creature, FPalace_skills.magic_id, 1);
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 2);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.personality.new_allegiance(FPalace_helper.get_humility_mob(), creature);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.witches_student)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				
				template.set_stat_jiggle(FPalace_helper.str_id,7,13);
				template.set_stat_jiggle(FPalace_helper.dex_id,7,13);
				template.set_stat_jiggle(FPalace_helper.con_id,7,13);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,7,13);
				template.set_stat_jiggle(FPalace_helper.int_id,7,13);
				template.set_stat_jiggle(FPalace_helper.wis_id,7,13);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,7,13);
				template.set_stat_jiggle(FPalace_helper.breast_size_id, 0.1, 3);
				template.set_stat_jiggle(FPalace_helper.nipple_size_id,0.5,1);
				template.set_stat_jiggle(FPalace_helper.bust_id,24,32);
				template.set_stat_jiggle(FPalace_helper.waist_id,22,26);
				template.set_stat_jiggle(FPalace_helper.hips_id,24,32);
				template.set_stat_jiggle(FPalace_helper.height_id,120,160);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,10,24);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.milk_volume_id,40,110);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,2,4);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,5,7);
				template.set_stat_jiggle(FPalace_helper.vaginal_width_id,2,4);
				template.set_stat_jiggle(FPalace_helper.vaginal_depth_id,6,8);
				//template.set_stat_jiggle(FPalace_helper.egg_fertility_id,0.4,0.6);
				//template.set_stat_jiggle(FPalace_helper.age_id,12,18);
				
				witches_student_template = template;
			}
			
			return witches_student_template;
		}
		
		private static var witches_naughty_potionmaker_template:Character_template;
		public static function witches_naughty_potionmaker():Character_template{
			if(witches_naughty_potionmaker_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_female(FPalace_races.race_human());
				creature.set_move(2);
				creature.set_character_class(FPalace_classes.cclass_witch());
				creature.set_xp(20);
				
				creature.apply_affect_by_id(FPalace_helper.age_id, -10);
				
				creature.equip(FPalace_items.pushup_bra(),0);
				creature.equip(FPalace_items.red_g_string(),0);
				creature.equip(FPalace_items.knee_high_socks(),0);
				creature.equip(FPalace_items.white_blouse(),0);
				creature.equip(FPalace_items.plaid_skirt(),0);
				creature.equip(FPalace_items.black_dress_shoes(),0);
				
				creature.hold(FPalace_items.maidens_wand(),0);
				
				creature.skills.set_skill_value(creature, FPalace_skills.magic_id, 1);
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 2);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.personality.set_job(FPalace_classes.witches_potionmaking_student(), creature);
				creature.personality.new_allegiance(FPalace_helper.get_humility_mob(), creature);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.witches_student)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				
				template.set_stat_jiggle(FPalace_helper.str_id,7,13);
				template.set_stat_jiggle(FPalace_helper.dex_id,7,13);
				template.set_stat_jiggle(FPalace_helper.con_id,7,13);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,7,13);
				template.set_stat_jiggle(FPalace_helper.int_id,7,13);
				template.set_stat_jiggle(FPalace_helper.wis_id,7,13);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,7,13);
				template.set_stat_jiggle(FPalace_helper.breast_size_id, 0.1, 3);
				template.set_stat_jiggle(FPalace_helper.nipple_size_id,0.5,1);
				template.set_stat_jiggle(FPalace_helper.bust_id,24,32);
				template.set_stat_jiggle(FPalace_helper.waist_id,22,26);
				template.set_stat_jiggle(FPalace_helper.hips_id,24,32);
				template.set_stat_jiggle(FPalace_helper.height_id,120,160);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,10,24);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.milk_volume_id,40,110);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,2,4);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,5,7);
				template.set_stat_jiggle(FPalace_helper.vaginal_width_id,2,4);
				template.set_stat_jiggle(FPalace_helper.vaginal_depth_id,6,8);
				//template.set_stat_jiggle(FPalace_helper.egg_fertility_id,0.4,0.6);
				//template.set_stat_jiggle(FPalace_helper.age_id,12,18);
				
				witches_naughty_potionmaker_template = template;
			}
			
			return witches_naughty_potionmaker_template;
		}
		
		private static var futa_high_Female_template:Character_template;
		public static function futa_high_Female():Character_template{
			if(futa_high_Female_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_female(FPalace_races.race_human());
				creature.set_move(2);
				creature.set_character_class(FPalace_classes.cclass_adventurer() );
				creature.set_xp(20);
				
				creature.apply_affect_by_id(FPalace_helper.age_id, -10);
				
				creature.equip(FPalace_items.pushup_bra(),0);
				creature.equip(FPalace_items.red_g_string(),0);
				creature.equip(FPalace_items.knee_high_socks(),0);
				creature.equip(FPalace_items.white_blouse(),0);
				creature.equip(FPalace_items.plaid_skirt(),0);
				creature.equip(FPalace_items.black_dress_shoes(),0);
				creature.equip(FPalace_items.shy_mask(),0);
				
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 1);
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 2);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.personality.new_allegiance(FPalace_helper.get_humility_mob(), creature);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.futa_high_Female)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				
				template.set_stat_jiggle(FPalace_helper.str_id,7,13);
				template.set_stat_jiggle(FPalace_helper.dex_id,7,13);
				template.set_stat_jiggle(FPalace_helper.con_id,7,13);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,7,13);
				template.set_stat_jiggle(FPalace_helper.int_id,7,13);
				template.set_stat_jiggle(FPalace_helper.wis_id,7,13);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,7,13);
				template.set_stat_jiggle(FPalace_helper.breast_size_id, 1, 2);
				template.set_stat_jiggle(FPalace_helper.nipple_size_id,0.5,1);
				template.set_stat_jiggle(FPalace_helper.bust_id,24,32);
				template.set_stat_jiggle(FPalace_helper.waist_id,22,26);
				template.set_stat_jiggle(FPalace_helper.hips_id,24,32);
				template.set_stat_jiggle(FPalace_helper.height_id,120,160);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,10,24);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.milk_volume_id,40,110);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,2,4);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,5,7);
				template.set_stat_jiggle(FPalace_helper.vaginal_width_id,2,4);
				template.set_stat_jiggle(FPalace_helper.vaginal_depth_id,6,8);
				//template.set_stat_jiggle(FPalace_helper.egg_fertility_id,0.4,0.6);
				//template.set_stat_jiggle(FPalace_helper.age_id,12,18);
				
				futa_high_Female_template = template;
			}
			
			return futa_high_Female_template;
		}
		
		private static var futa_high_Male_template:Character_template;
		public static function futa_high_Male():Character_template{
			if(futa_high_Male_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_male(FPalace_races.race_human());
				
				creature.set_move(2);
				
				creature.set_character_class(FPalace_classes.cclass_adventurer() );
				creature.set_xp(20);
				
				creature.apply_affect_by_id(FPalace_helper.age_id, -10);
				
				creature.equip(FPalace_items.tightie_whities(),0);
				creature.equip(FPalace_items.white_dress_shirt(),0);
				creature.equip(FPalace_items.plaid_blazer(),0);
				creature.equip(FPalace_items.blue_slacks(),0);
				creature.equip(FPalace_items.black_dress_shoes(),0);
				creature.equip(FPalace_items.shy_mask(),0);
				
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 2);
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 1);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.personality.new_allegiance(FPalace_helper.get_humility_mob(), creature);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.futa_high_Male)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				template.set_stat_jiggle(FPalace_helper.str_id,8,14);
				template.set_stat_jiggle(FPalace_helper.dex_id,6,12);
				template.set_stat_jiggle(FPalace_helper.con_id,6,12);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,6,12);
				template.set_stat_jiggle(FPalace_helper.int_id,7,13);
				template.set_stat_jiggle(FPalace_helper.wis_id,6,12);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,7,13);
				template.set_stat_jiggle(FPalace_helper.bust_id,26,32);
				template.set_stat_jiggle(FPalace_helper.waist_id,26,32);
				template.set_stat_jiggle(FPalace_helper.hips_id,26,32);
				template.set_stat_jiggle(FPalace_helper.height_id,120,160);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,1,4);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.erection_ratio_id,0.4,0.6);
				//template.set_stat_jiggle(FPalace_helper.cum_volume_id,3,7);
				template.set_stat_jiggle(FPalace_helper.penis_length_id,4,8);
				template.set_stat_jiggle(FPalace_helper.penis_girth_id,4/3,8/3);
				template.set_stat_jiggle(FPalace_helper.balls_size_id,1,2);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,2);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,2,6);
				//template.set_stat_jiggle(FPalace_helper.semen_fertility_id,0.04,0.06);
				//template.set_stat_jiggle(FPalace_helper.age_id,12,18);
				
				futa_high_Male_template = template;
			}
			
			return futa_high_Male_template;
		}
		
		private static var Amazonian_Isle_Amazon_template:Character_template;
		public static function Amazonian_Isle_Amazon():Character_template{
			if(Amazonian_Isle_Amazon_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_herm(FPalace_races.race_human());
				creature.set_move(2);
				creature.set_character_class(FPalace_classes.cclass_adventurer() );
				creature.set_xp(20);
				
				creature.set_gold(10);
				
				creature.apply_affect_by_id(FPalace_helper.age_id, 15);
				
				creature.equip(FPalace_items.Loincloth(),0);
							
				creature.hold(FPalace_items.spear(),0);
				
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.melee_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.one_handed_id, 2);
				creature.skills.set_skill_value(creature, FPalace_skills.defence_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.flirting_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.sex_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.blowjobs_id, 5);
				
				creature.personality.new_allegiance(FPalace_helper.get_sin_mob(), creature);
				creature.personality.new_allegiance(FPalace_helper.get_amazon_mob(), creature);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.Amazonian_Isle_Amazon)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				
				template.set_stat_jiggle(FPalace_helper.str_id,9,15);
				template.set_stat_jiggle(FPalace_helper.dex_id,7,13);
				template.set_stat_jiggle(FPalace_helper.con_id,11,17);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,13,19);
				template.set_stat_jiggle(FPalace_helper.int_id,7,13);
				template.set_stat_jiggle(FPalace_helper.wis_id,7,13);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.breast_size_id, 3, 6);
				template.set_stat_jiggle(FPalace_helper.nipple_size_id,0.5,2);
				template.set_stat_jiggle(FPalace_helper.bust_id,30,42);
				template.set_stat_jiggle(FPalace_helper.waist_id,26,38);
				template.set_stat_jiggle(FPalace_helper.hips_id,30,42);
				template.set_stat_jiggle(FPalace_helper.height_id,170,200);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,12,36);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.erection_ratio_id,0.25,0.5);
				template.set_stat_jiggle(FPalace_helper.milk_volume_id,300,600);
				template.set_stat_jiggle(FPalace_helper.cum_volume_id,1500,2500);
				template.set_stat_jiggle(FPalace_helper.penis_length_id,18,36);
				template.set_stat_jiggle(FPalace_helper.penis_girth_id,6,12);
				template.set_stat_jiggle(FPalace_helper.balls_size_id,4,9);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,5);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,3,16);
				template.set_stat_jiggle(FPalace_helper.vaginal_width_id,1,5);
				template.set_stat_jiggle(FPalace_helper.vaginal_depth_id,3,16);
				//template.set_stat_jiggle(FPalace_helper.semen_fertility_id,0.4,0.45);
				//template.set_stat_jiggle(FPalace_helper.egg_fertility_id,0.8,0.95);
				//template.set_stat_jiggle(FPalace_helper.age_id,35,41);
				
				Amazonian_Isle_Amazon_template = template;
			}
			
			return Amazonian_Isle_Amazon_template;
		}
		
		private static var swamp_frog_fighter_template:Character_template;
		public static function swamp_frog_fighter():Character_template{
			if(swamp_frog_fighter_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_male(FPalace_races.race_anthro_frog());
				creature.set_move(2);
				creature.set_character_class(FPalace_classes.cclass_fighter());
				creature.set_xp(200);
				
				creature.set_gold(25);
				
				creature.equip(FPalace_items.bronze_salet(),0);
				creature.equip(FPalace_items.red_tunic(),0);
				creature.equip(FPalace_items.bronze_breastplate(),0);
				creature.equip(FPalace_items.bronze_greaves(),0);
				creature.equip(FPalace_items.hard_leather_boots(),0);
				creature.equip(FPalace_items.bronze_gauntlets(),0);
							
				creature.hold(FPalace_items.bronze_short_sword(),0);
				creature.hold(FPalace_items.bronze_shield(),0);
				
				creature.add_to_possessions(FPalace_items.froggy_feijoa());			
				
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 1);
				creature.skills.set_skill_value(creature, FPalace_skills.melee_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.one_handed_id, 2);
				creature.skills.set_skill_value(creature, FPalace_skills.defence_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.blocking_id, 2);
				creature.skills.set_skill_value(creature, FPalace_skills.parrying_id, 2);
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 2);
				creature.skills.set_skill_value(creature, FPalace_skills.covert_id, 10);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.swamp_frog_fighter)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				/*
				template.set_stat_jiggle(FPalace_helper.str_id,9,15);
				template.set_stat_jiggle(FPalace_helper.dex_id,7,13);
				template.set_stat_jiggle(FPalace_helper.con_id,7,13);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,7,13);
				template.set_stat_jiggle(FPalace_helper.int_id,8,14);
				template.set_stat_jiggle(FPalace_helper.wis_id,7,13);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.height_id,155,169);
				template.set_stat_jiggle(FPalace_helper.cum_volume_id,2,7);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,3);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,2,6);
				template.set_stat_jiggle(FPalace_helper.semen_fertility_id,0.04,0.06);
				template.set_stat_jiggle(FPalace_helper.erection_ratio_id,0.65,0.75);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,1,4);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);			
				template.set_stat_jiggle(FPalace_helper.bust_id,28,38);
				template.set_stat_jiggle(FPalace_helper.waist_id,26,38);
				template.set_stat_jiggle(FPalace_helper.hips_id,28,38);
				template.set_stat_jiggle(FPalace_helper.penis_length_id,4,8);
				template.set_stat_jiggle(FPalace_helper.penis_girth_id,4/3,8/3);
				template.set_stat_jiggle(FPalace_helper.balls_size_id,1,2);*/
				//template.set_stat_jiggle(FPalace_helper.age_id,17,26);
				
				swamp_frog_fighter_template = template;
			}
			
			return swamp_frog_fighter_template;
		}
		
		private static var hell_imp_template:Character_template;
		public static function hell_imp():Character_template{
			if(hell_imp_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_male(FPalace_races.race_demon());
				creature.new_body_part(FPalace_helper.new_tail(FPalace_races.race_demon()));
				creature.new_body_part(FPalace_helper.new_wings(FPalace_races.race_demon()));
				creature.set_move(2);
				creature.set_character_class(FPalace_classes.cclass_adventurer() );
				creature.set_xp(20);
				
				creature.hold(FPalace_items.knife(),0);
				
				creature.set_gold(10);
				
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.melee_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.one_handed_id, 2);
				creature.skills.set_skill_value(creature, FPalace_skills.defence_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.covert_id, 10);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.personality.new_allegiance(FPalace_helper.get_hell_mob(), creature);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.hell_imp)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				/*template.set_stat_jiggle(FPalace_helper.str_id,7,13);
				template.set_stat_jiggle(FPalace_helper.dex_id,14,20);
				template.set_stat_jiggle(FPalace_helper.con_id,7,13);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,9,15);
				template.set_stat_jiggle(FPalace_helper.int_id,10,16);
				template.set_stat_jiggle(FPalace_helper.wis_id,11,17);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.bust_id,20,32);
				template.set_stat_jiggle(FPalace_helper.waist_id,20,26);
				template.set_stat_jiggle(FPalace_helper.hips_id,24,36);
				template.set_stat_jiggle(FPalace_helper.height_id,140,170);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,2,36);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,3);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,3,8);*/
				//template.set_stat_jiggle(FPalace_helper.age_id,7,11);
				
				hell_imp_template = template;
			}
			
			return hell_imp_template;
		}
		
		private static var hell_succubus_template:Character_template;
		public static function hell_succubus():Character_template{
			if(hell_succubus_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_herm(FPalace_races.race_demon());
				creature.new_body_part(FPalace_helper.new_tail(FPalace_races.race_demon()));
				creature.new_body_part(FPalace_helper.new_wings(FPalace_races.race_demon()));
				creature.set_move(2);
				creature.set_character_class(FPalace_classes.cclass_adventurer() );
				creature.set_xp(20);
				
				creature.hold(FPalace_items.knife(),0);
				
				creature.set_gold(10);
				
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.melee_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.one_handed_id, 2);
				creature.skills.set_skill_value(creature, FPalace_skills.defence_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.covert_id, 10);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.personality.new_allegiance(FPalace_helper.get_hell_mob(), creature);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.hell_succubus)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				/*template.set_stat_jiggle(FPalace_helper.str_id,7,13);
				template.set_stat_jiggle(FPalace_helper.dex_id,14,20);
				template.set_stat_jiggle(FPalace_helper.con_id,7,13);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,9,15);
				template.set_stat_jiggle(FPalace_helper.int_id,10,16);
				template.set_stat_jiggle(FPalace_helper.wis_id,11,17);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.bust_id,20,32);
				template.set_stat_jiggle(FPalace_helper.waist_id,20,26);
				template.set_stat_jiggle(FPalace_helper.hips_id,24,36);
				template.set_stat_jiggle(FPalace_helper.height_id,140,170);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,2,36);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,3);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,3,8);*/
				//template.set_stat_jiggle(FPalace_helper.age_id,7,11);
				
				hell_succubus_template = template;
			}
			
			return hell_succubus_template;
		}
		
		private static var heaven_cherub_template:Character_template;
		public static function heaven_cherub():Character_template{
			if(heaven_cherub_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = new Character();
				var race:Race = FPalace_races.race_angel()
				creature.new_body_part(FPalace_helper.new_hair(race));
				creature.new_body_part(FPalace_helper.new_head(race));
				creature.new_body_part(FPalace_helper.new_eyes(race));
				creature.new_body_part(FPalace_helper.new_torso(race));
				creature.new_body_part(FPalace_helper.new_left_arms(race));
				creature.new_body_part(FPalace_helper.new_left_hands(race));
				creature.new_body_part(FPalace_helper.new_right_arms(race));
				creature.new_body_part(FPalace_helper.new_right_hands(race));
				creature.new_body_part(FPalace_helper.new_wings(race));
				creature.new_body_part(FPalace_helper.new_hips(race));
				creature.new_body_part(FPalace_helper.new_left_legs(race));
				creature.new_body_part(FPalace_helper.new_left_feet(race));
				creature.new_body_part(FPalace_helper.new_right_legs(race));
				creature.new_body_part(FPalace_helper.new_right_feet(race));
				
				creature.personality.determine_orient(creature.sex);
				
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(20);
				creature.set_gold(0);
				creature.set_move(2);
				
				creature.personality.new_allegiance(FPalace_helper.get_heaven_mob(), creature);
				
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.covert_id, 10);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.heaven_cherub)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				/*
				template.set_stat_jiggle(FPalace_helper.str_id,9,15);
				template.set_stat_jiggle(FPalace_helper.dex_id,7,13);
				template.set_stat_jiggle(FPalace_helper.con_id,7,13);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,7,13);
				template.set_stat_jiggle(FPalace_helper.int_id,9,15);
				template.set_stat_jiggle(FPalace_helper.wis_id,9,15);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.bust_id,28,38);
				template.set_stat_jiggle(FPalace_helper.waist_id,26,38);
				template.set_stat_jiggle(FPalace_helper.hips_id,28,38);
				template.set_stat_jiggle(FPalace_helper.height_id,130,180);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,1,4);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.erection_ratio_id,0.4,0.6);
				template.set_stat_jiggle(FPalace_helper.cum_volume_id,4,8);
				template.set_stat_jiggle(FPalace_helper.penis_length_id,4,8);
				template.set_stat_jiggle(FPalace_helper.penis_girth_id,4/3,8/3);
				template.set_stat_jiggle(FPalace_helper.balls_size_id,1,2);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,2);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,2,6);
				*/
				//template.set_stat_jiggle(FPalace_helper.semen_fertility_id,0.04,0.06);
				//template.set_stat_jiggle(FPalace_helper.age_id,21,30);
				
				heaven_cherub_template = template;
			}
			
			return heaven_cherub_template;
		}
		
		private static var heaven_angel_template:Character_template;
		public static function heaven_angel():Character_template{
			if(heaven_angel_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = new Character();
				var race:Race = FPalace_races.race_angel()
				creature.new_body_part(FPalace_helper.new_hair(race));
				creature.new_body_part(FPalace_helper.new_head(race));
				creature.new_body_part(FPalace_helper.new_eyes(race));
				creature.new_body_part(FPalace_helper.new_torso(race));
				creature.new_body_part(FPalace_helper.new_left_arms(race));
				creature.new_body_part(FPalace_helper.new_left_hands(race));
				creature.new_body_part(FPalace_helper.new_right_arms(race));
				creature.new_body_part(FPalace_helper.new_right_hands(race));
				creature.new_body_part(FPalace_helper.new_wings(race));
				creature.new_body_part(FPalace_helper.new_breasts(race));
				creature.new_body_part(FPalace_helper.new_hips(race));
				creature.new_body_part(FPalace_helper.new_left_legs(race));
				creature.new_body_part(FPalace_helper.new_left_feet(race));
				creature.new_body_part(FPalace_helper.new_right_legs(race));
				creature.new_body_part(FPalace_helper.new_right_feet(race));
				
				creature.personality.determine_orient(creature.sex);
				
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(20);
				creature.set_gold(0);
				creature.set_move(2);
				
				creature.personality.new_allegiance(FPalace_helper.get_heaven_mob(), creature);
				
				creature.skills.set_skill_value(creature, FPalace_skills.people_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.covert_id, 10);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.heaven_angel)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				/*
				template.set_stat_jiggle(FPalace_helper.str_id,9,15);
				template.set_stat_jiggle(FPalace_helper.dex_id,7,13);
				template.set_stat_jiggle(FPalace_helper.con_id,7,13);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,7,13);
				template.set_stat_jiggle(FPalace_helper.int_id,9,15);
				template.set_stat_jiggle(FPalace_helper.wis_id,9,15);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,8,14);
				template.set_stat_jiggle(FPalace_helper.bust_id,28,38);
				template.set_stat_jiggle(FPalace_helper.waist_id,26,38);
				template.set_stat_jiggle(FPalace_helper.hips_id,28,38);
				template.set_stat_jiggle(FPalace_helper.height_id,130,180);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,1,4);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.erection_ratio_id,0.4,0.6);
				template.set_stat_jiggle(FPalace_helper.cum_volume_id,4,8);
				template.set_stat_jiggle(FPalace_helper.penis_length_id,4,8);
				template.set_stat_jiggle(FPalace_helper.penis_girth_id,4/3,8/3);
				template.set_stat_jiggle(FPalace_helper.balls_size_id,1,2);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,2);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,2,6);
				*/
				//template.set_stat_jiggle(FPalace_helper.semen_fertility_id,0.04,0.06);
				//template.set_stat_jiggle(FPalace_helper.age_id,21,30);
				
				heaven_angel_template = template;
			}
			
			return heaven_angel_template;
		}
		
		private static var cock_snake_template:Character_template;
		public static function cock_snake():Character_template{
			if(cock_snake_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = new Character();
				//creature.personality.set_aggresive();
				creature.personality.add_dislike(FPalace_helper.trait_has_penis());
				creature.set_move(2);
				
				var race:Race = FPalace_races.race_sexsnake();
				creature.new_body_part(FPalace_helper.new_cocksnake_head(race));
				creature.new_body_part(FPalace_helper.new_eyes(race));
				creature.new_body_part(FPalace_helper.new_sexsnake_body(race));
				creature.new_body_part(FPalace_helper.new_penis(race,1,0.3,0.5));
				
				creature.set_sex(FPalace_helper.sex_male());
				
				creature.personality.new_allegiance(FPalace_helper.get_monster_mob(), creature);
				creature.set_xp(5);
				
				creature.skills.set_skill_value(creature, FPalace_skills.covert_id, 10);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.cock_snake)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				
				template.set_stat_jiggle(FPalace_helper.str_id,9,15);
				template.set_stat_jiggle(FPalace_helper.dex_id,9,15);
				template.set_stat_jiggle(FPalace_helper.con_id,7,13);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,2,4);
				template.set_stat_jiggle(FPalace_helper.int_id,8,14);
				template.set_stat_jiggle(FPalace_helper.wis_id,9,15);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,7,13);
				template.set_stat_jiggle(FPalace_helper.height_id,16,32);
				//template.set_stat_jiggle(FPalace_helper.age_id,20,26);
				
				cock_snake_template = template;
			}
			
			return cock_snake_template;
		}
		
		private static var vag_snake_template:Character_template;
		public static function vag_snake():Character_template{
			if(vag_snake_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = new Character();
				//creature.personality.set_aggresive();
				creature.personality.add_dislike(FPalace_helper.trait_has_vagina());
				creature.personality.add_dislike(FPalace_helper.trait_has_breasts());
				
				creature.set_move(2);
				
				var race:Race = FPalace_races.race_sexsnake();
				creature.new_body_part(FPalace_helper.new_vagsnake_head(race));
				creature.new_body_part(FPalace_helper.new_eyes(race));
				creature.new_body_part(FPalace_helper.new_sexsnake_body(race));
				creature.new_body_part(FPalace_helper.new_vagina(race,1,10));
				
				creature.set_sex(FPalace_helper.sex_female());
				
				creature.personality.new_allegiance(FPalace_helper.get_monster_mob(), creature);
				
				creature.set_xp(5);
				
				creature.skills.set_skill_value(creature, FPalace_skills.covert_id, 10);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.vag_snake)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				
				template.set_stat_jiggle(FPalace_helper.str_id,9,15);
				template.set_stat_jiggle(FPalace_helper.dex_id,9,15);
				template.set_stat_jiggle(FPalace_helper.con_id,7,13);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,2,4);
				template.set_stat_jiggle(FPalace_helper.int_id,8,14);
				template.set_stat_jiggle(FPalace_helper.wis_id,9,15);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,7,13);
				template.set_stat_jiggle(FPalace_helper.height_id,16,32);
				
				vag_snake_template = template;
			}
			
			return vag_snake_template;
		}
		
		private static var cave_goblin_Female_template:Character_template;
		public static function cave_goblin_Female():Character_template{
			if(cave_goblin_Female_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_female(FPalace_races.race_goblin());
				creature.set_move(2);
				creature.set_character_class(FPalace_classes.cclass_alchemist());
				creature.set_xp(20);
				
				creature.equip(FPalace_items.leather_tube_top(),0);
				creature.equip(FPalace_items.leather_panties(),0);
				creature.hold(FPalace_items.knife(),0);
				
				creature.add_to_possessions(FPalace_items.sunlight_potion());			
				
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 1);
				creature.skills.set_skill_value(creature, FPalace_skills.knowledge_id, 1);
				creature.skills.set_skill_value(creature, FPalace_skills.covert_id, 10);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
							
				creature.personality.new_allegiance(FPalace_helper.get_monster_mob(), creature);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.cave_goblin_Female)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				
				template.set_stat_jiggle(FPalace_helper.str_id,7,13);
				template.set_stat_jiggle(FPalace_helper.dex_id,7,13);
				template.set_stat_jiggle(FPalace_helper.con_id,7,13);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,7,13);
				template.set_stat_jiggle(FPalace_helper.int_id,7,13);
				template.set_stat_jiggle(FPalace_helper.wis_id,7,13);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,7,13);
				/*
				template.set_stat_jiggle(FPalace_helper.breast_size_id, 1, 2);
				template.set_stat_jiggle(FPalace_helper.nipple_size_id,0.5,1);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,10,24);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.milk_volume_id,40,110);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,2,4);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,5,7);
				template.set_stat_jiggle(FPalace_helper.vaginal_width_id,2,4);
				template.set_stat_jiggle(FPalace_helper.vaginal_depth_id,6,8);
				*/
				
				cave_goblin_Female_template = template;
			}
			return cave_goblin_Female_template;
		}
		
		private static var attacking_orc_template:Character_template;
		public static function attacking_orc():Character_template{
			if(attacking_orc_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_male(FPalace_races.race_orc());
				creature.set_move(2);
				creature.set_character_class(FPalace_classes.cclass_barbarian());
				creature.set_xp(20);
				
				creature.hold(FPalace_items.greatsword(),0);
				
				creature.add_to_possessions(FPalace_items.orcish_delight());			
				
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 1);
				creature.skills.set_skill_value(creature, FPalace_skills.knowledge_id, 1);
				creature.skills.set_skill_value(creature, FPalace_skills.covert_id, 10);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
							
				creature.personality.new_allegiance(FPalace_helper.get_monster_mob(), creature);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.attacking_orc)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				/*
				template.set_stat_jiggle(FPalace_helper.str_id,7,13);
				template.set_stat_jiggle(FPalace_helper.dex_id,7,13);
				template.set_stat_jiggle(FPalace_helper.con_id,7,13);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,7,13);
				template.set_stat_jiggle(FPalace_helper.int_id,7,13);
				template.set_stat_jiggle(FPalace_helper.wis_id,7,13);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,7,13);			
				template.set_stat_jiggle(FPalace_helper.breast_size_id, 1, 2);
				template.set_stat_jiggle(FPalace_helper.nipple_size_id,0.5,1);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,10,24);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.milk_volume_id,40,110);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,2,4);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,5,7);
				template.set_stat_jiggle(FPalace_helper.vaginal_width_id,2,4);
				template.set_stat_jiggle(FPalace_helper.vaginal_depth_id,6,8);
				*/
				
				attacking_orc_template = template;
			}
			
			return attacking_orc_template;
		}
		
		private static var rushing_deer_template:Character_template;
		public static function rushing_deer():Character_template{
			if(rushing_deer_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_female(FPalace_races.race_anthro_deer());
				creature.new_body_part(FPalace_helper.new_tail(FPalace_races.race_anthro_deer()));
				creature.new_body_part(FPalace_helper.new_horns(FPalace_races.race_anthro_deer()));
				creature.set_move(2);
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(20);
				
				creature.hold(FPalace_items.knife(),0);
				
				creature.add_to_possessions(FPalace_items.veiny_venison());			
				
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 1);
				creature.skills.set_skill_value(creature, FPalace_skills.knowledge_id, 1);
				creature.skills.set_skill_value(creature, FPalace_skills.covert_id, 10);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
							
				creature.personality.new_allegiance(FPalace_helper.get_monster_mob(), creature);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.rushing_deer)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				/*
				template.set_stat_jiggle(FPalace_helper.str_id,7,13);
				template.set_stat_jiggle(FPalace_helper.dex_id,7,13);
				template.set_stat_jiggle(FPalace_helper.con_id,7,13);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,7,13);
				template.set_stat_jiggle(FPalace_helper.int_id,7,13);
				template.set_stat_jiggle(FPalace_helper.wis_id,7,13);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,7,13);			
				template.set_stat_jiggle(FPalace_helper.breast_size_id, 1, 2);
				template.set_stat_jiggle(FPalace_helper.nipple_size_id,0.5,1);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,10,24);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.milk_volume_id,40,110);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,2,4);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,5,7);
				template.set_stat_jiggle(FPalace_helper.vaginal_width_id,2,4);
				template.set_stat_jiggle(FPalace_helper.vaginal_depth_id,6,8);
				*/
				
				rushing_deer_template = template;
			}
			
			return rushing_deer_template;
		}
		
		private static var fencing_fox_template:Character_template;
		public static function fencing_fox():Character_template{
			if(fencing_fox_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_male(FPalace_races.race_anthro_fox());
				creature.new_body_part(FPalace_helper.new_tail(FPalace_races.race_anthro_fox()));
				creature.set_move(2);
				creature.set_character_class(FPalace_classes.cclass_swashbuckler());
				creature.set_xp(20);
				
				creature.hold(FPalace_items.elvish_rapier(),0);
				
				creature.add_to_possessions(FPalace_items.foxy_fruit());			
				
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 1);
				creature.skills.set_skill_value(creature, FPalace_skills.knowledge_id, 1);
				creature.skills.set_skill_value(creature, FPalace_skills.covert_id, 10);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
							
				creature.personality.new_allegiance(FPalace_helper.get_monster_mob(), creature);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.rushing_deer)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				/*
				template.set_stat_jiggle(FPalace_helper.str_id,7,13);
				template.set_stat_jiggle(FPalace_helper.dex_id,7,13);
				template.set_stat_jiggle(FPalace_helper.con_id,7,13);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,7,13);
				template.set_stat_jiggle(FPalace_helper.int_id,7,13);
				template.set_stat_jiggle(FPalace_helper.wis_id,7,13);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,7,13);			
				template.set_stat_jiggle(FPalace_helper.breast_size_id, 1, 2);
				template.set_stat_jiggle(FPalace_helper.nipple_size_id,0.5,1);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,10,24);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.milk_volume_id,40,110);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,2,4);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,5,7);
				template.set_stat_jiggle(FPalace_helper.vaginal_width_id,2,4);
				template.set_stat_jiggle(FPalace_helper.vaginal_depth_id,6,8);
				*/
				
				fencing_fox_template = template;
			}
			
			return fencing_fox_template;
		}
		
		private static var parisol_penguin_template:Character_template;
		public static function parisol_penguin():Character_template{
			if(parisol_penguin_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_male(FPalace_races.race_anthro_penguin());
				creature.new_body_part(FPalace_helper.new_tail(FPalace_races.race_anthro_penguin()));
				creature.set_move(2);
				creature.set_character_class(FPalace_classes.cclass_lord());
				creature.set_xp(20);
				
				creature.equip(FPalace_items.monocle(),0);
				creature.hold(FPalace_items.parisol(),0);
				
				creature.add_to_possessions(FPalace_items.penguins_pocky());			
				
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 1);
				creature.skills.set_skill_value(creature, FPalace_skills.knowledge_id, 1);
				creature.skills.set_skill_value(creature, FPalace_skills.covert_id, 10);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
							
				creature.personality.new_allegiance(FPalace_helper.get_monster_mob(), creature);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.parisol_penguin)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				/*
				template.set_stat_jiggle(FPalace_helper.str_id,7,13);
				template.set_stat_jiggle(FPalace_helper.dex_id,7,13);
				template.set_stat_jiggle(FPalace_helper.con_id,7,13);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,7,13);
				template.set_stat_jiggle(FPalace_helper.int_id,7,13);
				template.set_stat_jiggle(FPalace_helper.wis_id,7,13);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,7,13);			
				template.set_stat_jiggle(FPalace_helper.breast_size_id, 1, 2);
				template.set_stat_jiggle(FPalace_helper.nipple_size_id,0.5,1);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,10,24);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.milk_volume_id,40,110);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,2,4);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,5,7);
				template.set_stat_jiggle(FPalace_helper.vaginal_width_id,2,4);
				template.set_stat_jiggle(FPalace_helper.vaginal_depth_id,6,8);
				*/
				
				parisol_penguin_template = template;
			}
			
			return parisol_penguin_template;
		}
		
		private static var seal_girl_template:Character_template;
		public static function seal_girl():Character_template{
			if(seal_girl_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_female(FPalace_races.race_anthro_seal());
				creature.set_move(2);
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(20);
				
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 1);
				creature.skills.set_skill_value(creature, FPalace_skills.knowledge_id, 1);
				creature.skills.set_skill_value(creature, FPalace_skills.covert_id, 10);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.add_to_possessions(FPalace_items.edible_warranty());			
							
				creature.personality.new_allegiance(FPalace_helper.get_monster_mob(), creature);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.seal_girl)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				/*
				template.set_stat_jiggle(FPalace_helper.str_id,7,13);
				template.set_stat_jiggle(FPalace_helper.dex_id,7,13);
				template.set_stat_jiggle(FPalace_helper.con_id,7,13);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,7,13);
				template.set_stat_jiggle(FPalace_helper.int_id,7,13);
				template.set_stat_jiggle(FPalace_helper.wis_id,7,13);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,7,13);			
				template.set_stat_jiggle(FPalace_helper.breast_size_id, 1, 2);
				template.set_stat_jiggle(FPalace_helper.nipple_size_id,0.5,1);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,10,24);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.milk_volume_id,40,110);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,2,4);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,5,7);
				template.set_stat_jiggle(FPalace_helper.vaginal_width_id,2,4);
				template.set_stat_jiggle(FPalace_helper.vaginal_depth_id,6,8);
				*/
				
				seal_girl_template = template;
			}
			
			return seal_girl_template;
		}
		
		private static var steppes_horse_template:Character_template;
		public static function steppes_horse():Character_template{
			if(steppes_horse_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = new Character();
				
				creature.set_move(2);
				var race:Race = FPalace_races.race_horse();
				
				creature.new_body_part(FPalace_helper.new_hair(race));
				creature.new_body_part(FPalace_helper.new_head(race));
				creature.new_body_part(FPalace_helper.new_eyes(race));
				creature.new_body_part(FPalace_helper.new_barrel(race));
				creature.new_body_part(FPalace_helper.new_thighs(race));
				creature.new_body_part(FPalace_helper.new_left_legs(race));
				creature.new_body_part(FPalace_helper.new_right_legs(race));
				creature.new_body_part(FPalace_helper.new_left_legs(race));
				creature.new_body_part(FPalace_helper.new_right_legs(race));
				creature.new_body_part(FPalace_helper.new_penis(race));
				creature.new_body_part(FPalace_helper.new_balls(race));
							
				creature.personality.determine_orient(creature.sex);
				creature.personality.new_allegiance(FPalace_helper.get_monster_mob(), creature);
				
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(11);
				
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.melee_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.defence_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.covert_id, 10);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.steppes_horse)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				template.set_stat_jiggle(FPalace_helper.str_id,11,15);
				template.set_stat_jiggle(FPalace_helper.dex_id,5,7);
				template.set_stat_jiggle(FPalace_helper.con_id,5,7);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,7,9);
				template.set_stat_jiggle(FPalace_helper.int_id,1,2);
				template.set_stat_jiggle(FPalace_helper.wis_id,7,9);
				template.set_stat_jiggle(FPalace_helper.will_id,9,11);
				template.set_stat_jiggle(FPalace_helper.cha_id,9,11);
				/*template.set_stat_jiggle(FPalace_helper.bust_id,28,32);
				template.set_stat_jiggle(FPalace_helper.waist_id,24,28);
				template.set_stat_jiggle(FPalace_helper.hips_id,28,32);
				template.set_stat_jiggle(FPalace_helper.height_id,330,400);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,12,36);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,4);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,3,8);
				template.set_stat_jiggle(FPalace_helper.age_id,15,21);
				*/
				
				steppes_horse_template = template;
			}
			return steppes_horse_template;
		}
		
		public static function steppes_sheep():Character_template{
			trace("(FPalace_npcs)Should be making a sheep-girl... but I'm lazy and just making a slime instead.");
			return goo_slime();//temporary... look at the darn name for what it's suppsoed to be
		}
		
		public static function rainforest_bug():Character_template{
			trace("(FPalace_npcs)Should be making a giant centipede... but I'm lazy and just making a slime instead.");
			return goo_slime();//temporary... look at the darn name for what it's suppsoed to be
		}
		
		public static function rainforest_plant():Character_template{
			trace("(FPalace_npcs)Should be making a mandrake/alarune/dryad... but I'm lazy and just making a slime instead.");
			return goo_slime();//temporary... look at the darn name for what it's suppsoed to be
		}
		
		public static function forest_snail():Character_template{
			trace("(FPalace_npcs)Should be making an snail-girl... but I'm lazy and just making a slime instead.");
			return goo_slime();//temporary... look at the darn name for what it's suppsoed to be
		}
		
		private static var forest_centaur_template:Character_template;
		public static function forest_centaur():Character_template{
			if(forest_centaur_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = new Character();
				
				creature.set_move(2);
				var race:Race = FPalace_races.race_human();
				
				creature.new_body_part(FPalace_helper.new_hair(race));
				creature.new_body_part(FPalace_helper.new_head(race));
				creature.new_body_part(FPalace_helper.new_eyes(race));
				creature.new_body_part(FPalace_helper.new_torso(race));
				creature.new_body_part(FPalace_helper.new_left_arms(race));
				creature.new_body_part(FPalace_helper.new_left_hands(race));
				creature.new_body_part(FPalace_helper.new_right_arms(race));
				creature.new_body_part(FPalace_helper.new_right_hands(race));
				creature.new_body_part(FPalace_helper.new_breasts(race));
				race = FPalace_races.race_horse();
				creature.new_body_part(FPalace_helper.new_barrel(race));
				creature.new_body_part(FPalace_helper.new_thighs(race));
				creature.new_body_part(FPalace_helper.new_left_legs(race));
				creature.new_body_part(FPalace_helper.new_right_legs(race));
				creature.new_body_part(FPalace_helper.new_left_legs(race));
				creature.new_body_part(FPalace_helper.new_right_legs(race));
				creature.new_body_part(FPalace_helper.new_clit(race));
				creature.new_body_part(FPalace_helper.new_vagina(race));
							
				creature.personality.determine_orient(creature.sex);
				creature.personality.new_allegiance(FPalace_helper.get_patience_mob(), creature);
				
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(11);
				
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.melee_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.defence_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.covert_id, 10);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.set_gold(3);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.forest_centaur)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				/*template.set_stat_jiggle(FPalace_helper.str_id,29,35);
				template.set_stat_jiggle(FPalace_helper.dex_id,25,31);
				template.set_stat_jiggle(FPalace_helper.con_id,22,28);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,15,22);
				template.set_stat_jiggle(FPalace_helper.int_id,8,14);
				template.set_stat_jiggle(FPalace_helper.wis_id,10,16);
				template.set_stat_jiggle(FPalace_helper.will_id,8,14);
				template.set_stat_jiggle(FPalace_helper.cha_id,9,15);
				template.set_stat_jiggle(FPalace_helper.breast_size_id, 1, 5);
				template.set_stat_jiggle(FPalace_helper.nipple_size_id,0.5,2);
				template.set_stat_jiggle(FPalace_helper.bust_id,28,32);
				template.set_stat_jiggle(FPalace_helper.waist_id,24,28);
				template.set_stat_jiggle(FPalace_helper.hips_id,28,32);
				template.set_stat_jiggle(FPalace_helper.height_id,330,400);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,12,36);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.milk_volume_id,50,150);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,4);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,3,8);
				template.set_stat_jiggle(FPalace_helper.vaginal_width_id,1,4);
				template.set_stat_jiggle(FPalace_helper.vaginal_depth_id,3,8);
				//template.set_stat_jiggle(FPalace_helper.egg_fertility_id,0.4,0.6);
				template.set_stat_jiggle(FPalace_helper.age_id,15,21);
				*/
				
				forest_centaur_template = template;
			}
			
			return forest_centaur_template;
		}
		
		private static var desert_lamia_template:Character_template;
		public static function desert_lamia():Character_template{
			if(desert_lamia_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = new Character();
				
				creature.set_move(2);
				var race:Race = FPalace_races.race_human();
				
				creature.new_body_part(FPalace_helper.new_hair(race));
				creature.new_body_part(FPalace_helper.new_head(race));
				creature.new_body_part(FPalace_helper.new_eyes(race));
				creature.new_body_part(FPalace_helper.new_torso(race));
				creature.new_body_part(FPalace_helper.new_left_arms(race));
				creature.new_body_part(FPalace_helper.new_left_hands(race));
				creature.new_body_part(FPalace_helper.new_right_arms(race));
				creature.new_body_part(FPalace_helper.new_right_hands(race));
				creature.new_body_part(FPalace_helper.new_breasts(race));
				race = FPalace_races.race_sexsnake();
				creature.new_body_part(FPalace_helper.new_sexsnake_body(race));
				creature.new_body_part(FPalace_helper.new_clit(race));
				creature.new_body_part(FPalace_helper.new_vagina(race));
							
				creature.personality.determine_orient(creature.sex);
				creature.personality.new_allegiance(FPalace_helper.get_humility_mob(), creature);
				
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(11);
				
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.melee_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.defence_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.covert_id, 10);
				creature.skills.set_skill_value(creature, FPalace_skills.item_effects_id, 5);
				
				creature.set_gold(3);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.desert_lamia)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				/*template.set_stat_jiggle(FPalace_helper.str_id,29,35);
				template.set_stat_jiggle(FPalace_helper.dex_id,25,31);
				template.set_stat_jiggle(FPalace_helper.con_id,22,28);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,15,22);
				template.set_stat_jiggle(FPalace_helper.int_id,8,14);
				template.set_stat_jiggle(FPalace_helper.wis_id,10,16);
				template.set_stat_jiggle(FPalace_helper.will_id,8,14);
				template.set_stat_jiggle(FPalace_helper.cha_id,9,15);
				template.set_stat_jiggle(FPalace_helper.breast_size_id, 1, 5);
				template.set_stat_jiggle(FPalace_helper.nipple_size_id,0.5,2);
				template.set_stat_jiggle(FPalace_helper.bust_id,28,32);
				template.set_stat_jiggle(FPalace_helper.waist_id,24,28);
				template.set_stat_jiggle(FPalace_helper.hips_id,28,32);
				template.set_stat_jiggle(FPalace_helper.height_id,330,400);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,12,36);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.milk_volume_id,50,150);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,1,4);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,3,8);
				template.set_stat_jiggle(FPalace_helper.vaginal_width_id,1,4);
				template.set_stat_jiggle(FPalace_helper.vaginal_depth_id,3,8);
				//template.set_stat_jiggle(FPalace_helper.egg_fertility_id,0.4,0.6);
				template.set_stat_jiggle(FPalace_helper.age_id,15,21);
				*/
				
				desert_lamia_template = template;
			}
			
			return desert_lamia_template;
		}
		
		private static var forest_wolf_template:Character_template;
		public static function forest_wolf():Character_template{
			if(forest_wolf_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = new Character();
				
				creature.set_move(2);
				var race:Race = FPalace_races.race_wolf();
				
				creature.new_body_part(FPalace_helper.new_hair(race));
				creature.new_body_part(FPalace_helper.new_head(race));
				creature.new_body_part(FPalace_helper.new_eyes(race));
				creature.new_body_part(FPalace_helper.new_barrel(race));
				creature.new_body_part(FPalace_helper.new_thighs(race));
				creature.new_body_part(FPalace_helper.new_left_legs(race));
				creature.new_body_part(FPalace_helper.new_right_legs(race));
				creature.new_body_part(FPalace_helper.new_left_legs(race));
				creature.new_body_part(FPalace_helper.new_right_legs(race));
				creature.new_body_part(FPalace_helper.new_penis(race));
				creature.new_body_part(FPalace_helper.new_balls(race));
							
				creature.personality.determine_orient(creature.sex);
				creature.personality.new_allegiance(FPalace_helper.get_monster_mob(), creature);
				
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(11);
				
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.melee_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.defence_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.covert_id, 10);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.forest_wolf)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				/*template.set_stat_jiggle(FPalace_helper.str_id,29,35);
				template.set_stat_jiggle(FPalace_helper.dex_id,25,31);
				template.set_stat_jiggle(FPalace_helper.con_id,22,28);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,15,22);
				template.set_stat_jiggle(FPalace_helper.int_id,8,14);
				template.set_stat_jiggle(FPalace_helper.wis_id,10,16);
				template.set_stat_jiggle(FPalace_helper.will_id,8,14);
				template.set_stat_jiggle(FPalace_helper.cha_id,9,15);
				template.set_stat_jiggle(FPalace_helper.bust_id,28,32);
				template.set_stat_jiggle(FPalace_helper.waist_id,24,28);
				template.set_stat_jiggle(FPalace_helper.hips_id,28,32);
				template.set_stat_jiggle(FPalace_helper.height_id,330,400);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,12,36);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.age_id,15,21);
				*/
				
				forest_wolf_template = template;
			}
			
			return forest_wolf_template;
		}
		
		private static var snow_reindeer_template:Character_template;
		public static function snow_reindeer():Character_template{
			if(snow_reindeer_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = new Character();
				
				creature.set_move(2);
				var race:Race = FPalace_races.race_reindeer();
				
				creature.new_body_part(FPalace_helper.new_hair(race));
				creature.new_body_part(FPalace_helper.new_head(race));
				creature.new_body_part(FPalace_helper.new_eyes(race));
				creature.new_body_part(FPalace_helper.new_horns(race));
				creature.new_body_part(FPalace_helper.new_barrel(race));
				creature.new_body_part(FPalace_helper.new_thighs(race));
				creature.new_body_part(FPalace_helper.new_left_legs(race));
				creature.new_body_part(FPalace_helper.new_right_legs(race));
				creature.new_body_part(FPalace_helper.new_left_legs(race));
				creature.new_body_part(FPalace_helper.new_right_legs(race));
				creature.new_body_part(FPalace_helper.new_penis(race));
				creature.new_body_part(FPalace_helper.new_balls(race));
							
				creature.personality.determine_orient(creature.sex);
				creature.personality.new_allegiance(FPalace_helper.get_monster_mob(), creature);
				
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(11);
				
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.melee_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.defence_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.covert_id, 10);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.snow_reindeer)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				/*template.set_stat_jiggle(FPalace_helper.str_id,29,35);
				template.set_stat_jiggle(FPalace_helper.dex_id,25,31);
				template.set_stat_jiggle(FPalace_helper.con_id,22,28);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,15,22);
				template.set_stat_jiggle(FPalace_helper.int_id,8,14);
				template.set_stat_jiggle(FPalace_helper.wis_id,10,16);
				template.set_stat_jiggle(FPalace_helper.will_id,8,14);
				template.set_stat_jiggle(FPalace_helper.cha_id,9,15);
				template.set_stat_jiggle(FPalace_helper.bust_id,28,32);
				template.set_stat_jiggle(FPalace_helper.waist_id,24,28);
				template.set_stat_jiggle(FPalace_helper.hips_id,28,32);
				template.set_stat_jiggle(FPalace_helper.height_id,330,400);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,12,36);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.age_id,15,21);
				*/
				
				snow_reindeer_template = template;
			}
			
			return snow_reindeer_template;
		}
		
		private static var savanna_hyena_template:Character_template;
		public static function savanna_hyena():Character_template{
			if(savanna_hyena_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = new Character();
				
				creature.set_move(2);
				var race:Race = FPalace_races.race_hyena();
				
				creature.new_body_part(FPalace_helper.new_hair(race));
				creature.new_body_part(FPalace_helper.new_head(race));
				creature.new_body_part(FPalace_helper.new_eyes(race));
				creature.new_body_part(FPalace_helper.new_barrel(race));
				creature.new_body_part(FPalace_helper.new_thighs(race));
				creature.new_body_part(FPalace_helper.new_left_legs(race));
				creature.new_body_part(FPalace_helper.new_right_legs(race));
				creature.new_body_part(FPalace_helper.new_left_legs(race));
				creature.new_body_part(FPalace_helper.new_right_legs(race));
				creature.new_body_part(FPalace_helper.new_penis(race));
				creature.new_body_part(FPalace_helper.new_balls(race));
							
				creature.personality.determine_orient(creature.sex);
				creature.personality.new_allegiance(FPalace_helper.get_monster_mob(), creature);
				
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(11);
				
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.melee_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.defence_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.covert_id, 10);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.savanna_hyena)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				/*template.set_stat_jiggle(FPalace_helper.str_id,29,35);
				template.set_stat_jiggle(FPalace_helper.dex_id,25,31);
				template.set_stat_jiggle(FPalace_helper.con_id,22,28);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,15,22);
				template.set_stat_jiggle(FPalace_helper.int_id,8,14);
				template.set_stat_jiggle(FPalace_helper.wis_id,10,16);
				template.set_stat_jiggle(FPalace_helper.will_id,8,14);
				template.set_stat_jiggle(FPalace_helper.cha_id,9,15);
				template.set_stat_jiggle(FPalace_helper.bust_id,28,32);
				template.set_stat_jiggle(FPalace_helper.waist_id,24,28);
				template.set_stat_jiggle(FPalace_helper.hips_id,28,32);
				template.set_stat_jiggle(FPalace_helper.height_id,330,400);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,12,36);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.age_id,15,21);
				*/
				
				savanna_hyena_template = template;
			}
			
			return savanna_hyena_template;
		}
		
		private static var swamp_crocodile_template:Character_template;
		public static function swamp_crocodile():Character_template{
			if(swamp_crocodile_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = new Character();
				
				creature.set_move(2);
				var race:Race = FPalace_races.race_crocodile();
				
				creature.new_body_part(FPalace_helper.new_head(race));
				creature.new_body_part(FPalace_helper.new_eyes(race));
				creature.new_body_part(FPalace_helper.new_barrel(race));
				creature.new_body_part(FPalace_helper.new_thighs(race));
				creature.new_body_part(FPalace_helper.new_left_legs(race));
				creature.new_body_part(FPalace_helper.new_right_legs(race));
				creature.new_body_part(FPalace_helper.new_left_legs(race));
				creature.new_body_part(FPalace_helper.new_right_legs(race));
				creature.new_body_part(FPalace_helper.new_penis(race));
				creature.new_body_part(FPalace_helper.new_balls(race));
							
				creature.personality.determine_orient(creature.sex);
				creature.personality.new_allegiance(FPalace_helper.get_monster_mob(), creature);
				
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(11);
				
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.melee_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.defence_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.covert_id, 10);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.swamp_crocodile)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				/*template.set_stat_jiggle(FPalace_helper.str_id,29,35);
				template.set_stat_jiggle(FPalace_helper.dex_id,25,31);
				template.set_stat_jiggle(FPalace_helper.con_id,22,28);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,15,22);
				template.set_stat_jiggle(FPalace_helper.int_id,8,14);
				template.set_stat_jiggle(FPalace_helper.wis_id,10,16);
				template.set_stat_jiggle(FPalace_helper.will_id,8,14);
				template.set_stat_jiggle(FPalace_helper.cha_id,9,15);
				template.set_stat_jiggle(FPalace_helper.bust_id,28,32);
				template.set_stat_jiggle(FPalace_helper.waist_id,24,28);
				template.set_stat_jiggle(FPalace_helper.hips_id,28,32);
				template.set_stat_jiggle(FPalace_helper.height_id,330,400);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,12,36);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.age_id,15,21);
				*/
				
				swamp_crocodile_template = template;
			}
			
			return swamp_crocodile_template;
		}
		
		private static var desert_scorpion_template:Character_template;
		public static function desert_scorpion():Character_template{
			if(desert_scorpion_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = new Character();
				
				creature.set_move(2);
				var race:Race = FPalace_races.race_scorpion();
				
				creature.new_body_part(FPalace_helper.new_head(race));
				creature.new_body_part(FPalace_helper.new_eyes(race));
				creature.new_body_part(FPalace_helper.new_thorax(race));
				creature.new_body_part(FPalace_helper.new_left_arms(race));
				creature.new_body_part(FPalace_helper.new_left_hands(race));
				creature.new_body_part(FPalace_helper.new_right_arms(race));
				creature.new_body_part(FPalace_helper.new_right_hands(race));
				creature.new_body_part(FPalace_helper.new_abdomen(race));
				creature.new_body_part(FPalace_helper.new_left_legs(race));
				creature.new_body_part(FPalace_helper.new_right_legs(race));
				creature.new_body_part(FPalace_helper.new_left_legs(race));
				creature.new_body_part(FPalace_helper.new_right_legs(race));
				creature.new_body_part(FPalace_helper.new_left_legs(race));
				creature.new_body_part(FPalace_helper.new_right_legs(race));
				creature.new_body_part(FPalace_helper.new_left_legs(race));
				creature.new_body_part(FPalace_helper.new_right_legs(race));
				creature.new_body_part(FPalace_helper.new_penis(race));
				creature.new_body_part(FPalace_helper.new_balls(race));
							
				creature.personality.determine_orient(creature.sex);
				creature.personality.new_allegiance(FPalace_helper.get_monster_mob(), creature);
				
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(11);
				
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.melee_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.defence_id, 5);
				creature.skills.set_skill_value(creature, FPalace_skills.covert_id, 10);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.desert_scorpion)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				/*template.set_stat_jiggle(FPalace_helper.str_id,29,35);
				template.set_stat_jiggle(FPalace_helper.dex_id,25,31);
				template.set_stat_jiggle(FPalace_helper.con_id,22,28);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,15,22);
				template.set_stat_jiggle(FPalace_helper.int_id,8,14);
				template.set_stat_jiggle(FPalace_helper.wis_id,10,16);
				template.set_stat_jiggle(FPalace_helper.will_id,8,14);
				template.set_stat_jiggle(FPalace_helper.cha_id,9,15);
				template.set_stat_jiggle(FPalace_helper.bust_id,28,32);
				template.set_stat_jiggle(FPalace_helper.waist_id,24,28);
				template.set_stat_jiggle(FPalace_helper.hips_id,28,32);
				template.set_stat_jiggle(FPalace_helper.height_id,330,400);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,12,36);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.age_id,15,21);
				*/
				
				desert_scorpion_template = template;
			}
			
			return desert_scorpion_template;
		}
		
		private static var polar_bear_template:Character_template;
		public static function polar_bear():Character_template{
			if(polar_bear_template == null){
				var template:Character_template = new Character_template();
				var creature:Character = base_male(FPalace_races.race_polar_bear());
				creature.set_move(2);
				creature.set_character_class(FPalace_classes.cclass_adventurer());
				creature.set_xp(20);
							
				creature.skills.set_skill_value(creature, FPalace_skills.fight_id, 1);
				creature.skills.set_skill_value(creature, FPalace_skills.knowledge_id, 1);
				creature.skills.set_skill_value(creature, FPalace_skills.covert_id, 10);
							
				creature.personality.new_allegiance(FPalace_helper.get_monster_mob(), creature);
				
				creature.reset_stats();
				creature.apply_affect_by_id(FPalace_helper.curr_hp_id, creature.get_stat(FPalace_helper.max_hp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_mp_id, creature.get_stat(FPalace_helper.max_mp_id),0,null,Body.change_stats_total);
				creature.apply_affect_by_id(FPalace_helper.curr_fatigue_id, creature.get_stat(FPalace_helper.max_fatigue_id),0,null,Body.change_stats_total);
				/*
				trace("(FPalace_npcs.polar_bear)");
				trace(creature.statistics(creature));
				trace(creature.appearance(1));
				*/
				template.set_char_to_clone(creature);
				/*
				template.set_stat_jiggle(FPalace_helper.str_id,7,13);
				template.set_stat_jiggle(FPalace_helper.dex_id,7,13);
				template.set_stat_jiggle(FPalace_helper.con_id,7,13);
				template.set_stat_jiggle(FPalace_helper.sex_appeal_id,7,13);
				template.set_stat_jiggle(FPalace_helper.int_id,7,13);
				template.set_stat_jiggle(FPalace_helper.wis_id,7,13);
				template.set_stat_jiggle(FPalace_helper.will_id,7,13);
				template.set_stat_jiggle(FPalace_helper.cha_id,7,13);			
				template.set_stat_jiggle(FPalace_helper.breast_size_id, 1, 2);
				template.set_stat_jiggle(FPalace_helper.nipple_size_id,0.5,1);
				template.set_stat_jiggle(FPalace_helper.hair_length_id,10,24);
				template.set_stat_jiggle(FPalace_helper.eye_colour_id,4,16);
				template.set_stat_jiggle(FPalace_helper.milk_volume_id,40,110);
				template.set_stat_jiggle(FPalace_helper.anal_width_id,2,4);
				template.set_stat_jiggle(FPalace_helper.anal_depth_id,5,7);
				template.set_stat_jiggle(FPalace_helper.vaginal_width_id,2,4);
				template.set_stat_jiggle(FPalace_helper.vaginal_depth_id,6,8);
				*/
				polar_bear_template = template;
			}
			
			return polar_bear_template;
		}
		
		public static function grasslands_party_caravan():Array{
			return [grasslands_caravan_merchant(), grasslands_caravan_guard(), grasslands_caravan_guard()];			
		}
		
		private static function base_male(race:Race):Character{
			var creature:Character = new Character();
			
			creature.new_body_part(FPalace_helper.new_hair(race));
			creature.new_body_part(FPalace_helper.new_head(race));
			creature.new_body_part(FPalace_helper.new_eyes(race));
			creature.new_body_part(FPalace_helper.new_torso(race));
			creature.new_body_part(FPalace_helper.new_left_arms(race));
			creature.new_body_part(FPalace_helper.new_left_hands(race));
			creature.new_body_part(FPalace_helper.new_right_arms(race));
			creature.new_body_part(FPalace_helper.new_right_hands(race));
			creature.new_body_part(FPalace_helper.new_hips(race));
			creature.new_body_part(FPalace_helper.new_left_legs(race));
			creature.new_body_part(FPalace_helper.new_left_feet(race));
			creature.new_body_part(FPalace_helper.new_right_legs(race));
			creature.new_body_part(FPalace_helper.new_right_feet(race));
			creature.new_body_part(FPalace_helper.new_penis(race));
			creature.new_body_part(FPalace_helper.new_balls(race));
			
			creature.personality.determine_orient(creature.sex);
			
			return creature;
		}
		
		private static function base_female(race:Race):Character{
			var creature:Character = new Character();
			
			creature.new_body_part(FPalace_helper.new_hair(race));
			creature.new_body_part(FPalace_helper.new_head(race));
			creature.new_body_part(FPalace_helper.new_eyes(race));
			creature.new_body_part(FPalace_helper.new_torso(race));
			creature.new_body_part(FPalace_helper.new_left_arms(race));
			creature.new_body_part(FPalace_helper.new_left_hands(race));
			creature.new_body_part(FPalace_helper.new_right_arms(race));
			creature.new_body_part(FPalace_helper.new_right_hands(race));
			creature.new_body_part(FPalace_helper.new_hips(race));
			creature.new_body_part(FPalace_helper.new_left_legs(race));
			creature.new_body_part(FPalace_helper.new_left_feet(race));
			creature.new_body_part(FPalace_helper.new_right_legs(race));
			creature.new_body_part(FPalace_helper.new_right_feet(race));
			creature.new_body_part(FPalace_helper.new_breasts(race));
			creature.new_body_part(FPalace_helper.new_vagina(race));
			creature.new_body_part(FPalace_helper.new_clit(race));
			
			creature.personality.determine_orient(creature.sex);
			
			return creature;
		}
		
		private static function base_herm(race:Race):Character{
			var creature:Character = new Character();
			
			creature.new_body_part(FPalace_helper.new_hair(race));
			creature.new_body_part(FPalace_helper.new_head(race));
			creature.new_body_part(FPalace_helper.new_eyes(race));
			creature.new_body_part(FPalace_helper.new_torso(race));
			creature.new_body_part(FPalace_helper.new_left_arms(race));
			creature.new_body_part(FPalace_helper.new_left_hands(race));
			creature.new_body_part(FPalace_helper.new_right_arms(race));
			creature.new_body_part(FPalace_helper.new_right_hands(race));
			creature.new_body_part(FPalace_helper.new_hips(race));
			creature.new_body_part(FPalace_helper.new_left_legs(race));
			creature.new_body_part(FPalace_helper.new_left_feet(race));
			creature.new_body_part(FPalace_helper.new_right_legs(race));
			creature.new_body_part(FPalace_helper.new_right_feet(race));
			creature.new_body_part(FPalace_helper.new_breasts(race));
			creature.new_body_part(FPalace_helper.new_vagina(race));
			creature.new_body_part(FPalace_helper.new_clit(race));
			creature.new_body_part(FPalace_helper.new_penis(race));
			creature.new_body_part(FPalace_helper.new_balls(race));
			
			creature.personality.determine_orient(creature.sex);
			
			return creature;
		}		
	}
}