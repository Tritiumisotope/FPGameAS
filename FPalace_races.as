package  {
	
	public class FPalace_races {

		public function FPalace_races() {
			// constructor code
		}
		
		//thinking the some of the anthropomorphic races should be based on the chinese zodiac: 
			//Rat(thereish) – 鼠 (子) (Yang, 1st Trine, Fixed Element Water)
			//Ox(thereish) – 牛 (丑) (Yin, 2nd Trine, Fixed Element Water)
			//Tiger(thereish) – 虎 (寅) (Yang, 3rd Trine, Fixed Element Wood)
			//Rabbit(there) – 兔 or 兎 (卯) (Yin, 4th Trine, Fixed Element Wood)
			//Dragon(thereish) – 龍 / 龙 (辰) (Yang, 1st Trine, Fixed Element Wood)
			//Snake(thereish) – 蛇 (巳) (Yin, 2nd Trine, Fixed Element Fire)
			//Horse(there) – 馬 / 马 (午) (Yang, 3rd Trine, Fixed Element Fire)
			//Goat – 羊 (未) (Yin, 4th Trine, Fixed Element Fire)
			//Monkey – 猴 (申) (Yang, 1st Trine, Fixed Element Metal)
			//Rooster – 雞 / 鸡 (酉) (Yin, 2nd Trine, Fixed Element Metal)
			//Dog – 狗 / 犬 (戌) (Yang, 3rd Trine, Fixed Element Metal)
			//Pig – 豬 / 猪 (亥) (Yin, 4th Trine, Fixed Element Water)
			
		/*20 most popular "fursonas"
			1	Fox
			2	Wolf
			3	(There)Dog
			4	(thereish)Dragon
			5	(there)Cat
			6	Tiger
			7	Lion
			8	Raccoon
			9	(there)Rabbit
			10	Skunk
			11	Bear
			12	Otter
			13	(there)Horse
			14	Coyote
			15	Cheetah
			16	Hyena
			17	Snow Leopard
			18	Kangaroo
			19	Bird
			20	(There)Rat
		*/
		//need to finish adding part descriptions
		//want the descriptions to be able to change based on stat values
		
		private static var goo_race:Race;
		private static var human_race:Race;
		private static var anthro_rabbit_race:Race;
		private static var elf_race:Race;
		private static var dwarf_race:Race;
		private static var goblin_race:Race;
		private static var anthro_feline_race:Race;
		private static var anthro_canine_race:Race;
		private static var anthro_bovine_race:Race;
		private static var anthro_equine_race:Race;
		private static var anthro_donkey_race:Race;
		private static var anthro_bee_race:Race;
		private static var anthro_lizard_race:Race;
		private static var anthro_frog_race:Race;
		private static var anthro_fish_race:Race;
		private static var anthro_spider_race:Race;
		private static var anthro_mouse_race:Race;
		private static var angelic_race:Race;
		private static var demon_race:Race;
		private static var orc_race:Race;
		private static var anthro_deer_race:Race;
		private static var anthro_fox_race:Race;
		private static var anthro_penguin_race:Race;
		private static var anthro_seal_race:Race;
		
		private static var sexsnake_race:Race;
		private static var scorpion_race:Race;
		private static var horse_race:Race;
		private static var wolf_race:Race;
		private static var hyena_race:Race;
		private static var croc_race:Race;
		private static var reindeer_race:Race;
		private static var polar_race:Race;
		
		public static function race_goo():Race{
			if(goo_race == null){
				var race:Race = new Race();
				
				race.set_name("goo");
				race.new_stat(FPalace_helper.stat_biomass_consumed());
				race.new_stat(FPalace_helper.stat_goo_colour());
				
				race.add_damage_resistance(FPalace_helper.fire_damage_type().get_id());
				race.add_damage_resistance(FPalace_helper.pierce_damage_type().get_id());
				race.add_damage_resistance(FPalace_helper.slash_damage_type().get_id());
				race.add_damage_weakness(FPalace_helper.lit_damage_type().get_id());
				
				race.set_bonus(FPalace_helper.cha_id,1, FPalace_helper.head_slot);
				race.set_bonus(FPalace_helper.anal_depth_id,15, FPalace_helper.hips_slot);
				race.set_bonus(FPalace_helper.anal_width_id,7, FPalace_helper.hips_slot);
				race.set_bonus(FPalace_helper.vaginal_width_id,7, FPalace_helper.vag_slot);
				race.set_bonus(FPalace_helper.vaginal_depth_id,15, FPalace_helper.vag_slot);
				race.set_bonus(FPalace_helper.max_lust_id,10);
				race.set_bonus(FPalace_helper.goo_colour_id,0.3);
				
				race.add_status_immunity(Tick_Effect.lactating_status);
				//STR:22
				race.set_stat_max(FPalace_helper.str_id, 3, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.str_id, 3, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.hands_slot);
				//DEX:25
				race.set_stat_max(FPalace_helper.dex_id, 3, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.dex_id, 3, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2.5, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2.5, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2.5, FPalace_helper.hands_slot);				
				//CON:25
				race.set_stat_max(FPalace_helper.con_id, 3, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.con_id, 3, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.con_id, 2.5, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.con_id, 2.5, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.con_id, 2.5, FPalace_helper.hands_slot);
				//BEAUTY:22
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1.5, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.eyes_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1.5, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.breasts_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.vag_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.clit_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.cock_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.balls_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.hands_slot);				
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.feet_slot);
				
				//INT:20	
				race.set_stat_max(FPalace_helper.int_id, 10, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.int_id, 10, FPalace_helper.torso_slot);
				//WIS:20
				race.set_stat_max(FPalace_helper.wis_id, 10, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.wis_id, 10, FPalace_helper.torso_slot);
				//WILL:21	
				race.set_stat_max(FPalace_helper.will_id, 10.5, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.will_id, 10.5, FPalace_helper.torso_slot);
				//CHA:24
				race.set_stat_max(FPalace_helper.cha_id, 12, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.cha_id, 12, FPalace_helper.torso_slot);
											
				race.add_part_description(FPalace_helper.head_slot,"smiling caricature of humanity, </noun> translucent face slightly disturbing as you look at both </objnoun> and the room behind </noun> head. ");
				race.add_part_image(FPalace_helper.head_slot, FPalace_helper.goo_head_1_img);
				race.add_part_description(FPalace_helper.eyes_slot,"large, perfectly circular, perfectly white orbs, with pupils that are every bit as circular ");
				race.add_part_image(FPalace_helper.eyes_slot, FPalace_helper.goo_eyes_1_img);
				race.add_part_description(FPalace_helper.torso_slot,"translucent, allowing you to see through </objnoun> to the other side. It occasionaly shifts and flows, forming visible edies within </objnoun>. ");
				race.add_part_image(FPalace_helper.torso_slot, FPalace_helper.goo_torso_1_img);
				race.add_part_description(FPalace_helper.arms_slot,"appear to be made of </sd"+FPalace_helper.goo_colour_id+"> goo, an occasional tendril dripping as </pronoun> moves them. ");
				race.add_part_image(FPalace_helper.arms_slot, FPalace_helper.goo_arm_1_img);
				race.add_part_description(FPalace_helper.hands_slot,"shifting and moving, changing from one shape to the next without actually moving the individual digits. ");
				race.add_part_image(FPalace_helper.hands_slot, FPalace_helper.goo_hand_1_img);
				race.add_part_description(FPalace_helper.breasts_slot,"semi-translucent and almost spherical, like water balloons. ");
				race.add_part_image(FPalace_helper.breasts_slot, FPalace_helper.goo_breasts_1_img);
				race.add_part_description(FPalace_helper.cock_slot,"completely translucent, and justs from </noun> groin like a foreign object. ");
				race.add_part_image(FPalace_helper.cock_slot, FPalace_helper.goo_penis_1_img);
				race.add_part_description(FPalace_helper.balls_slot,"visibly churning, their inner workings apparent due to their less than opaque nature. ");
				race.add_part_image(FPalace_helper.balls_slot, FPalace_helper.goo_balls_1_img);
				race.add_part_description(FPalace_helper.hips_slot,"jiggles with each movement mermerizingly as </pronoun> moves. ");
				race.add_part_image(FPalace_helper.hips_slot, FPalace_helper.goo_hips_1_img);
				race.add_part_description(FPalace_helper.vag_slot,"appears as a gapping maw delving deep into </noun> torso. ");
				race.add_part_image(FPalace_helper.vag_slot, FPalace_helper.goo_vag_1_img);
				race.add_part_description(FPalace_helper.legs_slot,"merging and seperating occasionally as you watch </objnoun>. ");
				race.add_part_image(FPalace_helper.legs_slot, FPalace_helper.goo_leg_1_img);
				race.add_part_description(FPalace_helper.feet_slot,"nothing more than a pile of </sd"+FPalace_helper.goo_colour_id+"> goo from which the rest of </objnoun> seems to stem from. ");
				race.add_part_image(FPalace_helper.feet_slot, FPalace_helper.goo_foot_1_img);
				race.add_part_description(FPalace_helper.clit_slot,"nothing more than a slighly different coloured nub of goo. ");
				race.add_part_image(FPalace_helper.clit_slot, FPalace_helper.goo_clit_1_img);
				
				race.new_female_name_set(["Aaqua","Jinni","Areena","Seka","Trinity","Amethyst","Bebe","Coco","Desiree","Gigi","Gooey","Oozi","Glo"]);
				race.new_male_name_set(["Goon", "Lexington", "Mister", "Mandingo", "Nacho", "Toni", "Boz", "Kid", "Tee", "Slimi","Slus"]);
				race.new_surname_set([""]);
				
				race.add_part(FPalace_helper.new_head(race), 1);
				race.add_part(FPalace_helper.new_torso(race), 1);
				race.add_part(FPalace_helper.new_left_arms(race), 1);
				race.add_part(FPalace_helper.new_right_arms(race), 1);
				race.add_part(FPalace_helper.new_left_hands(race), 1);
				race.add_part(FPalace_helper.new_right_hands(race), 1);
				race.add_part(FPalace_helper.new_hips(race), 1);
				race.add_part(FPalace_helper.new_left_legs(race), 1);
				race.add_part(FPalace_helper.new_left_feet(race), 1);
				race.add_part(FPalace_helper.new_right_legs(race), 1);
				race.add_part(FPalace_helper.new_right_feet(race), 1);
				race.add_part(FPalace_helper.new_breasts(race), 1);
				race.add_part(FPalace_helper.new_vagina(race), 1);
				race.add_part(FPalace_helper.new_clit(race), 1);
				
				var a3:Action = new Action();
					a3.set_name("Goo lob");
					a3.set_attack_flag(Action.attack_type_single_target, "Skills");
					a3.set_attack_description("Lob some of your goo at a single opponent. ");
						var challenge2:Challenge = new Challenge(true);
						challenge2.set_attack_stat(FPalace_skills.ranged_id);
						challenge2.set_defense_stat(FPalace_skills.dodging_id);
						challenge2.set_variability(20);
						challenge2.set_text("Goo lob");
						var consequence2:Consequence = new Consequence();
						consequence2.set_damage_type(FPalace_helper.lust_damage_type().get_id());
						consequence2.add_consequence(FPalace_helper.curr_hp_id,-1, "</n2> hits </n> with some of </noun2> lobbed goo. ",0);
						consequence2.add_consequence(FPalace_helper.lust_id,2, "</n> is a bit distracted by the scent. ",0);
						consequence2.add_consequence(0,0, "</n2> futily throws </noun2> goo about. ",-1);
									
					a3.add_challenge(challenge2,consequence2);			
				
				race.new_attack(a3);
				
				a3 = new Action();
					a3.set_name("Body Invade");
					a3.set_attack_flag(Action.attack_type_single_target, "Skills");
					a3.set_attack_description("Invade a single targets body with your goo. ");
					a3.set_requirement(FPalace_helper.lust_id, 10);
						challenge2 = new Challenge(true);
						challenge2.set_attack_stat(FPalace_skills.grappling_id);
						challenge2.set_defense_stat(FPalace_skills.dodging_id);
						challenge2.set_variability(20);
						challenge2.set_text("Body Invade");
						consequence2 = new Consequence();
						consequence2.set_damage_type(FPalace_helper.lust_damage_type().get_id());
						consequence2.add_consequence(FPalace_helper.lust_id,20, "</n2> slathers </n> with a tendril of </noun2> goo. ",0);
						consequence2.add_consequence(FPalace_helper.vaginal_depth_id,1, "</n2> invades </n> nether regions with a tendril of </noun2> goo. ",0);
						consequence2.add_consequence(FPalace_helper.vaginal_width_id,0.3, "</n2> invades </n> nether regions with a tendril of </noun2> goo. ",0);
						consequence2.add_consequence(FPalace_helper.breast_size_id,0.3, "</n2> invades </n> nipples with a tendril of </noun2> goo. ",0);
						consequence2.add_consequence(FPalace_helper.penis_length_id,1, "</n2> invades </n> nether regions with a tendril of </noun2> goo. ",0);
						consequence2.add_consequence(FPalace_helper.penis_girth_id,0.3, "</n2> invades </n> nether regions with a tendril of </noun2> goo. ",0);
						consequence2.add_consequence(FPalace_helper.balls_size_id,1, "</n2> invades </n> nether regions with a tendril of </noun2> goo. ",0);
						consequence2.add_consequence(0,0, "</n2> futily lashes about with a tendril of goo. ",-1);
						consequence2.apply_random_effect();					
									
					a3.add_challenge(challenge2,consequence2);		
				
				race.new_attack(a3);
				
				//need an action to dump out biomass_consumed into either new body parts or FPalace_npcs.goo_slime() (or takeover other parts for a non-entirely goo character)
				var a:Action = new Action();
				a.set_name("Goo-spantion");
				a.set_personal();
				a.set_dialogue("</n> suddenly has a look of constirnation on </noun> </c0>. ");
				a.set_requirement(FPalace_helper.biomass_consumed,2000);
				var c:Challenge = new Challenge();
				c.set_attack_stat(FPalace_helper.biomass_consumed);
				c.set_defense_stat(-1,0);
				c.set_variability(0);
				c.set_text("face");
				var cons:Consequence = new Consequence();
				cons.add_change_effect(race);
				//still want to be able to spawn new creature... or maybe that should be a special one for just one character (Goo empress)
				cons.add_consequence(FPalace_helper.lust_id,0, "</n> suddenly opens </noun> eyes in shock, </noun> body growing and changing. ",0);
				cons.add_consequence(FPalace_helper.lust_id,26, "</n> ends up furrowing </noun> brow as nothing happens. ",-1);
				a.add_challenge(c,cons);
				
				race.new_action(a);
				goo_race = race;
			}
			
			return goo_race;
		}
		
		public static function race_human():Race{
			if(human_race == null){
				var race:Race = new Race();
				
				race.set_name("human");
				
				race.new_stat(FPalace_helper.stat_skin_colour());
				
				race.set_bonus(FPalace_helper.cha_id,1, FPalace_helper.head_slot);
				race.set_bonus(FPalace_helper.eye_colour_id,9.9, FPalace_helper.eyes_slot);
				
				//STR: 22	
				race.set_stat_max(FPalace_helper.str_id, 3, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.str_id, 3, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.hands_slot);				
				//DEX: 22	
				race.set_stat_max(FPalace_helper.dex_id, 3, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.hands_slot);
				race.set_stat_max(FPalace_helper.dex_id, 3, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.feet_slot);
				//CON: 22	
				race.set_stat_max(FPalace_helper.con_id, 3, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.hands_slot);
				race.set_stat_max(FPalace_helper.con_id, 3, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.feet_slot);
				//BEAUTY: 23
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1.5, FPalace_helper.eyes_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1.5, FPalace_helper.hair_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.hands_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.breasts_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.vag_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.clit_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.cock_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.balls_slot);
				//INT: 22
				race.set_stat_max(FPalace_helper.int_id, 11, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.int_id, 11, FPalace_helper.torso_slot);
				//WIS: 22
				race.set_stat_max(FPalace_helper.wis_id, 11, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.wis_id, 11, FPalace_helper.torso_slot);
				//WILL: 22
				race.set_stat_max(FPalace_helper.will_id, 11, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.will_id, 11, FPalace_helper.torso_slot);
				//CHA: 24
				race.set_stat_max(FPalace_helper.cha_id, 12, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.cha_id, 12, FPalace_helper.torso_slot);				
				
				race.add_part_description(FPalace_helper.head_slot,"cheery faced human, </noun> smooth </sd"+FPalace_helper.skin_colour_id+"> skin and curved ears marking </objnoun> as such. ");
				race.add_part_image(FPalace_helper.head_slot, FPalace_helper.human_head_1_img);
				race.add_part_description(FPalace_helper.eyes_slot,"oval translucent white orbs, with pupils that are circular ");
				race.add_part_image(FPalace_helper.eyes_slot, FPalace_helper.human_eyes_1_img);
				race.add_part_description(FPalace_helper.hair_slot,"straight, ");
				race.add_part_image(FPalace_helper.hair_slot, FPalace_helper.human_hair_1_img);
				race.add_part_description(FPalace_helper.torso_slot,"</sd"+FPalace_helper.skin_colour_id+"> flesh excentuating </noun> form. ");
				race.add_part_image(FPalace_helper.torso_slot, FPalace_helper.human_torso_1_img);
				race.add_part_description(FPalace_helper.arms_slot,"smooth skinned and </sd"+FPalace_helper.skin_colour_id+">. ");
				race.add_part_image(FPalace_helper.arms_slot, FPalace_helper.human_arm_1_img);
				race.add_part_description(FPalace_helper.hands_slot,"five fingers covered in </sd"+FPalace_helper.skin_colour_id+"> flesh, every finger tipped with a translucent nail. ");
				race.add_part_image(FPalace_helper.hands_slot, FPalace_helper.human_hand_1_img);
				race.add_part_description(FPalace_helper.breasts_slot,"</sd"+FPalace_helper.skin_colour_id+"> skinned teardrops atop </noun> torso, each topped with a pert pink nipple. ");
				race.add_part_image(FPalace_helper.breasts_slot, FPalace_helper.human_breasts_1_img);
				race.add_part_description(FPalace_helper.cock_slot,"smooth </sd"+FPalace_helper.skin_colour_id+"> flesh, it's head mushroom-shaped. ");
				race.add_part_image(FPalace_helper.cock_slot, FPalace_helper.human_penis_1_img);
				race.add_part_description(FPalace_helper.balls_slot,"covered in wrinkly </sd"+FPalace_helper.skin_colour_id+"> flesh. ");
				race.add_part_image(FPalace_helper.balls_slot, FPalace_helper.human_balls_1_img);
				race.add_part_description(FPalace_helper.hips_slot,"firm taunt </sd"+FPalace_helper.skin_colour_id+"> flesh. ");
				race.add_part_image(FPalace_helper.hips_slot, FPalace_helper.human_hips_1_img);
				race.add_part_description(FPalace_helper.vag_slot,"a set of cute, pert lips that fold on one another like flower pettles. ");
				race.add_part_image(FPalace_helper.vag_slot, FPalace_helper.human_vag_1_img);
				race.add_part_description(FPalace_helper.legs_slot,"straight </sd"+FPalace_helper.skin_colour_id+"> flesh that bend forward at the knee. ");
				race.add_part_image(FPalace_helper.legs_slot, FPalace_helper.human_leg_1_img);
				race.add_part_description(FPalace_helper.feet_slot,"five toes and a length of </sd"+FPalace_helper.skin_colour_id+"> flesh. ");
				race.add_part_image(FPalace_helper.feet_slot, FPalace_helper.human_foot_1_img);
				race.add_part_description(FPalace_helper.clit_slot,"a pink pearl shapped nub. ");
				race.add_part_image(FPalace_helper.clit_slot, FPalace_helper.human_clit_1_img);
				
				race.new_female_name_set(["Abby", "Adela", "Becky", "Bianca", "Brittany", "Carol", "Caitlyn", "Casey", "Chelsi", "Crissy", "Dana", "Dara", "Jane", "Erica", "Evelyn", "Felicia", "Franchesca", "Giana", "Gracie", "Hailey", "Hazel", "Heidi", "Ivana", "Janeen", "Janice", "Jazmin", "Jessica", "Josie", "Lana", "Lauren", "Mandy", "Marcy", "Natalie", "Nicole", "Nikki", "Pamela", "Penny", "Priscilla", "Rachel", "Sabrina", "Sarah", "Shannon", "Stacy", "Tammy", "Teresa", "Katherine", "Wendy"]);
				race.new_male_name_set([ "Adam", "Bruce", "Bob", "Daniel", "Ed", "Jim", "John", "Tony", "Peter", "Rob", "Ryan", "Will"]);
				race.new_surname_set(["Armschlong", "Adams", "Anaconda", "Baker", "Batterblaster", "Bonesworth", "Cummings", "Cockswell", "Danglemore", "Doe", "Everhard", "Femwood", "Frankfurter", "Junkstuffer", "Jerkstein", "Jumboner", "Lancealot", "Ramrod", "Smith", "Stinger"]);
				
				race.set_preg_effect(mamal_preg(Main.t1_month * 9));
				
				race.add_part(FPalace_helper.new_head(race), 1);
				race.add_part(FPalace_helper.new_torso(race), 1);
				race.add_part(FPalace_helper.new_left_arms(race), 1);
				race.add_part(FPalace_helper.new_right_arms(race), 1);
				race.add_part(FPalace_helper.new_left_hands(race), 1);
				race.add_part(FPalace_helper.new_right_hands(race), 1);
				race.add_part(FPalace_helper.new_hips(race), 1);
				race.add_part(FPalace_helper.new_left_legs(race), 1);
				race.add_part(FPalace_helper.new_left_feet(race), 1);
				race.add_part(FPalace_helper.new_right_legs(race), 1);
				race.add_part(FPalace_helper.new_right_feet(race), 1);
				human_race = race;
			}
			return human_race;
		}
		
		public static function race_angel():Race{
			if(angelic_race == null){
				var race:Race = new Race();
				race.set_name("angel");
				
				race.set_aging_mod(100);
				race.new_stat(FPalace_helper.stat_skin_colour());
				
				race.set_bonus(FPalace_helper.cha_id,1, FPalace_helper.head_slot);
				race.set_bonus(FPalace_helper.eye_colour_id,9.9, FPalace_helper.eyes_slot);
				//STR: 18	
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.str_id, 1, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.hands_slot);
				//DEX: 19	
				race.set_stat_max(FPalace_helper.dex_id, 1, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.hands_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.feet_slot);
				//CON: 19	
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.hands_slot);
				race.set_stat_max(FPalace_helper.con_id, 1, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.feet_slot);
				//BEAUTY: 19
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.eyes_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.hair_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.breasts_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.wings_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.hands_slot);				
				//INT: 26
				race.set_stat_max(FPalace_helper.int_id, 13, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.int_id, 13, FPalace_helper.torso_slot);
				//WIS: 26
				race.set_stat_max(FPalace_helper.wis_id, 13, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.wis_id, 13, FPalace_helper.torso_slot);
				//WILL: 26
				race.set_stat_max(FPalace_helper.will_id, 13, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.will_id, 13, FPalace_helper.torso_slot);
				//CHA: 26
				race.set_stat_max(FPalace_helper.cha_id, 13, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.cha_id, 13, FPalace_helper.torso_slot);
				
				
				race.add_part_description(FPalace_helper.head_slot,"cheery faced angel, </noun> smooth </sd"+FPalace_helper.skin_colour_id+"> skin and curved ears marking </objnoun> as such. ");
				race.add_part_image(FPalace_helper.head_slot, FPalace_helper.human_head_1_img);
				race.add_part_description(FPalace_helper.eyes_slot,"oval translucent white orbs, with pupils that are circular ");
				race.add_part_image(FPalace_helper.eyes_slot, FPalace_helper.human_eyes_1_img);
				race.add_part_description(FPalace_helper.hair_slot,"straight, ");
				race.add_part_image(FPalace_helper.hair_slot, FPalace_helper.human_hair_1_img);
				race.add_part_description(FPalace_helper.torso_slot,"</sd"+FPalace_helper.skin_colour_id+"> flesh excentuating </noun> form. ");
				race.add_part_image(FPalace_helper.torso_slot, FPalace_helper.human_torso_1_img);
				race.add_part_description(FPalace_helper.wings_slot,"filled with the purest white feathers. ");
				race.add_part_image(FPalace_helper.wings_slot, FPalace_helper.angel_wing_1_img);				
				race.add_part_description(FPalace_helper.arms_slot,"smooth skinned and </sd"+FPalace_helper.skin_colour_id+">. ");
				race.add_part_image(FPalace_helper.arms_slot, FPalace_helper.human_arm_1_img);
				race.add_part_description(FPalace_helper.hands_slot,"five fingers covered in </sd"+FPalace_helper.skin_colour_id+"> flesh, every finger tipped with a translucent nail. ");
				race.add_part_image(FPalace_helper.hands_slot, FPalace_helper.human_hand_1_img);
				race.add_part_description(FPalace_helper.hips_slot,"firm taunt </sd"+FPalace_helper.skin_colour_id+"> flesh. ");
				race.add_part_image(FPalace_helper.hips_slot, FPalace_helper.human_hips_1_img);
				race.add_part_description(FPalace_helper.legs_slot,"straight </sd"+FPalace_helper.skin_colour_id+"> flesh that bend forward at the knee. ");
				race.add_part_image(FPalace_helper.legs_slot, FPalace_helper.human_leg_1_img);
				race.add_part_description(FPalace_helper.feet_slot,"five toes and a length of </sd"+FPalace_helper.skin_colour_id+"> flesh. ");
				race.add_part_image(FPalace_helper.feet_slot, FPalace_helper.human_foot_1_img);
				race.add_part_description(FPalace_helper.breasts_slot,"</sd"+FPalace_helper.skin_colour_id+"> skinned teardrops atop </noun> torso, each topped with a pert pink nipple. ");
				race.add_part_image(FPalace_helper.breasts_slot, FPalace_helper.human_breasts_1_img);				
				
				race.new_female_name_set(["Angela", "Eve"]);
				race.new_male_name_set([ "Adam", "Angel"]);
				race.new_surname_set([""]);
				
				race.set_preg_effect(mamal_preg(Main.t1_month * 9));
				
				race.add_part(FPalace_helper.new_head(race), 1);
				race.add_part(FPalace_helper.new_torso(race), 1);
				race.add_part(FPalace_helper.new_left_arms(race), 1);
				race.add_part(FPalace_helper.new_right_arms(race), 1);
				race.add_part(FPalace_helper.new_left_hands(race), 1);
				race.add_part(FPalace_helper.new_right_hands(race), 1);
				race.add_part(FPalace_helper.new_wings(race), 1);
				race.add_part(FPalace_helper.new_hips(race), 1);
				race.add_part(FPalace_helper.new_left_legs(race), 1);
				race.add_part(FPalace_helper.new_left_feet(race), 1);
				race.add_part(FPalace_helper.new_right_legs(race), 1);
				race.add_part(FPalace_helper.new_right_feet(race), 1);
				angelic_race = race;
			}
			return angelic_race;
		}
		
		public static function race_demon():Race{
			if(demon_race == null){
				var race:Race = new Race();
				race.set_name("demon");
				
				race.set_aging_mod(100);
				race.new_stat(FPalace_helper.stat_goo_colour());
				
				race.set_bonus(FPalace_helper.cha_id,1, FPalace_helper.head_slot);
				race.set_bonus(FPalace_helper.eye_colour_id,9.9, FPalace_helper.eyes_slot);
				//STR:26	
				race.set_stat_max(FPalace_helper.str_id, 3, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.str_id, 3, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.str_id, 3, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.hands_slot);				
				race.set_stat_max(FPalace_helper.str_id, 3, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.feet_slot);
				//DEX:26	
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.tail_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.dex_id, 3, FPalace_helper.hands_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.dex_id, 3, FPalace_helper.feet_slot);
				//CON:26	
				race.set_stat_max(FPalace_helper.con_id, 4, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.con_id, 4, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.con_id, 3, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.hands_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.feet_slot);
				//BEAUTY:26
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.breasts_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.vag_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.clit_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.cock_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.balls_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.eyes_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.hair_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.tail_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.wings_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.hands_slot);				
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.feet_slot);
				//INT: 19
				race.set_stat_max(FPalace_helper.int_id, 9.5, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.int_id, 9.5, FPalace_helper.torso_slot);
				//WIS: 18
				race.set_stat_max(FPalace_helper.wis_id, 9, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.wis_id, 9, FPalace_helper.torso_slot);
				//WILL: 19
				race.set_stat_max(FPalace_helper.will_id, 9.5, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.will_id, 9.5, FPalace_helper.torso_slot);
				//CHA: 19
				race.set_stat_max(FPalace_helper.cha_id, 9.5, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.cha_id, 9.5, FPalace_helper.torso_slot);
				
				
				race.add_part_description(FPalace_helper.head_slot,"cheery faced demon, </noun> smooth </sd"+FPalace_helper.goo_colour_id+"> skin and pointed ears marking </objnoun> as such. ");
				race.add_part_image(FPalace_helper.head_slot, FPalace_helper.human_head_1_img);
				race.add_part_description(FPalace_helper.eyes_slot,"oval translucent white orbs, with pupils that are serpent-like ");
				race.add_part_image(FPalace_helper.eyes_slot, FPalace_helper.human_eyes_1_img);
				race.add_part_description(FPalace_helper.hair_slot,"straight, ");
				race.add_part_image(FPalace_helper.hair_slot, FPalace_helper.human_hair_1_img);
				race.add_part_description(FPalace_helper.torso_slot,"</sd"+FPalace_helper.goo_colour_id+"> flesh excentuating </noun> form. ");
				race.add_part_image(FPalace_helper.torso_slot, FPalace_helper.human_torso_1_img);
				race.add_part_description(FPalace_helper.arms_slot,"smooth skinned and </sd"+FPalace_helper.goo_colour_id+">. ");
				race.add_part_image(FPalace_helper.arms_slot, FPalace_helper.human_arm_1_img);
				race.add_part_description(FPalace_helper.hands_slot,"five fingers covered in </sd"+FPalace_helper.goo_colour_id+"> flesh, every finger tipped with a translucent nail. ");
				race.add_part_image(FPalace_helper.hands_slot, FPalace_helper.human_hand_1_img);
				race.add_part_description(FPalace_helper.breasts_slot,"</sd"+FPalace_helper.goo_colour_id+"> skinned teardrops atop </noun> torso, each topped with a pert pink nipple. ");
				race.add_part_image(FPalace_helper.breasts_slot, FPalace_helper.human_breasts_1_img);
				race.add_part_description(FPalace_helper.cock_slot,"ribbed </sd"+FPalace_helper.goo_colour_id+"> flesh, it's head mushroom-shaped. ");
				race.add_part_image(FPalace_helper.cock_slot, FPalace_helper.human_penis_1_img);
				race.add_part_description(FPalace_helper.balls_slot,"covered in wrinkly </sd"+FPalace_helper.goo_colour_id+"> flesh. ");
				race.add_part_image(FPalace_helper.balls_slot, FPalace_helper.human_balls_1_img);
				race.add_part_description(FPalace_helper.hips_slot,"firm taunt </sd"+FPalace_helper.goo_colour_id+"> flesh. ");
				race.add_part_image(FPalace_helper.hips_slot, FPalace_helper.human_hips_1_img);
				race.add_part_description(FPalace_helper.vag_slot,"a set of cute, pert lips that fold on one another like flower pettles. ");
				race.add_part_image(FPalace_helper.vag_slot, FPalace_helper.human_vag_1_img);
				race.add_part_description(FPalace_helper.legs_slot,"straight </sd"+FPalace_helper.goo_colour_id+"> flesh that bend forward at the knee. ");
				race.add_part_image(FPalace_helper.legs_slot, FPalace_helper.human_leg_1_img);
				race.add_part_description(FPalace_helper.feet_slot,"five toes and a length of </sd"+FPalace_helper.goo_colour_id+"> flesh. ");
				race.add_part_image(FPalace_helper.feet_slot, FPalace_helper.human_foot_1_img);
				race.add_part_description(FPalace_helper.clit_slot,"a pink pearl shapped nub. ");
				race.add_part_image(FPalace_helper.clit_slot, FPalace_helper.human_clit_1_img);				
				race.add_part_description(FPalace_helper.wings_slot,"skeletal and leathery. ");
				race.add_part_image(FPalace_helper.wings_slot, FPalace_helper.demon_wing_1_img);
				race.add_part_description(FPalace_helper.tail_slot,"a thin length of </sd"+FPalace_helper.goo_colour_id+"> that ends in a spade. ");
				race.add_part_image(FPalace_helper.tail_slot, FPalace_helper.demon_tail_1_img);
				
				
				race.new_female_name_set(["Demona", "Lilith"]);
				race.new_male_name_set([ "Cain", "Lucifer"]);
				race.new_surname_set([""]);
				
				race.set_preg_effect(mamal_preg(Main.t1_month * 9));
				
				race.add_part(FPalace_helper.new_head(race), 1);
				race.add_part(FPalace_helper.new_torso(race), 1);
				race.add_part(FPalace_helper.new_left_arms(race), 1);
				race.add_part(FPalace_helper.new_right_arms(race), 1);
				race.add_part(FPalace_helper.new_left_hands(race), 1);
				race.add_part(FPalace_helper.new_right_hands(race), 1);
				race.add_part(FPalace_helper.new_wings(race), 1);
				race.add_part(FPalace_helper.new_hips(race), 1);
				race.add_part(FPalace_helper.new_left_legs(race), 1);
				race.add_part(FPalace_helper.new_left_feet(race), 1);
				race.add_part(FPalace_helper.new_right_legs(race), 1);
				race.add_part(FPalace_helper.new_right_feet(race), 1);
				race.add_part(FPalace_helper.new_tail(race), 1);
				demon_race = race;
			}
			return demon_race;
		}
		
		public static function race_anthro_rabbit():Race{
			if(anthro_rabbit_race == null){
				var race:Race = new Race();
				race.set_name("lagomorph");
				
				race.new_stat(FPalace_helper.stat_fur_colour());
				
				race.set_aging_mod(0.4);
				race.set_bonus(FPalace_helper.cha_id,1, FPalace_helper.head_slot);
				race.set_bonus(FPalace_helper.wis_id,1, FPalace_helper.head_slot);
				race.set_bonus(FPalace_helper.eye_colour_id,5, FPalace_helper.eyes_slot);
				race.set_bonus(FPalace_helper.dex_id,0.5, FPalace_helper.legs_slot);
				race.set_bonus(FPalace_helper.str_id,-0.5, FPalace_helper.arms_slot);
				race.set_bonus(FPalace_helper.con_id,-0.5, FPalace_helper.head_slot);
				race.set_bonus(FPalace_helper.con_id,-0.5, FPalace_helper.torso_slot);
				race.set_bonus(FPalace_helper.bust_id,-4, FPalace_helper.torso_slot);
				race.set_bonus(FPalace_helper.waist_id,-4, FPalace_helper.torso_slot);
				race.set_bonus(FPalace_helper.hips_id,-4, FPalace_helper.hips_slot);
				race.set_bonus(FPalace_helper.egg_fertility_id,0.5, FPalace_helper.vag_slot);
				race.set_bonus(FPalace_helper.semen_fertility_id,0.05, FPalace_helper.balls_slot);
				race.set_bonus(FPalace_helper.height_id,-20, FPalace_helper.tail_slot);
				race.set_bonus(FPalace_helper.max_lust_id,-3);
				//STR: 17	
				race.set_stat_max(FPalace_helper.str_id, 1.5, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.str_id, 1.5, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.str_id, 1.5, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.str_id, 1.5, FPalace_helper.hands_slot);				
				//DEX: 29
				race.set_stat_max(FPalace_helper.dex_id, 3, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.dex_id, 3, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.dex_id, 3, FPalace_helper.tail_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2.5, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2.5, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2.5, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2.5, FPalace_helper.hands_slot);				
				//CON: 19	
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.con_id, 1.5, FPalace_helper.hands_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.feet_slot);
				//BEAUTY: 25
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.breasts_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.vag_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.clit_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.cock_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.balls_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.tail_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1.5, FPalace_helper.eyes_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1.5, FPalace_helper.hair_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.hands_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.feet_slot);
				//INT: 20
				race.set_stat_max(FPalace_helper.int_id, 10, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.int_id, 10, FPalace_helper.torso_slot);
				//WIS: 26
				race.set_stat_max(FPalace_helper.wis_id, 13, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.wis_id, 13, FPalace_helper.torso_slot);
				//WILL: 21
				race.set_stat_max(FPalace_helper.will_id, 10.5, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.will_id, 10.5, FPalace_helper.torso_slot);
				//CHA: 22
				race.set_stat_max(FPalace_helper.cha_id, 11, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.cha_id, 11, FPalace_helper.torso_slot);
				
				race.add_part_description(FPalace_helper.head_slot,"cheery faced lagomorph with long, floppy ears and a small darting pink nose amidst short </sd"+FPalace_helper.fur_colour_id+"> fur. ");
				race.add_part_image(FPalace_helper.head_slot, FPalace_helper.rabbit_head_1_img);
				race.add_part_description(FPalace_helper.eyes_slot,"dark circular pupils, with irises that fill the rest ");
				race.add_part_image(FPalace_helper.eyes_slot, FPalace_helper.rabbit_eyes_1_img);
				race.add_part_description(FPalace_helper.hair_slot,"straight, ");
				race.add_part_image(FPalace_helper.hair_slot, FPalace_helper.rabbit_hair_1_img);
				race.add_part_description(FPalace_helper.torso_slot,"soft fuzzy </sd"+FPalace_helper.fur_colour_id+"> fur excentuating </noun> form. ");
				race.add_part_image(FPalace_helper.torso_slot, FPalace_helper.rabbit_torso_1_img);
				race.add_part_description(FPalace_helper.arms_slot,"covered in short, soft looking </sd"+FPalace_helper.fur_colour_id+"> fur. ");
				race.add_part_image(FPalace_helper.arms_slot, FPalace_helper.rabbit_arm_1_img);
				race.add_part_description(FPalace_helper.hands_slot,"five fingers covered in short </sd"+FPalace_helper.fur_colour_id+"> fur, every finger tipped with a translucent nail. ");
				race.add_part_image(FPalace_helper.hands_slot, FPalace_helper.rabbit_hand_1_img);
				race.add_part_description(FPalace_helper.breasts_slot,"soft fuzzy teardrops atop </noun> torso, each topped with a pert pink nipple. ");
				race.add_part_image(FPalace_helper.breasts_slot, FPalace_helper.rabbit_breasts_1_img);
				race.add_part_description(FPalace_helper.cock_slot,"smooth pink flesh, with only the slightest flare on its length. ");
				race.add_part_image(FPalace_helper.cock_slot, FPalace_helper.rabbit_penis_1_img);
				race.add_part_description(FPalace_helper.balls_slot,"covered in a soft fuzzy </sd"+FPalace_helper.fur_colour_id+"> sack. ");
				race.add_part_image(FPalace_helper.balls_slot, FPalace_helper.rabbit_balls_1_img);
				race.add_part_description(FPalace_helper.hips_slot,"covered in soft fuzzy </sd"+FPalace_helper.fur_colour_id+"> fur. ");
				race.add_part_image(FPalace_helper.hips_slot, FPalace_helper.rabbit_hips_1_img);
				race.add_part_description(FPalace_helper.vag_slot,"a set of cute, pert lips that fold on one another like flower pettles. ");
				race.add_part_image(FPalace_helper.vag_slot, FPalace_helper.rabbit_vag_1_img);
				race.add_part_description(FPalace_helper.legs_slot,"straight fuzzy </sd"+FPalace_helper.fur_colour_id+"> flesh that bend forward at the knee. ");
				race.add_part_image(FPalace_helper.legs_slot, FPalace_helper.rabbit_leg_1_img);
				race.add_part_description(FPalace_helper.feet_slot,"five toes and a length of fuzzy </sd"+FPalace_helper.fur_colour_id+"> flesh. ");
				race.add_part_image(FPalace_helper.feet_slot, FPalace_helper.rabbit_foot_1_img);
				race.add_part_description(FPalace_helper.clit_slot,"a pink pearl shapped nub. ");
				race.add_part_image(FPalace_helper.clit_slot, FPalace_helper.rabbit_clit_1_img);
				race.add_part_description(FPalace_helper.tail_slot,"a large tuff of white fur. ");
				race.add_part_image(FPalace_helper.tail_slot, FPalace_helper.rabbit_tail_1_img);
				
				race.new_female_name_set(["Fluffy", "Akeeta", "Angel", "April", "Bambi", "Bella", "Bernadette", "Bluebell", "Breezy", "Buffy", "Buttercup", "Caramel", "Chloe", "Cinnamon", "Cookie", "Crystal"]);
				race.new_male_name_set(["Thumper", "Cottontail", "Harry", "Sterling", "Franklin", "Redding", "Theodore", "Peter", "Raul"]);
				race.new_surname_set(["Bunny", "Altex", "Flopper", "Baladi", "Beveren", "Niklaas", "Chaudry", "Elfin", "Bourgog", "Gotland"]);
				
				race.set_preg_effect(mamal_preg(Main.t1_month * 2));
				
				race.add_part(FPalace_helper.new_head(race), 1);
				race.add_part(FPalace_helper.new_torso(race), 1);
				race.add_part(FPalace_helper.new_left_arms(race), 1);
				race.add_part(FPalace_helper.new_right_arms(race), 1);
				race.add_part(FPalace_helper.new_left_hands(race), 1);
				race.add_part(FPalace_helper.new_right_hands(race), 1);
				race.add_part(FPalace_helper.new_hips(race), 1);
				race.add_part(FPalace_helper.new_left_legs(race), 1);
				race.add_part(FPalace_helper.new_left_feet(race), 1);
				race.add_part(FPalace_helper.new_right_legs(race), 1);
				race.add_part(FPalace_helper.new_right_feet(race), 1);
				race.add_part(FPalace_helper.new_tail(race), 1);
				anthro_rabbit_race = race;
			}
			
			return anthro_rabbit_race;
		}
		
		public static function race_elf():Race{
			if(elf_race == null){
				var race:Race = new Race();
				race.set_name("elf");
				
				race.new_stat(FPalace_helper.stat_skin_colour());
				
				race.set_aging_mod(10);
				race.set_bonus(FPalace_helper.str_id,-0.5, FPalace_helper.arms_slot);
				race.set_bonus(FPalace_helper.int_id,1, FPalace_helper.head_slot);
				race.set_bonus(FPalace_helper.eye_colour_id,9.5, FPalace_helper.eyes_slot);
				race.set_bonus(FPalace_helper.sex_appeal_id,1, FPalace_helper.head_slot);
				race.set_bonus(FPalace_helper.con_id,-0.5, FPalace_helper.head_slot);
				race.set_bonus(FPalace_helper.con_id,-0.5, FPalace_helper.torso_slot);
				race.set_bonus(FPalace_helper.dex_id,0.5, FPalace_helper.legs_slot);
				race.set_bonus(FPalace_helper.breast_size_id, -0.5, FPalace_helper.breasts_slot);
				race.set_bonus(FPalace_helper.penis_length_id, -1, FPalace_helper.cock_slot);
				race.set_bonus(FPalace_helper.egg_fertility_id,-0.1, FPalace_helper.vag_slot);
				race.set_bonus(FPalace_helper.semen_fertility_id,-0.01, FPalace_helper.balls_slot);
				race.set_bonus(FPalace_helper.max_lust_id,2);
				//STR: 17	
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.str_id, 1.5, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.str_id, 1.5, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.str_id, 1.5, FPalace_helper.hands_slot);
				//DEX: 28	
				race.set_stat_max(FPalace_helper.dex_id, 3, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.dex_id, 3, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2.5, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.dex_id, 3, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2.5, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.dex_id, 3, FPalace_helper.hands_slot);
				//CON: 17	
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.con_id, 1.5, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.con_id, 1.5, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.con_id, 1.5, FPalace_helper.hands_slot);
				//BEAUTY: 27
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2.25, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2.25, FPalace_helper.breasts_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2.25, FPalace_helper.vag_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2.25, FPalace_helper.clit_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2.25, FPalace_helper.cock_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2.25, FPalace_helper.balls_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.eyes_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.hair_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.hands_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.feet_slot);
				//INT: 26
				race.set_stat_max(FPalace_helper.int_id, 13, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.int_id, 13, FPalace_helper.torso_slot);
				//WIS: 22
				race.set_stat_max(FPalace_helper.wis_id, 11, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.wis_id, 11, FPalace_helper.torso_slot);
				//WILL: 20
				race.set_stat_max(FPalace_helper.will_id, 10, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.will_id, 10, FPalace_helper.torso_slot);
				//CHA: 22
				race.set_stat_max(FPalace_helper.cha_id, 11, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.cha_id, 11, FPalace_helper.torso_slot);
				
				
				race.add_part_description(FPalace_helper.head_slot,"cheery faced elf, </noun> smooth </sd"+FPalace_helper.skin_colour_id+"> skin and pointed ears marking </objnoun> as such. ");
				race.add_part_image(FPalace_helper.head_slot, FPalace_helper.elf_head_1_img);
				race.add_part_description(FPalace_helper.eyes_slot,"oval translucent white orbs, with pupils that are circular ");
				race.add_part_image(FPalace_helper.eyes_slot, FPalace_helper.elf_eyes_1_img);
				race.add_part_description(FPalace_helper.hair_slot,"straight, ");
				race.add_part_image(FPalace_helper.hair_slot, FPalace_helper.elf_hair_1_img);
				race.add_part_description(FPalace_helper.torso_slot,"pale flesh excentuating </noun> form. ");
				race.add_part_image(FPalace_helper.torso_slot, FPalace_helper.elf_torso_1_img);
				race.add_part_description(FPalace_helper.arms_slot,"smooth skinned and </sd"+FPalace_helper.skin_colour_id+">. ");
				race.add_part_image(FPalace_helper.arms_slot, FPalace_helper.elf_arm_1_img);
				race.add_part_description(FPalace_helper.hands_slot,"five fingers covered in </sd"+FPalace_helper.skin_colour_id+"> flesh, every finger tipped with a translucent nail. ");
				race.add_part_image(FPalace_helper.hands_slot, FPalace_helper.elf_hand_1_img);
				race.add_part_description(FPalace_helper.breasts_slot,"</sd"+FPalace_helper.skin_colour_id+"> skinned teardrops atop </noun> torso, each topped with a pert pink nipple. ");
				race.add_part_image(FPalace_helper.breasts_slot, FPalace_helper.elf_breasts_1_img);
				race.add_part_description(FPalace_helper.cock_slot,"smooth </sd"+FPalace_helper.skin_colour_id+"> flesh, it's head flared and conical. ");
				race.add_part_image(FPalace_helper.cock_slot, FPalace_helper.elf_penis_1_img);
				race.add_part_description(FPalace_helper.balls_slot,"covered in taunt </sd"+FPalace_helper.skin_colour_id+"> flesh. ");
				race.add_part_image(FPalace_helper.balls_slot, FPalace_helper.elf_balls_1_img);
				race.add_part_description(FPalace_helper.hips_slot,"firm taunt </sd"+FPalace_helper.skin_colour_id+"> flesh. ");
				race.add_part_image(FPalace_helper.hips_slot, FPalace_helper.elf_hips_1_img);
				race.add_part_description(FPalace_helper.vag_slot,"a set of cute, pert lips that fold on one another like flower pettles. ");
				race.add_part_image(FPalace_helper.vag_slot, FPalace_helper.elf_vag_1_img);
				race.add_part_description(FPalace_helper.legs_slot,"straight </sd"+FPalace_helper.skin_colour_id+"> flesh that bend forward at the knee. ");
				race.add_part_image(FPalace_helper.legs_slot, FPalace_helper.elf_leg_1_img);
				race.add_part_description(FPalace_helper.feet_slot,"five toes and a length of </sd"+FPalace_helper.skin_colour_id+"> flesh. ");
				race.add_part_image(FPalace_helper.feet_slot, FPalace_helper.elf_foot_1_img);
				race.add_part_description(FPalace_helper.clit_slot,"a pink pearl shapped nub. ");
				race.add_part_image(FPalace_helper.clit_slot, FPalace_helper.elf_clit_1_img);
				
				race.new_female_name_set(["Aywin", "Arwen", "Mirima", "Alya", "Vanya", "Caladwen", "Melda", "Verya", "Euraina", "Lona", "Yellwen"]);
				race.new_male_name_set(["Elwin", "Adan", "Durion", "Glandur", "Rimedur", "Thalion", "Beleg", "Voron", "Manwe", "Arthion", "Sellion"]);
				race.new_surname_set(["Gemflower", "Moonwhisper", "Silverfrond", "Oakenheel", "Nightbrook"]);
				
				race.set_preg_effect(mamal_preg(Main.t1_month * 15));
				
				race.add_part(FPalace_helper.new_head(race), 1);
				race.add_part(FPalace_helper.new_torso(race), 1);
				race.add_part(FPalace_helper.new_left_arms(race), 1);
				race.add_part(FPalace_helper.new_right_arms(race), 1);
				race.add_part(FPalace_helper.new_left_hands(race), 1);
				race.add_part(FPalace_helper.new_right_hands(race), 1);
				race.add_part(FPalace_helper.new_hips(race), 1);
				race.add_part(FPalace_helper.new_left_legs(race), 1);
				race.add_part(FPalace_helper.new_left_feet(race), 1);
				race.add_part(FPalace_helper.new_right_legs(race), 1);
				race.add_part(FPalace_helper.new_right_feet(race), 1);
				elf_race = race;
			}
			
			return elf_race;
		}
		
		public static function race_dwarf():Race{
			if(dwarf_race == null){
				var race:Race = new Race();
				race.set_name("dwarf");
				
				race.new_stat(FPalace_helper.stat_skin_colour());
				
				race.set_aging_mod(5);
				race.set_bonus(FPalace_helper.str_id,0.5, FPalace_helper.arms_slot);
				race.set_bonus(FPalace_helper.str_id,0.5, FPalace_helper.hands_slot);
				race.set_bonus(FPalace_helper.wis_id,2, FPalace_helper.head_slot);
				race.set_bonus(FPalace_helper.eye_colour_id,9.5, FPalace_helper.eyes_slot);
				race.set_bonus(FPalace_helper.con_id,0.5, FPalace_helper.head_slot);
				race.set_bonus(FPalace_helper.con_id,0.5, FPalace_helper.torso_slot);
				race.set_bonus(FPalace_helper.dex_id,-1, FPalace_helper.legs_slot);
				race.set_bonus(FPalace_helper.height_id,-4, FPalace_helper.arms_slot);
				race.set_bonus(FPalace_helper.height_id,-4, FPalace_helper.torso_slot);
				race.set_bonus(FPalace_helper.height_id,-4, FPalace_helper.hips_slot);
				race.set_bonus(FPalace_helper.height_id,-4, FPalace_helper.legs_slot);
				race.set_bonus(FPalace_helper.egg_fertility_id,-0.1, FPalace_helper.vag_slot);
				race.set_bonus(FPalace_helper.semen_fertility_id,-0.01, FPalace_helper.balls_slot);
				
				race.add_part_description(FPalace_helper.head_slot,"cheery faced dwarf, </noun> rough </sd"+FPalace_helper.skin_colour_id+"> skin and round ears marking </objnoun> as such. ");
				race.add_part_image(FPalace_helper.head_slot, FPalace_helper.dwarf_head_1_img);
				race.add_part_description(FPalace_helper.eyes_slot,"oval translucent white orbs, with pupils that are circular ");
				race.add_part_image(FPalace_helper.eyes_slot, FPalace_helper.dwarf_eyes_1_img);
				race.add_part_description(FPalace_helper.hair_slot,"straight, ");
				race.add_part_image(FPalace_helper.hair_slot, FPalace_helper.dwarf_hair_1_img);
				race.add_part_description(FPalace_helper.torso_slot,"rough </sd"+FPalace_helper.skin_colour_id+"> flesh excentuating </noun> form. ");
				race.add_part_image(FPalace_helper.torso_slot, FPalace_helper.dwarf_torso_1_img);
				race.add_part_description(FPalace_helper.arms_slot,"rough skinned and </sd"+FPalace_helper.skin_colour_id+">. ");
				race.add_part_image(FPalace_helper.arms_slot, FPalace_helper.dwarf_arm_1_img);
				race.add_part_description(FPalace_helper.hands_slot,"five fingers covered in rough </sd"+FPalace_helper.skin_colour_id+"> flesh, every finger tipped with a translucent nail. ");
				race.add_part_image(FPalace_helper.hands_slot, FPalace_helper.dwarf_hand_1_img);
				race.add_part_description(FPalace_helper.breasts_slot,"rough skinned teardrops atop </noun> torso, each topped with a pert pink nipple. ");
				race.add_part_image(FPalace_helper.breasts_slot, FPalace_helper.dwarf_breasts_1_img);
				race.add_part_description(FPalace_helper.cock_slot,"rough </sd"+FPalace_helper.skin_colour_id+"> flesh, it's head flared and conical. ");
				race.add_part_image(FPalace_helper.cock_slot, FPalace_helper.dwarf_penis_1_img);
				race.add_part_description(FPalace_helper.balls_slot,"covered in taunt </sd"+FPalace_helper.skin_colour_id+"> rough flesh. ");
				race.add_part_image(FPalace_helper.balls_slot, FPalace_helper.dwarf_balls_1_img);
				race.add_part_description(FPalace_helper.hips_slot,"firm taunt </sd"+FPalace_helper.skin_colour_id+"> rough flesh. ");
				race.add_part_image(FPalace_helper.hips_slot, FPalace_helper.dwarf_hips_1_img);
				race.add_part_description(FPalace_helper.vag_slot,"a set of cute, pert lips that fold on one another like flower pettles. ");
				race.add_part_image(FPalace_helper.vag_slot, FPalace_helper.dwarf_vag_1_img);
				race.add_part_description(FPalace_helper.legs_slot,"straight rough </sd"+FPalace_helper.skin_colour_id+"> flesh that bend forward at the knee. ");
				race.add_part_image(FPalace_helper.legs_slot, FPalace_helper.dwarf_leg_1_img);
				race.add_part_description(FPalace_helper.feet_slot,"five toes and a length of rough </sd"+FPalace_helper.skin_colour_id+"> flesh. ");
				race.add_part_image(FPalace_helper.feet_slot, FPalace_helper.dwarf_foot_1_img);
				race.add_part_description(FPalace_helper.clit_slot,"a pink pearl shapped nub. ");
				race.add_part_image(FPalace_helper.clit_slot, FPalace_helper.dwarf_clit_1_img);
				
				race.new_female_name_set(["Cheery", "Griia", "Dimundi", "Norumma", "Hergoli", "Harli", "Bina", "Druia"]);
				race.new_male_name_set(["Bruenor", "Farund", "Daldin", "Gomond", "Dalak"]);
				race.new_surname_set(["Ironfist", "Bulstor", "Gimest", "Thorhak"]);
				//STR: 31	
				race.set_stat_max(FPalace_helper.str_id, 3.5, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.str_id, 3.5, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.str_id, 3, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.str_id, 3, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.str_id, 3, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.str_id, 3, FPalace_helper.hands_slot);
				//DEX: 14	
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.dex_id, 1.25, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.dex_id, 1.25, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.dex_id, 1.25, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.dex_id, 1.25, FPalace_helper.hands_slot);
				//CON: 28	
				race.set_stat_max(FPalace_helper.con_id, 3.5, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.con_id, 3.5, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.con_id, 3, FPalace_helper.hands_slot);
				race.set_stat_max(FPalace_helper.con_id, 3, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.con_id, 3, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.con_id, 3, FPalace_helper.feet_slot);
				//BEAUTY: 20
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.breasts_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.vag_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.clit_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.cock_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.balls_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.eyes_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.hair_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.hands_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.feet_slot);
				//INT: 22
				race.set_stat_max(FPalace_helper.int_id, 11, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.int_id, 11, FPalace_helper.torso_slot);
				//WIS: 22
				race.set_stat_max(FPalace_helper.wis_id, 11, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.wis_id, 11, FPalace_helper.torso_slot);
				//WILL: 22
				race.set_stat_max(FPalace_helper.will_id, 11, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.will_id, 11, FPalace_helper.torso_slot);
				//CHA: 20
				race.set_stat_max(FPalace_helper.cha_id, 10, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.cha_id, 10, FPalace_helper.torso_slot);
				
				race.set_preg_effect(mamal_preg(Main.t1_month * 15));
				
				race.add_part(FPalace_helper.new_head(race), 1);
				race.add_part(FPalace_helper.new_torso(race), 1);
				race.add_part(FPalace_helper.new_left_arms(race), 1);
				race.add_part(FPalace_helper.new_right_arms(race), 1);
				race.add_part(FPalace_helper.new_left_hands(race), 1);
				race.add_part(FPalace_helper.new_right_hands(race), 1);
				race.add_part(FPalace_helper.new_hips(race), 1);
				race.add_part(FPalace_helper.new_left_legs(race), 1);
				race.add_part(FPalace_helper.new_left_feet(race), 1);
				race.add_part(FPalace_helper.new_right_legs(race), 1);
				race.add_part(FPalace_helper.new_right_feet(race), 1);
				dwarf_race = race;
			}
			
			return dwarf_race;
		}
		
		public static function race_goblin():Race{
			if(goblin_race == null){
				var race:Race = new Race();
				race.set_name("goblin");
				
				race.new_stat(FPalace_helper.stat_skin_colour());
				
				race.set_aging_mod(0.3);
				race.set_bonus(FPalace_helper.wis_id,-1, FPalace_helper.head_slot);
				race.set_bonus(FPalace_helper.int_id,2, FPalace_helper.head_slot);
				race.set_bonus(FPalace_helper.eye_colour_id,9.5, FPalace_helper.eyes_slot);
				race.set_bonus(FPalace_helper.height_id,-6, FPalace_helper.arms_slot);
				race.set_bonus(FPalace_helper.height_id,-6, FPalace_helper.torso_slot);
				race.set_bonus(FPalace_helper.height_id,-6, FPalace_helper.hips_slot);
				race.set_bonus(FPalace_helper.height_id,-6, FPalace_helper.legs_slot);
				race.set_bonus(FPalace_helper.egg_fertility_id,0.4, FPalace_helper.vag_slot);
				race.set_bonus(FPalace_helper.semen_fertility_id,0.05, FPalace_helper.balls_slot);
				race.set_bonus(FPalace_helper.min_lust_id,20,FPalace_helper.vag_slot);
				race.set_bonus(FPalace_helper.skin_colour_id,0.3);
				
				race.add_part_description(FPalace_helper.head_slot,"cheery faced goblin, </noun> </sd"+FPalace_helper.skin_colour_id+"> skin and pointy ears marking </objnoun> as such. ");
				race.add_part_image(FPalace_helper.head_slot, FPalace_helper.goblin_head_1_img);
				race.add_part_description(FPalace_helper.eyes_slot,"oval translucent white orbs, with pupils that are circular ");
				race.add_part_image(FPalace_helper.eyes_slot, FPalace_helper.goblin_eyes_1_img);
				race.add_part_description(FPalace_helper.hair_slot,"straight, ");
				race.add_part_image(FPalace_helper.hair_slot, FPalace_helper.goblin_hair_1_img);
				race.add_part_description(FPalace_helper.torso_slot,"</sd"+FPalace_helper.skin_colour_id+"> flesh excentuating </noun> form. ");
				race.add_part_image(FPalace_helper.torso_slot, FPalace_helper.goblin_torso_1_img);
				race.add_part_description(FPalace_helper.arms_slot,"smooth skinned and </sd"+FPalace_helper.skin_colour_id+">. ");
				race.add_part_image(FPalace_helper.arms_slot, FPalace_helper.goblin_arm_1_img);
				race.add_part_description(FPalace_helper.hands_slot,"five fingers covered in </sd"+FPalace_helper.skin_colour_id+"> flesh, every finger tipped with a translucent nail. ");
				race.add_part_image(FPalace_helper.hands_slot, FPalace_helper.goblin_hand_1_img);
				race.add_part_description(FPalace_helper.breasts_slot,"</sd"+FPalace_helper.skin_colour_id+"> skinned teardrops atop </noun> torso, each topped with a pert pink nipple. ");
				race.add_part_image(FPalace_helper.breasts_slot, FPalace_helper.goblin_breasts_1_img);
				race.add_part_description(FPalace_helper.cock_slot,"rough </sd"+FPalace_helper.skin_colour_id+"> flesh, it's head flared and conical. ");
				race.add_part_image(FPalace_helper.cock_slot, FPalace_helper.goblin_penis_1_img);
				race.add_part_description(FPalace_helper.balls_slot,"covered in taunt </sd"+FPalace_helper.skin_colour_id+"> flesh. ");
				race.add_part_image(FPalace_helper.balls_slot, FPalace_helper.goblin_balls_1_img);
				race.add_part_description(FPalace_helper.hips_slot,"firm taunt </sd"+FPalace_helper.skin_colour_id+"> flesh. ");
				race.add_part_image(FPalace_helper.hips_slot, FPalace_helper.goblin_hips_1_img);
				race.add_part_description(FPalace_helper.vag_slot,"a set of cute, pert lips that fold on one another like flower pettles. ");
				race.add_part_image(FPalace_helper.vag_slot, FPalace_helper.goblin_vag_1_img);
				race.add_part_description(FPalace_helper.legs_slot,"straight </sd"+FPalace_helper.skin_colour_id+"> flesh that bend forward at the knee. ");
				race.add_part_image(FPalace_helper.legs_slot, FPalace_helper.goblin_leg_1_img);
				race.add_part_description(FPalace_helper.feet_slot,"five toes and a length of </sd"+FPalace_helper.skin_colour_id+"> flesh. ");
				race.add_part_image(FPalace_helper.feet_slot, FPalace_helper.goblin_foot_1_img);
				race.add_part_description(FPalace_helper.clit_slot,"a pink pearl shapped nub. ");
				race.add_part_image(FPalace_helper.clit_slot, FPalace_helper.goblin_clit_1_img);
				
				race.new_female_name_set(["Vagloh", "Loklo", "Ampa", "Zugnook", "Chogasa"]);
				race.new_male_name_set(["Chub", "Zig", "Floort"]);
				race.new_surname_set([""]);				
				//STR: 22	
				race.set_stat_max(FPalace_helper.str_id, 3, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.str_id, 3, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.hands_slot);				
				//DEX: 22	
				race.set_stat_max(FPalace_helper.dex_id, 3, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.hands_slot);
				race.set_stat_max(FPalace_helper.dex_id, 3, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.feet_slot);
				//CON: 22	
				race.set_stat_max(FPalace_helper.con_id, 3, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.hands_slot);
				race.set_stat_max(FPalace_helper.con_id, 3, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.feet_slot);
				//BEAUTY: 23
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1.5, FPalace_helper.eyes_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1.5, FPalace_helper.hair_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.hands_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.breasts_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.vag_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.clit_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.cock_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.balls_slot);
				//INT: 28
				race.set_stat_max(FPalace_helper.int_id, 14, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.int_id, 14, FPalace_helper.torso_slot);
				//WIS: 18
				race.set_stat_max(FPalace_helper.wis_id, 9, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.wis_id, 9, FPalace_helper.torso_slot);
				//WILL: 22
				race.set_stat_max(FPalace_helper.will_id, 11, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.will_id, 11, FPalace_helper.torso_slot);
				//CHA: 22
				race.set_stat_max(FPalace_helper.cha_id, 11, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.cha_id, 11, FPalace_helper.torso_slot);
				
				race.set_preg_effect(mamal_preg(Main.t1_month * 3));
				
				race.add_part(FPalace_helper.new_head(race), 1);
				race.add_part(FPalace_helper.new_torso(race), 1);
				race.add_part(FPalace_helper.new_left_arms(race), 1);
				race.add_part(FPalace_helper.new_right_arms(race), 1);
				race.add_part(FPalace_helper.new_left_hands(race), 1);
				race.add_part(FPalace_helper.new_right_hands(race), 1);
				race.add_part(FPalace_helper.new_hips(race), 1);
				race.add_part(FPalace_helper.new_left_legs(race), 1);
				race.add_part(FPalace_helper.new_left_feet(race), 1);
				race.add_part(FPalace_helper.new_right_legs(race), 1);
				race.add_part(FPalace_helper.new_right_feet(race), 1);
				goblin_race = race;
			}
			
			return goblin_race;
		}
		
		public static function race_orc():Race{
			if(orc_race == null){
				var race:Race = new Race();
				race.set_name("orc");
				
				race.new_stat(FPalace_helper.stat_skin_colour());
				
				race.set_aging_mod(0.7);
				race.set_bonus(FPalace_helper.cha_id,-1, FPalace_helper.head_slot);
				race.set_bonus(FPalace_helper.sex_appeal_id,-1, FPalace_helper.head_slot);
				race.set_bonus(FPalace_helper.str_id,1, FPalace_helper.head_slot);
				race.set_bonus(FPalace_helper.will_id,1, FPalace_helper.head_slot);
				race.set_bonus(FPalace_helper.con_id,1, FPalace_helper.head_slot);
				race.set_bonus(FPalace_helper.eye_colour_id,9.5, FPalace_helper.eyes_slot);
				race.set_bonus(FPalace_helper.skin_colour_id,0.3);
				
				race.add_part_description(FPalace_helper.head_slot,"cheery faced orc, </noun> </sd"+FPalace_helper.skin_colour_id+"> skin and pointy ears marking </objnoun> as such. ");
				race.add_part_image(FPalace_helper.head_slot, FPalace_helper.goblin_head_1_img);
				race.add_part_description(FPalace_helper.eyes_slot,"oval translucent white orbs, with pupils that are circular ");
				race.add_part_image(FPalace_helper.eyes_slot, FPalace_helper.goblin_eyes_1_img);
				race.add_part_description(FPalace_helper.hair_slot,"straight, ");
				race.add_part_image(FPalace_helper.hair_slot, FPalace_helper.goblin_hair_1_img);
				race.add_part_description(FPalace_helper.torso_slot,"</sd"+FPalace_helper.skin_colour_id+"> flesh excentuating </noun> form. ");
				race.add_part_image(FPalace_helper.torso_slot, FPalace_helper.goblin_torso_1_img);
				race.add_part_description(FPalace_helper.arms_slot,"smooth skinned and </sd"+FPalace_helper.skin_colour_id+">. ");
				race.add_part_image(FPalace_helper.arms_slot, FPalace_helper.goblin_arm_1_img);
				race.add_part_description(FPalace_helper.hands_slot,"five fingers covered in </sd"+FPalace_helper.skin_colour_id+"> flesh, every finger tipped with a translucent nail. ");
				race.add_part_image(FPalace_helper.hands_slot, FPalace_helper.goblin_hand_1_img);
				race.add_part_description(FPalace_helper.breasts_slot,"</sd"+FPalace_helper.skin_colour_id+"> skinned teardrops atop </noun> torso, each topped with a pert pink nipple. ");
				race.add_part_image(FPalace_helper.breasts_slot, FPalace_helper.goblin_breasts_1_img);
				race.add_part_description(FPalace_helper.cock_slot,"rough </sd"+FPalace_helper.skin_colour_id+"> flesh, it's head flared and conical. ");
				race.add_part_image(FPalace_helper.cock_slot, FPalace_helper.goblin_penis_1_img);
				race.add_part_description(FPalace_helper.balls_slot,"covered in taunt </sd"+FPalace_helper.skin_colour_id+"> flesh. ");
				race.add_part_image(FPalace_helper.balls_slot, FPalace_helper.goblin_balls_1_img);
				race.add_part_description(FPalace_helper.hips_slot,"firm taunt </sd"+FPalace_helper.skin_colour_id+"> flesh. ");
				race.add_part_image(FPalace_helper.hips_slot, FPalace_helper.goblin_hips_1_img);
				race.add_part_description(FPalace_helper.vag_slot,"a set of cute, pert lips that fold on one another like flower pettles. ");
				race.add_part_image(FPalace_helper.vag_slot, FPalace_helper.goblin_vag_1_img);
				race.add_part_description(FPalace_helper.legs_slot,"straight </sd"+FPalace_helper.skin_colour_id+"> flesh that bend forward at the knee. ");
				race.add_part_image(FPalace_helper.legs_slot, FPalace_helper.goblin_leg_1_img);
				race.add_part_description(FPalace_helper.feet_slot,"five toes and a length of </sd"+FPalace_helper.skin_colour_id+"> flesh. ");
				race.add_part_image(FPalace_helper.feet_slot, FPalace_helper.goblin_foot_1_img);
				race.add_part_description(FPalace_helper.clit_slot,"a pink pearl shapped nub. ");
				race.add_part_image(FPalace_helper.clit_slot, FPalace_helper.goblin_clit_1_img);
				
				race.new_female_name_set(["Vagloh", "Loklo", "Ampa", "Zugnook", "Chogasa"]);
				race.new_male_name_set(["Chub", "Zig", "Floort"]);
				race.new_surname_set([""]);
				//STR: 26	
				race.set_stat_max(FPalace_helper.str_id, 3, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.str_id, 3, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.str_id, 3, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.str_id, 3, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.hands_slot);
				//DEX: 22	
				race.set_stat_max(FPalace_helper.dex_id, 3, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.dex_id, 3, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.hands_slot);
				//CON: 27	
				race.set_stat_max(FPalace_helper.con_id, 4, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.con_id, 3, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.con_id, 3, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.con_id, 3, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.hands_slot);
				//BEAUTY: 17
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.breasts_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.vag_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.clit_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.cock_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.balls_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.eyes_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.hair_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 0.5, FPalace_helper.hands_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 0.5, FPalace_helper.feet_slot);
				//INT: 22
				race.set_stat_max(FPalace_helper.int_id, 11, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.int_id, 11, FPalace_helper.torso_slot);
				//WIS: 22
				race.set_stat_max(FPalace_helper.wis_id, 11, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.wis_id, 11, FPalace_helper.torso_slot);
				//WILL: 26
				race.set_stat_max(FPalace_helper.will_id, 13, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.will_id, 13, FPalace_helper.torso_slot);
				//CHA: 17
				race.set_stat_max(FPalace_helper.cha_id, 8.5, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.cha_id, 8.5, FPalace_helper.torso_slot);
				
				race.set_preg_effect(mamal_preg(Main.t1_month * 3));
				
				race.add_part(FPalace_helper.new_head(race), 1);
				race.add_part(FPalace_helper.new_torso(race), 1);
				race.add_part(FPalace_helper.new_left_arms(race), 1);
				race.add_part(FPalace_helper.new_right_arms(race), 1);
				race.add_part(FPalace_helper.new_left_hands(race), 1);
				race.add_part(FPalace_helper.new_right_hands(race), 1);
				race.add_part(FPalace_helper.new_hips(race), 1);
				race.add_part(FPalace_helper.new_left_legs(race), 1);
				race.add_part(FPalace_helper.new_left_feet(race), 1);
				race.add_part(FPalace_helper.new_right_legs(race), 1);
				race.add_part(FPalace_helper.new_right_feet(race), 1);
				orc_race = race;
			}
			
			return orc_race;
		}
		
		public static function race_anthro_feline():Race{
			if(anthro_feline_race == null){
				var race:Race = new Race();
				race.set_name("feline");
				
				race.new_stat(FPalace_helper.stat_fur_colour());
				
				race.set_aging_mod(0.7);
				race.set_bonus(FPalace_helper.cha_id,1, FPalace_helper.head_slot);
				race.set_bonus(FPalace_helper.int_id,-1, FPalace_helper.head_slot);
				race.set_bonus(FPalace_helper.eye_colour_id,6, FPalace_helper.eyes_slot);				
				race.set_bonus(FPalace_helper.dex_id,0.5, FPalace_helper.arms_slot);
				race.set_bonus(FPalace_helper.breast_size_id, -1, FPalace_helper.breasts_slot);
				race.set_bonus(FPalace_helper.sex_appeal_id,0.5, FPalace_helper.head_slot);
				race.set_bonus(FPalace_helper.sex_appeal_id,0.5, FPalace_helper.hips_slot);
				race.set_bonus(FPalace_helper.str_id,-0.5, FPalace_helper.arms_slot);				
				race.set_bonus(FPalace_helper.max_lust_id,-1);
				race.set_bonus(FPalace_helper.egg_fertility_id,0.3, FPalace_helper.vag_slot);
				race.set_bonus(FPalace_helper.semen_fertility_id,0.05, FPalace_helper.balls_slot);
				
				race.set_skill_bonus(FPalace_skills.covert_id, 5, FPalace_helper.feet_slot);
				//STR: 17	
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.str_id, 1.5, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.str_id, 1.5, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.str_id, 1.5, FPalace_helper.hands_slot);
				//DEX: 29	
				race.set_stat_max(FPalace_helper.dex_id, 3, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.dex_id, 3, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.dex_id, 3, FPalace_helper.tail_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2.5, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2.5, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2.5, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2.5, FPalace_helper.hands_slot);
				//CON: 22	
				race.set_stat_max(FPalace_helper.con_id, 3, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.con_id, 3, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.hands_slot);
				//BEAUTY: 28
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 3, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.breasts_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.vag_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.clit_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.cock_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.balls_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.eyes_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.hair_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.tail_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.hands_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.feet_slot);
				//INT: 17
				race.set_stat_max(FPalace_helper.int_id, 8.5, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.int_id, 8.5, FPalace_helper.torso_slot);
				//WIS: 20
				race.set_stat_max(FPalace_helper.wis_id, 10, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.wis_id, 10, FPalace_helper.torso_slot);
				//WILL: 22
				race.set_stat_max(FPalace_helper.will_id, 11, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.will_id, 11, FPalace_helper.torso_slot);
				//CHA: 24
				race.set_stat_max(FPalace_helper.cha_id, 12, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.cha_id, 12, FPalace_helper.torso_slot);
				
				race.add_part_description(FPalace_helper.head_slot,"cheery faced feline, </noun> triangular ears darting from sound to sound, and short </sd"+FPalace_helper.fur_colour_id+"> fur covering everything except a small pink triangle of a nose. ");
				race.add_part_image(FPalace_helper.head_slot, FPalace_helper.feline_head_1_img);
				race.add_part_description(FPalace_helper.eyes_slot,"dark slit-like pupils, with irises that fill the rest ");
				race.add_part_image(FPalace_helper.eyes_slot, FPalace_helper.feline_eyes_1_img);
				race.add_part_description(FPalace_helper.hair_slot,"straight, ");
				race.add_part_image(FPalace_helper.hair_slot, FPalace_helper.feline_hair_1_img);
				race.add_part_description(FPalace_helper.torso_slot,"covered in </sd"+FPalace_helper.fur_colour_id+"> fur that doesn't fail to show </noun> form. ");
				race.add_part_image(FPalace_helper.torso_slot, FPalace_helper.feline_torso_1_img);
				race.add_part_description(FPalace_helper.arms_slot,"covered in </sd"+FPalace_helper.fur_colour_id+"> fur. ");
				race.add_part_image(FPalace_helper.arms_slot, FPalace_helper.feline_arm_1_img);
				race.add_part_description(FPalace_helper.hands_slot,"five fingers covered in </sd"+FPalace_helper.fur_colour_id+"> fur, every finger tipped with a long, sharp looking claw. ");
				race.add_part_image(FPalace_helper.hands_slot, FPalace_helper.feline_hand_1_img);
				race.add_part_description(FPalace_helper.breasts_slot,"furry </sd"+FPalace_helper.fur_colour_id+"> teardrops atop </noun> torso, each topped with a pert pink nipple. ");
				race.add_part_image(FPalace_helper.breasts_slot, FPalace_helper.feline_breasts_1_img);
				race.add_part_description(FPalace_helper.cock_slot,"bright red flesh, and covered in spines. ");
				race.add_part_image(FPalace_helper.cock_slot, FPalace_helper.feline_penis_1_img);
				race.add_part_description(FPalace_helper.balls_slot,"covered by a fuzzy </sd"+FPalace_helper.fur_colour_id+"> sack. ");
				race.add_part_image(FPalace_helper.balls_slot, FPalace_helper.feline_balls_1_img);
				race.add_part_description(FPalace_helper.hips_slot,"taunt, </sd"+FPalace_helper.fur_colour_id+">, and fuzzy. ");
				race.add_part_image(FPalace_helper.hips_slot, FPalace_helper.feline_hips_1_img);
				race.add_part_description(FPalace_helper.vag_slot,"a set of cute, pert lips that fold on one another like flower pettles. ");
				race.add_part_image(FPalace_helper.vag_slot, FPalace_helper.feline_vag_1_img);
				race.add_part_description(FPalace_helper.legs_slot,"fuzzy </sd"+FPalace_helper.fur_colour_id+"> flesh that bend forward at the knee. ");
				race.add_part_image(FPalace_helper.legs_slot, FPalace_helper.feline_leg_1_img);
				race.add_part_description(FPalace_helper.feet_slot,"five toes and a length of fuzzy </sd"+FPalace_helper.fur_colour_id+"> flesh. ");
				race.add_part_image(FPalace_helper.feet_slot, FPalace_helper.feline_foot_1_img);
				race.add_part_description(FPalace_helper.clit_slot,"a pink pearl shapped nub. ");
				race.add_part_image(FPalace_helper.clit_slot, FPalace_helper.feline_clit_1_img);
				race.add_part_description(FPalace_helper.tail_slot,"a long fuzzy length of </sd"+FPalace_helper.fur_colour_id+"> fur. ");
				race.add_part_image(FPalace_helper.tail_slot, FPalace_helper.feline_tail_1_img);
				
				race.new_female_name_set(["Misty","Tiffany","Angel","Lily","Amber","Ellie","Molly","Winnie","Sienna","Kiki","Kiara","Ayla","Maisy","Nikita","Emma","Sophie","Chloe","Vicky"]);
				race.new_male_name_set(["Max","Rex","Don","Dave","Napoleon","Peter","Toby","Oliver","Leo","Milo","Tigger", "Ace", "Aaron", "Duncan", "Simba", "Felix", "Loki", "Ash", "Gus", "Tommy"]);
				race.new_surname_set(["Kitty", "Aegean", "Mau", "Bengal", "Bombay", "Birman", "Burmilla", "Chantilly", "Chartreux", "Foldex", "Javanese", "Khao", "Korat","Raas","Selkirk","Sphynx"]);
				
				var a3:Action = new Action();
					a3.set_name("Cat Claws");
					a3.set_attack_flag();
					a3.set_attack_description("Strike a single opponent with your claws. ");
						var challenge2:Challenge = new Challenge(true);
						challenge2.set_attack_stat(FPalace_skills.melee_id);
						challenge2.set_defense_stat(FPalace_skills.dodging_id);
						challenge2.set_variability(20);
						challenge2.set_text("Cat Claws");
						var consequence2:Consequence = new Consequence();
						consequence2.set_damage_type(FPalace_helper.slash_damage_type().get_id());
						consequence2.add_consequence(FPalace_helper.curr_hp_id,-4, "</n2> slashes </n> with </noun2> claws. ",0,0,1);
						consequence2.add_consequence(FPalace_helper.curr_hp_id,-4, "</n> has a bloody three lined gash left in </noun> skin. ",2);
						consequence2.add_consequence(0,0, "</n2> futily slashes with </noun2> claws. ",-1);
									
					a3.add_challenge(challenge2,consequence2);
				
				
				race.new_attack(a3, FPalace_helper.hands_slot);
				
				race.set_preg_effect(mamal_preg(Main.t1_month * 4));
				
				race.add_part(FPalace_helper.new_head(race), 1);
				race.add_part(FPalace_helper.new_torso(race), 1);
				race.add_part(FPalace_helper.new_left_arms(race), 1);
				race.add_part(FPalace_helper.new_right_arms(race), 1);
				race.add_part(FPalace_helper.new_left_hands(race), 1);
				race.add_part(FPalace_helper.new_right_hands(race), 1);
				race.add_part(FPalace_helper.new_hips(race), 1);
				race.add_part(FPalace_helper.new_left_legs(race), 1);
				race.add_part(FPalace_helper.new_left_feet(race), 1);
				race.add_part(FPalace_helper.new_right_legs(race), 1);
				race.add_part(FPalace_helper.new_right_feet(race), 1);
				race.add_part(FPalace_helper.new_tail(race), 1);
				anthro_feline_race = race;
			}
			
			return anthro_feline_race;
		}
		
		public static function race_anthro_canine():Race{
			if(anthro_canine_race == null){
				var race:Race = new Race();
				race.set_name("canine");
				
				race.new_stat(FPalace_helper.stat_fur_colour());
				
				race.set_aging_mod(0.6);
				race.set_bonus(FPalace_helper.cha_id,1, FPalace_helper.head_slot);
				race.set_bonus(FPalace_helper.int_id,-1, FPalace_helper.head_slot);
				race.set_bonus(FPalace_helper.wis_id,-1, FPalace_helper.head_slot);
				race.set_bonus(FPalace_helper.dex_id,0.5, FPalace_helper.legs_slot);
				race.set_bonus(FPalace_helper.str_id,0.5, FPalace_helper.arms_slot);
				race.set_bonus(FPalace_helper.breast_size_id, -1, FPalace_helper.breasts_slot);
				race.set_bonus(FPalace_helper.egg_fertility_id,0.3, FPalace_helper.vag_slot);
				race.set_bonus(FPalace_helper.semen_fertility_id,0.05, FPalace_helper.balls_slot);
				//STR: 28	
				race.set_stat_max(FPalace_helper.str_id, 3, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.str_id, 3, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.str_id, 3, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.str_id, 2.5, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.str_id, 3, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.str_id, 2.5, FPalace_helper.hands_slot);
				//DEX: 29	
				race.set_stat_max(FPalace_helper.dex_id, 3, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.dex_id, 3, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.tail_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2.5, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2.5, FPalace_helper.hands_slot);
				race.set_stat_max(FPalace_helper.dex_id, 3, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2.5, FPalace_helper.feet_slot);
				//CON: 22	
				race.set_stat_max(FPalace_helper.con_id, 3, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.con_id, 3, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.hands_slot);
				//BEA: 23
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.breasts_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.vag_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.clit_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.cock_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.balls_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.eyes_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.tail_slot);				
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.hands_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.feet_slot);
				//INT: 16
				race.set_stat_max(FPalace_helper.int_id, 8, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.int_id, 8, FPalace_helper.torso_slot);
				//WIS: 16
				race.set_stat_max(FPalace_helper.wis_id, 8, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.wis_id, 8, FPalace_helper.torso_slot);
				//WILL: 21
				race.set_stat_max(FPalace_helper.will_id, 10.5, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.will_id, 10.5, FPalace_helper.torso_slot);
				//CHA: 24
				race.set_stat_max(FPalace_helper.cha_id, 12, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.cha_id, 12, FPalace_helper.torso_slot);
				
				race.add_part_description(FPalace_helper.head_slot,"cheery faced canine, </noun> triangular ears darting from sound to sound, and short </sd"+FPalace_helper.fur_colour_id+"> fur covering everything except a dark triangle of a nose that rests on a snout. ");
				race.add_part_image(FPalace_helper.head_slot, FPalace_helper.canine_head_1_img);
				race.add_part_description(FPalace_helper.eyes_slot,"dark wide friendly pupils, with irises that fill the rest ");
				race.add_part_image(FPalace_helper.eyes_slot, FPalace_helper.canine_eyes_1_img);
				race.add_part_description(FPalace_helper.hair_slot,"straight, ");
				race.add_part_image(FPalace_helper.hair_slot, FPalace_helper.canine_hair_1_img);
				race.add_part_description(FPalace_helper.torso_slot,"covered in </sd"+FPalace_helper.fur_colour_id+"> fur that doesn't fail to show </noun> form. ");
				race.add_part_image(FPalace_helper.torso_slot, FPalace_helper.canine_torso_1_img);
				race.add_part_description(FPalace_helper.arms_slot,"covered in </sd"+FPalace_helper.fur_colour_id+"> fur. ");
				race.add_part_image(FPalace_helper.arms_slot, FPalace_helper.canine_arm_1_img);
				race.add_part_description(FPalace_helper.hands_slot,"five fingers covered in </sd"+FPalace_helper.fur_colour_id+"> fur, every finger tipped with a short dull claw. ");
				race.add_part_image(FPalace_helper.hands_slot, FPalace_helper.canine_hand_1_img);
				race.add_part_description(FPalace_helper.breasts_slot,"</sd"+FPalace_helper.fur_colour_id+"> furry teardrops atop </noun> torso, each topped with a pert pink nipple. ");
				race.add_part_image(FPalace_helper.breasts_slot, FPalace_helper.canine_breasts_1_img);
				race.add_part_description(FPalace_helper.cock_slot,"bright red with a thick knot at its base. ");
				race.add_part_image(FPalace_helper.cock_slot, FPalace_helper.canine_penis_1_img);
				race.add_part_description(FPalace_helper.balls_slot,"covered by a fuzzy </sd"+FPalace_helper.fur_colour_id+"> sack. ");
				race.add_part_image(FPalace_helper.balls_slot, FPalace_helper.canine_balls_1_img);
				race.add_part_description(FPalace_helper.hips_slot,"taunt and fuzzy. ");
				race.add_part_image(FPalace_helper.hips_slot, FPalace_helper.canine_hips_1_img);
				race.add_part_description(FPalace_helper.vag_slot,"a set of cute, pert lips that fold on one another like flower pettles. ");
				race.add_part_image(FPalace_helper.vag_slot, FPalace_helper.canine_vag_1_img);
				race.add_part_description(FPalace_helper.legs_slot,"fuzzy </sd"+FPalace_helper.fur_colour_id+"> flesh that bend forward at the knee. ");
				race.add_part_image(FPalace_helper.legs_slot, FPalace_helper.canine_leg_1_img);
				race.add_part_description(FPalace_helper.feet_slot,"five toes and a length of fuzzy </sd"+FPalace_helper.fur_colour_id+"> flesh. ");
				race.add_part_image(FPalace_helper.feet_slot, FPalace_helper.canine_foot_1_img);
				race.add_part_description(FPalace_helper.clit_slot,"a pink pearl shapped nub. ");
				race.add_part_image(FPalace_helper.clit_slot, FPalace_helper.canine_clit_1_img);
				race.add_part_description(FPalace_helper.tail_slot,"a long fuzzy length of </sd"+FPalace_helper.fur_colour_id+"> fur. ");
				race.add_part_image(FPalace_helper.tail_slot, FPalace_helper.canine_tail_1_img);
				
				race.new_female_name_set(["Angel"]);
				race.new_male_name_set(["Rex"]);
				race.new_surname_set([""]);
				
				var a3:Action = new Action();
					a3.set_name("Bite");
					a3.set_attack_flag();
					a3.set_attack_description("Bite an opponent. ");
						var challenge2:Challenge = new Challenge(true);
						challenge2.set_attack_stat(FPalace_skills.melee_id);
						challenge2.set_defense_stat(FPalace_skills.dodging_id);
						challenge2.set_variability(20);
						challenge2.set_text("Bite");
						var consequence2:Consequence = new Consequence();
						consequence2.set_damage_type(FPalace_helper.pierce_damage_type().get_id());
						consequence2.add_consequence(FPalace_helper.curr_hp_id,-4, "</n2> bites </n>! ",0,0,1);
						consequence2.add_consequence(FPalace_helper.curr_hp_id,-4, "</n2> tears out a hunk of </n>s flesh! ",2);
						consequence2.add_consequence(0,0, "</n2> futily gnashes at air. ",-1);
									
					a3.add_challenge(challenge2,consequence2);
				
				race.new_attack(a3, FPalace_helper.head_slot);
				
				race.set_preg_effect(mamal_preg(Main.t1_month * 4));
				
				race.add_part(FPalace_helper.new_head(race), 1);
				race.add_part(FPalace_helper.new_torso(race), 1);
				race.add_part(FPalace_helper.new_left_arms(race), 1);
				race.add_part(FPalace_helper.new_right_arms(race), 1);
				race.add_part(FPalace_helper.new_left_hands(race), 1);
				race.add_part(FPalace_helper.new_right_hands(race), 1);
				race.add_part(FPalace_helper.new_hips(race), 1);
				race.add_part(FPalace_helper.new_left_legs(race), 1);
				race.add_part(FPalace_helper.new_left_feet(race), 1);
				race.add_part(FPalace_helper.new_right_legs(race), 1);
				race.add_part(FPalace_helper.new_right_feet(race), 1);
				race.add_part(FPalace_helper.new_tail(race), 1);
				anthro_canine_race = race;
			}
			
			return anthro_canine_race;
		}
		
		public static function race_anthro_fox():Race{
			if(anthro_fox_race == null){
				var race:Race = new Race();
				race.set_name("vulpe");
				
				race.new_stat(FPalace_helper.stat_fur_colour());
				
				race.set_aging_mod(0.6);
				race.set_bonus(FPalace_helper.int_id,2, FPalace_helper.head_slot);
				race.set_bonus(FPalace_helper.wis_id,-1, FPalace_helper.head_slot);
				race.set_bonus(FPalace_helper.str_id,-0.5, FPalace_helper.arms_slot);
				//STR: 17	
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.str_id, 1.5, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.str_id, 1.5, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.str_id, 1.5, FPalace_helper.hands_slot);
				//DEX: 23	
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.tail_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2.5, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.hands_slot);
				//CON: 22	
				race.set_stat_max(FPalace_helper.con_id, 3, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.con_id, 3, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.hands_slot);
				//BEA: 23
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.breasts_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.vag_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.clit_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.cock_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.balls_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.eyes_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.tail_slot);				
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.hands_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.feet_slot);
				//INT: 28
				race.set_stat_max(FPalace_helper.int_id, 14, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.int_id, 14, FPalace_helper.torso_slot);
				//WIS: 22
				race.set_stat_max(FPalace_helper.wis_id, 11, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.wis_id, 11, FPalace_helper.torso_slot);
				//WILL: 22
				race.set_stat_max(FPalace_helper.will_id, 11, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.will_id, 11, FPalace_helper.torso_slot);
				//CHA: 22
				race.set_stat_max(FPalace_helper.cha_id, 11, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.cha_id, 11, FPalace_helper.torso_slot);
				
				race.add_part_description(FPalace_helper.head_slot,"cheery faced vulpe, </noun> triangular ears darting from sound to sound, and short </sd"+FPalace_helper.fur_colour_id+"> fur covering everything except a dark triangle of a nose that rests on a snout. ");
				race.add_part_image(FPalace_helper.head_slot, FPalace_helper.canine_head_1_img);
				race.add_part_description(FPalace_helper.eyes_slot,"dark wide friendly pupils, with irises that fill the rest ");
				race.add_part_image(FPalace_helper.eyes_slot, FPalace_helper.canine_eyes_1_img);
				race.add_part_description(FPalace_helper.hair_slot,"straight, ");
				race.add_part_image(FPalace_helper.hair_slot, FPalace_helper.canine_hair_1_img);
				race.add_part_description(FPalace_helper.torso_slot,"covered in </sd"+FPalace_helper.fur_colour_id+"> fur that doesn't fail to show </noun> form. ");
				race.add_part_image(FPalace_helper.torso_slot, FPalace_helper.canine_torso_1_img);
				race.add_part_description(FPalace_helper.arms_slot,"covered in </sd"+FPalace_helper.fur_colour_id+"> fur. ");
				race.add_part_image(FPalace_helper.arms_slot, FPalace_helper.canine_arm_1_img);
				race.add_part_description(FPalace_helper.hands_slot,"five fingers covered in </sd"+FPalace_helper.fur_colour_id+"> fur, every finger tipped with a short dull claw. ");
				race.add_part_image(FPalace_helper.hands_slot, FPalace_helper.canine_hand_1_img);
				race.add_part_description(FPalace_helper.breasts_slot,"</sd"+FPalace_helper.fur_colour_id+"> furry teardrops atop </noun> torso, each topped with a pert pink nipple. ");
				race.add_part_image(FPalace_helper.breasts_slot, FPalace_helper.canine_breasts_1_img);
				race.add_part_description(FPalace_helper.cock_slot,"bright red with a thick knot at its base. ");
				race.add_part_image(FPalace_helper.cock_slot, FPalace_helper.canine_penis_1_img);
				race.add_part_description(FPalace_helper.balls_slot,"covered by a fuzzy </sd"+FPalace_helper.fur_colour_id+"> sack. ");
				race.add_part_image(FPalace_helper.balls_slot, FPalace_helper.canine_balls_1_img);
				race.add_part_description(FPalace_helper.hips_slot,"taunt and fuzzy. ");
				race.add_part_image(FPalace_helper.hips_slot, FPalace_helper.canine_hips_1_img);
				race.add_part_description(FPalace_helper.vag_slot,"a set of cute, pert lips that fold on one another like flower pettles. ");
				race.add_part_image(FPalace_helper.vag_slot, FPalace_helper.canine_vag_1_img);
				race.add_part_description(FPalace_helper.legs_slot,"fuzzy </sd"+FPalace_helper.fur_colour_id+"> flesh that bend forward at the knee. ");
				race.add_part_image(FPalace_helper.legs_slot, FPalace_helper.canine_leg_1_img);
				race.add_part_description(FPalace_helper.feet_slot,"five toes and a length of fuzzy </sd"+FPalace_helper.fur_colour_id+"> flesh. ");
				race.add_part_image(FPalace_helper.feet_slot, FPalace_helper.canine_foot_1_img);
				race.add_part_description(FPalace_helper.clit_slot,"a pink pearl shapped nub. ");
				race.add_part_image(FPalace_helper.clit_slot, FPalace_helper.canine_clit_1_img);
				race.add_part_description(FPalace_helper.tail_slot,"a long fuzzy length of </sd"+FPalace_helper.fur_colour_id+"> fur. ");
				race.add_part_image(FPalace_helper.tail_slot, FPalace_helper.canine_tail_1_img);
				
				race.new_female_name_set(["Angel"]);
				race.new_male_name_set(["Rex"]);
				race.new_surname_set([""]);
				
				var a3:Action = new Action();
					a3.set_name("Bite");
					a3.set_attack_flag();
					a3.set_attack_description("Bite an opponent. ");
						var challenge2:Challenge = new Challenge(true);
						challenge2.set_attack_stat(FPalace_skills.melee_id);
						challenge2.set_defense_stat(FPalace_skills.dodging_id);
						challenge2.set_variability(20);
						challenge2.set_text("Bite");
						var consequence2:Consequence = new Consequence();
						consequence2.set_damage_type(FPalace_helper.pierce_damage_type().get_id());
						consequence2.add_consequence(FPalace_helper.curr_hp_id,-2, "</n2> bites </n>! ",0,0,1);
						consequence2.add_consequence(FPalace_helper.curr_hp_id,-4, "</n2> tears out a hunk of </n>s flesh! ",6);
						consequence2.add_consequence(0,0, "</n2> futily gnashes at air. ",-1);
									
					a3.add_challenge(challenge2,consequence2);
				
				race.new_attack(a3, FPalace_helper.head_slot);
				
				race.set_preg_effect(mamal_preg(Main.t1_month * 4));
				
				race.add_part(FPalace_helper.new_head(race), 1);
				race.add_part(FPalace_helper.new_torso(race), 1);
				race.add_part(FPalace_helper.new_left_arms(race), 1);
				race.add_part(FPalace_helper.new_right_arms(race), 1);
				race.add_part(FPalace_helper.new_left_hands(race), 1);
				race.add_part(FPalace_helper.new_right_hands(race), 1);
				race.add_part(FPalace_helper.new_hips(race), 1);
				race.add_part(FPalace_helper.new_left_legs(race), 1);
				race.add_part(FPalace_helper.new_left_feet(race), 1);
				race.add_part(FPalace_helper.new_right_legs(race), 1);
				race.add_part(FPalace_helper.new_right_feet(race), 1);
				race.add_part(FPalace_helper.new_tail(race), 1);
				anthro_fox_race = race;
			}
			
			return anthro_fox_race;
		}
		
		
		
		public static function race_anthro_penguin():Race{
			if(anthro_penguin_race == null){
				var race:Race = new Race();
				race.set_name("sphenis");
				
				race.new_stat(FPalace_helper.stat_fur_colour());
				
				race.set_aging_mod(0.7);
				race.set_bonus(FPalace_helper.will_id,1, FPalace_helper.head_slot);
				race.set_bonus(FPalace_helper.int_id,1, FPalace_helper.head_slot);
				race.set_bonus(FPalace_helper.sex_appeal_id,1, FPalace_helper.head_slot);
				race.set_bonus(FPalace_helper.dex_id,-0.5, FPalace_helper.arms_slot);
				race.set_bonus(FPalace_helper.dex_id,-0.5, FPalace_helper.legs_slot);
				
				race.add_status_immunity(Tick_Effect.lactating_status);
				//STR: 22	
				race.set_stat_max(FPalace_helper.str_id, 3, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.str_id, 3, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.hands_slot);
				//DEX: 14	
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.tail_slot);
				race.set_stat_max(FPalace_helper.dex_id, 1, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.dex_id, 1, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.dex_id, 1, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.dex_id, 1, FPalace_helper.hands_slot);
				//CON: 22	
				race.set_stat_max(FPalace_helper.con_id, 3, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.con_id, 3, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.hands_slot);
				//BEA: 27
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2.5, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2.5, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.breasts_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.vag_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.clit_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.cock_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.balls_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.eyes_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.hair_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.tail_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.hands_slot);
				//INT: 25
				race.set_stat_max(FPalace_helper.int_id, 12.5, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.int_id, 12.5, FPalace_helper.torso_slot);
				//WIS: 22
				race.set_stat_max(FPalace_helper.wis_id, 11, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.wis_id, 11, FPalace_helper.torso_slot);
				//WILL: 25
				race.set_stat_max(FPalace_helper.will_id, 12.5, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.will_id, 12.5, FPalace_helper.torso_slot);
				//CHA: 22
				race.set_stat_max(FPalace_helper.cha_id, 11, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.cha_id, 11, FPalace_helper.torso_slot);
				
				race.add_part_description(FPalace_helper.head_slot,"cheery faced sphenis, with small ears, and short </sd"+FPalace_helper.fur_colour_id+"> feathers covering everything except a long pointed beak. ");
				race.add_part_image(FPalace_helper.head_slot, FPalace_helper.mouse_head_1_img);
				race.add_part_description(FPalace_helper.eyes_slot,"dark pupils, with irises that fill the rest ");
				race.add_part_image(FPalace_helper.eyes_slot, FPalace_helper.mouse_eyes_1_img);
				race.add_part_description(FPalace_helper.hair_slot,"straight, ");
				race.add_part_image(FPalace_helper.hair_slot, FPalace_helper.mouse_hair_1_img);
				race.add_part_description(FPalace_helper.torso_slot,"covered in </sd"+FPalace_helper.fur_colour_id+"> feathers that doesn't fail to show </noun> form. ");
				race.add_part_image(FPalace_helper.torso_slot, FPalace_helper.mouse_torso_1_img);
				race.add_part_description(FPalace_helper.arms_slot,"covered in </sd"+FPalace_helper.fur_colour_id+"> feathers. ");
				race.add_part_image(FPalace_helper.arms_slot, FPalace_helper.mouse_arm_1_img);
				race.add_part_description(FPalace_helper.hands_slot,"strange lengths of flipper. ");
				race.add_part_image(FPalace_helper.hands_slot, FPalace_helper.mouse_hand_1_img);
				race.add_part_description(FPalace_helper.breasts_slot,"feathered </sd"+FPalace_helper.fur_colour_id+"> teardrops atop </noun> torso, each topped with a pert pink nipple. ");
				race.add_part_image(FPalace_helper.breasts_slot, FPalace_helper.mouse_breasts_1_img);
				race.add_part_description(FPalace_helper.cock_slot,"bright red flesh. ");
				race.add_part_image(FPalace_helper.cock_slot, FPalace_helper.mouse_penis_1_img);
				race.add_part_description(FPalace_helper.balls_slot,"covered by a fuzzy </sd"+FPalace_helper.fur_colour_id+"> sack. ");
				race.add_part_image(FPalace_helper.balls_slot, FPalace_helper.mouse_balls_1_img);
				race.add_part_description(FPalace_helper.hips_slot,"taunt and fuzzy. ");
				race.add_part_image(FPalace_helper.hips_slot, FPalace_helper.mouse_hips_1_img);
				race.add_part_description(FPalace_helper.vag_slot,"a set of cute, pert lips that fold on one another like flower pettles. ");
				race.add_part_image(FPalace_helper.vag_slot, FPalace_helper.mouse_vag_1_img);
				race.add_part_description(FPalace_helper.legs_slot,"fuzzy </sd"+FPalace_helper.fur_colour_id+"> feathers that bend forward at the knee. ");
				race.add_part_image(FPalace_helper.legs_slot, FPalace_helper.mouse_leg_1_img);
				race.add_part_description(FPalace_helper.feet_slot,"webbed. ");
				race.add_part_image(FPalace_helper.feet_slot, FPalace_helper.mouse_foot_1_img);
				race.add_part_description(FPalace_helper.clit_slot,"a pink pearl shapped nub. ");
				race.add_part_image(FPalace_helper.clit_slot, FPalace_helper.mouse_clit_1_img);
				race.add_part_description(FPalace_helper.tail_slot,"a short </sd"+FPalace_helper.fur_colour_id+"> tail feather that covers </noun> rump. ");
				race.add_part_image(FPalace_helper.tail_slot, FPalace_helper.mouse_tail_1_img);
				
				race.new_female_name_set(["Misty"]);
				race.new_male_name_set(["Peter"]);
				race.new_surname_set(["Penguin"]);
				
				race.set_preg_effect(mamal_preg(Main.t1_month * 6));
				
				race.add_part(FPalace_helper.new_head(race), 1);
				race.add_part(FPalace_helper.new_torso(race), 1);
				race.add_part(FPalace_helper.new_left_arms(race), 1);
				race.add_part(FPalace_helper.new_right_arms(race), 1);
				race.add_part(FPalace_helper.new_left_hands(race), 1);
				race.add_part(FPalace_helper.new_right_hands(race), 1);
				race.add_part(FPalace_helper.new_hips(race), 1);
				race.add_part(FPalace_helper.new_left_legs(race), 1);
				race.add_part(FPalace_helper.new_left_feet(race), 1);
				race.add_part(FPalace_helper.new_right_legs(race), 1);
				race.add_part(FPalace_helper.new_right_feet(race), 1);
				race.add_part(FPalace_helper.new_tail(race), 1);
				anthro_penguin_race = race;
			}
			
			return anthro_penguin_race;
		}
		
		public static function race_anthro_seal():Race{
			if(anthro_seal_race == null){
				var race:Race = new Race();
				race.set_name("pinnip");
				
				race.new_stat(FPalace_helper.stat_fur_colour());
				
				race.set_aging_mod(0.7);
				race.set_bonus(FPalace_helper.wis_id,1, FPalace_helper.head_slot);
				race.set_bonus(FPalace_helper.con_id,1, FPalace_helper.torso_slot);
				race.set_bonus(FPalace_helper.str_id,-0.25, FPalace_helper.arms_slot);
				race.set_bonus(FPalace_helper.str_id,-0.25, FPalace_helper.legs_slot);
				
				//STR: 17	
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.str_id, 1, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.str_id, 1, FPalace_helper.hands_slot);
				//DEX: 22	
				race.set_stat_max(FPalace_helper.dex_id, 3, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.dex_id, 3, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.hands_slot);
				//CON: 25	
				race.set_stat_max(FPalace_helper.con_id, 4, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.con_id, 3, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.con_id, 2.5, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.con_id, 2.5, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.hands_slot);
				//BEA: 23		
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1.5, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1.5, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.breasts_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.vag_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.clit_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.cock_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.balls_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.eyes_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.hair_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.hands_slot);
				//INT: 22
				race.set_stat_max(FPalace_helper.int_id, 11, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.int_id, 11, FPalace_helper.torso_slot);
				//WIS: 26
				race.set_stat_max(FPalace_helper.wis_id, 13, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.wis_id, 13, FPalace_helper.torso_slot);
				//WILL: 22
				race.set_stat_max(FPalace_helper.will_id, 11, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.will_id, 11, FPalace_helper.torso_slot);
				//CHA: 22
				race.set_stat_max(FPalace_helper.cha_id, 11, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.cha_id, 11, FPalace_helper.torso_slot);
				
				race.add_part_description(FPalace_helper.head_slot,"cheery faced pinnip, with small ears, and short, tough </sd"+FPalace_helper.fur_colour_id+"> skin covering everything except a small black nose. ");
				race.add_part_image(FPalace_helper.head_slot, FPalace_helper.mouse_head_1_img);
				race.add_part_description(FPalace_helper.eyes_slot,"dark pupils, with irises that fill the rest ");
				race.add_part_image(FPalace_helper.eyes_slot, FPalace_helper.mouse_eyes_1_img);
				race.add_part_description(FPalace_helper.hair_slot,"straight, ");
				race.add_part_image(FPalace_helper.hair_slot, FPalace_helper.mouse_hair_1_img);
				race.add_part_description(FPalace_helper.torso_slot,"covered in </sd"+FPalace_helper.fur_colour_id+"> tough skin that doesn't fail to show </noun> form. ");
				race.add_part_image(FPalace_helper.torso_slot, FPalace_helper.mouse_torso_1_img);
				race.add_part_description(FPalace_helper.arms_slot,"covered in </sd"+FPalace_helper.fur_colour_id+"> skin. ");
				race.add_part_image(FPalace_helper.arms_slot, FPalace_helper.mouse_arm_1_img);
				race.add_part_description(FPalace_helper.hands_slot,"strange lengths of flipper. ");
				race.add_part_image(FPalace_helper.hands_slot, FPalace_helper.mouse_hand_1_img);
				race.add_part_description(FPalace_helper.breasts_slot,"feathered </sd"+FPalace_helper.fur_colour_id+"> teardrops atop </noun> torso, each topped with a pert pink nipple. ");
				race.add_part_image(FPalace_helper.breasts_slot, FPalace_helper.mouse_breasts_1_img);
				race.add_part_description(FPalace_helper.cock_slot,"bright red flesh. ");
				race.add_part_image(FPalace_helper.cock_slot, FPalace_helper.mouse_penis_1_img);
				race.add_part_description(FPalace_helper.balls_slot,"covered by a fuzzy </sd"+FPalace_helper.fur_colour_id+"> sack. ");
				race.add_part_image(FPalace_helper.balls_slot, FPalace_helper.mouse_balls_1_img);
				race.add_part_description(FPalace_helper.hips_slot,"taunt and fuzzy. ");
				race.add_part_image(FPalace_helper.hips_slot, FPalace_helper.mouse_hips_1_img);
				race.add_part_description(FPalace_helper.vag_slot,"a set of cute, pert lips that fold on one another like flower pettles. ");
				race.add_part_image(FPalace_helper.vag_slot, FPalace_helper.mouse_vag_1_img);
				race.add_part_description(FPalace_helper.legs_slot,"fuzzy </sd"+FPalace_helper.fur_colour_id+"> skin that bend forward at the knee. ");
				race.add_part_image(FPalace_helper.legs_slot, FPalace_helper.mouse_leg_1_img);
				race.add_part_description(FPalace_helper.feet_slot,"webbed. ");
				race.add_part_image(FPalace_helper.feet_slot, FPalace_helper.mouse_foot_1_img);
				race.add_part_description(FPalace_helper.clit_slot,"a pink pearl shapped nub. ");
				race.add_part_image(FPalace_helper.clit_slot, FPalace_helper.mouse_clit_1_img);
				
				race.new_female_name_set(["Misty"]);
				race.new_male_name_set(["Peter"]);
				race.new_surname_set(["Seal"]);
				
				race.set_preg_effect(mamal_preg(Main.t1_month * 6));
				
				race.add_part(FPalace_helper.new_head(race), 1);
				race.add_part(FPalace_helper.new_torso(race), 1);
				race.add_part(FPalace_helper.new_left_arms(race), 1);
				race.add_part(FPalace_helper.new_right_arms(race), 1);
				race.add_part(FPalace_helper.new_left_hands(race), 1);
				race.add_part(FPalace_helper.new_right_hands(race), 1);
				race.add_part(FPalace_helper.new_hips(race), 1);
				race.add_part(FPalace_helper.new_left_legs(race), 1);
				race.add_part(FPalace_helper.new_left_feet(race), 1);
				race.add_part(FPalace_helper.new_right_legs(race), 1);
				race.add_part(FPalace_helper.new_right_feet(race), 1);
				anthro_seal_race = race;
			}
			
			return anthro_seal_race;
		}
		
		public static function race_anthro_mouse():Race{
			if(anthro_mouse_race == null){
				var race:Race = new Race();
				race.set_name("mouse");
				
				race.new_stat(FPalace_helper.stat_fur_colour());
				
				race.set_aging_mod(0.7);
				race.set_bonus(FPalace_helper.cha_id,1, FPalace_helper.head_slot);
				race.set_bonus(FPalace_helper.eye_colour_id,17, FPalace_helper.eyes_slot);
				race.set_bonus(FPalace_helper.height_id,-6, FPalace_helper.arms_slot);
				race.set_bonus(FPalace_helper.height_id,-6, FPalace_helper.torso_slot);
				race.set_bonus(FPalace_helper.height_id,-6, FPalace_helper.hips_slot);
				race.set_bonus(FPalace_helper.height_id,-6, FPalace_helper.legs_slot);
				race.set_bonus(FPalace_helper.str_id,-0.5, FPalace_helper.arms_slot);
				race.set_bonus(FPalace_helper.dex_id,0.5, FPalace_helper.legs_slot);
				race.set_bonus(FPalace_helper.egg_fertility_id,0.5, FPalace_helper.vag_slot);
				race.set_bonus(FPalace_helper.semen_fertility_id,0.05, FPalace_helper.balls_slot);
				
				race.set_skill_bonus(FPalace_skills.covert_id, 2, FPalace_helper.feet_slot);
				//STR: 20	
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.hands_slot);
				//DEX: 30	
				race.set_stat_max(FPalace_helper.dex_id, 3, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.dex_id, 3, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.tail_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2.5, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.dex_id, 3, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2.5, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.dex_id, 3, FPalace_helper.hands_slot);
				//CON: 20	
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.hands_slot);
				//BEA: 25
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.breasts_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.vag_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.clit_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.cock_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.balls_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.tail_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1.5, FPalace_helper.eyes_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1.5, FPalace_helper.hair_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.hands_slot);
				//INT: 22
				race.set_stat_max(FPalace_helper.int_id, 11, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.int_id, 11, FPalace_helper.torso_slot);
				//WIS: 20
				race.set_stat_max(FPalace_helper.wis_id, 10, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.wis_id, 10, FPalace_helper.torso_slot);
				//WILL: 20
				race.set_stat_max(FPalace_helper.will_id, 10, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.will_id, 10, FPalace_helper.torso_slot);
				//CHA: 22
				race.set_stat_max(FPalace_helper.cha_id, 11, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.cha_id, 11, FPalace_helper.torso_slot);
				
				race.add_part_description(FPalace_helper.head_slot,"cheery faced mouse, </noun> triangular ears darting from sound to sound, short </sd"+FPalace_helper.fur_colour_id+"> fur covering everything except a small pink triangle of a nose. ");
				race.add_part_image(FPalace_helper.head_slot, FPalace_helper.mouse_head_1_img);
				race.add_part_description(FPalace_helper.eyes_slot,"dark pupils, with irises that fill the rest ");
				race.add_part_image(FPalace_helper.eyes_slot, FPalace_helper.mouse_eyes_1_img);
				race.add_part_description(FPalace_helper.hair_slot,"straight, ");
				race.add_part_image(FPalace_helper.hair_slot, FPalace_helper.mouse_hair_1_img);
				race.add_part_description(FPalace_helper.torso_slot,"covered in </sd"+FPalace_helper.fur_colour_id+"> fur that doesn't fail to show </noun> form. ");
				race.add_part_image(FPalace_helper.torso_slot, FPalace_helper.mouse_torso_1_img);
				race.add_part_description(FPalace_helper.arms_slot,"covered in </sd"+FPalace_helper.fur_colour_id+"> fur. ");
				race.add_part_image(FPalace_helper.arms_slot, FPalace_helper.mouse_arm_1_img);
				race.add_part_description(FPalace_helper.hands_slot,"five fingers covered flesh. ");
				race.add_part_image(FPalace_helper.hands_slot, FPalace_helper.mouse_hand_1_img);
				race.add_part_description(FPalace_helper.breasts_slot,"furry </sd"+FPalace_helper.fur_colour_id+"> teardrops atop </noun> torso, each topped with a pert pink nipple. ");
				race.add_part_image(FPalace_helper.breasts_slot, FPalace_helper.mouse_breasts_1_img);
				race.add_part_description(FPalace_helper.cock_slot,"bright red flesh. ");
				race.add_part_image(FPalace_helper.cock_slot, FPalace_helper.mouse_penis_1_img);
				race.add_part_description(FPalace_helper.balls_slot,"covered by a fuzzy </sd"+FPalace_helper.fur_colour_id+"> sack. ");
				race.add_part_image(FPalace_helper.balls_slot, FPalace_helper.mouse_balls_1_img);
				race.add_part_description(FPalace_helper.hips_slot,"taunt and fuzzy. ");
				race.add_part_image(FPalace_helper.hips_slot, FPalace_helper.mouse_hips_1_img);
				race.add_part_description(FPalace_helper.vag_slot,"a set of cute, pert lips that fold on one another like flower pettles. ");
				race.add_part_image(FPalace_helper.vag_slot, FPalace_helper.mouse_vag_1_img);
				race.add_part_description(FPalace_helper.legs_slot,"fuzzy </sd"+FPalace_helper.fur_colour_id+"> flesh that bend forward at the knee. ");
				race.add_part_image(FPalace_helper.legs_slot, FPalace_helper.mouse_leg_1_img);
				race.add_part_description(FPalace_helper.feet_slot,"five toes and a length of pink flesh. ");
				race.add_part_image(FPalace_helper.feet_slot, FPalace_helper.mouse_foot_1_img);
				race.add_part_description(FPalace_helper.clit_slot,"a pink pearl shapped nub. ");
				race.add_part_image(FPalace_helper.clit_slot, FPalace_helper.mouse_clit_1_img);
				race.add_part_description(FPalace_helper.tail_slot,"a long length of pink flesh. ");
				race.add_part_image(FPalace_helper.tail_slot, FPalace_helper.mouse_tail_1_img);
				
				race.new_female_name_set(["Misty"]);
				race.new_male_name_set(["Max"]);
				race.new_surname_set(["Mouse"]);
				
				race.set_preg_effect(mamal_preg(Main.t1_month * 4));
				
				race.add_part(FPalace_helper.new_head(race), 1);
				race.add_part(FPalace_helper.new_torso(race), 1);
				race.add_part(FPalace_helper.new_left_arms(race), 1);
				race.add_part(FPalace_helper.new_right_arms(race), 1);
				race.add_part(FPalace_helper.new_left_hands(race), 1);
				race.add_part(FPalace_helper.new_right_hands(race), 1);
				race.add_part(FPalace_helper.new_hips(race), 1);
				race.add_part(FPalace_helper.new_left_legs(race), 1);
				race.add_part(FPalace_helper.new_left_feet(race), 1);
				race.add_part(FPalace_helper.new_right_legs(race), 1);
				race.add_part(FPalace_helper.new_right_feet(race), 1);
				race.add_part(FPalace_helper.new_tail(race), 1);
				anthro_mouse_race = race;
			}
			
			return anthro_mouse_race;
		}
		
		public static function race_anthro_bovine():Race{
			if(anthro_bovine_race == null){
				var race:Race = new Race();
				race.set_name("bovine");
				
				race.new_stat(FPalace_helper.stat_fur_colour());
				
				race.set_aging_mod(0.8);
				race.set_bonus(FPalace_helper.int_id,-2, FPalace_helper.head_slot);
				race.set_bonus(FPalace_helper.eye_colour_id,6, FPalace_helper.eyes_slot);
				race.set_bonus(FPalace_helper.sex_appeal_id,1, FPalace_helper.head_slot);
				race.set_bonus(FPalace_helper.height_id,1, FPalace_helper.arms_slot);
				race.set_bonus(FPalace_helper.dex_id,-0.5, FPalace_helper.arms_slot);
				race.set_bonus(FPalace_helper.str_id,0.5, FPalace_helper.arms_slot);
				race.set_bonus(FPalace_helper.str_id,0.5, FPalace_helper.hands_slot);
				race.set_bonus(FPalace_helper.height_id,1, FPalace_helper.legs_slot);
				race.set_bonus(FPalace_helper.dex_id,-0.5, FPalace_helper.legs_slot);
				race.set_bonus(FPalace_helper.str_id,0.5, FPalace_helper.legs_slot);
				race.set_bonus(FPalace_helper.str_id,0.5, FPalace_helper.feet_slot);
				race.set_bonus(FPalace_helper.sex_appeal_id,1, FPalace_helper.hips_slot);
				race.set_bonus(FPalace_helper.sex_appeal_id,1, FPalace_helper.breasts_slot);
				race.set_bonus(FPalace_helper.egg_fertility_id,-0.05, FPalace_helper.vag_slot);
				
				race.set_bonus(FPalace_helper.semen_fertility_id,-0.01, FPalace_helper.balls_slot);
				race.set_bonus(FPalace_helper.height_id,3, FPalace_helper.torso_slot);
				race.set_bonus(FPalace_helper.height_id,2, FPalace_helper.hips_slot);
				race.set_bonus(FPalace_helper.breast_size_id, 3, FPalace_helper.breasts_slot);
				race.set_bonus(FPalace_helper.milk_volume_id, 675, FPalace_helper.breasts_slot);
				race.set_bonus(FPalace_helper.vaginal_depth_id, 24, FPalace_helper.vag_slot);
				race.set_bonus(FPalace_helper.vaginal_width_id, 8, FPalace_helper.vag_slot);
				race.set_bonus(FPalace_helper.penis_length_id, 24, FPalace_helper.cock_slot);//3 feet long errect, 2 feet flaccid
				race.set_bonus(FPalace_helper.penis_girth_id, 8, FPalace_helper.cock_slot);//just 1 inch around
				race.set_bonus(FPalace_helper.erection_ratio_id,-0.2, FPalace_helper.cock_slot);
				race.set_bonus(FPalace_helper.balls_size_id, 3, FPalace_helper.balls_slot);//Should be 11 inches around
				race.set_bonus(FPalace_helper.max_lust_id,-2);
				//STR: 33	
				race.set_stat_max(FPalace_helper.str_id, 3, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.str_id, 4, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.str_id, 3.5, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.str_id, 3, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.str_id, 3.5, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.str_id, 3, FPalace_helper.hands_slot);
				//DEX: 13	
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.dex_id, 1, FPalace_helper.tail_slot);
				race.set_stat_max(FPalace_helper.dex_id, 1, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.dex_id, 1, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.dex_id, 1, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.dex_id, 1, FPalace_helper.hands_slot);
				//CON: 22	
				race.set_stat_max(FPalace_helper.con_id, 3, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.con_id, 3, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.hands_slot);
				//BEA: 28
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.breasts_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.vag_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.clit_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.cock_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.balls_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.tail_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.horn_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.udder_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.eyes_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.hair_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.hands_slot);
				//INT: 15
				race.set_stat_max(FPalace_helper.int_id, 7.5, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.int_id, 7.5, FPalace_helper.torso_slot);
				//WIS: 22
				race.set_stat_max(FPalace_helper.wis_id, 11, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.wis_id, 11, FPalace_helper.torso_slot);
				//WILL: 22
				race.set_stat_max(FPalace_helper.will_id, 11, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.will_id, 11, FPalace_helper.torso_slot);
				//CHA: 24
				race.set_stat_max(FPalace_helper.cha_id, 12, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.cha_id, 12, FPalace_helper.torso_slot);				
							
				race.add_part_description(FPalace_helper.head_slot,"cheery faced bovine, </noun> smooth </sd"+FPalace_helper.fur_colour_id+"> fur and floppy ears marking </objnoun> as such. ");
				race.add_part_image(FPalace_helper.head_slot, FPalace_helper.bovine_head_1_img);
				race.add_part_description(FPalace_helper.eyes_slot,"dark pupils, with circular irises that fill the rest ");
				race.add_part_image(FPalace_helper.eyes_slot, FPalace_helper.bovine_eyes_1_img);
				race.add_part_description(FPalace_helper.hair_slot,"straight, ");
				race.add_part_image(FPalace_helper.hair_slot, FPalace_helper.bovine_hair_1_img);
				race.add_part_description(FPalace_helper.horn_slot,"pearly white protrussions of bone. ");
				race.add_part_image(FPalace_helper.horn_slot, FPalace_helper.bovine_horns_1_img);
				race.add_part_description(FPalace_helper.torso_slot,"</sd"+FPalace_helper.fur_colour_id+"> fur excentuating </noun> form. ");
				race.add_part_image(FPalace_helper.torso_slot, FPalace_helper.bovine_torso_1_img);
				race.add_part_description(FPalace_helper.arms_slot,"smooth </sd"+FPalace_helper.fur_colour_id+"> fur with splotches of different colours. ");
				race.add_part_image(FPalace_helper.arms_slot, FPalace_helper.bovine_arm_1_img);
				race.add_part_description(FPalace_helper.hands_slot,"five fingers covered in </sd"+FPalace_helper.fur_colour_id+"> fur, every finger tipped with a translucent nail. ");
				race.add_part_image(FPalace_helper.hands_slot, FPalace_helper.bovine_hand_1_img);
				race.add_part_description(FPalace_helper.breasts_slot,"</sd"+FPalace_helper.fur_colour_id+"> furry teardrops atop </noun> torso, each topped with a pert pink nipple. ");
				race.add_part_image(FPalace_helper.breasts_slot, FPalace_helper.bovine_breasts_1_img);
				race.add_part_description(FPalace_helper.cock_slot,"smooth brown flesh, it's length tapered, and it's head flat. ");
				race.add_part_image(FPalace_helper.cock_slot, FPalace_helper.bovine_penis_1_img);
				race.add_part_description(FPalace_helper.balls_slot,"covered in wrinkly </sd"+FPalace_helper.fur_colour_id+"> fur. ");
				race.add_part_image(FPalace_helper.balls_slot, FPalace_helper.bovine_balls_1_img);
				race.add_part_description(FPalace_helper.hips_slot,"firm taunt </sd"+FPalace_helper.fur_colour_id+"> fur. ");
				race.add_part_image(FPalace_helper.hips_slot, FPalace_helper.bovine_hips_1_img);
				race.add_part_description(FPalace_helper.vag_slot,"a set of cute, pert lips that fold on one another like flower pettles. ");
				race.add_part_image(FPalace_helper.vag_slot, FPalace_helper.bovine_vag_1_img);
				race.add_part_description(FPalace_helper.legs_slot,"straight </sd"+FPalace_helper.fur_colour_id+"> fur that bend forward at the knee. ");
				race.add_part_image(FPalace_helper.legs_slot, FPalace_helper.bovine_leg_1_img);
				race.add_part_description(FPalace_helper.feet_slot,"five toes and a length of </sd"+FPalace_helper.fur_colour_id+"> fur. ");
				race.add_part_image(FPalace_helper.feet_slot, FPalace_helper.bovine_foot_1_img);
				race.add_part_description(FPalace_helper.clit_slot,"a pink pearl shapped nub. ");
				race.add_part_image(FPalace_helper.clit_slot, FPalace_helper.bovine_clit_1_img);
				race.add_part_description(FPalace_helper.tail_slot,"a long slender length of </sd"+FPalace_helper.fur_colour_id+"> fur that ends in a tuff of hair. ");
				race.add_part_image(FPalace_helper.tail_slot, FPalace_helper.bovine_tail_1_img);
				race.add_part_description(FPalace_helper.udder_slot,"a large pink bulge with four large nipples. ");
				race.add_part_image(FPalace_helper.udder_slot, FPalace_helper.bovine_udder_1_img);
				
				race.new_female_name_set(["Bess","Jayne","Jyll","Wande","Virginia","Kalee","Hayleigh","Danalee","Elvira","Belle","Beverlee", "Pandora"]);
				race.new_male_name_set(["Highball", "Dillinger", "Blueberry", "Bones", "Hammer", "Slim", "Apollo", "Rock"]);
				race.new_surname_set(["Abigar","Baoule","Heffer","Braunvieh","Camargue","Caracu","Corsica","Devon","Ennstal","Fleckvieh"]);
				
				race.set_preg_effect(mamal_preg(Main.t1_month * 7));
				
				race.add_part(FPalace_helper.new_head(race), 1);
				race.add_part(FPalace_helper.new_torso(race), 1);
				race.add_part(FPalace_helper.new_left_arms(race), 1);
				race.add_part(FPalace_helper.new_right_arms(race), 1);
				race.add_part(FPalace_helper.new_left_hands(race), 1);
				race.add_part(FPalace_helper.new_right_hands(race), 1);
				race.add_part(FPalace_helper.new_hips(race), 1);
				race.add_part(FPalace_helper.new_left_legs(race), 1);
				race.add_part(FPalace_helper.new_left_feet(race), 1);
				race.add_part(FPalace_helper.new_right_legs(race), 1);
				race.add_part(FPalace_helper.new_right_feet(race), 1);
				race.add_part(FPalace_helper.new_tail(race), 1);
				race.add_part(FPalace_helper.new_horns(race), 1);
				race.add_part(FPalace_helper.new_udder(race), 1, FPalace_helper.sex_female().name);
				race.add_part(FPalace_helper.new_udder(race), 1, FPalace_helper.sex_herm().name);
				race.add_part(FPalace_helper.new_udder(race), 1, FPalace_helper.sex_futa().name);
				anthro_bovine_race = race;
			}
			
			return anthro_bovine_race;
		}
		
		public static function race_anthro_deer():Race{
			if(anthro_deer_race == null){
				var race:Race = new Race();
				race.set_name("cervida");
				
				race.new_stat(FPalace_helper.stat_fur_colour());
				
				race.set_aging_mod(0.8);
				race.set_bonus(FPalace_helper.eye_colour_id,6, FPalace_helper.eyes_slot);
				race.set_bonus(FPalace_helper.con_id,1, FPalace_helper.torso_slot);
				race.set_bonus(FPalace_helper.wis_id,1, FPalace_helper.head_slot);
				race.set_bonus(FPalace_helper.str_id,-0.5, FPalace_helper.arms_slot);
				//STR: 17	
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.str_id, 1.5, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.str_id, 1.5, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.str_id, 1.5, FPalace_helper.hands_slot);
				//DEX: 23	
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.dex_id, 3, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.tail_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.hands_slot);
				//CON: 27	
				race.set_stat_max(FPalace_helper.con_id, 3, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.con_id, 3, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.con_id, 3, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.con_id, 2.5, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.con_id, 3, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.hands_slot);
				//BEA: 24
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.breasts_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.vag_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.clit_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.cock_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.balls_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.eyes_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.tail_slot);		
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.horn_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.hair_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.hands_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.feet_slot);
				//INT: 20
				race.set_stat_max(FPalace_helper.int_id, 10, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.int_id, 10, FPalace_helper.torso_slot);
				//WIS: 26
				race.set_stat_max(FPalace_helper.wis_id, 13, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.wis_id, 13, FPalace_helper.torso_slot);
				//WILL: 20
				race.set_stat_max(FPalace_helper.will_id, 10, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.will_id, 10, FPalace_helper.torso_slot);
				//CHA: 22
				race.set_stat_max(FPalace_helper.cha_id, 11, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.cha_id, 11, FPalace_helper.torso_slot);				
							
				race.add_part_description(FPalace_helper.head_slot,"cheery faced cervida, </noun> smooth </sd"+FPalace_helper.fur_colour_id+"> fur and floppy ears marking </objnoun> as such. ");
				race.add_part_image(FPalace_helper.head_slot, FPalace_helper.cervine_head_1_img);
				race.add_part_description(FPalace_helper.eyes_slot,"dark pupils, with circular irises that fill the rest ");
				race.add_part_image(FPalace_helper.eyes_slot, FPalace_helper.cervine_eyes_1_img);
				race.add_part_description(FPalace_helper.hair_slot,"straight, ");
				race.add_part_image(FPalace_helper.hair_slot, FPalace_helper.cervine_hair_1_img);
				race.add_part_description(FPalace_helper.horn_slot,"pearly white protrussions of bone. ");
				race.add_part_image(FPalace_helper.horn_slot, FPalace_helper.cervine_horns_1_img);
				race.add_part_description(FPalace_helper.torso_slot,"</sd"+FPalace_helper.fur_colour_id+"> fur excentuating </noun> form. ");
				race.add_part_image(FPalace_helper.torso_slot, FPalace_helper.cervine_torso_1_img);
				race.add_part_description(FPalace_helper.arms_slot,"smooth </sd"+FPalace_helper.fur_colour_id+"> fur with splotches of different colours. ");
				race.add_part_image(FPalace_helper.arms_slot, FPalace_helper.cervine_arm_1_img);
				race.add_part_description(FPalace_helper.hands_slot,"five fingers covered in </sd"+FPalace_helper.fur_colour_id+"> fur, every finger tipped with a translucent nail. ");
				race.add_part_image(FPalace_helper.hands_slot, FPalace_helper.cervine_hand_1_img);
				race.add_part_description(FPalace_helper.breasts_slot,"</sd"+FPalace_helper.fur_colour_id+"> furry teardrops atop </noun> torso, each topped with a pert pink nipple. ");
				race.add_part_image(FPalace_helper.breasts_slot, FPalace_helper.cervine_breasts_1_img);
				race.add_part_description(FPalace_helper.cock_slot,"smooth brown flesh, it's length tapered, and it's head flat. ");
				race.add_part_image(FPalace_helper.cock_slot, FPalace_helper.cervine_penis_1_img);
				race.add_part_description(FPalace_helper.balls_slot,"covered in wrinkly </sd"+FPalace_helper.fur_colour_id+"> fur. ");
				race.add_part_image(FPalace_helper.balls_slot, FPalace_helper.cervine_balls_1_img);
				race.add_part_description(FPalace_helper.hips_slot,"firm taunt </sd"+FPalace_helper.fur_colour_id+"> fur. ");
				race.add_part_image(FPalace_helper.hips_slot, FPalace_helper.cervine_hips_1_img);
				race.add_part_description(FPalace_helper.vag_slot,"a set of cute, pert lips that fold on one another like flower pettles. ");
				race.add_part_image(FPalace_helper.vag_slot, FPalace_helper.cervine_vag_1_img);
				race.add_part_description(FPalace_helper.legs_slot,"straight </sd"+FPalace_helper.fur_colour_id+"> fur that bend forward at the knee. ");
				race.add_part_image(FPalace_helper.legs_slot, FPalace_helper.cervine_leg_1_img);
				race.add_part_description(FPalace_helper.feet_slot,"five toes and a length of </sd"+FPalace_helper.fur_colour_id+"> fur. ");
				race.add_part_image(FPalace_helper.feet_slot, FPalace_helper.cervine_foot_1_img);
				race.add_part_description(FPalace_helper.clit_slot,"a pink pearl shapped nub. ");
				race.add_part_image(FPalace_helper.clit_slot, FPalace_helper.cervine_clit_1_img);
				race.add_part_description(FPalace_helper.tail_slot,"a long slender length of </sd"+FPalace_helper.fur_colour_id+"> fur that ends in a tuff of hair. ");
				race.add_part_image(FPalace_helper.tail_slot, FPalace_helper.cervine_tail_1_img);
				
				race.new_female_name_set(["Bess","Jayne","Jyll","Wande","Virginia","Kalee","Hayleigh","Danalee","Elvira","Belle","Beverlee", "Pandora"]);
				race.new_male_name_set(["Highball", "Dillinger", "Blueberry", "Bones", "Hammer", "Slim", "Apollo", "Rock"]);
				race.new_surname_set(["Abigar","Baoule","Heffer","Braunvieh","Camargue","Caracu","Corsica","Devon","Ennstal","Fleckvieh"]);
				
				race.set_preg_effect(mamal_preg(Main.t1_month * 7));
				
				race.add_part(FPalace_helper.new_head(race), 1);
				race.add_part(FPalace_helper.new_torso(race), 1);
				race.add_part(FPalace_helper.new_left_arms(race), 1);
				race.add_part(FPalace_helper.new_right_arms(race), 1);
				race.add_part(FPalace_helper.new_left_hands(race), 1);
				race.add_part(FPalace_helper.new_right_hands(race), 1);
				race.add_part(FPalace_helper.new_hips(race), 1);
				race.add_part(FPalace_helper.new_left_legs(race), 1);
				race.add_part(FPalace_helper.new_left_feet(race), 1);
				race.add_part(FPalace_helper.new_right_legs(race), 1);
				race.add_part(FPalace_helper.new_right_feet(race), 1);
				race.add_part(FPalace_helper.new_tail(race), 1);
				race.add_part(FPalace_helper.new_horns(race), 1);
				anthro_deer_race = race;
			}
			
			return anthro_deer_race;
		}
		
		public static function race_anthro_equine():Race{
			if(anthro_equine_race == null){
				var race:Race = new Race();
				race.set_name("equine");
				
				race.new_stat(FPalace_helper.stat_fur_colour());
				
				race.set_aging_mod(0.8);
				race.set_bonus(FPalace_helper.cha_id,1, FPalace_helper.head_slot);
				race.set_bonus(FPalace_helper.int_id,-1, FPalace_helper.head_slot);
				race.set_bonus(FPalace_helper.will_id,-1, FPalace_helper.head_slot);
				race.set_bonus(FPalace_helper.str_id,0.5, FPalace_helper.arms_slot);				
				race.set_bonus(FPalace_helper.str_id,0.5, FPalace_helper.legs_slot);
				
				race.set_bonus(FPalace_helper.eye_colour_id,6, FPalace_helper.eyes_slot);
				race.set_bonus(FPalace_helper.height_id,1, FPalace_helper.head_slot);
				race.set_bonus(FPalace_helper.height_id,6, FPalace_helper.arms_slot);
				race.set_bonus(FPalace_helper.height_id,3, FPalace_helper.torso_slot);
				race.set_bonus(FPalace_helper.height_id,6, FPalace_helper.legs_slot);
				race.set_bonus(FPalace_helper.height_id,2, FPalace_helper.hips_slot);
				race.set_bonus(FPalace_helper.penis_length_id, 12, FPalace_helper.cock_slot);
				race.set_bonus(FPalace_helper.penis_girth_id, 4, FPalace_helper.cock_slot);
				race.set_bonus(FPalace_helper.cum_volume_id, 125, FPalace_helper.cock_slot);
				race.set_bonus(FPalace_helper.erection_ratio_id,-0.2, FPalace_helper.cock_slot);
				race.set_bonus(FPalace_helper.cum_volume_id, 125, FPalace_helper.balls_slot);
				race.set_bonus(FPalace_helper.balls_size_id, 2, FPalace_helper.balls_slot);
				race.set_bonus(FPalace_helper.egg_fertility_id,-0.05, FPalace_helper.vag_slot);
				race.set_bonus(FPalace_helper.semen_fertility_id,-0.01, FPalace_helper.cock_slot);				
				race.set_bonus(FPalace_helper.max_lust_id,-2);
				//STR: 31	
				race.set_stat_max(FPalace_helper.str_id, 3, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.str_id, 3, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.str_id, 3.5, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.str_id, 3, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.str_id, 3, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.str_id, 3, FPalace_helper.hands_slot);
				//DEX: 23	
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.dex_id, 3, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.tail_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.hands_slot);
				//CON: 22	
				race.set_stat_max(FPalace_helper.con_id, 3, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.con_id, 3, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.hands_slot);
				//BEA: 23
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.breasts_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.vag_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.clit_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.cock_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.balls_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.eyes_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.hair_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.tail_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.hands_slot);
				//INT: 20
				race.set_stat_max(FPalace_helper.int_id, 10, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.int_id, 10, FPalace_helper.torso_slot);
				//WIS: 20
				race.set_stat_max(FPalace_helper.wis_id, 10, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.wis_id, 10, FPalace_helper.torso_slot);
				//WILL: 9
				race.set_stat_max(FPalace_helper.will_id, 9, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.will_id, 9, FPalace_helper.torso_slot);
				//CHA: 22
				race.set_stat_max(FPalace_helper.cha_id, 11, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.cha_id, 11, FPalace_helper.torso_slot);				
							
				race.add_part_description(FPalace_helper.head_slot,"cheery faced equine, </noun> smooth </sd"+FPalace_helper.fur_colour_id+"> fur and twitchy ears marking </objnoun> as such. ");
				race.add_part_image(FPalace_helper.head_slot, FPalace_helper.equine_head_1_img);
				race.add_part_description(FPalace_helper.eyes_slot,"dark pupils, with circular irises that fill the rest ");
				race.add_part_image(FPalace_helper.eyes_slot, FPalace_helper.equine_eyes_1_img);
				race.add_part_description(FPalace_helper.hair_slot,"straight, ");
				race.add_part_image(FPalace_helper.hair_slot, FPalace_helper.equine_hair_1_img);
				race.add_part_description(FPalace_helper.torso_slot,"</sd"+FPalace_helper.fur_colour_id+"> fur excentuating </noun> form. ");
				race.add_part_image(FPalace_helper.torso_slot, FPalace_helper.equine_torso_1_img);
				race.add_part_description(FPalace_helper.arms_slot,"covered in </sd"+FPalace_helper.fur_colour_id+"> fur. ");
				race.add_part_image(FPalace_helper.arms_slot, FPalace_helper.equine_arm_1_img);
				race.add_part_description(FPalace_helper.hands_slot,"five fingers covered in </sd"+FPalace_helper.fur_colour_id+"> fur, every finger tipped with a translucent nail. ");
				race.add_part_image(FPalace_helper.hands_slot, FPalace_helper.equine_hand_1_img);
				race.add_part_description(FPalace_helper.breasts_slot,"</sd"+FPalace_helper.fur_colour_id+"> furry teardrops atop </noun> torso, each topped with a pert pink nipple. ");
				race.add_part_image(FPalace_helper.breasts_slot, FPalace_helper.equine_breasts_1_img);
				race.add_part_description(FPalace_helper.cock_slot,"smooth pink flesh, it's head flared and flat. ");
				race.add_part_image(FPalace_helper.cock_slot, FPalace_helper.equine_penis_1_img);
				race.add_part_description(FPalace_helper.balls_slot,"covered in </sd"+FPalace_helper.fur_colour_id+"> fur. ");
				race.add_part_image(FPalace_helper.balls_slot, FPalace_helper.equine_balls_1_img);
				race.add_part_description(FPalace_helper.hips_slot,"firm and lightly furred. ");
				race.add_part_image(FPalace_helper.hips_slot, FPalace_helper.equine_hips_1_img);
				race.add_part_description(FPalace_helper.vag_slot,"a set of cute, pert lips that fold on one another like flower pettles. ");
				race.add_part_image(FPalace_helper.vag_slot, FPalace_helper.equine_vag_1_img);
				race.add_part_description(FPalace_helper.legs_slot,"fuzzy </sd"+FPalace_helper.fur_colour_id+"> flesh that bend forward at the knee. ");
				race.add_part_image(FPalace_helper.legs_slot, FPalace_helper.equine_leg_1_img);
				race.add_part_description(FPalace_helper.feet_slot,"a length of </sd"+FPalace_helper.fur_colour_id+"> fur that end in hooves. ");
				race.add_part_image(FPalace_helper.feet_slot, FPalace_helper.equine_foot_1_img);
				race.add_part_description(FPalace_helper.clit_slot,"a pink pearl shapped nub. ");
				race.add_part_image(FPalace_helper.clit_slot, FPalace_helper.equine_clit_1_img);
				race.add_part_description(FPalace_helper.tail_slot,"a long a tuff of hair. ");
				race.add_part_image(FPalace_helper.tail_slot, FPalace_helper.equine_tail_1_img);
				
				race.new_female_name_set(["Bella","Adobe","Brandy","Autumn","Fiona","Pippi","Rapunzel","Lacey","Bonney","Misty","Dolly","Isabelle","Juliet","Henrietta"]);
				race.new_male_name_set(["Adam","Chad","Steve","Cleveland","Opie","Peter","Russel","Napoleon","Monte","Dale","Charlie","Olaf","Randolph"]);
				race.new_surname_set(["Stallion", "Pony","Abaco","Berger","Alban","Altai","Boerp","Clydesdale","Banker","Henson","Falabella","Lokai","Marwari","Pampa"]);
				
				race.set_preg_effect(mamal_preg(Main.t1_month * 7));
				
				race.add_part(FPalace_helper.new_head(race), 1);
				race.add_part(FPalace_helper.new_torso(race), 1);
				race.add_part(FPalace_helper.new_left_arms(race), 1);
				race.add_part(FPalace_helper.new_right_arms(race), 1);
				race.add_part(FPalace_helper.new_left_hands(race), 1);
				race.add_part(FPalace_helper.new_right_hands(race), 1);
				race.add_part(FPalace_helper.new_hips(race), 1);
				race.add_part(FPalace_helper.new_left_legs(race), 1);
				race.add_part(FPalace_helper.new_left_feet(race), 1);
				race.add_part(FPalace_helper.new_right_legs(race), 1);
				race.add_part(FPalace_helper.new_right_feet(race), 1);
				race.add_part(FPalace_helper.new_tail(race), 1);
				
				anthro_equine_race = race;
			}
				
			return anthro_equine_race;
		}
		
		public static function race_anthro_donkey():Race{
			if(anthro_donkey_race == null){
				var race:Race = new Race();
				race.set_name("equidae");
				
				race.new_stat(FPalace_helper.stat_fur_colour());
				
				race.set_aging_mod(0.8);
				race.set_bonus(FPalace_helper.will_id,1, FPalace_helper.head_slot);
				race.set_bonus(FPalace_helper.int_id,-1, FPalace_helper.head_slot);
				race.set_bonus(FPalace_helper.cha_id,-1, FPalace_helper.head_slot);
				race.set_bonus(FPalace_helper.sex_appeal_id,1, FPalace_helper.cock_slot);
				race.set_bonus(FPalace_helper.sex_appeal_id,1, FPalace_helper.breasts_slot);
				
				race.set_bonus(FPalace_helper.eye_colour_id,6, FPalace_helper.eyes_slot);
				race.set_bonus(FPalace_helper.penis_length_id, 10, FPalace_helper.cock_slot);
				race.set_bonus(FPalace_helper.penis_girth_id, 4, FPalace_helper.cock_slot);
				race.set_bonus(FPalace_helper.cum_volume_id, 250, FPalace_helper.cock_slot);
				race.set_bonus(FPalace_helper.erection_ratio_id,-0.2, FPalace_helper.cock_slot);
				race.set_bonus(FPalace_helper.cum_volume_id, 250, FPalace_helper.balls_slot);
				race.set_bonus(FPalace_helper.balls_size_id, 4, FPalace_helper.balls_slot);
				race.set_bonus(FPalace_helper.egg_fertility_id,-0.05, FPalace_helper.vag_slot);
				race.set_bonus(FPalace_helper.semen_fertility_id,0.05, FPalace_helper.cock_slot);
				race.set_bonus(FPalace_helper.str_id,0.5, FPalace_helper.legs_slot);
				race.set_bonus(FPalace_helper.max_lust_id,-2);
				//STR: 28	
				race.set_stat_max(FPalace_helper.str_id, 3, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.str_id, 3, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.str_id, 2.5, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.str_id, 2.5, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.str_id, 3, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.str_id, 2.5, FPalace_helper.hands_slot);
				//DEX: 23	
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.dex_id, 3, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.tail_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.hands_slot);
				//CON: 22	
				race.set_stat_max(FPalace_helper.con_id, 3, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.con_id, 3, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.hands_slot);
				//BEA: 26
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.breasts_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.vag_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.clit_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.cock_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.balls_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.tail_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.eyes_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.hair_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.hands_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.feet_slot);
				//INT: 16
				race.set_stat_max(FPalace_helper.int_id, 8, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.int_id, 8, FPalace_helper.torso_slot);
				//WIS: 22
				race.set_stat_max(FPalace_helper.wis_id, 11, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.wis_id, 11, FPalace_helper.torso_slot);
				//WILL: 26
				race.set_stat_max(FPalace_helper.will_id, 13, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.will_id, 13, FPalace_helper.torso_slot);
				//CHA: 16
				race.set_stat_max(FPalace_helper.cha_id, 8, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.cha_id, 8, FPalace_helper.torso_slot);
											
				race.add_part_description(FPalace_helper.head_slot,"cheery faced equidae, </noun> smooth </sd"+FPalace_helper.fur_colour_id+"> fur and twitchy ears marking </objnoun> as such. ");
				race.add_part_image(FPalace_helper.head_slot, FPalace_helper.equidae_head_1_img);
				race.add_part_description(FPalace_helper.eyes_slot,"dark pupils, with circular irises that fill the rest ");
				race.add_part_image(FPalace_helper.eyes_slot, FPalace_helper.equidae_eyes_1_img);
				race.add_part_description(FPalace_helper.hair_slot,"straight, ");
				race.add_part_image(FPalace_helper.hair_slot, FPalace_helper.equidae_hair_1_img);
				race.add_part_description(FPalace_helper.torso_slot,"</sd"+FPalace_helper.fur_colour_id+"> fur excentuating </noun> form. ");
				race.add_part_image(FPalace_helper.torso_slot, FPalace_helper.equidae_torso_1_img);
				race.add_part_description(FPalace_helper.arms_slot,"covered in </sd"+FPalace_helper.fur_colour_id+"> fur. ");
				race.add_part_image(FPalace_helper.arms_slot, FPalace_helper.equidae_arm_1_img);
				race.add_part_description(FPalace_helper.hands_slot,"five fingers covered in </sd"+FPalace_helper.fur_colour_id+"> fur, every finger tipped with a translucent nail. ");
				race.add_part_image(FPalace_helper.hands_slot, FPalace_helper.equidae_hand_1_img);
				race.add_part_description(FPalace_helper.breasts_slot,"</sd"+FPalace_helper.fur_colour_id+"> furry teardrops atop </noun> torso, each topped with a pert pink nipple. ");
				race.add_part_image(FPalace_helper.breasts_slot, FPalace_helper.equidae_breasts_1_img);
				race.add_part_description(FPalace_helper.cock_slot,"smooth pink flesh, it's head flared and flat. ");
				race.add_part_image(FPalace_helper.cock_slot, FPalace_helper.equidae_penis_1_img);
				race.add_part_description(FPalace_helper.balls_slot,"covered in </sd"+FPalace_helper.fur_colour_id+"> fur. ");
				race.add_part_image(FPalace_helper.balls_slot, FPalace_helper.equidae_balls_1_img);
				race.add_part_description(FPalace_helper.hips_slot,"firm and lightly furred. ");
				race.add_part_image(FPalace_helper.hips_slot, FPalace_helper.equidae_hips_1_img);
				race.add_part_description(FPalace_helper.vag_slot,"a set of cute, pert lips that fold on one another like flower pettles. ");
				race.add_part_image(FPalace_helper.vag_slot, FPalace_helper.equidae_vag_1_img);
				race.add_part_description(FPalace_helper.legs_slot,"fuzzy </sd"+FPalace_helper.fur_colour_id+"> flesh that bend forward at the knee. ");
				race.add_part_image(FPalace_helper.legs_slot, FPalace_helper.equidae_leg_1_img);
				race.add_part_description(FPalace_helper.feet_slot,"five toes and a length of fuzzy </sd"+FPalace_helper.fur_colour_id+"> flesh. ");
				race.add_part_image(FPalace_helper.feet_slot, FPalace_helper.equidae_foot_1_img);
				race.add_part_description(FPalace_helper.clit_slot,"a pink pearl shapped nub. ");
				race.add_part_image(FPalace_helper.clit_slot, FPalace_helper.equidae_clit_1_img);
				race.add_part_description(FPalace_helper.tail_slot,"a long a tuff of hair. ");
				race.add_part_image(FPalace_helper.tail_slot, FPalace_helper.equidae_tail_1_img);
				
				race.new_female_name_set(["Bella", "Jenny", "Jubilee", "Muriel", "Cora", "Pixie"]);
				race.new_male_name_set(["Duncan", "Jack", "Noah", "Herbert", "Jacob", "Oscar", "Bogart"]);
				race.new_surname_set(["Donkey", "Byssin", "Geria", "Merijack", "Anatoli", "Ane", "Bourbon", "Cotent", "Normand", "Berry", "Wallon"]);
				
				race.set_preg_effect(mamal_preg(Main.t1_month * 7));
				
				race.add_part(FPalace_helper.new_head(race), 1);
				race.add_part(FPalace_helper.new_torso(race), 1);
				race.add_part(FPalace_helper.new_left_arms(race), 1);
				race.add_part(FPalace_helper.new_right_arms(race), 1);
				race.add_part(FPalace_helper.new_left_hands(race), 1);
				race.add_part(FPalace_helper.new_right_hands(race), 1);
				race.add_part(FPalace_helper.new_hips(race), 1);
				race.add_part(FPalace_helper.new_left_legs(race), 1);
				race.add_part(FPalace_helper.new_left_feet(race), 1);
				race.add_part(FPalace_helper.new_right_legs(race), 1);
				race.add_part(FPalace_helper.new_right_feet(race), 1);
				race.add_part(FPalace_helper.new_tail(race), 1);
				anthro_donkey_race = race;
			}
			
			return anthro_donkey_race;
		}
		
		public static function race_anthro_bee():Race{
			if(anthro_bee_race == null){
				var race:Race = new Race();
				race.set_name("Apini");
				
				race.new_stat(FPalace_helper.stat_fur_colour());
				
				race.set_aging_mod(0.8);
				race.set_bonus(FPalace_helper.eye_colour_id,20, FPalace_helper.eyes_slot);
				race.set_bonus(FPalace_helper.dex_id,0.5, FPalace_helper.arms_slot);
				race.set_bonus(FPalace_helper.dex_id,0.5, FPalace_helper.legs_slot);
				race.set_bonus(FPalace_helper.will_id,-1, FPalace_helper.head_slot);
				
				race.add_status_immunity(Tick_Effect.lactating_status);
				//STR: 22	
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.str_id, 1, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.str_id, 1, FPalace_helper.wings_slot);
				race.set_stat_max(FPalace_helper.str_id, 1, FPalace_helper.thorax_slot);
				race.set_stat_max(FPalace_helper.str_id, 1, FPalace_helper.abdomen_slot);
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.hands_slot);
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.arms_slot);				
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.feet_slot);
				//DEX: 31	
				race.set_stat_max(FPalace_helper.dex_id, 3, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.dex_id, 3, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.dex_id, 3, FPalace_helper.wings_slot);
				race.set_stat_max(FPalace_helper.dex_id, 3, FPalace_helper.thorax_slot);
				race.set_stat_max(FPalace_helper.dex_id, 3, FPalace_helper.abdomen_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.hands_slot);
				//CON: 22	
				race.set_stat_max(FPalace_helper.con_id, 3, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.con_id, 3, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.wings_slot);
				race.set_stat_max(FPalace_helper.con_id, 3, FPalace_helper.thorax_slot);
				race.set_stat_max(FPalace_helper.con_id, 3, FPalace_helper.abdomen_slot);
				race.set_stat_max(FPalace_helper.con_id, 1, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.con_id, 1, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.con_id, 1, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.con_id, 1, FPalace_helper.hands_slot);
				//BEA: 22
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.breasts_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.vag_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.clit_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.cock_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.balls_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.eyes_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.hair_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.wings_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.thorax_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.abdomen_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.hands_slot);
				//INT: 22
				race.set_stat_max(FPalace_helper.int_id, 8, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.int_id, 7, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.int_id, 7, FPalace_helper.thorax_slot);
				//WIS: 22
				race.set_stat_max(FPalace_helper.wis_id, 8, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.wis_id, 7, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.wis_id, 7, FPalace_helper.thorax_slot);
				//WILL: 16
				race.set_stat_max(FPalace_helper.will_id, 6, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.will_id, 5, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.will_id, 5, FPalace_helper.thorax_slot);
				//CHA: 22
				race.set_stat_max(FPalace_helper.cha_id, 8, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.cha_id, 7, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.cha_id, 7, FPalace_helper.thorax_slot);
				
				race.add_part_description(FPalace_helper.head_slot,"cheery faced apini, </noun> black antenna twitching about above </noun> </sd"+FPalace_helper.fur_colour_id+"> fur. ");
				race.add_part_image(FPalace_helper.head_slot, FPalace_helper.bee_head_1_img);
				race.add_part_description(FPalace_helper.eyes_slot,"large gem like orbs ");
				race.add_part_image(FPalace_helper.eyes_slot, FPalace_helper.bee_eyes_1_img);
				race.add_part_description(FPalace_helper.hair_slot,"straight, ");
				race.add_part_image(FPalace_helper.hair_slot, FPalace_helper.bee_hair_1_img);
				race.add_part_description(FPalace_helper.torso_slot,"</sd"+FPalace_helper.fur_colour_id+"> and black fuzzy stripes excentuating </noun> form. ");
				race.add_part_image(FPalace_helper.torso_slot, FPalace_helper.bee_torso_1_img);
				race.add_part_description(FPalace_helper.arms_slot,"</sd"+FPalace_helper.fur_colour_id+"> and black fuzzy stripes. ");
				race.add_part_image(FPalace_helper.arms_slot, FPalace_helper.bee_arm_1_img);
				race.add_part_description(FPalace_helper.hands_slot,"five fingers covered in black fuzz, every finger tipped with a translucent nail. ");
				race.add_part_image(FPalace_helper.hands_slot, FPalace_helper.bee_hand_1_img);
				race.add_part_description(FPalace_helper.wings_slot,"nearly translucent. ");
				race.add_part_image(FPalace_helper.wings_slot, FPalace_helper.bee_wing_1_img);
				race.add_part_description(FPalace_helper.breasts_slot,"</sd"+FPalace_helper.fur_colour_id+"> and black fuzzy striped teardrops atop </noun> torso, each topped with a pert pink nipple. ");
				race.add_part_image(FPalace_helper.breasts_slot, FPalace_helper.bee_breasts_1_img);
				race.add_part_description(FPalace_helper.cock_slot,"smooth pale flesh, it's head flared and flat. ");
				race.add_part_image(FPalace_helper.cock_slot, FPalace_helper.bee_penis_1_img);
				race.add_part_description(FPalace_helper.balls_slot,"covered in hair ridden </sd"+FPalace_helper.fur_colour_id+"> fur. ");
				race.add_part_image(FPalace_helper.balls_slot, FPalace_helper.bee_balls_1_img);
				race.add_part_description(FPalace_helper.hips_slot,"covered in </sd"+FPalace_helper.fur_colour_id+"> and black fuzzy stripes. ");
				race.add_part_image(FPalace_helper.hips_slot, FPalace_helper.bee_hips_1_img);
				race.add_part_description(FPalace_helper.vag_slot,"a set of cute, pert lips that fold on one another like flower pettles. ");
				race.add_part_image(FPalace_helper.vag_slot, FPalace_helper.bee_vag_1_img);
				race.add_part_description(FPalace_helper.legs_slot,"straight pitch black fuzzy hide that bend forward at the knee. ");
				race.add_part_image(FPalace_helper.legs_slot, FPalace_helper.bee_leg_1_img);
				race.add_part_description(FPalace_helper.feet_slot,"sharp black fuzz covered tips. ");
				race.add_part_image(FPalace_helper.feet_slot, FPalace_helper.bee_foot_1_img);
				race.add_part_description(FPalace_helper.clit_slot,"a pink pearl shapped nub. ");
				race.add_part_image(FPalace_helper.clit_slot, FPalace_helper.bee_clit_1_img);
				race.add_part_description(FPalace_helper.thorax_slot,"</sd"+FPalace_helper.fur_colour_id+"> and black fuzzy striped hide with. ");
				race.add_part_image(FPalace_helper.thorax_slot, FPalace_helper.bee_thorax_1_img);
				race.add_part_description(FPalace_helper.abdomen_slot,"a large </sd"+FPalace_helper.fur_colour_id+"> and black bulb tipped with a single needle in the rear. ");
				race.add_part_image(FPalace_helper.abdomen_slot, FPalace_helper.bee_abdomen_1_img);
				
				race.new_female_name_set(["Honee","Beatrice","Deborah"]);
				race.new_male_name_set(["Ben","Doug","Steve","Buzz","Ned"]);
				race.new_surname_set(["Bee", "Carniola", "Caucasi", "Buckfast", "Starline"]);
				
				race.set_preg_effect(mamal_preg(Main.t1_month * 2));
				
				race.add_part(FPalace_helper.new_head(race), 1);
				race.add_part(FPalace_helper.new_torso(race), 1);
				race.add_part(FPalace_helper.new_left_arms(race), 1);
				race.add_part(FPalace_helper.new_right_arms(race), 1);
				race.add_part(FPalace_helper.new_left_hands(race), 1);
				race.add_part(FPalace_helper.new_right_hands(race), 1);
				race.add_part(FPalace_helper.new_wings(race), 1);
				race.add_part(FPalace_helper.new_hips(race), 1);
				race.add_part(FPalace_helper.new_thorax(race), 1);
				race.add_part(FPalace_helper.new_left_legs(race), 1);
				race.add_part(FPalace_helper.new_left_feet(race), 1);
				race.add_part(FPalace_helper.new_right_legs(race), 1);
				race.add_part(FPalace_helper.new_right_feet(race), 1);
				race.add_part(FPalace_helper.new_abdomen(race), 1);
				
				anthro_bee_race = race;
			}
							
			return anthro_bee_race;
		}
		
		public static function race_anthro_lizard():Race{
			if(anthro_lizard_race == null){
				var race:Race = new Race();
				race.set_name("caudata");
				
				race.new_stat(FPalace_helper.stat_scale_colour());
				
				race.set_aging_mod(1.2);
				race.set_bonus(FPalace_helper.cha_id,-1, FPalace_helper.head_slot);
				race.set_bonus(FPalace_helper.int_id,1, FPalace_helper.head_slot);
				race.set_bonus(FPalace_helper.con_id,1, FPalace_helper.torso_slot);
				race.set_bonus(FPalace_helper.egg_fertility_id,0.7, FPalace_helper.vag_slot);
				race.set_bonus(FPalace_helper.semen_fertility_id,0.05, FPalace_helper.balls_slot);
				
				race.add_status_immunity(Tick_Effect.lactating_status);
				//STR: 22	
				race.set_stat_max(FPalace_helper.str_id, 3, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.str_id, 3, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.hands_slot);
				//DEX: 23	
				race.set_stat_max(FPalace_helper.dex_id, 3, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.dex_id, 3, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.dex_id, 1, FPalace_helper.tail_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.hands_slot);
				//CON: 28
				race.set_stat_max(FPalace_helper.con_id, 4, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.con_id, 4, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.con_id, 2.5, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.con_id, 2.5, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.con_id, 2.5, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.con_id, 2.5, FPalace_helper.hands_slot);
				//BEAUTY: 22	
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.breasts_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.vag_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.clit_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.cock_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.balls_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 0.5, FPalace_helper.tail_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 0.5, FPalace_helper.eyes_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.hair_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.hands_slot);				
				//INT: 22
				race.set_stat_max(FPalace_helper.int_id, 11, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.int_id, 11, FPalace_helper.torso_slot);
				//WIS: 22
				race.set_stat_max(FPalace_helper.wis_id, 11, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.wis_id, 11, FPalace_helper.torso_slot);
				//WILL: 22
				race.set_stat_max(FPalace_helper.will_id, 11, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.will_id, 11, FPalace_helper.torso_slot);
				//CHA: 18
				race.set_stat_max(FPalace_helper.cha_id, 9, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.cha_id, 9, FPalace_helper.torso_slot);
				
				race.add_part_description(FPalace_helper.head_slot,"cheery faced caudata, </noun> </sd"+FPalace_helper.scale_colour_id+"> scaled face and holes for nose and ears featured prominantly around </noun> mouth. ");
				race.add_part_image(FPalace_helper.head_slot, FPalace_helper.lizard_head_1_img);
				race.add_part_description(FPalace_helper.eyes_slot,"large gem like orbs ");
				race.add_part_image(FPalace_helper.eyes_slot, FPalace_helper.lizard_eyes_1_img);
				race.add_part_description(FPalace_helper.hair_slot,"straight, ");
				race.add_part_image(FPalace_helper.hair_slot, FPalace_helper.lizard_hair_1_img);
				race.add_part_description(FPalace_helper.torso_slot,"</sd"+FPalace_helper.scale_colour_id+"> scales excentuating </noun> form. ");
				race.add_part_image(FPalace_helper.torso_slot, FPalace_helper.lizard_torso_1_img);
				race.add_part_description(FPalace_helper.arms_slot,"scaled. ");
				race.add_part_image(FPalace_helper.arms_slot, FPalace_helper.lizard_arm_1_img);
				race.add_part_description(FPalace_helper.hands_slot,"five fingers covered in </sd"+FPalace_helper.scale_colour_id+"> scales, every finger tipped with a translucent nail. ");
				race.add_part_image(FPalace_helper.hands_slot, FPalace_helper.lizard_hand_1_img);
				race.add_part_description(FPalace_helper.breasts_slot,"</sd"+FPalace_helper.scale_colour_id+"> scaled teardrops atop </noun> torso, each topped with a pert pink nipple. ");
				race.add_part_image(FPalace_helper.breasts_slot, FPalace_helper.lizard_breasts_1_img);
				race.add_part_description(FPalace_helper.cock_slot,"smooth pale flesh, it's head flared and flat. ");
				race.add_part_image(FPalace_helper.cock_slot, FPalace_helper.lizard_penis_1_img);
				race.add_part_description(FPalace_helper.balls_slot,"scaled. ");
				race.add_part_image(FPalace_helper.balls_slot, FPalace_helper.lizard_balls_1_img);
				race.add_part_description(FPalace_helper.hips_slot,"</sd"+FPalace_helper.scale_colour_id+"> scaled hide. ");
				race.add_part_image(FPalace_helper.hips_slot, FPalace_helper.lizard_hips_1_img);
				race.add_part_description(FPalace_helper.vag_slot,"a set of cute, pert lips that fold on one another like flower pettles. ");
				race.add_part_image(FPalace_helper.vag_slot, FPalace_helper.lizard_vag_1_img);
				race.add_part_description(FPalace_helper.legs_slot,"straight </sd"+FPalace_helper.scale_colour_id+"> scaled hide that bend forward at the knee. ");
				race.add_part_image(FPalace_helper.legs_slot, FPalace_helper.lizard_leg_1_img);
				race.add_part_description(FPalace_helper.feet_slot,"five toes and a length of </sd"+FPalace_helper.scale_colour_id+"> scaled flesh. ");
				race.add_part_image(FPalace_helper.feet_slot, FPalace_helper.lizard_foot_1_img);
				race.add_part_description(FPalace_helper.clit_slot,"a pink pearl shapped nub. ");
				race.add_part_image(FPalace_helper.clit_slot, FPalace_helper.lizard_clit_1_img);
				race.add_part_description(FPalace_helper.tail_slot,"a long a trunk of </sd"+FPalace_helper.scale_colour_id+"> scaled flesh. ");
				race.add_part_image(FPalace_helper.tail_slot, FPalace_helper.lizard_tail_1_img);
				
				race.new_female_name_set(["Elle","Abby","Aja","Beanie","Cleo","Eki","Ishi","Jade","Kirra"]);
				race.new_male_name_set(["Iggy","Chuck","Gila","Dino","Gorn","Spike","Rex","Sobek","Abel","Darvarus","Draco"]);
				race.new_surname_set(["Salamander","Gecko","Tegu","Skink","Basilisk","Walla","Uromastyx","Gargoyle"]);
				
				var tf:Tick_Effect = new Tick_Effect();
				tf.set_status_id(Tick_Effect.pregnant_status);
				tf.set_end_tick(Main.t1_month);
				var iconsequence:Item_Consequence = new Item_Consequence();
				iconsequence.add_item_reward(FPalace_items.caudata_egg(),0);
				iconsequence.add_consequence(FPalace_helper.bloat_id,-2, "</n> struggles and pushes, but finally lays an egg. ", 0,1);
				
				tf.set_end_consequence(iconsequence);
				
				var consequence:Consequence = new Consequence();
				consequence.add_consequence(FPalace_helper.bloat_id,0.3, "</n> can feel the pregnancy setting in, </noun> belly bulging. ", 0,1);
				var count:int = Main.t1_day*6;
				for(count;count<Main.t1_month;count+= Main.t1_day*6){
					tf.set_tick_consequence(count,consequence);
				}
							
				race.set_preg_type(Race.egg_pregnancy);
				race.set_preg_effect(tf);
				
				race.add_part(FPalace_helper.new_head(race), 1);
				race.add_part(FPalace_helper.new_torso(race), 1);
				race.add_part(FPalace_helper.new_left_arms(race), 1);
				race.add_part(FPalace_helper.new_right_arms(race), 1);
				race.add_part(FPalace_helper.new_left_hands(race), 1);
				race.add_part(FPalace_helper.new_right_hands(race), 1);
				race.add_part(FPalace_helper.new_hips(race), 1);
				race.add_part(FPalace_helper.new_left_legs(race), 1);
				race.add_part(FPalace_helper.new_left_feet(race), 1);
				race.add_part(FPalace_helper.new_right_legs(race), 1);
				race.add_part(FPalace_helper.new_right_feet(race), 1);
				race.add_part(FPalace_helper.new_tail(race), 1);
				anthro_lizard_race = race;
			}
			return anthro_lizard_race;
		}
		
		public static function race_anthro_frog():Race{
			if(anthro_frog_race == null){
				var race:Race = new Race();
				race.set_name("anura");
				
				race.new_stat(FPalace_helper.stat_scale_colour());
				
				race.set_aging_mod(0.8);
				race.set_bonus(FPalace_helper.cha_id,1, FPalace_helper.head_slot);
				race.set_bonus(FPalace_helper.dex_id,1, FPalace_helper.head_slot);
				race.set_bonus(FPalace_helper.wis_id,1, FPalace_helper.head_slot);
				race.set_bonus(FPalace_helper.sex_appeal_id,-1, FPalace_helper.head_slot);
				race.set_bonus(FPalace_helper.con_id,-1, FPalace_helper.torso_slot);
				race.set_bonus(FPalace_helper.egg_fertility_id,0.7, FPalace_helper.vag_slot);
				race.set_bonus(FPalace_helper.semen_fertility_id,0.05, FPalace_helper.balls_slot);
				
				race.add_status_immunity(Tick_Effect.lactating_status);
				
				race.set_bonus(FPalace_helper.height_id,-3, FPalace_helper.arms_slot);
				race.set_bonus(FPalace_helper.height_id,-3, FPalace_helper.torso_slot);
				race.set_bonus(FPalace_helper.height_id,-3, FPalace_helper.hips_slot);
				race.set_bonus(FPalace_helper.height_id,-3, FPalace_helper.legs_slot);
				//STR: 22	
				race.set_stat_max(FPalace_helper.str_id, 3, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.str_id, 3, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.hands_slot);
				//DEX: 26	
				race.set_stat_max(FPalace_helper.dex_id, 3, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.dex_id, 3, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2.5, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2.5, FPalace_helper.hands_slot);				
				race.set_stat_max(FPalace_helper.dex_id, 2.5, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2.5, FPalace_helper.feet_slot);
				//CON: 17	
				race.set_stat_max(FPalace_helper.con_id, 2.5, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.con_id, 2.5, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.con_id, 1.5, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.con_id, 1.5, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.con_id, 1.5, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.con_id, 1.5, FPalace_helper.hands_slot);
				//BEAUTY: 22
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.breasts_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.vag_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.clit_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.cock_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.balls_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.eyes_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.hair_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.hands_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.feet_slot);
				//INT: 22
				race.set_stat_max(FPalace_helper.int_id, 11, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.int_id, 11, FPalace_helper.torso_slot);
				//WIS: 24
				race.set_stat_max(FPalace_helper.wis_id, 12, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.wis_id, 12, FPalace_helper.torso_slot);
				//WILL: 22
				race.set_stat_max(FPalace_helper.will_id, 11, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.will_id, 11, FPalace_helper.torso_slot);
				//CHA: 24
				race.set_stat_max(FPalace_helper.cha_id, 12, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.cha_id, 12, FPalace_helper.torso_slot);
				
				race.add_part_description(FPalace_helper.head_slot,"cheery faced anura, </noun> </sd"+FPalace_helper.scale_colour_id+"> scaled face and holes for nose and ears featured prominantly around </noun> mouth. ");
				race.add_part_image(FPalace_helper.head_slot, FPalace_helper.frog_head_1_img);
				race.add_part_description(FPalace_helper.eyes_slot,"large gem like orbs ");
				race.add_part_image(FPalace_helper.eyes_slot, FPalace_helper.frog_eyes_1_img);
				race.add_part_description(FPalace_helper.hair_slot,"straight, ");
				race.add_part_image(FPalace_helper.hair_slot, FPalace_helper.frog_hair_1_img);
				race.add_part_description(FPalace_helper.torso_slot,"</sd"+FPalace_helper.scale_colour_id+"> scales excentuating </noun> form. ");
				race.add_part_image(FPalace_helper.torso_slot, FPalace_helper.frog_torso_1_img);
				race.add_part_description(FPalace_helper.arms_slot,"scaled. ");
				race.add_part_image(FPalace_helper.arms_slot, FPalace_helper.frog_arm_1_img);
				race.add_part_description(FPalace_helper.hands_slot,"five fingers covered in </sd"+FPalace_helper.scale_colour_id+"> scales, every finger tipped with a translucent nail. ");
				race.add_part_image(FPalace_helper.hands_slot, FPalace_helper.frog_hand_1_img);
				race.add_part_description(FPalace_helper.breasts_slot,"</sd"+FPalace_helper.scale_colour_id+"> scaled teardrops atop </noun> torso, each topped with a pert pink nipple. ");
				race.add_part_image(FPalace_helper.breasts_slot, FPalace_helper.frog_breasts_1_img);
				race.add_part_description(FPalace_helper.cock_slot,"smooth pale flesh, it's head flared and flat. ");
				race.add_part_image(FPalace_helper.cock_slot, FPalace_helper.frog_penis_1_img);
				race.add_part_description(FPalace_helper.balls_slot,"scaled. ");
				race.add_part_image(FPalace_helper.balls_slot, FPalace_helper.frog_balls_1_img);
				race.add_part_description(FPalace_helper.hips_slot,"</sd"+FPalace_helper.scale_colour_id+"> scaled hide. ");
				race.add_part_image(FPalace_helper.hips_slot, FPalace_helper.frog_hips_1_img);
				race.add_part_description(FPalace_helper.vag_slot,"a set of cute, pert lips that fold on one another like flower pettles. ");
				race.add_part_image(FPalace_helper.vag_slot, FPalace_helper.frog_vag_1_img);
				race.add_part_description(FPalace_helper.legs_slot,"straight </sd"+FPalace_helper.scale_colour_id+"> scaled hide that bend forward at the knee. ");
				race.add_part_image(FPalace_helper.legs_slot, FPalace_helper.frog_leg_1_img);
				race.add_part_description(FPalace_helper.feet_slot,"five toes and a length of </sd"+FPalace_helper.scale_colour_id+"> scaled flesh. ");
				race.add_part_image(FPalace_helper.feet_slot, FPalace_helper.frog_foot_1_img);
				race.add_part_description(FPalace_helper.clit_slot,"a pink pearl shapped nub. ");
				race.add_part_image(FPalace_helper.clit_slot, FPalace_helper.frog_clit_1_img);
				
				race.new_female_name_set(["Elle","Abby","Aja","Beanie","Cleo","Eki","Ishi","Jade","Kirra"]);
				race.new_male_name_set(["Iggy","Chuck","Gila","Dino","Gorn","Spike","Rex","Sobek","Abel","Darvarus","Draco"]);
				race.new_surname_set(["Salamander","Gecko","Tegu","Skink","Basilisk","Walla","Uromastyx","Gargoyle"]);
				
				var tf:Tick_Effect = new Tick_Effect();
				tf.set_status_id(Tick_Effect.pregnant_status);
				tf.set_end_tick(Main.t1_month);
				var iconsequence:Item_Consequence = new Item_Consequence();
				iconsequence.add_item_reward(FPalace_items.caudata_egg(),0);
				iconsequence.add_consequence(FPalace_helper.bloat_id,-2, "</n> struggles and pushes, but finally lays an egg. ", 0,1);
				
				tf.set_end_consequence(iconsequence);
				
				var consequence:Consequence = new Consequence();
				consequence.add_consequence(FPalace_helper.bloat_id,0.3, "</n> can feel the pregnancy setting in, </noun> belly bulging. ", 0,1);
				var count:int = Main.t1_day*6;
				for(count;count<Main.t1_month;count+= Main.t1_day*6){
					tf.set_tick_consequence(count,consequence);
				}
							
				race.set_preg_type(Race.egg_pregnancy);
				race.set_preg_effect(tf);
				
				race.add_part(FPalace_helper.new_head(race), 1);
				race.add_part(FPalace_helper.new_torso(race), 1);
				race.add_part(FPalace_helper.new_left_arms(race), 1);
				race.add_part(FPalace_helper.new_right_arms(race), 1);
				race.add_part(FPalace_helper.new_left_hands(race), 1);
				race.add_part(FPalace_helper.new_right_hands(race), 1);
				race.add_part(FPalace_helper.new_hips(race), 1);
				race.add_part(FPalace_helper.new_left_legs(race), 1);
				race.add_part(FPalace_helper.new_left_feet(race), 1);
				race.add_part(FPalace_helper.new_right_legs(race), 1);
				race.add_part(FPalace_helper.new_right_feet(race), 1);
				
				anthro_frog_race = race;
			}
			return anthro_frog_race;
		}
		
		public static function race_anthro_fish():Race{
			if(anthro_fish_race == null){
				var race:Race = new Race();
				race.set_name("actino");
				
				race.new_stat(FPalace_helper.stat_scale_colour());
				
				race.set_aging_mod(0.4);
				race.set_bonus(FPalace_helper.dex_id,-1, FPalace_helper.head_slot);
				race.set_bonus(FPalace_helper.will_id,1, FPalace_helper.head_slot);
				race.set_bonus(FPalace_helper.int_id,1, FPalace_helper.head_slot);
				race.set_bonus(FPalace_helper.egg_fertility_id,0.7, FPalace_helper.vag_slot);
				race.set_bonus(FPalace_helper.semen_fertility_id,0.1, FPalace_helper.balls_slot);
				
				race.add_status_immunity(Tick_Effect.lactating_status);
				//STR: 21	
				race.set_stat_max(FPalace_helper.str_id, 5, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.str_id, 6, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.str_id, 2.5, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.str_id, 2.5, FPalace_helper.hands_slot);
				//DEX: 16	
				race.set_stat_max(FPalace_helper.dex_id, 3, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.dex_id, 3, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.tail_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.dex_id, 2, FPalace_helper.hands_slot);
				//CON: 21	
				race.set_stat_max(FPalace_helper.con_id, 6, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.con_id, 5, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.con_id, 2.5, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.con_id, 2.5, FPalace_helper.hands_slot);
				//BEAUTY: 22
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.breasts_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.vag_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.clit_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.cock_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.balls_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.tail_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.eyes_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 2, FPalace_helper.hair_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.hands_slot);				
				//INT: 28
				race.set_stat_max(FPalace_helper.int_id, 14, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.int_id, 14, FPalace_helper.torso_slot);
				//WIS: 23
				race.set_stat_max(FPalace_helper.wis_id, 11.5, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.wis_id, 11.5, FPalace_helper.torso_slot);
				//WIL: 26
				race.set_stat_max(FPalace_helper.will_id, 13, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.will_id, 13, FPalace_helper.torso_slot);
				//CHA: 22
				race.set_stat_max(FPalace_helper.cha_id, 11, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.cha_id, 11, FPalace_helper.torso_slot);
				
				race.add_part_description(FPalace_helper.head_slot,"cheery faced Actino, </noun> </sd"+FPalace_helper.scale_colour_id+"> scaled face and holes for nose and ears featured prominantly around </noun> mouth. ");
				race.add_part_image(FPalace_helper.head_slot, FPalace_helper.fish_head_1_img);
				race.add_part_description(FPalace_helper.eyes_slot,"large gem like orbs ");
				race.add_part_image(FPalace_helper.eyes_slot, FPalace_helper.fish_eyes_1_img);
				race.add_part_description(FPalace_helper.hair_slot,"straight, ");
				race.add_part_image(FPalace_helper.hair_slot, FPalace_helper.fish_hair_1_img);
				race.add_part_description(FPalace_helper.torso_slot,"</sd"+FPalace_helper.scale_colour_id+"> scales excentuating </noun> form. ");
				race.add_part_image(FPalace_helper.torso_slot, FPalace_helper.fish_torso_1_img);
				race.add_part_description(FPalace_helper.arms_slot,"scaled. ");
				race.add_part_image(FPalace_helper.arms_slot, FPalace_helper.fish_arm_1_img);
				race.add_part_description(FPalace_helper.hands_slot,"five fingers covered in </sd"+FPalace_helper.scale_colour_id+"> scales, every finger tipped with a translucent nail. ");
				race.add_part_image(FPalace_helper.hands_slot, FPalace_helper.fish_hand_1_img);
				race.add_part_description(FPalace_helper.breasts_slot,"</sd"+FPalace_helper.scale_colour_id+"> scaled teardrops atop </noun> torso, each topped with a pert pink nipple. ");
				race.add_part_image(FPalace_helper.breasts_slot, FPalace_helper.fish_breasts_1_img);
				race.add_part_description(FPalace_helper.cock_slot,"smooth pale flesh, it's head flared and flat. ");
				race.add_part_image(FPalace_helper.cock_slot, FPalace_helper.fish_penis_1_img);
				race.add_part_description(FPalace_helper.balls_slot,"scaled. ");
				race.add_part_image(FPalace_helper.balls_slot, FPalace_helper.fish_balls_1_img);
				race.add_part_description(FPalace_helper.hips_slot,"</sd"+FPalace_helper.scale_colour_id+"> scaled hide. ");
				race.add_part_image(FPalace_helper.hips_slot, FPalace_helper.fish_hips_1_img);
				race.add_part_description(FPalace_helper.vag_slot,"a set of cute, pert lips that fold on one another like flower pettles. ");
				race.add_part_image(FPalace_helper.vag_slot, FPalace_helper.fish_vag_1_img);
				race.add_part_description(FPalace_helper.clit_slot,"a pink pearl shapped nub. ");
				race.add_part_image(FPalace_helper.clit_slot, FPalace_helper.fish_clit_1_img);
				race.add_part_description(FPalace_helper.tail_slot,"a long a trunk of </sd"+FPalace_helper.scale_colour_id+"> scaled flesh that ends in a fin. ");
				race.add_part_image(FPalace_helper.tail_slot, FPalace_helper.fish_tail_1_img);
				
				race.new_female_name_set(["Ariel"]);
				race.new_male_name_set(["Enki"]);
				race.new_surname_set(["Marbenlar"]);
				
				var tf:Tick_Effect = new Tick_Effect();
				tf.set_status_id(Tick_Effect.pregnant_status);
				tf.set_end_tick(Main.t1_week*2);
				var iconsequence:Item_Consequence = new Item_Consequence();
				iconsequence.add_item_reward(FPalace_items.actino_egg(),0);
				iconsequence.add_consequence(FPalace_helper.bloat_id,-2, "</n> struggles and pushes, but finally lays an egg. ", 0,1);
				
				tf.set_end_consequence(iconsequence);
				
				var consequence:Consequence = new Consequence();
				consequence.add_consequence(FPalace_helper.bloat_id,0.3, "</n> can feel the pregnancy setting in, </noun> belly bulging. ", 0,1);
				var count:int = Main.t1_day*6;
				for(count;count<Main.t1_week*2;count+= Main.t1_day*6){
					tf.set_tick_consequence(count,consequence);
				}
							
				race.set_preg_type(Race.egg_pregnancy);
				race.set_preg_effect(tf);
				
				race.add_part(FPalace_helper.new_head(race), 1);
				race.add_part(FPalace_helper.new_torso(race), 1);
				race.add_part(FPalace_helper.new_left_arms(race), 1);
				race.add_part(FPalace_helper.new_right_arms(race), 1);
				race.add_part(FPalace_helper.new_left_hands(race), 1);
				race.add_part(FPalace_helper.new_right_hands(race), 1);
				race.add_part(FPalace_helper.new_hips(race), 1);
				race.add_part(FPalace_helper.new_tail(race), 1);
				
				anthro_fish_race = race;
			}
							
			return anthro_fish_race;
		}
		
		public static function race_anthro_spider():Race{
			if(anthro_spider_race == null){
				var race:Race = new Race();
				race.set_name("arachnid");
				
				race.new_stat(FPalace_helper.stat_fur_colour());
				
				race.set_aging_mod(0.8);
				race.set_bonus(FPalace_helper.cha_id,-0.5, FPalace_helper.head_slot);
				race.set_bonus(FPalace_helper.cha_id,-0.5, FPalace_helper.torso_slot);
				race.set_bonus(FPalace_helper.sex_appeal_id,-0.5, FPalace_helper.head_slot);
				race.set_bonus(FPalace_helper.sex_appeal_id,-0.5, FPalace_helper.torso_slot);
				race.set_bonus(FPalace_helper.sex_appeal_id,-0.25, FPalace_helper.legs_slot);
				race.set_bonus(FPalace_helper.eye_colour_id,20, FPalace_helper.eyes_slot);
				race.set_bonus(FPalace_helper.dex_id,0.5, FPalace_helper.legs_slot);
				race.set_bonus(FPalace_helper.egg_fertility_id,0.7, FPalace_helper.vag_slot);
				race.set_bonus(FPalace_helper.semen_fertility_id,0.1, FPalace_helper.balls_slot);
				
				race.set_skill_bonus(FPalace_skills.covert_id, 5, FPalace_helper.feet_slot);
				
				race.add_status_immunity(Tick_Effect.lactating_status);
				
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.hands_slot);
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.thorax_slot);
				race.set_stat_max(FPalace_helper.str_id, 2, FPalace_helper.abdomen_slot);
				
				race.set_stat_max(FPalace_helper.dex_id, 3, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.dex_id, 3, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.dex_id, 3, FPalace_helper.hands_slot);
				race.set_stat_max(FPalace_helper.dex_id, 3, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.dex_id, 3, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.dex_id, 3, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.dex_id, 3, FPalace_helper.thorax_slot);
				race.set_stat_max(FPalace_helper.dex_id, 3, FPalace_helper.abdomen_slot);
					
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.hands_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.thorax_slot);
				race.set_stat_max(FPalace_helper.con_id, 2, FPalace_helper.abdomen_slot);
				
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1.5, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1.5, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.arms_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.hands_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1.5, FPalace_helper.hips_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.legs_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.feet_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.thorax_slot)
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1, FPalace_helper.abdomen_slot)
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1.5, FPalace_helper.breasts_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1.5, FPalace_helper.vag_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1.5, FPalace_helper.clit_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1.5, FPalace_helper.cock_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1.5, FPalace_helper.balls_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1.5, FPalace_helper.eyes_slot);
				race.set_stat_max(FPalace_helper.sex_appeal_id, 1.5, FPalace_helper.hair_slot);				
				
				race.set_stat_max(FPalace_helper.int_id, 12, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.int_id, 12, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.int_id, 12, FPalace_helper.thorax_slot);
				
				race.set_stat_max(FPalace_helper.wis_id, 11, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.wis_id, 11, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.wis_id, 11, FPalace_helper.thorax_slot);
				
				race.set_stat_max(FPalace_helper.will_id, 11, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.will_id, 11, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.will_id, 11, FPalace_helper.thorax_slot);
				
				race.set_stat_max(FPalace_helper.cha_id, 7, FPalace_helper.head_slot);
				race.set_stat_max(FPalace_helper.cha_id, 7, FPalace_helper.torso_slot);
				race.set_stat_max(FPalace_helper.cha_id, 7, FPalace_helper.thorax_slot);
				
				race.add_part_description(FPalace_helper.head_slot,"cheery faced arachnid, </noun> </sd"+FPalace_helper.fur_colour_id+"> chitnanous hide and eight eyes mildly disturbing. ");
				race.add_part_image(FPalace_helper.head_slot, FPalace_helper.spider_head_1_img);
				race.add_part_description(FPalace_helper.eyes_slot,"large gem like orbs ");
				race.add_part_image(FPalace_helper.eyes_slot, FPalace_helper.spider_eyes_1_img);
				race.add_part_description(FPalace_helper.hair_slot,"straight, ");
				race.add_part_image(FPalace_helper.hair_slot, FPalace_helper.spider_hair_1_img);
				race.add_part_description(FPalace_helper.torso_slot,"</sd"+FPalace_helper.fur_colour_id+"> chitnanous hide excentuating </noun> form. ");
				race.add_part_image(FPalace_helper.torso_slot, FPalace_helper.spider_torso_1_img);
				race.add_part_description(FPalace_helper.arms_slot,"</sd"+FPalace_helper.fur_colour_id+"> chitnanous hide. ");
				race.add_part_image(FPalace_helper.arms_slot, FPalace_helper.spider_arm_1_img);
				race.add_part_description(FPalace_helper.hands_slot,"five fingers covered in </sd"+FPalace_helper.fur_colour_id+"> chiten, every finger tipped with a translucent nail. ");
				race.add_part_image(FPalace_helper.hands_slot, FPalace_helper.spider_hand_1_img);
				race.add_part_description(FPalace_helper.breasts_slot,"</sd"+FPalace_helper.fur_colour_id+"> scaled teardrops atop </noun> torso, each topped with a pert pink nipple. ");
				race.add_part_image(FPalace_helper.breasts_slot, FPalace_helper.spider_breasts_1_img);
				race.add_part_description(FPalace_helper.cock_slot,"smooth </sd"+FPalace_helper.fur_colour_id+"> flesh, it's head flared and flat. ");
				race.add_part_image(FPalace_helper.cock_slot, FPalace_helper.spider_penis_1_img);
				race.add_part_description(FPalace_helper.balls_slot,"covered in </sd"+FPalace_helper.fur_colour_id+"> fuzz. ");
				race.add_part_image(FPalace_helper.balls_slot, FPalace_helper.spider_balls_1_img);
				race.add_part_description(FPalace_helper.hips_slot,"</sd"+FPalace_helper.fur_colour_id+"> chitnanous hide. ");
				race.add_part_image(FPalace_helper.hips_slot, FPalace_helper.spider_hips_1_img);
				race.add_part_description(FPalace_helper.vag_slot,"a set of cute, pert lips that fold on one another like flower pettles. ");
				race.add_part_image(FPalace_helper.vag_slot, FPalace_helper.spider_vag_1_img);
				race.add_part_description(FPalace_helper.legs_slot,"straight </sd"+FPalace_helper.fur_colour_id+"> chitnanous hide that bend forward at the knee. ");
				race.add_part_image(FPalace_helper.legs_slot, FPalace_helper.spider_leg_1_img);
				race.add_part_description(FPalace_helper.feet_slot,"sharp </sd"+FPalace_helper.fur_colour_id+"> scale covered tips. ");
				race.add_part_image(FPalace_helper.feet_slot, FPalace_helper.spider_foot_1_img);
				race.add_part_description(FPalace_helper.clit_slot,"a pink pearl shapped nub. ");
				race.add_part_image(FPalace_helper.clit_slot, FPalace_helper.spider_clit_1_img);
				race.add_part_description(FPalace_helper.thorax_slot,"</sd"+FPalace_helper.fur_colour_id+"> chitanous hide with an occasional hair sticking from it. ");
				race.add_part_image(FPalace_helper.thorax_slot, FPalace_helper.spider_thorax_1_img);
				race.add_part_description(FPalace_helper.abdomen_slot,"a large </sd"+FPalace_helper.fur_colour_id+"> bulb tipped with two needles in the rear. ");
				race.add_part_image(FPalace_helper.abdomen_slot, FPalace_helper.spider_abdomen_1_img);
				
				race.new_female_name_set(["Alystin", "Baltana", "Chandara"]);
				race.new_male_name_set(["Alton", "Balok", "Chakos"]);
				race.new_surname_set(["Abaeir", "Drider"]);
				
				var tf:Tick_Effect = new Tick_Effect();
				tf.set_status_id(Tick_Effect.pregnant_status);
				tf.set_end_tick(Main.t1_month);
				var iconsequence:Item_Consequence = new Item_Consequence();
				iconsequence.add_item_reward(FPalace_items.arachnid_egg(),0);
				iconsequence.add_consequence(FPalace_helper.bloat_id,-2, "</n> struggles and pushes, but finally lays an egg. ", 0,1);
				
				tf.set_end_consequence(iconsequence);
				
				var consequence:Consequence = new Consequence();
				consequence.add_consequence(FPalace_helper.bloat_id,0.3, "</n> can feel the pregnancy setting in, </noun> belly bulging. ", 0,1);
				var count:int = Main.t1_day*6;
				for(count;count<Main.t1_month;count+= Main.t1_day*6){
					tf.set_tick_consequence(count,consequence);
				}
							
				race.set_preg_type(Race.egg_pregnancy);
				race.set_preg_effect(tf);
				
				race.add_part(FPalace_helper.new_head(race), 1);
				race.add_part(FPalace_helper.new_torso(race), 1);
				race.add_part(FPalace_helper.new_left_arms(race), 1);
				race.add_part(FPalace_helper.new_right_arms(race), 1);
				race.add_part(FPalace_helper.new_left_hands(race), 1);
				race.add_part(FPalace_helper.new_right_hands(race), 1);
				race.add_part(FPalace_helper.new_hips(race), 1);
				race.add_part(FPalace_helper.new_thorax(race), 1);
				race.add_part(FPalace_helper.new_left_legs(race), 4);
				race.add_part(FPalace_helper.new_left_feet(race), 4);
				race.add_part(FPalace_helper.new_right_legs(race), 4);
				race.add_part(FPalace_helper.new_right_feet(race), 4);
				race.add_part(FPalace_helper.new_abdomen(race), 1);
				anthro_spider_race = race;
			}
						
			return anthro_spider_race;
		}
		
		public static function race_sexsnake():Race{
			if(sexsnake_race == null){
				var race:Race = new Race();
				race.set_anthropomorphic();
				race.set_name("sexsnake");
				race.set_aging_mod(0.15);
				race.set_bonus(FPalace_helper.dex_id,1);
				race.set_bonus(FPalace_helper.wis_id,1);
				race.set_bonus(FPalace_helper.int_id,-3);
				race.set_bonus(FPalace_helper.max_lust_id,-20);
				race.new_female_name_set(["Vag"]);
				race.new_male_name_set(["Cock"]);
				race.new_surname_set(["Snake"]);
				
				var tf:Tick_Effect = new Tick_Effect();
				tf.set_status_id(Tick_Effect.pregnant_status);
				tf.set_end_tick(Main.t1_week);
				var iconsequence:Item_Consequence = new Item_Consequence();
				iconsequence.add_item_reward(FPalace_items.sexsnake_egg(),0);
				iconsequence.add_consequence(FPalace_helper.bloat_id,-2, "</n> struggles and pushes, but finally lays an egg. ", 0,1);
				
				tf.set_end_consequence(iconsequence);
				
				var consequence:Consequence = new Consequence();
				consequence.add_consequence(FPalace_helper.bloat_id,0.1, "</n> can feel the pregnancy setting in, </noun> belly bulging. ", 0,1);
				var count:int = Main.t1_day;
				for(count;count<Main.t1_week;count+= Main.t1_day){
					tf.set_tick_consequence(count,consequence);
				}
							
				race.set_preg_type(Race.egg_pregnancy);
				race.set_preg_effect(tf);
				sexsnake_race = race;
			}
			return sexsnake_race;
		}
		
		public static function race_scorpion():Race{
			if(scorpion_race == null){
				var race:Race = new Race();
				race.set_anthropomorphic();
				race.set_name("scorpion");
				race.set_aging_mod(0.15);
				race.set_bonus(FPalace_helper.dex_id,1);
				race.set_bonus(FPalace_helper.str_id,1);
				race.set_bonus(FPalace_helper.int_id,-3);
				
				race.set_bonus(FPalace_helper.height_id,-20,FPalace_helper.legs_slot);
				race.set_bonus(FPalace_helper.height_id,-5,FPalace_helper.head_slot);
								
				race.new_female_name_set(["Female"]);
				race.new_male_name_set(["Male"]);
				race.new_surname_set(["Scorpion"]);
				
				
				var a3:Action = new Action();
					a3.set_name("Sting");
					a3.set_attack_flag();
					a3.set_attack_description("Sting an opponent. ");
						var challenge2:Challenge = new Challenge(true);
						challenge2.set_attack_stat(FPalace_skills.melee_id);
						challenge2.set_defense_stat(FPalace_skills.dodging_id);
						challenge2.set_variability(20);
						challenge2.set_text("Sting");
						var consequence2:Consequence = new Consequence();
						consequence2.set_damage_type(FPalace_helper.pierce_damage_type().get_id());
						
						var tf:Tick_Effect = new Tick_Effect();
						tf.set_status_id(Tick_Effect.poisoned_status);
						var c2:Consequence = new Consequence();
						c2.add_consequence(FPalace_helper.curr_hp_id,-1, "</n> feels </noun> blood pulsing. ", 0);
						tf.set_tick_consequence(3, c2);
						tf.set_end_tick(21);
						
						consequence2.add_consequence(FPalace_helper.curr_hp_id,-2, "</n2> stings </n>! ",0,0,0,-1,false,tf);
						consequence2.add_consequence(0,0, "</n2> tail strikes into the ground. ",-1);
									
					a3.add_challenge(challenge2,consequence2);
				
				race.new_attack(a3, FPalace_helper.tail_slot);
				
				
				tf = new Tick_Effect();
				tf.set_status_id(Tick_Effect.pregnant_status);
				tf.set_end_tick(Main.t1_week);
				var iconsequence:Item_Consequence = new Item_Consequence();
				iconsequence.add_item_reward(FPalace_items.scorpion_egg(),0);
				iconsequence.add_consequence(FPalace_helper.bloat_id,-2, "</n> struggles and pushes, but finally lays an egg. ", 0,1);
				
				tf.set_end_consequence(iconsequence);
				
				var consequence:Consequence = new Consequence();
				consequence.add_consequence(FPalace_helper.bloat_id,0.1, "</n> can feel the pregnancy setting in, </noun> belly bulging. ", 0,1);
				var count:int = Main.t1_day;
				for(count;count<Main.t1_week;count+= Main.t1_day){
					tf.set_tick_consequence(count,consequence);
				}
							
				race.set_preg_type(Race.egg_pregnancy);
				race.set_preg_effect(tf);
				scorpion_race = race;
			}
			return scorpion_race;
		}
		
		public static function race_horse():Race{
			if(horse_race == null){
				var race:Race = new Race();
				race.set_anthropomorphic();
				race.set_name("horse");
				
				race.new_stat(FPalace_helper.stat_fur_colour());
				
				race.set_aging_mod(0.5);
				race.set_bonus(FPalace_helper.str_id,1);
				race.set_bonus(FPalace_helper.wis_id,-1);
				race.set_bonus(FPalace_helper.int_id,-5);
				race.set_bonus(FPalace_helper.hips_id,6);
				race.set_bonus(FPalace_helper.penis_length_id, 18, FPalace_helper.cock_slot);
				race.set_bonus(FPalace_helper.penis_girth_id, 6, FPalace_helper.cock_slot);
				race.set_bonus(FPalace_helper.cum_volume_id, 125, FPalace_helper.cock_slot);
				race.set_bonus(FPalace_helper.erection_ratio_id,-0.2, FPalace_helper.cock_slot);
				race.set_bonus(FPalace_helper.cum_volume_id, 125, FPalace_helper.balls_slot);
				race.set_bonus(FPalace_helper.balls_size_id, 3, FPalace_helper.balls_slot);
				race.set_bonus(FPalace_helper.egg_fertility_id,-0.05, FPalace_helper.vag_slot);
				race.set_bonus(FPalace_helper.semen_fertility_id,-0.01, FPalace_helper.cock_slot);				
				race.set_bonus(FPalace_helper.height_id,15,FPalace_helper.legs_slot);
				race.set_bonus(FPalace_helper.height_id,8,FPalace_helper.barrel_slot);
				race.set_bonus(FPalace_helper.height_id,8,FPalace_helper.thighs_slot);
				
				
				race.new_female_name_set(["Female"]);
				race.new_male_name_set(["Male"]);
				race.new_surname_set(["Horse"]);
				
				race.set_preg_effect(mamal_preg(Main.t1_month * 11));
				
				race.add_part(FPalace_helper.new_head(race), 1);
				race.add_part(FPalace_helper.new_barrel(race), 1);
				race.add_part(FPalace_helper.new_thighs(race), 1);
				race.add_part(FPalace_helper.new_left_legs(race), 2);
				race.add_part(FPalace_helper.new_right_legs(race), 2);
				race.add_part(FPalace_helper.new_tail(race), 1);
				horse_race = race;
			}
			return horse_race;
		}
		
		public static function race_wolf():Race{
			if(wolf_race == null){
				var race:Race = new Race();
				race.set_name("wolf");
				race.set_anthropomorphic();
				race.new_stat(FPalace_helper.stat_fur_colour());
								
				race.set_aging_mod(0.25);
				race.set_bonus(FPalace_helper.str_id,0.5);
				race.set_bonus(FPalace_helper.dex_id,1.5);
				race.set_bonus(FPalace_helper.wis_id,-1);
				race.set_bonus(FPalace_helper.int_id,-4);
				//race.set_bonus(FPalace_helper.max_lust_id,-20);
				race.set_bonus(FPalace_helper.height_id,-11,FPalace_helper.legs_slot);
				race.new_female_name_set(["Female"]);
				race.new_male_name_set(["Male"]);
				race.new_surname_set(["Wolf"]);
				
				race.set_preg_effect(mamal_preg(Main.t1_month * 7));
				
				var a3:Action = new Action();
					a3.set_name("Bite");
					a3.set_attack_flag();
					a3.set_attack_description("Bite an opponent. ");
						var challenge2:Challenge = new Challenge(true);
						challenge2.set_attack_stat(FPalace_skills.melee_id);
						challenge2.set_defense_stat(FPalace_skills.dodging_id);
						challenge2.set_variability(20);
						challenge2.set_text("Bite");
						var consequence2:Consequence = new Consequence();
						consequence2.set_damage_type(FPalace_helper.pierce_damage_type().get_id());
						consequence2.add_consequence(FPalace_helper.curr_hp_id,-4, "</n2> bites </n>! ",0);
						consequence2.add_consequence(FPalace_helper.curr_hp_id,-4, "</n2> tears out a hunk of </n>s flesh! ",2);
						consequence2.add_consequence(0,0, "</n2> futily gnashes at air. ",-1);
									
					a3.add_challenge(challenge2,consequence2);
				
				race.new_attack(a3, FPalace_helper.head_slot);
				
				race.add_part(FPalace_helper.new_head(race), 1);
				race.add_part(FPalace_helper.new_barrel(race), 1);
				race.add_part(FPalace_helper.new_thighs(race), 1);
				race.add_part(FPalace_helper.new_left_legs(race), 2);
				race.add_part(FPalace_helper.new_right_legs(race), 2);
				race.add_part(FPalace_helper.new_tail(race), 1);
				wolf_race = race;
			}
			return wolf_race;
		}
		
		public static function race_reindeer():Race{
			if(reindeer_race == null){
				var race:Race = new Race();
				race.set_name("reindeer");
				race.set_anthropomorphic();
				race.new_stat(FPalace_helper.stat_fur_colour());
								
				race.set_aging_mod(0.25);
				race.set_bonus(FPalace_helper.str_id,0.5);
				race.set_bonus(FPalace_helper.dex_id,1.5);
				race.set_bonus(FPalace_helper.wis_id,-1);
				race.set_bonus(FPalace_helper.int_id,-4);
				//race.set_bonus(FPalace_helper.max_lust_id,-20);
				race.set_bonus(FPalace_helper.height_id,-6,FPalace_helper.legs_slot);
				race.new_female_name_set(["Female"]);
				race.new_male_name_set(["Male"]);
				race.new_surname_set(["Reindeer"]);
				
				race.set_preg_effect(mamal_preg(Main.t1_month * 7));
				
				var a3:Action = new Action();
					a3.set_name("Charge");
					a3.set_attack_flag();
					a3.set_attack_description("Charge an opponent with your horns. ");
						var challenge2:Challenge = new Challenge(true);
						challenge2.set_attack_stat(FPalace_skills.melee_id);
						challenge2.set_defense_stat(FPalace_skills.dodging_id);
						challenge2.set_variability(20);
						challenge2.set_text("Charge");
						var consequence2:Consequence = new Consequence();
						consequence2.set_damage_type(FPalace_helper.pierce_damage_type().get_id());
						consequence2.add_consequence(FPalace_helper.curr_hp_id,-4, "</n2> charges into </n> with </noun2> horns! ",0);
						consequence2.add_consequence(FPalace_helper.curr_hp_id,-4, "</n2> manages to impale </objnoun>! ",2);
						consequence2.add_consequence(0,0, "</n2> charges past </n>. ",-1);
									
					a3.add_challenge(challenge2,consequence2);
				
				race.new_attack(a3, FPalace_helper.horn_slot);
				
				race.add_part(FPalace_helper.new_head(race), 1);
				race.add_part(FPalace_helper.new_horns(race), 1);
				race.add_part(FPalace_helper.new_barrel(race), 1);
				race.add_part(FPalace_helper.new_thighs(race), 1);
				race.add_part(FPalace_helper.new_left_legs(race), 2);
				race.add_part(FPalace_helper.new_right_legs(race), 2);
				race.add_part(FPalace_helper.new_tail(race), 1);
				reindeer_race = race;
			}
			return reindeer_race;
		}
		
		public static function race_hyena():Race{
			if(hyena_race == null){
				var race:Race = new Race();
				race.set_name("hyena");
				race.set_anthropomorphic();
				race.new_stat(FPalace_helper.stat_fur_colour());
				
				race.set_aging_mod(0.25);
				race.set_bonus(FPalace_helper.str_id,1.5);
				race.set_bonus(FPalace_helper.dex_id,0.5);
				race.set_bonus(FPalace_helper.wis_id,-1);
				race.set_bonus(FPalace_helper.int_id,-4);
				//race.set_bonus(FPalace_helper.max_lust_id,-20);
				race.set_bonus(FPalace_helper.height_id,-13,FPalace_helper.legs_slot);
				race.new_female_name_set(["Female"]);
				race.new_male_name_set(["Male"]);
				race.new_surname_set(["Hyena"]);
				
				race.set_preg_effect(mamal_preg(Main.t1_month * 7));
				
				var a3:Action = new Action();
					a3.set_name("Bite");
					a3.set_attack_flag();
					a3.set_attack_description("Bite an opponent. ");
						var challenge2:Challenge = new Challenge(true);
						challenge2.set_attack_stat(FPalace_skills.melee_id);
						challenge2.set_defense_stat(FPalace_skills.dodging_id);
						challenge2.set_variability(20);
						challenge2.set_text("Bite");
						var consequence2:Consequence = new Consequence();
						consequence2.set_damage_type(FPalace_helper.pierce_damage_type().get_id());
						consequence2.add_consequence(FPalace_helper.curr_hp_id,-4, "</n2> bites </n>! ",0);
						consequence2.add_consequence(FPalace_helper.curr_hp_id,-4, "</n2> tears out a hunk of </n>s flesh! ",2);
						consequence2.add_consequence(0,0, "</n2> futily gnashes at air. ",-1);
									
					a3.add_challenge(challenge2,consequence2);
				
				race.new_attack(a3, FPalace_helper.head_slot);
				
				race.add_part(FPalace_helper.new_head(race), 1);
				race.add_part(FPalace_helper.new_barrel(race), 1);
				race.add_part(FPalace_helper.new_thighs(race), 1);
				race.add_part(FPalace_helper.new_left_legs(race), 2);
				race.add_part(FPalace_helper.new_right_legs(race), 2);
				race.add_part(FPalace_helper.new_tail(race), 1);
				hyena_race = race;
			}
			return hyena_race;
		}
		
		public static function race_crocodile():Race{
			if(croc_race == null){
				var race:Race = new Race();
				race.set_name("crocodile");
				race.set_anthropomorphic();
				race.new_stat(FPalace_helper.stat_scale_colour());
				
				race.set_aging_mod(0.6);
				race.set_bonus(FPalace_helper.str_id,1.5);
				race.set_bonus(FPalace_helper.dex_id,0.5);
				race.set_bonus(FPalace_helper.wis_id,-1);
				race.set_bonus(FPalace_helper.int_id,-4);
				//race.set_bonus(FPalace_helper.max_lust_id,-20);
				race.set_bonus(FPalace_helper.height_id,-20,FPalace_helper.legs_slot);
				race.set_bonus(FPalace_helper.height_id,-5,FPalace_helper.head_slot);
				race.new_female_name_set(["Female"]);
				race.new_male_name_set(["Male"]);
				race.new_surname_set(["Crocodile"]);
				
				race.set_preg_effect(mamal_preg(Main.t1_month * 7));
				
				var a3:Action = new Action();
					a3.set_name("Bite");
					a3.set_attack_flag();
					a3.set_attack_description("Bite an opponent. ");
						var challenge2:Challenge = new Challenge(true);
						challenge2.set_attack_stat(FPalace_skills.melee_id);
						challenge2.set_defense_stat(FPalace_skills.dodging_id);
						challenge2.set_variability(20);
						challenge2.set_text("Bite");
						var consequence2:Consequence = new Consequence();
						consequence2.set_damage_type(FPalace_helper.pierce_damage_type().get_id());
						consequence2.add_consequence(FPalace_helper.curr_hp_id,-4, "</n2> bites </n>! ",0);
						consequence2.add_consequence(FPalace_helper.curr_hp_id,-4, "</n2> tears out a hunk of </n>s flesh! ",2);
						consequence2.add_consequence(0,0, "</n2> futily gnashes at air. ",-1);
									
					a3.add_challenge(challenge2,consequence2);
				
				race.new_attack(a3, FPalace_helper.head_slot);
				
				race.add_part(FPalace_helper.new_head(race), 1);
				race.add_part(FPalace_helper.new_barrel(race), 1);
				race.add_part(FPalace_helper.new_thighs(race), 1);
				race.add_part(FPalace_helper.new_left_legs(race), 2);
				race.add_part(FPalace_helper.new_right_legs(race), 2);
				race.add_part(FPalace_helper.new_tail(race), 1);
				croc_race = race;
			}
			return croc_race;
		}
		
		public static function race_polar_bear():Race{
			if(polar_race == null){
				var race:Race = new Race();
				race.set_name("polar bear");
				race.set_anthropomorphic();
				race.new_stat(FPalace_helper.stat_fur_colour());
				
				race.set_aging_mod(0.6);
				race.set_bonus(FPalace_helper.str_id,1.5);
				race.set_bonus(FPalace_helper.dex_id,0.5);
				race.set_bonus(FPalace_helper.wis_id,-1);
				race.set_bonus(FPalace_helper.int_id,-4);
				//race.set_bonus(FPalace_helper.max_lust_id,-20);
				race.new_female_name_set(["Female"]);
				race.new_male_name_set(["Male"]);
				race.new_surname_set(["Polar Bear"]);
				
				race.set_preg_effect(mamal_preg(Main.t1_month * 7));
				
				var a3:Action = new Action();
					a3.set_name("Bite");
					a3.set_attack_flag();
					a3.set_attack_description("Bite an opponent. ");
						var challenge2:Challenge = new Challenge(true);
						challenge2.set_attack_stat(FPalace_skills.melee_id);
						challenge2.set_defense_stat(FPalace_skills.dodging_id);
						challenge2.set_variability(20);
						challenge2.set_text("Bite");
						var consequence2:Consequence = new Consequence();
						consequence2.set_damage_type(FPalace_helper.pierce_damage_type().get_id());
						consequence2.add_consequence(FPalace_helper.curr_hp_id,-4, "</n2> bites </n>! ",0);
						consequence2.add_consequence(FPalace_helper.curr_hp_id,-4, "</n2> tears out a hunk of </n>s flesh! ",2);
						consequence2.add_consequence(0,0, "</n2> futily gnashes at air. ",-1);
									
					a3.add_challenge(challenge2,consequence2);
				
				race.new_attack(a3, FPalace_helper.head_slot);
				
				polar_race = race;
			}
			return polar_race;
		}
		
		private static function mamal_preg(preg_length:int):Tick_Effect{
			var tf:Tick_Effect = new Tick_Effect();
			tf.set_status_id(Tick_Effect.pregnant_status);
			tf.set_end_tick(preg_length);
			var consequence:Consequence = new Consequence();
			consequence.add_consequence(FPalace_helper.bloat_id,-4, "</n> struggles and pushes, but finally gives birth. ", 0,1);
			
			tf.set_end_consequence(consequence);
			
			consequence = new Consequence();
			consequence.add_consequence(FPalace_helper.bloat_id,0.3, "</n> can feel the pregnancy setting in, </noun> belly bulging. ", 0,1);
			var count:int = preg_length/16;
			for(count;count<preg_length;count+= preg_length/16){
				tf.set_tick_consequence(count,consequence);
			}
			var lactate_tf:Tick_Effect = new Tick_Effect();
			lactate_tf.set_status_id(Tick_Effect.lactating_status);
			var tf_chal:Challenge = new Challenge();
			tf_chal.set_attack_stat(FPalace_helper.milk_volume_id);
			tf_chal.set_defense_stat(-1,250);
			tf_chal.set_variability(0);
			var tf_con:Consequence = new Consequence();
			tf_con.add_consequence(FPalace_helper.breast_size_id,0.25, "</n> can feel the pregnancy setting in, </noun> breasts balooning in preparation. ", -1,1);
			lactate_tf.set_tick_consequence(1,tf_con, tf_chal);
			lactate_tf.set_end_tick(preg_length);
			
			consequence = new Consequence();
			consequence.add_consequence(0,0,"</n> begins to lactate. ",0,0,0,-1,false,lactate_tf);			
			tf.set_tick_consequence(3*preg_length/4,consequence);
			
			return tf;
		}
	}	
}
