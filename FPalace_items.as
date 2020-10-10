package  {
	
	public class FPalace_items {

		//Body part change items:
			//Penis: Senip Sangria, futa_cola
			//Breasts: Streabs Sherry
			//Vagina: Gavin ale
			//Balls: Allbs homebrew Alcohol, futa_cola
			
		//Status change items:
			//poison: (Gain):mushrooms (Loss): Healing_Potion
			//lactate: (Gain): lactaid (Loss):
			//pregnant: (Gain): (Loss): bottled_abortion
			//drunk: (Gain): Prothg_wine, Wests_Bourban, Palace_Private_Reserve, Grulv_Vodka, Stallion_Stout (Loss):
		
		//See Alchemical Affects spreadsheet for Alchmy and race change list
		
		public function FPalace_items() {
			// constructor code
		}
		
		public static function gold(i:int = 1):Item{
			var item:Item = new Item("Gold");
			item.set_dropped_description("some coins are laying on the ground here");
			item.set_image_id(FPalace_helper.unknown_img);
			item.set_weight(0);
			item.set_value(i);
			return item;
		}
		
		public static function textiles():Alchemy_item{
			var item:Alchemy_item = new Alchemy_item("Textiles");
			item.set_dropped_description("some cloth is laying on the ground here");
			item.set_inventory_description("This is a piece of wool cloth. ");
			item.set_image_id(FPalace_helper.unknown_img);
			item.add_type(FPalace_helper.anal_width_id);
			item.add_type(-FPalace_helper.balls_size_id);
			item.add_type(-FPalace_helper.max_lust_id);
			item.set_weight(1);
			item.set_value(1);
			return item;
		}
		
		public static function gold_bar():Alchemy_item{
			var item:Alchemy_item = new Alchemy_item("Gold Bar");
			item.set_dropped_description("an ingot is laying on the ground here");
			item.set_inventory_description("This is an ingot of gold. ");
			item.set_image_id(FPalace_helper.unknown_img);
			item.add_type(FPalace_helper.max_lust_id);
			item.add_type(-FPalace_helper.vaginal_width_id);
			item.add_type(FPalace_helper.max_weight_id);
			item.set_weight(5);
			item.set_value(15);
			return item;
		}
		
		public static function silver_bar():Alchemy_item{
			var item:Alchemy_item = new Alchemy_item("Silver Bar");
			item.set_dropped_description("an ingot is laying on the ground here");
			item.set_inventory_description("This is an ingot of silver. ");
			item.set_image_id(FPalace_helper.unknown_img);
			item.add_type(FPalace_helper.max_weight_id);
			item.add_type(-FPalace_helper.age_id);
			item.add_type(FPalace_helper.max_fatigue_id);
			item.set_weight(5);
			item.set_value(10);
			return item;
		}
		
		public static function iron():Alchemy_item{
			var item:Alchemy_item = new Alchemy_item("Iron");
			item.set_dropped_description("an ingot is laying on the ground here");
			item.set_inventory_description("This is an ingot of iron. ");
			item.set_image_id(FPalace_helper.unknown_img);
			item.add_type(FPalace_helper.min_lust_id);
			item.add_type(-FPalace_helper.vaginal_depth_id);
			item.add_type(FPalace_helper.erection_ratio_id);
			item.set_weight(5);
			item.set_value(3);
			return item;
		}
		
		public static function bronze():Alchemy_item{
			var item:Alchemy_item = new Alchemy_item("Bronze");
			item.set_dropped_description("an ingot is laying on the ground here");
			item.set_inventory_description("This is an ingot of bronze. ");
			item.set_image_id(FPalace_helper.unknown_img);
			item.add_type(FPalace_helper.age_id);
			item.add_type(-FPalace_helper.eye_colour_id);
			item.set_weight(5);
			item.set_value(2);
			return item;
		}
		
		public static function glass():Alchemy_item{
			var item:Alchemy_item = new Alchemy_item("Glass");
			item.set_dropped_description("some glass is laying on the ground here");
			item.set_inventory_description("This is a piece of glass. ");
			item.set_image_id(FPalace_helper.unknown_img);
			item.add_type(FPalace_helper.max_fatigue_id);
			item.add_type(-FPalace_helper.nipple_size_id);
			item.add_type(-FPalace_helper.bloat_id);
			item.set_weight(1);
			item.set_value(2);
			return item;
		}
		
		public static function leather():Alchemy_item{
			var item:Alchemy_item = new Alchemy_item("Leather");
			item.set_dropped_description("some leather is laying on the ground here");
			item.set_inventory_description("This is a strip of leather. ");
			item.set_image_id(FPalace_helper.unknown_img);
			item.add_type(FPalace_helper.bust_id);
			item.add_type(-FPalace_helper.hair_length_id);			
			item.set_weight(2);
			item.set_value(1);
			return item;
		}
		
		public static function silk():Alchemy_item{
			var item:Alchemy_item = new Alchemy_item("Silk");
			item.set_dropped_description("some cloth is laying on the ground here");
			item.set_inventory_description("This is a strip of fine silk. ");
			item.set_image_id(FPalace_helper.unknown_img);
			item.add_type(FPalace_helper.clit_length);
			item.add_type(-FPalace_helper.anal_width_id);
			item.add_type(FPalace_helper.hair_length_id);
			item.set_weight(1);
			item.set_value(5);
			return item;
		}
		
		public static function wood():Alchemy_item{
			var item:Alchemy_item = new Alchemy_item("Wood");
			item.set_dropped_description("some wood is laying on the ground here");
			item.set_inventory_description("This is a length of lumber. ");
			item.set_image_id(FPalace_helper.unknown_img);
			item.add_type(FPalace_helper.erection_ratio_id);
			item.add_type(-FPalace_helper.milk_volume_id);
			item.set_weight(3);
			item.set_value(1);
			return item;
		}
		
		public static function paper():Alchemy_item{
			var item:Alchemy_item = new Alchemy_item("Paper");
			item.set_dropped_description("some paper is laying on the ground here");
			item.set_inventory_description("These are a few pages of paper. ");
			item.set_image_id(FPalace_helper.unknown_img);
			item.add_type(FPalace_helper.weight_id);
			item.add_type(-FPalace_helper.max_weight_id);
			item.add_type(-FPalace_helper.eye_colour_id);
			item.set_weight(1);
			item.set_value(1);
			return item;
		}
		
		public static function dye():Alchemy_item{
			var item:Alchemy_item = new Alchemy_item("Dye");
			item.set_dropped_description("a bottle sits lazily on the ground here");
			item.set_inventory_description("This is a small bottle of dye. ");
			item.set_image_id(FPalace_helper.unknown_img);
			item.add_type(FPalace_helper.vaginal_width_id);
			item.add_type(-FPalace_helper.semen_fertility_id);
			item.add_type(-FPalace_helper.hair_colour_id);
			item.set_weight(1);
			item.set_value(5);
			return item;
		}
		
		public static function plastics():Alchemy_item{
			var item:Alchemy_item = new Alchemy_item("Plastics");
			item.set_dropped_description("Some plastic sits lazily on the ground here");
			item.set_inventory_description("This is a a good sized chunk of plastic. ");
			item.set_image_id(FPalace_helper.unknown_img);
			item.add_type(FPalace_helper.goo_colour_id);
			item.add_type(-FPalace_helper.penis_girth_id);
			item.add_type(-FPalace_helper.nipple_size_id);
			item.set_weight(1);
			item.set_value(2);
			return item;
		}
		
		public static function FPalace_tower_key():Item{
			var item:Item = new Item("Palace Tower Key");
			item.set_dropped_description("a small key glimmers on the ground here");
			item.set_inventory_description("This small key has teeth that are completely detached from the shaft.");
			item.set_use_description("</n> holds a key aloft. Nothing happens.");
			item.set_image_id(FPalace_helper.unknown_img);
			item.set_number_of_uses(-1);
			return item;
		}
		
		public static function nunnery_trapdoor_key():Item{
			var item:Item = new Item("Nunnery Trapdoor Key");
			item.set_dropped_description("a small key glimmers on the ground here");
			item.set_inventory_description("This small key seems standard enough.");
			item.set_use_description("</n> holds a key aloft. Nothing happens.");
			item.set_image_id(FPalace_helper.unknown_img);
			item.set_number_of_uses(-1);
			return item;
		}

		
		public static function FPalace_membership():Item{
			var item:Item = new Item("Membership");
			item.set_dropped_description("a plastic card is laying on the ground here");
			item.set_inventory_description("This plastic card in the shape of a key has a name on it");
			item.set_use_description("</n> holds a membership card aloft. Nothing happens.");
			item.set_image_id(FPalace_helper.unknown_img);
			item.set_number_of_uses(-1);
			return item;
		}
		
		public static function bandages():Item{
			//selling NPC: 
			var item:Item = new Item("Bandages");
			item.add_crafting_requirement(textiles(),1);
			item.set_dropped_description("a bandage is lying on the ground here");
			item.set_inventory_description("This is nothing more than a strip of cloth, likely intended for covering wounds. ");
			item.set_use_description("</n> applies the bandage.");
			item.set_image_id(FPalace_helper.unknown_img);
			item.set_identify_difficulty(1);
			item.add_effect(FPalace_helper.curr_hp_id, 1);
			item.set_value(2);
			return item;
		}
		
		public static function spermacide():Item{
			//selling NPC: job_equine_encampment_shopkeeper
			var item:Item = new Item("Spermacide");
			item.set_dropped_description("a salve container on the ground here");
			item.set_inventory_description("This is a small white container with spin off top adorned with a large red x drawn over a worm like thing. ");
			item.set_use_description("</n> applies the salve.");
			item.set_image_id(FPalace_helper.unknown_img);
			item.set_identify_difficulty(1);
			item.set_number_of_uses(2);
			item.add_effect(FPalace_helper.semen_fertility_id, -0.01);
			var consequence:Consequence = new Consequence();
				var tf:Tick_Effect = new Tick_Effect();
				tf.set_end_tick(Main.t1_day);
				var c2:Consequence = new Consequence();
				c2.add_remove_status(Tick_Effect.worms_status);
				c2.add_consequence(FPalace_helper.semen_fertility_id,0.05, "", 0);
				
				tf.set_end_consequence(c2);
				
			consequence.add_consequence(FPalace_helper.semen_fertility_id,-0.04, "</n> feels a tingling from </noun> groin. ",0,0,0,-1, false, tf);
			
			item.add_consequence(consequence);
			
			item.set_value(20);
			return item;
		}
		
		public static function the_pill():Item{
			//selling NPC: expedition_leader, lux_invira_general_merchant
			var item:Item = new Item("THE pill");
			item.set_dropped_description("an ugly pill pouch sits here");
			item.set_inventory_description("This pouch of pills has a label that just says \"THE pill\". ");
			item.set_use_description("</n> swallows a pill.");
			item.set_image_id(FPalace_helper.unknown_img);
			item.set_identify_difficulty(1);
			item.set_number_of_uses(4);
			item.add_effect(FPalace_helper.egg_fertility_id, -0.3);
			var consequence:Consequence = new Consequence();
				var tf:Tick_Effect = new Tick_Effect();
				tf.set_end_tick(Main.t1_day);
				var c2:Consequence = new Consequence();
				c2.add_consequence(FPalace_helper.egg_fertility_id,0.3, "", 0);
				
				tf.set_end_consequence(c2);
				
			consequence.add_consequence(FPalace_helper.egg_fertility_id,0, "</n> feels a tingling from </noun> groin. ",0,0,0,-1, false, tf);
			
			item.add_consequence(consequence);
			
			item.set_value(20);
			return item;
		}
		
		public static function weight_loss_pills():Item{
			//selling NPC: bee_hive_shopkeeper
			var item:Item = new Alchemy_item("Weight loss pills");
			item.set_dropped_description("an ugly pill pouch sits here");     
			item.set_inventory_description("The writing on this pouch reads like an idiot's attempt to bypass a spam filter. ");     
			item.set_use_description("</n> swallows two of the pills.");     
			item.set_image_id(FPalace_helper.unknown_img);     
			item.set_identify_difficulty(8);
			item.set_number_of_uses(4);
			item.add_effect(FPalace_helper.waist_id,-0.1);
			
			var consequence:Consequence = new Consequence();
				var tf:Tick_Effect = new Tick_Effect();
				tf.set_status_id(Tick_Effect.worms_status);
				var c2:Consequence = new Consequence();
				c2.add_consequence(FPalace_helper.waist_id,-0.1, "</n> feels worms crawling under </noun> skin. ", 0);
				c2.add_consequence(FPalace_helper.curr_hp_id,-1, "", 0);
				tf.set_tick_consequence(Main.t1_hour, c2);
				
			consequence.add_consequence(FPalace_helper.waist_id,-0.1, "</n> feels a bit sick. ",0,0,0,-1, false, tf);
			
			item.add_consequence(consequence);
			
			item.set_value(10);
			
			return item;
		}
		
		public static function reduction_salve():Item{
			//selling NPC: cclass_merchant
			var item:Item = new Item("Reduction salve");
			item.set_dropped_description("a container sits lazily on the ground here");
			item.set_inventory_description("This salve container has a label that is covered in warnings. ");
			item.set_use_description("</n> opens the container. ");
			item.set_image_id(FPalace_helper.unknown_img);
			item.set_identify_difficulty(2);
			
			var a:Action = new Action();
			a.set_dialogue("",0);
			var challenge:Challenge = new Challenge();
			challenge.set_attack_stat(-1,1);
			challenge.set_defense_stat(-1,0);
			challenge.set_variability(0);
			challenge.set_text("");
			
			var dconsequence:Dynamic_Consequence = new Dynamic_Consequence();
			dconsequence.set_consequence_list("</n> applies the salve to </noun> </choice>. ", Dynamic_Consequence.list_parts, Dynamic_Consequence.list_halvepart);
			dconsequence.add_consequence(0,0, "Where do you want to apply the salve?\n",0);
			a.add_challenge(challenge,dconsequence);
			
			item.add_action(a);
			
			item.set_value(15);
			return item;
		}
		
		public static function height_potion():Item{
			//selling NPC: aghapei_guru
			var item:Item = new Item("Height potion");
			item.set_dropped_description("a bottle sits lazily on the ground here");
			item.set_inventory_description("This bottle has a label that confusingly shows a double headed error between two figures of different heights. ");
			item.set_use_description("</n> opens the container. ");
			item.set_image_id(FPalace_helper.unknown_img);
			item.set_identify_difficulty(2);
			item.add_effect(FPalace_helper.curr_mp_id, 3);
			item.add_effect(FPalace_helper.height_id, 0.1);
			
			var a:Action = new Action();
			a.set_dialogue("",0);
			var challenge:Challenge = new Challenge();
			challenge.set_attack_stat(-1,0);
			challenge.set_defense_stat(-1,0);
			challenge.set_variability(100);
			challenge.set_text("");
			
			var consequence:Consequence = new Consequence();
			consequence.add_consequence(FPalace_helper.height_id,10, "</n> feels a bit sick. ",0);
			consequence.add_consequence(FPalace_helper.height_id,-10, "</n> feels a bit sick. ",-1);
			a.add_challenge(challenge,consequence);
			
			item.add_action(a);
			
			item.set_value(15);
			return item;
		}
		
		public static function Healing_Draught():Item{
			//selling NPC: lux_invira_shopkeeper
			var item:Item = new Item("Draught");
			item.set_dropped_description("a bottle sits lazily on the ground here");
			item.set_inventory_description("This bottle has a label that says \"Use after a hard night\"");
			item.set_use_description("</n> drinks the draught, and looks woozy.");
			item.set_image_id(FPalace_helper.unknown_img);
			item.set_identify_difficulty(2);
			item.add_effect(FPalace_helper.curr_hp_id, 5);
			item.add_effect(FPalace_helper.lust_id, 2);
			item.set_value(10);
			return item;
		}
		
		public static function upsidedown_potion():Item{
			//selling NPC: chastity_witch
			var item:Item = new Item("Upsidedown Potion");
			item.set_dropped_description("a bottle sits lazily on the ground here");
			item.set_inventory_description("This bottle is quite literally upside down. The stopper resides in the middle of what you would consider the bottom. ");
			item.set_use_description("</n> drinks the potion.");
			item.set_image_id(FPalace_helper.unknown_img);
			item.set_identify_difficulty(10);
			item.add_effect(FPalace_helper.curr_mp_id, 5);
			
			var a:Action = new Action();
			a.set_dialogue("",0);
			var chall:Challenge = new Challenge();
			chall.set_attack_stat(FPalace_helper.bust_id);
			chall.set_defense_stat(-1, 20);
			chall.set_variability(0);
			var c2:Consequence = new Consequence();
			c2.amt_by_roll_flag();
			c2.set_max_damage(1);
			c2.add_consequence(FPalace_helper.bust_id,Consequence.amt_from_roll_const, "", 0,0,0,1);
			c2.add_consequence(-FPalace_helper.bust_id,Consequence.amt_from_roll_const, "", -1,0,0,1);
			
			a.add_challenge(chall, c2);
			
			chall = new Challenge();
			chall.set_attack_stat(FPalace_helper.hips_id);
			chall.set_defense_stat(-1, 40);
			chall.set_variability(0);
			c2 = new Consequence();
			c2.amt_by_roll_flag();
			c2.set_max_damage(1);
			c2.add_consequence(FPalace_helper.hips_id,Consequence.amt_from_roll_const, "", 0);
			c2.add_consequence(-FPalace_helper.hips_id,Consequence.amt_from_roll_const, "", -1);
		
			a.add_challenge(chall, c2);
			
			item.add_action(a);
			
			item.set_value(10);
			return item;
		}
		
		public static function sunlight_potion():Item{
			//selling NPC: 
			var item:Item = new Item("Sunlight Potion");
			item.set_dropped_description("a bottle sits lazily on the ground here");
			item.set_inventory_description("This appears to be a bottle that <i>contains</i> sunlight. ");
			item.set_use_description("</n> drinks the potion.");
			item.set_image_id(FPalace_helper.unknown_img);
			item.set_identify_difficulty(10);
			item.add_effect(FPalace_helper.curr_mp_id, 2);
			
			var a:Action = new Action();
			a.set_dialogue("",0);
			var chall:Challenge = new Challenge();
			chall.set_attack_stat(FPalace_helper.eye_colour_id);
			chall.set_defense_stat(-1, 20);
			chall.set_variability(0);
			var c2:Consequence = new Consequence();
			c2.amt_by_roll_flag();
			c2.set_max_damage(2);
			c2.add_consequence(FPalace_helper.eye_colour_id,Consequence.amt_from_roll_const, "", 0,0,0,1);
			c2.add_consequence(-FPalace_helper.eye_colour_id,Consequence.amt_from_roll_const, "", -1,0,0,1);
			
			a.add_challenge(chall, c2);
			
			item.add_action(a);		
			
			item.set_value(10);
			return item;
		}
		
		public static function jade_egg():Item{
			//selling NPC: industria_grocer
			var item:Item = new Item("Jade Egg");
			item.set_dropped_description("there is an egg on the ground");
			item.set_inventory_description("This is a small egg, perfectly smooth and a beautiful jade colour. ");
			item.set_use_description("</n> eats the egg. ");
			item.set_image_id(FPalace_helper.unknown_img);
			item.set_identify_difficulty(20);
			item.add_effect(FPalace_helper.curr_hp_id, 1);
			item.add_effect(FPalace_helper.lust_id, 50);
			
			var a:Action = new Action();
			a.set_dialogue("",0);
			var chall:Challenge = new Challenge();
			chall.set_attack_stat(FPalace_helper.vaginal_depth_id);
			chall.set_defense_stat(-1, 5);
			chall.set_variability(0);
			var c2:Consequence = new Consequence();
			c2.amt_by_roll_flag();
			c2.set_max_damage(1);
			c2.add_consequence(FPalace_helper.vaginal_depth_id,Consequence.amt_from_roll_const, "", 0,0,0,1);
			c2.add_consequence(-FPalace_helper.vaginal_depth_id,Consequence.amt_from_roll_const, "", -1,0,0,1);
			
			a.add_challenge(chall, c2);
			
			chall = new Challenge();
			chall.set_attack_stat(FPalace_helper.vaginal_width_id);
			chall.set_defense_stat(-1, 10);
			chall.set_variability(0);
			c2 = new Consequence();
			c2.amt_by_roll_flag();
			c2.set_max_damage(1);
			c2.add_consequence(FPalace_helper.vaginal_width_id,Consequence.amt_from_roll_const, "", 0);
			c2.add_consequence(-FPalace_helper.vaginal_width_id,Consequence.amt_from_roll_const, "", -1);
		
			a.add_challenge(chall, c2);
			
			item.add_action(a);
			
			item.set_value(50);
			return item;
		}
		
		public static function loli_pop():Item{
			//selling NPC: Futa High vending machine
			var item:Item = new Item("Loli-pop");
			item.set_dropped_description("there is some candy on the ground");
			item.set_inventory_description("This is a lollipop, the branding of which has been playfully mispelled. ");
			item.set_use_description("</n> takes a few licks of the lollipop before crunching down and consuming it. ");
			item.set_image_id(FPalace_helper.unknown_img);
			item.set_identify_difficulty(20);
			item.add_effect(FPalace_helper.curr_fatigue_id, 1);
			item.add_effect(FPalace_helper.lust_id, 10);
			
			var a:Action = new Action();
			a.set_dialogue("",0);
			var chall:Challenge = new Challenge();
			chall.set_attack_stat(FPalace_helper.breast_size_id);
			chall.set_defense_stat(-1, 1);
			chall.set_variability(0);
			var c2:Consequence = new Consequence();
			c2.amt_by_roll_flag();
			c2.set_max_damage(2);
			c2.add_consequence(FPalace_helper.breast_size_id,Consequence.amt_from_roll_const, "", 0,0,0,1);
			c2.add_consequence(-FPalace_helper.breast_size_id,Consequence.amt_from_roll_const, "", -1,0,0,1);
			
			a.add_challenge(chall, c2);
			
			chall = new Challenge();
			chall.set_attack_stat(FPalace_helper.age_id);
			chall.set_defense_stat(-1, 8);
			chall.set_variability(0);
			c2 = new Consequence();
			c2.amt_by_roll_flag();
			c2.set_max_damage(1);
			c2.add_consequence(FPalace_helper.age_id,Consequence.amt_from_roll_const, "", 0);
			c2.add_consequence(-FPalace_helper.age_id,Consequence.amt_from_roll_const, "", -1);
		
			a.add_challenge(chall, c2);
			
			item.add_action(a);			
			
			item.set_value(10);
			return item;
		}
		
		public static function fem_pills():Item{
			//selling NPC: nunnery_merchant
			var item:Item = new Alchemy_item("Fem-pills");
			item.set_dropped_description("an ugly pill pouch sits here");     
			item.set_inventory_description("The label on this pill pouch is little past a rudimentary man with a red x drawn over him. ");     
			item.set_use_description("</n> swallows two of the pills.");     
			item.set_image_id(FPalace_helper.unknown_img);     
			item.set_identify_difficulty(20);
			item.set_number_of_uses(2);
			item.add_effect(FPalace_helper.penis_length_id,-1);
			item.add_effect(FPalace_helper.penis_girth_id,-0.3);
			item.add_effect(FPalace_helper.balls_size_id,-0.3);
			
			var a:Action = new Action();
			a.set_dialogue("",0);
			var chall:Challenge = new Challenge();
			chall.set_attack_stat(FPalace_helper.bust_id);
			chall.set_defense_stat(-1, 30);
			chall.set_variability(0);
			var c2:Consequence = new Consequence();
			c2.amt_by_roll_flag();
			c2.set_max_damage(2);
			c2.add_consequence(FPalace_helper.bust_id,Consequence.amt_from_roll_const, "", 0,0,0,1);
			c2.add_consequence(-FPalace_helper.bust_id,Consequence.amt_from_roll_const, "", -1,0,0,1);
			
			a.add_challenge(chall, c2);
			
			chall = new Challenge();
			chall.set_attack_stat(FPalace_helper.waist_id);
			chall.set_defense_stat(-1, 26);
			chall.set_variability(0);
			c2 = new Consequence();
			c2.amt_by_roll_flag();
			c2.set_max_damage(2);
			c2.add_consequence(FPalace_helper.waist_id,Consequence.amt_from_roll_const, "", 0,0,0,2);
			c2.add_consequence(-FPalace_helper.waist_id,Consequence.amt_from_roll_const, "", -1,0,0,2);
			
			a.add_challenge(chall, c2);
			
			chall = new Challenge();
			chall.set_attack_stat(FPalace_helper.hips_id);
			chall.set_defense_stat(-1, 30);
			chall.set_variability(0);
			c2 = new Consequence();
			c2.amt_by_roll_flag();
			c2.set_max_damage(2);
			c2.add_consequence(FPalace_helper.hips_id,Consequence.amt_from_roll_const, "", 0,0,0,2);
			c2.add_consequence(-FPalace_helper.hips_id,Consequence.amt_from_roll_const, "", -1,0,0,2);
			
			a.add_challenge(chall, c2);
			
			item.add_action(a);		
			
			item.set_value(20);
			
			return item;
		}
		
		public static function man_pills():Item{
			//selling NPC: nunnery_merchant
			var item:Item = new Alchemy_item("Man-pills");
			item.set_dropped_description("an ugly pill pouch sits here");     
			item.set_inventory_description("The label on this pill pouch is little past a rudimentary woman with a red x drawn over her. ");     
			item.set_use_description("</n> swallows two of the pills.");     
			item.set_image_id(FPalace_helper.unknown_img);     
			item.set_identify_difficulty(20);
			item.set_number_of_uses(2);
			item.add_effect(FPalace_helper.clit_length,-0.3);
			item.add_effect(FPalace_helper.nipple_size_id,-0.3);
			item.add_effect(FPalace_helper.breast_size_id,-0.3);
			item.add_effect(FPalace_helper.vaginal_depth_id,-0.5);
			item.add_effect(FPalace_helper.vaginal_width_id,-0.3);
			
			var a:Action = new Action();
			a.set_dialogue("",0);
			var chall:Challenge = new Challenge();
			chall.set_attack_stat(FPalace_helper.bust_id);
			chall.set_defense_stat(-1, 32);
			chall.set_variability(0);
			var c2:Consequence = new Consequence();
			c2.amt_by_roll_flag();
			c2.set_max_damage(2);
			c2.add_consequence(FPalace_helper.bust_id,Consequence.amt_from_roll_const, "", 0,0,0,1);
			c2.add_consequence(-FPalace_helper.bust_id,Consequence.amt_from_roll_const, "", -1,0,0,1);
			
			a.add_challenge(chall, c2);
			
			chall = new Challenge();
			chall.set_attack_stat(FPalace_helper.waist_id);
			chall.set_defense_stat(-1, 32);
			chall.set_variability(0);
			c2 = new Consequence();
			c2.amt_by_roll_flag();
			c2.set_max_damage(2);
			c2.add_consequence(FPalace_helper.waist_id,Consequence.amt_from_roll_const, "", 0,0,0,2);
			c2.add_consequence(-FPalace_helper.waist_id,Consequence.amt_from_roll_const, "", -1,0,0,2);
			
			a.add_challenge(chall, c2);
			
			chall = new Challenge();
			chall.set_attack_stat(FPalace_helper.hips_id);
			chall.set_defense_stat(-1, 32);
			chall.set_variability(0);
			c2 = new Consequence();
			c2.amt_by_roll_flag();
			c2.set_max_damage(2);
			c2.add_consequence(FPalace_helper.hips_id,Consequence.amt_from_roll_const, "", 0,0,0,2);
			c2.add_consequence(-FPalace_helper.hips_id,Consequence.amt_from_roll_const, "", -1,0,0,2);
			
			a.add_challenge(chall, c2);
			
			item.add_action(a);		
			
			item.set_value(20);
			
			return item;
		}
		
		public static function bleach():Item{//should really be an alchmy item....
			//selling NPC: mensch_slaver
			var item:Item = new Item("Bleach");
			item.set_dropped_description("a jug sits here");     
			item.set_inventory_description("The jug, despite being unlabelled, carries the smell of bleach. ");     
			item.set_use_description("</n> applies the bleach to </noun> scalp. ");     
			item.set_image_id(FPalace_helper.unknown_img);     
			item.set_identify_difficulty(2);
			item.add_effect(FPalace_helper.curr_hp_id,-1);
			
			var a:Action = new Action();
			a.set_dialogue("",0);
			var chall:Challenge = new Challenge();
			chall.set_attack_stat(FPalace_helper.hair_colour_id);
			chall.set_defense_stat(-1, 0);
			chall.set_variability(0);
			var c2:Consequence = new Consequence();
			c2.amt_by_roll_flag();
			c2.set_max_damage(2);
			c2.add_consequence(FPalace_helper.hair_colour_id,Consequence.amt_from_roll_const, "", 0,0,0,1);
			c2.add_consequence(-FPalace_helper.hair_colour_id,Consequence.amt_from_roll_const, "", -1,0,0,1);
			
			a.add_challenge(chall, c2);
			
			item.add_action(a);			
			
			item.set_value(5);
			
			return item;
		}
		
		public static function Tent():Item{
			//selling NPC: cclass_merchant
			var tent:Item = new Item("Tent");
			tent.add_crafting_requirement(textiles(),10);
			tent.add_crafting_requirement(wood(),2);
			tent.set_dropped_description("a set of poles and canvas is lying on the ground here");
			tent.set_inventory_description("Everything you need to stay covered overnight.");
			tent.set_use_description("</n> take a few moments to setup a campsite. ");
			tent.set_image_id(FPalace_helper.unknown_img);
			tent.set_identify_difficulty(1);
			
			var rest_action:Action = new Action();
			rest_action.set_name("campsite");
			rest_action.set_dialogue("You rest at the campsite. ");
			rest_action.set_rest_flag();
			
			var camp_object:Action_object = new Action_object();
			camp_object.set_description("There is a <a0> here. ");
			camp_object.add_action(rest_action, 3);
			
			var camp_site_action:Action = new Action();
			camp_site_action.set_dialogue("",0);
			var challenge:Challenge = new Challenge();
			challenge.set_attack_stat(-1,1);
			challenge.set_defense_stat(-1,0);
			challenge.set_variability(0);
			challenge.set_text("");
			var r_consequence:Room_Consequence = new Room_Consequence();
			r_consequence.add_consequence(0,0, "The site looks nice and cozy. ",0);
			r_consequence.add_room_action(camp_object);
			
			camp_site_action.add_challenge(challenge, r_consequence);			
			
			tent.add_action(camp_site_action);			
			
			tent.set_value(20);
			
			return tent;
		}
		
		public static function Healing_Potion():Item{
			//selling NPC: cclass_merchant
			var health_potion:Item = new Item("Healing Potion");
			health_potion.set_dropped_description("a bottle sits lazily on the ground here");
			health_potion.set_inventory_description("This bottle has a small label with large red heart and white cross on it.");
			health_potion.set_use_description("</n> drinks the potion and </noun> wounds melt away.");
			health_potion.set_image_id(FPalace_helper.unknown_img);
			health_potion.set_identify_difficulty(1);
			health_potion.add_effect(FPalace_helper.curr_hp_id,7);
			
			var consequence:Consequence = new Consequence();
				consequence.add_remove_status(Tick_Effect.poisoned_status);
				consequence.add_consequence(FPalace_helper.curr_hp_id,0, "",0);
			
			health_potion.add_consequence(consequence);
			
			health_potion.set_value(15);
			return health_potion;
		}		
		
		public static function bronze_shortsword_recipe():Item{
			//selling NPC: benevol_librarian
			var recipe:Item = new Item("Short Sword Recipe");
			recipe.set_dropped_description("a piece of paper is on the ground here");
			recipe.set_inventory_description("This piece of paper appears to have instructions on how to make a bronze short sword.");
			recipe.set_use_description("</n> commits the instructions to memory.");
			recipe.set_image_id(FPalace_helper.unknown_img);
			recipe.set_identify_difficulty(1);
			
			var iconsequence:Item_Consequence = new Item_Consequence();
				iconsequence.add_item_recipe(bronze_short_sword());
			recipe.add_consequence(iconsequence);
			
			recipe.set_value(10);
			return recipe;
		}
		
		public static function spear_recipe():Item{
			//selling NPC :benevol_librarian
			var recipe:Item = new Item("Spear Recipe");
			recipe.set_dropped_description("a piece of paper is on the ground here");
			recipe.set_inventory_description("This piece of paper appears to have instructions on how to make a spear.");
			recipe.set_use_description("</n> commits the instructions to memory.");
			recipe.set_image_id(FPalace_helper.unknown_img);
			recipe.set_identify_difficulty(1);
			
			var iconsequence:Item_Consequence = new Item_Consequence();
				iconsequence.add_item_recipe(spear());
			recipe.add_consequence(iconsequence);
			
			recipe.set_value(10);
			return recipe;
		}
		
		public static function rapier_recipe():Item{
			//selling NPC: ahimsa_smith
			var recipe:Item = new Item("Rapier Recipe");
			recipe.set_dropped_description("a piece of paper is on the ground here");
			recipe.set_inventory_description("This piece of paper appears to have instructions on how to make a rapier.");
			recipe.set_use_description("</n> commits the instructions to memory.");
			recipe.set_image_id(FPalace_helper.unknown_img);
			recipe.set_identify_difficulty(1);
			
			var iconsequence:Item_Consequence = new Item_Consequence();
				iconsequence.add_item_recipe(elvish_rapier());
			recipe.add_consequence(iconsequence);
			
			recipe.set_value(10);
			return recipe;
		}
		
		public static function shield_recipe():Item{
			//selling NPC: mensch_smith
			var recipe:Item = new Item("Shield Recipe");
			recipe.set_dropped_description("a piece of paper is on the ground here");
			recipe.set_inventory_description("This piece of paper appears to have instructions on how to make a shield.");
			recipe.set_use_description("</n> commits the instructions to memory.");
			recipe.set_image_id(FPalace_helper.unknown_img);
			recipe.set_identify_difficulty(1);
			
			var iconsequence:Item_Consequence = new Item_Consequence();
				iconsequence.add_item_recipe(bronze_shield());
			recipe.add_consequence(iconsequence);
			
			recipe.set_value(10);
			return recipe;
		}
		
		public static function greaves_recipe():Item{
			//selling NPC: ahimsa_smith
			var recipe:Item = new Item("Greaves Recipe");
			recipe.set_dropped_description("a piece of paper is on the ground here");
			recipe.set_inventory_description("This piece of paper appears to have instructions on how to make a pair of greaves.");
			recipe.set_use_description("</n> commits the instructions to memory.");
			recipe.set_image_id(FPalace_helper.unknown_img);
			recipe.set_identify_difficulty(1);
			
			var iconsequence:Item_Consequence = new Item_Consequence();
				iconsequence.add_item_recipe(bronze_greaves());
			recipe.add_consequence(iconsequence);
			
			recipe.set_value(10);
			return recipe;
		}
		
		public static function ring_recipe():Item{
			//selling NPC: benevol_jeweller
			var recipe:Item = new Item("Ring Recipe");
			recipe.set_dropped_description("a piece of paper is on the ground here");
			recipe.set_inventory_description("This piece of paper appears to have instructions on how to make a ring.");
			recipe.set_use_description("</n> commits the instructions to memory.");
			recipe.set_image_id(FPalace_helper.unknown_img);
			recipe.set_identify_difficulty(1);
			
			var iconsequence:Item_Consequence = new Item_Consequence();
				iconsequence.add_item_recipe(gold_ring());
			recipe.add_consequence(iconsequence);
			
			recipe.set_value(10);
			return recipe;
		}
		
		public static function gown_recipe():Item{
			//selling NPC: ahimsa_seamstress
			var recipe:Item = new Item("Gown Recipe");
			recipe.set_dropped_description("a piece of paper is on the ground here");
			recipe.set_inventory_description("This piece of paper appears to have instructions on how to make a gown.");
			recipe.set_use_description("</n> commits the instructions to memory.");
			recipe.set_image_id(FPalace_helper.unknown_img);
			recipe.set_identify_difficulty(1);
			
			var iconsequence:Item_Consequence = new Item_Consequence();
				iconsequence.add_item_recipe(brown_elvish_gown());
			recipe.add_consequence(iconsequence);
			
			recipe.set_value(10);
			return recipe;
		}
		
		public static function breastplate_recipe():Item{
			//selling NPC: ahimsa_smith
			var recipe:Item = new Item("Breastplate Recipe");
			recipe.set_dropped_description("a piece of paper is on the ground here");
			recipe.set_inventory_description("This piece of paper appears to have instructions on how to make a breastplate.");
			recipe.set_use_description("</n> commits the instructions to memory.");
			recipe.set_image_id(FPalace_helper.unknown_img);
			recipe.set_identify_difficulty(1);
			
			var iconsequence:Item_Consequence = new Item_Consequence();
				iconsequence.add_item_recipe(bronze_breastplate());
			recipe.add_consequence(iconsequence);
			
			recipe.set_value(10);
			return recipe;
		}
		
		public static function Spam_PLength():Item{     
			//selling NPC: job_century_city_gro_clerk
			var item:Item = new Item("Hosemol");     
			item.set_dropped_description("an ugly plastic pill bottle sits here");     
			item.set_inventory_description("The writing on this bottle reads like an idiot's attempt to bypass a spam filter, aside from a strangely professional list of chemicals in a small white box on the back. ");     
			item.set_use_description("</n> swallows two of the pills.");     
			item.set_image_id(FPalace_helper.unknown_img);     
			item.set_identify_difficulty(8);
			item.set_number_of_uses(4);
			item.add_effect(FPalace_helper.penis_length_id,0.03);
			
			
			
			var consequence:Consequence = new Consequence();
				var tf:Tick_Effect = new Tick_Effect();
				tf.set_end_tick(Main.t1_week);
				var challenge:Challenge = new Challenge();
				challenge.set_attack_stat(-1,5);
				challenge.set_defense_stat(-1, 0);
				challenge.set_variability(10);
				var c2:Consequence = new Consequence();
				c2.amt_by_roll_flag(["r", "/", 100.0]);
				c2.add_consequence(-FPalace_helper.penis_length_id,Consequence.amt_from_roll_const, "", 0);
				
				for(var i:int = 0;i<Main.t1_week;i+=Main.t1_hour)tf.set_tick_consequence(i,c2,challenge);
				tf.set_end_consequence(c2);
				
				consequence.add_consequence(FPalace_helper.str_id,0, "",0,0,0,-1, false, tf);
				
			item.add_consequence(consequence);
			
			item.set_value(30);
			
			return item;
		}
		
		public static function Spam_PGirth():Item{     
			//selling NPC: job_century_city_gro_clerk
			var item:Item = new Item("Pythonex-treme");     
			item.set_dropped_description("an ugly pill pouch sits here");     
			item.set_inventory_description("The writing on this pouch reads like an idiot's attempt to bypass a spam filter, aside from a strangely professional list of chemicals in a small white box. ");     
			item.set_use_description("</n> swallows two of the pills.");     
			item.set_image_id(FPalace_helper.unknown_img);     
			item.set_identify_difficulty(8);
			item.set_number_of_uses(4);
			item.add_effect(FPalace_helper.penis_girth_id,0.01);
			
			var consequence:Consequence = new Consequence();
				var tf:Tick_Effect = new Tick_Effect();
				tf.set_end_tick(Main.t1_week);
				var challenge:Challenge = new Challenge();
				challenge.set_attack_stat(-1,5);
				challenge.set_defense_stat(-1,0);
				challenge.set_variability(5);
				var c2:Consequence = new Consequence();
				c2.amt_by_roll_flag(["r", "/", 100.0]);
				c2.add_consequence(-FPalace_helper.penis_girth_id,Consequence.amt_from_roll_const, "", 0);
				
				for(var i:int = 0;i<Main.t1_week;i+=Main.t1_hour)tf.set_tick_consequence(i,c2,challenge);
				tf.set_end_consequence(c2);
				
				consequence.add_consequence(FPalace_helper.str_id,0, "",0,0,0,-1, false, tf);
				
			item.add_consequence(consequence);
			
			item.set_value(30);
			
			return item;
		}
		
		public static function Spam_BallSize():Item{     
			//selling NPC: job_century_city_gro_clerk
			var item:Item = new Item("Sackdamine");     
			item.set_dropped_description("an ugly pill pouch sits here");     
			item.set_inventory_description("The writing on this pouch reads like an idiot's attempt to bypass a spam filter, aside from a strangely professional list of chemicals in a small white box. ");     
			item.set_use_description("</n> swallows two of the pills.");     
			item.set_image_id(FPalace_helper.unknown_img);     
			item.set_identify_difficulty(8);
			item.set_number_of_uses(4);
			item.add_effect(FPalace_helper.balls_size_id,0.01);
			
			var consequence:Consequence = new Consequence();
				var tf:Tick_Effect = new Tick_Effect();
				tf.set_end_tick(Main.t1_week);
				var challenge:Challenge = new Challenge();
				challenge.set_attack_stat(-1,5);
				challenge.set_defense_stat(-1,0);
				challenge.set_variability(5);
				var c2:Consequence = new Consequence();
				c2.amt_by_roll_flag(["r", "/", 100.0]);
				c2.add_consequence(-FPalace_helper.balls_size_id,Consequence.amt_from_roll_const, "", 0);
				
				for(var i:int = 0;i<Main.t1_week;i+=Main.t1_hour)tf.set_tick_consequence(i,c2,challenge);
				tf.set_end_consequence(c2);
				
				consequence.add_consequence(FPalace_helper.str_id,0, "",0,0,0,-1, false, tf);
				
			item.add_consequence(consequence);
			
			item.set_value(30);
			
			return item;
		}
		
		public static function Spam_BustSize():Item{     
			//selling NPC: job_century_city_gro_clerk
			var item:Item = new Item("Absdomniplex");     
			item.set_dropped_description("an ugly pill pouch sits here");     
			item.set_inventory_description("The writing on this pouch reads like an idiot's attempt to bypass a spam filter, aside from a strangely professional list of chemicals in a small white box. ");     
			item.set_use_description("</n> swallows two of the pills.");     
			item.set_image_id(FPalace_helper.unknown_img);     
			item.set_identify_difficulty(8);
			item.set_number_of_uses(4);
			item.add_effect(FPalace_helper.bust_id,0.05);
			
			var consequence:Consequence = new Consequence();
				var tf:Tick_Effect = new Tick_Effect();
				tf.set_end_tick(Main.t1_week);
				var challenge:Challenge = new Challenge();
				challenge.set_attack_stat(-1,10);
				challenge.set_defense_stat(-1,0);
				challenge.set_variability(15);
				var c2:Consequence = new Consequence();
				c2.amt_by_roll_flag(["r", "/", 100.0]);
				c2.add_consequence(-FPalace_helper.bust_id,Consequence.amt_from_roll_const, "", 0);
				
				for(var i:int = 0;i<Main.t1_week;i+=Main.t1_hour)tf.set_tick_consequence(i,c2,challenge);
				tf.set_end_consequence(c2);
				
				consequence.add_consequence(FPalace_helper.str_id,0, "",0,0,0,-1, false, tf);				
				
			item.add_consequence(consequence);
			
			item.set_value(30);
			
			return item;
		}
		
		public static function Spam_ErRat():Item{     
			//selling NPC: witches_potionmaking_student
			var item:Item = new Item("Ciagra");     
			item.set_dropped_description("an ugly pill pouch sits here");     
			item.set_inventory_description("The writing on this pouch reads like an idiot's attempt to bypass a spam filter, aside from a strangely professional list of chemicals in a small white box. ");     
			item.set_use_description("</n> swallows two of the pills.");     
			item.set_image_id(FPalace_helper.unknown_img);     
			item.set_identify_difficulty(8);
			item.set_number_of_uses(4);
			item.add_effect(FPalace_helper.erection_ratio_id,0.001);
			
			var consequence:Consequence = new Consequence();
				var tf:Tick_Effect = new Tick_Effect();
				tf.set_end_tick(Main.t1_week);
				var challenge:Challenge = new Challenge();
				challenge.set_attack_stat(-1,10);
				challenge.set_defense_stat(-1,0);
				challenge.set_variability(15);
				var c2:Consequence = new Consequence();
				c2.amt_by_roll_flag(["r", "/", 1000.0]);
				c2.add_consequence(-FPalace_helper.erection_ratio_id,Consequence.amt_from_roll_const, "", 0);
				
				for(var i:int = 0;i<Main.t1_week;i+=Main.t1_hour)tf.set_tick_consequence(i,c2,challenge);
				tf.set_end_consequence(c2);
				
				consequence.add_consequence(FPalace_helper.str_id,0, "",0,0,0,-1, false, tf);				
				
			item.add_consequence(consequence);
			
			item.set_value(30);
			
			return item;
		}
		
		public static function Spam_CumV():Item{     
			//selling NPC: nunnery_drug_dealer
			var item:Item = new Item("Vialis");     
			item.set_dropped_description("an ugly pill pouch sits here");     
			item.set_inventory_description("The writing on this pouch reads like an idiot's attempt to bypass a spam filter, aside from a strangely professional list of chemicals in a small white box. ");     
			item.set_use_description("</n> swallows two of the pills.");     
			item.set_image_id(FPalace_helper.unknown_img);     
			item.set_identify_difficulty(8);
			item.set_number_of_uses(2);
			item.add_effect(FPalace_helper.cum_volume_id,1);
			
			var consequence:Consequence = new Consequence();
				var tf:Tick_Effect = new Tick_Effect();
				tf.set_end_tick(Main.t1_week);
				var challenge:Challenge = new Challenge();
				challenge.set_attack_stat(-1,10);
				challenge.set_defense_stat(-1,0);
				challenge.set_variability(10);
				var c2:Consequence = new Consequence();
				c2.amt_by_roll_flag(["r", "/", 10.0]);
				c2.add_consequence(-FPalace_helper.cum_volume_id,Consequence.amt_from_roll_const, "", 0);
				
				for(var i:int = 0;i<Main.t1_week;i+=Main.t1_hour)tf.set_tick_consequence(i,c2,challenge);
				tf.set_end_consequence(c2);
				
				consequence.add_consequence(FPalace_helper.str_id,0, "",0,0,0,-1, false, tf);			
				
			item.add_consequence(consequence);
			
			item.set_value(30);
			
			return item;
		}
		
		public static function Fem_BreastSize():Item{      
			//selling NPC: job_century_city_gro_clerk
			var item:Item = new Item("Valley Hills Magnificence");     
			item.set_dropped_description("a colorful box of pills sits here");     
			item.set_inventory_description("This box of tablets comes illustrated with an orange and yellow sunset shining over a pair of tall green hills residing over long green fields. There is an annoying lack of information on the box for its intended function however");     
			item.set_use_description("</n> sucks on the fruit flavored chalky tablet.");     
			item.set_image_id(FPalace_helper.unknown_img);     
			item.set_identify_difficulty(10);     
			item.set_number_of_uses(2);
			item.add_effect(FPalace_helper.breast_size_id,0.02);
			
			var consequence:Consequence = new Consequence();
				var tf:Tick_Effect = new Tick_Effect();
				tf.set_end_tick(Main.t1_week);
				var challenge:Challenge = new Challenge();
				challenge.set_attack_stat(-1,10);
				challenge.set_defense_stat(-1,0);
				challenge.set_variability(10);
				var c2:Consequence = new Consequence();
				c2.amt_by_roll_flag(["r", "/", 100.0]);
				c2.add_consequence(-FPalace_helper.breast_size_id,Consequence.amt_from_roll_const, "", 0);
				
				for(var i:int = 0;i<Main.t1_week;i+=Main.t1_hour)tf.set_tick_consequence(i,c2,challenge);
				tf.set_end_consequence(c2);
				
				consequence.add_consequence(FPalace_helper.str_id,0, "",0,0,0,-1, false, tf);	
				
			item.add_consequence(consequence);    
			item.set_value(20);   
			return item;
		}
		
		public static function Fem_HipSize():Item{      
			//selling NPC: nunnery_drug_dealer
			var item:Item = new Item("Garden Gateway Grandeur");     
			item.set_dropped_description("a colorful box of pills sits here");     
			item.set_inventory_description("This box of tablets comes illustrated with a door that glows with a light from behind. There is an annoying lack of information on the box for its intended function however");     
			item.set_use_description("</n> sucks on the fruit flavored chalky tablet.");     
			item.set_image_id(FPalace_helper.unknown_img);     
			item.set_identify_difficulty(10);     
			item.set_number_of_uses(2);
			item.add_effect(FPalace_helper.hips_id,0.1);
			
			var consequence:Consequence = new Consequence();
				var tf:Tick_Effect = new Tick_Effect();
				tf.set_end_tick(Main.t1_week);
				var challenge:Challenge = new Challenge();
				challenge.set_attack_stat(-1,10);
				challenge.set_defense_stat(-1,0);
				challenge.set_variability(10);
				var c2:Consequence = new Consequence();
				c2.amt_by_roll_flag(["r", "/", 10.0]);
				c2.add_consequence(-FPalace_helper.hips_id,Consequence.amt_from_roll_const, "", 0);
				
				for(var i:int = 0;i<Main.t1_week;i+=Main.t1_hour)tf.set_tick_consequence(i,c2,challenge);
				tf.set_end_consequence(c2);
				
				consequence.add_consequence(FPalace_helper.str_id,0, "",0,0,0,-1, false, tf);	
				
			item.add_consequence(consequence);    
			item.set_value(20);   
			return item;
		}
		
		public static function Fem_NipSize():Item{      
			//selling NPC: job_century_city_gro_clerk
			var item:Item = new Item("Rocky Mountain Splendour");     
			item.set_dropped_description("a colorful box of pills sits here");     
			item.set_inventory_description("This box of tablets comes illustrated with a picturesque set of peaks. There is an annoying lack of information on the box for its intended function however");     
			item.set_use_description("</n> sucks on the fruit flavored chalky tablet.");     
			item.set_image_id(FPalace_helper.unknown_img);     
			item.set_identify_difficulty(10);     
			item.set_number_of_uses(2);
			item.add_effect(FPalace_helper.nipple_size_id,0.01);
			
			var consequence:Consequence = new Consequence();
				var tf:Tick_Effect = new Tick_Effect();
				tf.set_end_tick(Main.t1_week);
				var challenge:Challenge = new Challenge();
				challenge.set_attack_stat(-1,10);
				challenge.set_defense_stat(-1,0);
				challenge.set_variability(10);
				var c2:Consequence = new Consequence();
				c2.amt_by_roll_flag(["r", "/", 100.0]);
				c2.add_consequence(-FPalace_helper.nipple_size_id,Consequence.amt_from_roll_const, "", 0);
				
				for(var i:int = 0;i<Main.t1_week;i+=Main.t1_hour)tf.set_tick_consequence(i,c2,challenge);
				tf.set_end_consequence(c2);
				
				consequence.add_consequence(FPalace_helper.str_id,0, "",0,0,0,-1, false, tf);	
				
			item.add_consequence(consequence);    
			item.set_value(20);   
			return item;
		}
		
		public static function Fem_HairLength():Item{      
			//selling NPC: witches_potionmaking_student
			var item:Item = new Item("Silky stream Sumptuousness");     
			item.set_dropped_description("a colorful box of pills sits here");     
			item.set_inventory_description("This box of tablets comes illustrated with a peaceful stream running through a forest. There is an annoying lack of information on the box for its intended function however");     
			item.set_use_description("</n> sucks on the fruit flavored chalky tablet.");     
			item.set_image_id(FPalace_helper.unknown_img);     
			item.set_identify_difficulty(10);     
			item.set_number_of_uses(2);
			item.add_effect(FPalace_helper.hair_length_id,0.1);
			
			var consequence:Consequence = new Consequence();
				var tf:Tick_Effect = new Tick_Effect();
				tf.set_end_tick(Main.t1_week);
				var challenge:Challenge = new Challenge();
				challenge.set_attack_stat(-1,10);
				challenge.set_defense_stat(-1,0);
				challenge.set_variability(10);
				var c2:Consequence = new Consequence();
				c2.amt_by_roll_flag(["r", "/", 10.0]);
				c2.add_consequence(-FPalace_helper.hair_length_id,Consequence.amt_from_roll_const, "", 0);
				
				for(var i:int = 0;i<Main.t1_week;i+=Main.t1_hour)tf.set_tick_consequence(i,c2,challenge);
				tf.set_end_consequence(c2);
				
				consequence.add_consequence(FPalace_helper.str_id,0, "",0,0,0,-1, false, tf);	
				
			item.add_consequence(consequence);    
			item.set_value(20);   
			return item;
		}
		
		public static function Fem_HairColour():Item{
			//selling NPC: witches_potionmaking_student
			var item:Item = new Item("Grassy field Resplendence");     
			item.set_dropped_description("a colorful box of pills sits here");     
			item.set_inventory_description("This box of tablets comes illustrated with hills covered in rows of flowers of every conceavable colour. There is an annoying lack of information on the box for its intended function however");     
			item.set_use_description("</n> sucks on the fruit flavored chalky tablet.");     
			item.set_image_id(FPalace_helper.unknown_img);     
			item.set_identify_difficulty(10);     
			item.set_number_of_uses(2);
			item.add_effect(FPalace_helper.hair_colour_id,0.2);
			
			var consequence:Consequence = new Consequence();
				var tf:Tick_Effect = new Tick_Effect();
				tf.set_end_tick(Main.t1_week);
				var challenge:Challenge = new Challenge();
				challenge.set_attack_stat(-1,10);
				challenge.set_defense_stat(-1,0);
				challenge.set_variability(20);
				var c2:Consequence = new Consequence();
				c2.amt_by_roll_flag(["r", "/", 10.0]);
				c2.add_consequence(-FPalace_helper.hair_colour_id,Consequence.amt_from_roll_const, "", 0);
				
				for(var i:int = 0;i<Main.t1_week;i+=Main.t1_hour)tf.set_tick_consequence(i,c2,challenge);
				tf.set_end_consequence(c2);
				
				consequence.add_consequence(FPalace_helper.str_id,0, "",0,0,0,-1, false, tf);	
				
			item.add_consequence(consequence);    
			item.set_value(20);   
			return item;
		}
		
		public static function Fem_ClitSize():Item{
			//selling NPC: job_century_city_gro_clerk
			var item:Item = new Item("Tower Roof Treasure");     
			item.set_dropped_description("a colorful box of pills sits here");     
			item.set_inventory_description("This box of tablets comes illustrated with a tower, a window near the top spilling golden light. There is an annoying lack of information on the box for its intended function however");     
			item.set_use_description("</n> sucks on the fruit flavored chalky tablet.");     
			item.set_image_id(FPalace_helper.unknown_img);     
			item.set_identify_difficulty(10);     
			item.set_number_of_uses(2);
			item.add_effect(FPalace_helper.clit_length,0.03);
			
			var consequence:Consequence = new Consequence();
				var tf:Tick_Effect = new Tick_Effect();
				tf.set_end_tick(Main.t1_week);
				var challenge:Challenge = new Challenge();
				challenge.set_attack_stat(-1,10);
				challenge.set_defense_stat(-1,0);
				challenge.set_variability(20);
				var c2:Consequence = new Consequence();
				c2.amt_by_roll_flag(["r", "/", 100.0]);
				c2.add_consequence(-FPalace_helper.clit_length,Consequence.amt_from_roll_const, "", 0);
				
				for(var i:int = 0;i<Main.t1_week;i+=Main.t1_hour)tf.set_tick_consequence(i,c2,challenge);
				tf.set_end_consequence(c2);
				
				consequence.add_consequence(FPalace_helper.str_id,0, "",0,0,0,-1, false, tf);	
				
			item.add_consequence(consequence);    
			item.set_value(20);   
			return item;
		}
		
		public static function Fem_WaistSize():Item{
			//selling NPC: nunnery_drug_dealer
			var item:Item = new Item("Open Plains Pleasure");     
			item.set_dropped_description("a colorful box of pills sits here");     
			item.set_inventory_description("This box of tablets comes illustrated with grass covered hills and free running horses. There is an annoying lack of information on the box for its intended function however");     
			item.set_use_description("</n> sucks on the fruit flavored chalky tablet.");     
			item.set_image_id(FPalace_helper.unknown_img);
			item.set_identify_difficulty(10);     
			item.set_number_of_uses(2);
			item.add_effect(FPalace_helper.waist_id,0.05);
			
			var consequence:Consequence = new Consequence();
				var tf:Tick_Effect = new Tick_Effect();
				tf.set_end_tick(Main.t1_week);
				var challenge:Challenge = new Challenge();
				challenge.set_attack_stat(-1,20);
				challenge.set_defense_stat(-1,0);
				challenge.set_variability(40);
				var c2:Consequence = new Consequence();
				c2.amt_by_roll_flag(["r", "/", 100.0]);
				c2.add_consequence(-FPalace_helper.waist_id,Consequence.amt_from_roll_const, "", 0);
				
				for(var i:int = 0;i<Main.t1_week;i+=Main.t1_hour)tf.set_tick_consequence(i,c2,challenge);
				tf.set_end_consequence(c2);
				
				consequence.add_consequence(FPalace_helper.str_id,0, "",0,0,0,-1, false, tf);	
				
			item.add_consequence(consequence);    
			item.set_value(20);   
			return item;
		}
		
		public static function Fem_eyeColour():Item{
			//selling NPC: witches_potionmaking_student
			var item:Item = new Item("Moon pool Allure");     
			item.set_dropped_description("a colorful box of pills sits here");     
			item.set_inventory_description("This box of tablets comes illustrated with forest pools in pale moonlight. There is an annoying lack of information on the box for its intended function however");     
			item.set_use_description("</n> sucks on the fruit flavored chalky tablet.");     
			item.set_image_id(FPalace_helper.unknown_img);
			item.set_identify_difficulty(10);     
			item.set_number_of_uses(2);
			item.add_effect(FPalace_helper.eye_colour_id,0.2);
			
			var consequence:Consequence = new Consequence();
				var tf:Tick_Effect = new Tick_Effect();
				tf.set_end_tick(Main.t1_week);
				var challenge:Challenge = new Challenge();
				challenge.set_attack_stat(-1,10);
				challenge.set_defense_stat(-1,0);
				challenge.set_variability(20);
				var c2:Consequence = new Consequence();
				c2.amt_by_roll_flag(["r", "/", 10.0]);
				c2.add_consequence(-FPalace_helper.eye_colour_id,Consequence.amt_from_roll_const, "", 0);
				
				for(var i:int = 0;i<Main.t1_week;i+=Main.t1_hour)tf.set_tick_consequence(i,c2,challenge);
				tf.set_end_consequence(c2);
				
				consequence.add_consequence(FPalace_helper.str_id,0, "",0,0,0,-1, false, tf);	
				
			item.add_consequence(consequence);    
			item.set_value(20);   
			return item;
		}
		
		public static function Medic_AnalWidth():Item{
			//selling NPC: witches_potionmaking_student
			var item:Item = new Item("Ampulli Extracator");     
			item.set_dropped_description("a shiny tab of pills sits here");     
			item.set_inventory_description("This is a shiny tab of tablets. Its name is printed numerous times on the foil, the only clue to its actual function");    
			item.set_use_description("</n> carefully removes the pill from its packaging and swallows it.");     
			item.set_image_id(FPalace_helper.unknown_img);     
			item.set_identify_difficulty(12);     
			item.add_effect(FPalace_helper.anal_width_id,0.01);
			
			var consequence:Consequence = new Consequence();
				var tf:Tick_Effect = new Tick_Effect();
				tf.set_end_tick(Main.t1_week);
				var challenge:Challenge = new Challenge();
				challenge.set_attack_stat(-1,10);
				challenge.set_defense_stat(-1,0);
				challenge.set_variability(10);
				var c2:Consequence = new Consequence();
				c2.amt_by_roll_flag(["r", "/", 100.0]);
				c2.add_consequence(-FPalace_helper.anal_width_id,Consequence.amt_from_roll_const, "", 0);
				
				for(var i:int = 0;i<Main.t1_week;i+=Main.t1_hour)tf.set_tick_consequence(i,c2,challenge);
				tf.set_end_consequence(c2);
				
				consequence.add_consequence(FPalace_helper.str_id,0, "",0,0,0,-1, false, tf);	
				
			item.add_consequence(consequence);      
			item.set_value(10);     
			return item; 
		}
		
		public static function Medic_VagWidth():Item{
			//selling NPC: witches_potionmaking_student
			var item:Item = new Item("Vulva Expatiation supplement");     
			item.set_dropped_description("a shiny tab of pills sits here");     
			item.set_inventory_description("This is a shiny tab of tablets. Its name is printed numerous times on the foil, the only clue to its actual function");    
			item.set_use_description("</n> carefully removes the pill from its packaging and swallows it.");     
			item.set_image_id(FPalace_helper.unknown_img);     
			item.set_identify_difficulty(12);     
			item.add_effect(FPalace_helper.vaginal_width_id,0.01);
			
			var consequence:Consequence = new Consequence();
				var tf:Tick_Effect = new Tick_Effect();
				tf.set_end_tick(Main.t1_week);
				var challenge:Challenge = new Challenge();
				challenge.set_attack_stat(-1,10);
				challenge.set_defense_stat(-1,0);
				challenge.set_variability(10);
				var c2:Consequence = new Consequence();
				c2.amt_by_roll_flag(["r", "/", 100.0]);
				c2.add_consequence(-FPalace_helper.vaginal_width_id,Consequence.amt_from_roll_const, "", 0);
				
				for(var i:int = 0;i<Main.t1_week;i+=Main.t1_hour)tf.set_tick_consequence(i,c2,challenge);
				tf.set_end_consequence(c2);
				
				consequence.add_consequence(FPalace_helper.str_id,0, "",0,0,0,-1, false, tf);	
				
			item.add_consequence(consequence);      
			item.set_value(10);     
			return item; 
		}
		
		public static function Medic_SemenFertility():Item{
			//selling NPC: nunnery_drug_dealer
			var item:Item = new Item("Andric procreant");     
			item.set_dropped_description("a shiny tab of pills sits here");     
			item.set_inventory_description("This is a shiny tab of tablets. Its name is printed numerous times on the foil, the only clue to its actual function");    
			item.set_use_description("</n> carefully removes the pill from its packaging and swallows it.");     
			item.set_image_id(FPalace_helper.unknown_img);     
			item.set_identify_difficulty(12);     
			item.add_effect(FPalace_helper.semen_fertility_id,0.001);
			
			var consequence:Consequence = new Consequence();
				var tf:Tick_Effect = new Tick_Effect();
				tf.set_end_tick(Main.t1_week);
				var challenge:Challenge = new Challenge();
				challenge.set_attack_stat(-1,10);
				challenge.set_defense_stat(-1,0);
				challenge.set_variability(10);
				var c2:Consequence = new Consequence();
				c2.amt_by_roll_flag(["r", "/", 1000.0]);
				c2.add_consequence(-FPalace_helper.semen_fertility_id,Consequence.amt_from_roll_const, "", 0);
				
				for(var i:int = 0;i<Main.t1_week;i+=Main.t1_hour)tf.set_tick_consequence(i,c2,challenge);
				tf.set_end_consequence(c2);
				
				consequence.add_consequence(FPalace_helper.str_id,0, "",0,0,0,-1, false, tf);
				
			item.add_consequence(consequence);      
			item.set_value(10);     
			return item; 
		}
		
		public static function Medic_WombFertility():Item{
			//selling NPC: nunnery_drug_dealer
			var item:Item = new Item("Muliebral procreant");     
			item.set_dropped_description("a shiny tab of pills sits here");     
			item.set_inventory_description("This is a shiny tab of tablets. Its name is printed numerous times on the foil, the only clue to its actual function");    
			item.set_use_description("</n> carefully removes the pill from its packaging and swallows it.");     
			item.set_image_id(FPalace_helper.unknown_img);     
			item.set_identify_difficulty(12);     
			item.add_effect(FPalace_helper.egg_fertility_id,0.001);
			
			var consequence:Consequence = new Consequence();
				var tf:Tick_Effect = new Tick_Effect();
				tf.set_end_tick(Main.t1_week);
				var challenge:Challenge = new Challenge();
				challenge.set_attack_stat(-1,10);
				challenge.set_defense_stat(-1,0);
				challenge.set_variability(10);
				var c2:Consequence = new Consequence();
				c2.amt_by_roll_flag(["r", "/", 10000.0]);
				c2.add_consequence(-FPalace_helper.egg_fertility_id,Consequence.amt_from_roll_const, "", 0);
				
				for(var i:int = 0;i<Main.t1_week;i+=Main.t1_hour)tf.set_tick_consequence(i,c2,challenge);
				tf.set_end_consequence(c2);
				
				consequence.add_consequence(FPalace_helper.str_id,0, "",0,0,0,-1, false, tf);
				
			item.add_consequence(consequence);      
			item.set_value(10);     
			return item; 
		}		
		
		public static function Medic_MilkProd():Item{
			//selling NPC: nunnery_drug_dealer
			var item:Item = new Item("Mammary Exocrine Agglomerates");     
			item.set_dropped_description("a shiny tab of pills sits here");     
			item.set_inventory_description("This is a shiny tab of tablets. Its name is printed numerous times on the foil, the only clue to its actual function");    
			item.set_use_description("</n> carefully removes the pill from its packaging and swallows it.");     
			item.set_image_id(FPalace_helper.unknown_img);     
			item.set_identify_difficulty(12);     
			item.add_effect(FPalace_helper.milk_volume_id,1);
			
			var consequence:Consequence = new Consequence();
				var tf:Tick_Effect = new Tick_Effect();
				tf.set_end_tick(Main.t1_week);
				var challenge:Challenge = new Challenge();
				challenge.set_attack_stat(-1,5);
				challenge.set_defense_stat(-1,0);
				challenge.set_variability(20);
				var c2:Consequence = new Consequence();
				c2.amt_by_roll_flag();
				c2.add_consequence(-FPalace_helper.milk_volume_id,Consequence.amt_from_roll_const, "", 0);
				
				for(var i:int = 0;i<Main.t1_week;i+=Main.t1_hour)tf.set_tick_consequence(i,c2,challenge);
				tf.set_end_consequence(c2);
				
				consequence.add_consequence(FPalace_helper.str_id,0, "",0,0,0,-1, false, tf);
				
			item.add_consequence(consequence);      
			item.set_value(10);     
			return item; 
		}
		
		public static function bottled_abortion():Item{
			//selling NPC: cclass_merchant
			var abortion_potion:Item = new Item("AIAB");
			abortion_potion.set_dropped_description("a bottle sits lazily on the ground here");
			abortion_potion.set_inventory_description("This bottle has a small label with large red heart that seems to be bleeding.");
			abortion_potion.set_use_description("</n> drinks the potion. ");
			abortion_potion.set_image_id(FPalace_helper.unknown_img);
			abortion_potion.set_identify_difficulty(1);
			abortion_potion.add_effect(FPalace_helper.curr_hp_id,-2);
			
			var a:Action = new Action();
			a.set_dialogue("",0);
			var challenge:Challenge = new Challenge();
			challenge.set_attack_status_id(Tick_Effect.pregnant_status);
			challenge.set_defense_stat(-1,1);
			challenge.set_variability(0);
			challenge.set_text("");
			
			var consequence:Consequence = new Consequence();
				consequence.add_remove_status(Tick_Effect.pregnant_status);
				consequence.add_consequence(FPalace_helper.curr_hp_id,0, "</n> bleeds from </noun> groin. ",0,0,0,1);
				consequence.add_consequence(FPalace_helper.curr_hp_id,0, "",-1);
			
			a.add_challenge(challenge, consequence);
			
			challenge = new Challenge();
			challenge.set_attack_stat(FPalace_helper.bloat_id);
			challenge.set_defense_stat(-1,0);
			challenge.set_variability(0);
			challenge.set_text("");
			
			consequence = new Consequence();
				consequence.amt_by_roll_flag();
				consequence.add_consequence(FPalace_helper.bloat_id,Consequence.amt_from_roll_const, "",0);
				consequence.add_consequence(FPalace_helper.bloat_id,0, "",-1);
			
			a.add_challenge(challenge, consequence);
			
			abortion_potion.add_action(a);
			
			abortion_potion.set_value(20);
			return abortion_potion;
		}
		
		public static function pregnaid():Item{
			//selling NPC: Lilly
			var pregnant_potion:Item = new Item("Pregnaid");
			pregnant_potion.set_dropped_description("a bottle sits lazily on the ground here");
			pregnant_potion.set_inventory_description("This bottle has a small label showing a large red heart with a white heart inside of it.");
			pregnant_potion.set_use_description("</n> drinks the potion. ");
			pregnant_potion.set_image_id(FPalace_helper.unknown_img);
			pregnant_potion.set_identify_difficulty(1);
			
			var consequence:Consequence = new Consequence();
				consequence.add_remove_status(Tick_Effect.pregnant_status,Main.t1_month*3);
				consequence.add_consequence(FPalace_helper.curr_hp_id,0, "",0);
			
			pregnant_potion.add_consequence(consequence);
			
			pregnant_potion.set_value(30);
			return pregnant_potion;
		}
		
		public static function Senip_Sangria():Item{
			//selling NPC: FPalace_bartender
			var sangria:Item = new Item("Senip Sangria");
			sangria.set_dropped_description("a filled glass sits on the ground");
			sangria.set_inventory_description("The liquid in this conical, long-stemmed glass smells strongly of fruit and wine.");
			sangria.set_use_description("</n> drinks the sangria and starts to look a little woozy.");
			sangria.set_image_id(FPalace_helper.unknown_img);
			sangria.set_identify_difficulty(1);
			sangria.add_effect(FPalace_helper.curr_mp_id,-2);
			
			var consequence:Consequence = new Consequence();
				var tf:Tick_Effect = new Tick_Effect();
				tf.set_end_tick(Main.t1_hour);
				tf.set_status_id(Tick_Effect.drunk_status);
				var c2:Consequence = new Consequence();
				c2.add_consequence(FPalace_helper.str_id,-1, "</n> sobers up. ", 0);
				c2.add_consequence(FPalace_helper.dex_id,1, "",0);
				c2.add_consequence(FPalace_helper.will_id,-1, "",0);
				c2.add_consequence(FPalace_helper.int_id,1, "",0);
				c2.add_consequence(FPalace_helper.wis_id,1, "",0);
				c2.add_consequence(FPalace_helper.cha_id,-1, "",0);
				tf.set_end_consequence(c2);
				
				consequence.add_consequence(FPalace_helper.str_id,1, "</n> is a bit drunk. ",0,0,0,-1, false, tf);
				consequence.add_consequence(FPalace_helper.dex_id,-1, "",0);
				consequence.add_consequence(FPalace_helper.will_id,1, "",0);
				consequence.add_consequence(FPalace_helper.int_id,-1, "",0);
				consequence.add_consequence(FPalace_helper.wis_id,-1, "",0);
				consequence.add_consequence(FPalace_helper.cha_id,1, "",0);
				consequence.add_consequence(FPalace_helper.curr_hp_id,0, "",0);
				consequence.add_change_effect(FPalace_helper.new_penis(null));
			
			sangria.add_consequence(consequence);
			
			sangria.set_value(2);
			return sangria;
		}
		
		public static function Streabs_Sherry():Item{
			//selling NPC: FPalace_bartender
			var sherry:Item = new Item("Streabs Sherry");
			sherry.set_dropped_description("a filled glass sits on the ground");
			sherry.set_inventory_description("The liquid in this conical glass smells strongly of grapes and booze.");
			sherry.set_use_description("</n> drinks the sherry and starts to look a little woozy.");
			sherry.set_image_id(FPalace_helper.unknown_img);
			sherry.set_identify_difficulty(1);
			sherry.add_effect(FPalace_helper.curr_mp_id,-2);
			
			var consequence:Consequence = new Consequence();
			var tf:Tick_Effect = new Tick_Effect();
				tf.set_end_tick(Main.t1_hour);
				tf.set_status_id(Tick_Effect.drunk_status);
				var c2:Consequence = new Consequence();
				c2.add_consequence(FPalace_helper.str_id,-1, "</n> sobers up. ", 0);
				c2.add_consequence(FPalace_helper.dex_id,1, "",0);
				c2.add_consequence(FPalace_helper.will_id,-1, "",0);
				c2.add_consequence(FPalace_helper.int_id,1, "",0);
				c2.add_consequence(FPalace_helper.wis_id,1, "",0);
				c2.add_consequence(FPalace_helper.cha_id,-1, "",0);
				tf.set_end_consequence(c2);
				
				consequence.add_consequence(FPalace_helper.str_id,1, "</n> is a bit drunk. ",0,0,0,-1, false, tf);
				consequence.add_consequence(FPalace_helper.dex_id,-1, "",0);
				consequence.add_consequence(FPalace_helper.will_id,1, "",0);
				consequence.add_consequence(FPalace_helper.int_id,-1, "",0);
				consequence.add_consequence(FPalace_helper.wis_id,-1, "",0);
				consequence.add_consequence(FPalace_helper.cha_id,1, "",0);
				consequence.add_consequence(FPalace_helper.curr_hp_id,0, "",0);
				consequence.add_change_effect(FPalace_helper.new_breasts(null));
			
			sherry.add_consequence(consequence);
			
			sherry.set_value(5);
			return sherry;
		}
		
		public static function Gavin_Ale():Item{
			//selling NPC: FPalace_bartender
			var ale:Item = new Item("Gavin ale");
			ale.set_dropped_description("a filled glass sits on the ground");
			ale.set_inventory_description("The liquid in this large pint glass smells strongly of grain and hops.");
			ale.set_use_description("</n> drinks the ale and starts to look a little woozy.");
			ale.set_image_id(FPalace_helper.unknown_img);
			ale.set_identify_difficulty(1);
			ale.add_effect(FPalace_helper.curr_mp_id,-2);
			
			var consequence:Consequence = new Consequence();
			var tf:Tick_Effect = new Tick_Effect();
				tf.set_end_tick(Main.t1_hour);
				tf.set_status_id(Tick_Effect.drunk_status);
				var c2:Consequence = new Consequence();
				c2.add_consequence(FPalace_helper.str_id,-1, "</n> sobers up. ", 0);
				c2.add_consequence(FPalace_helper.dex_id,1, "",0);
				c2.add_consequence(FPalace_helper.will_id,-1, "",0);
				c2.add_consequence(FPalace_helper.int_id,1, "",0);
				c2.add_consequence(FPalace_helper.wis_id,1, "",0);
				c2.add_consequence(FPalace_helper.cha_id,-1, "",0);
				tf.set_end_consequence(c2);
				
				consequence.add_consequence(FPalace_helper.str_id,1, "</n> is a bit drunk. ",0,0,0,-1, false, tf);
				consequence.add_consequence(FPalace_helper.dex_id,-1, "",0);
				consequence.add_consequence(FPalace_helper.will_id,1, "",0);
				consequence.add_consequence(FPalace_helper.int_id,-1, "",0);
				consequence.add_consequence(FPalace_helper.wis_id,-1, "",0);
				consequence.add_consequence(FPalace_helper.cha_id,1, "",0);
				consequence.add_consequence(FPalace_helper.curr_hp_id,0, "",0);
				consequence.add_change_effect(FPalace_helper.new_vagina(null));
				consequence.add_change_effect(FPalace_helper.new_clit(null));
			
			ale.add_consequence(consequence);
			
			ale.set_value(1);
			return ale;
		}
		
		public static function Allbs_Homebrew():Item{
			//selling NPC: FPalace_bartender
			var homebrew:Item = new Item("Allbs homebrew Alcohol");
			homebrew.set_dropped_description("a filled shot glass sits on the ground");
			homebrew.set_inventory_description("The liquid in this small shot glass smells strongly of... peaches?");
			homebrew.set_use_description("</n> drinks the shot and starts to look a little woozy.");
			homebrew.set_image_id(FPalace_helper.unknown_img);
			homebrew.set_identify_difficulty(1);
			homebrew.add_effect(FPalace_helper.curr_mp_id,-2);
			
			var consequence:Consequence = new Consequence();
			var tf:Tick_Effect = new Tick_Effect();
				tf.set_end_tick(Main.t1_hour);
				tf.set_status_id(Tick_Effect.drunk_status);
				var c2:Consequence = new Consequence();
				c2.add_consequence(FPalace_helper.str_id,-1, "</n> sobers up. ", 0);
				c2.add_consequence(FPalace_helper.dex_id,1, "",0);
				c2.add_consequence(FPalace_helper.will_id,-1, "",0);
				c2.add_consequence(FPalace_helper.int_id,1, "",0);
				c2.add_consequence(FPalace_helper.wis_id,1, "",0);
				c2.add_consequence(FPalace_helper.cha_id,-1, "",0);
				tf.set_end_consequence(c2);
				
				consequence.add_consequence(FPalace_helper.str_id,1, "</n> is a bit drunk. ",0,0,0,-1, false, tf);
				consequence.add_consequence(FPalace_helper.dex_id,-1, "",0);
				consequence.add_consequence(FPalace_helper.will_id,1, "",0);
				consequence.add_consequence(FPalace_helper.int_id,-1, "",0);
				consequence.add_consequence(FPalace_helper.wis_id,-1, "",0);
				consequence.add_consequence(FPalace_helper.cha_id,1, "",0);
				consequence.add_consequence(FPalace_helper.curr_hp_id,0, "",0);
				consequence.add_change_effect(FPalace_helper.new_balls(null));
			
			homebrew.add_consequence(consequence);
			
			homebrew.set_value(1);
			return homebrew;
		}
		
		public static function Prothg_wine():Item{
			//selling NPC: FPalace_bartender
			var wine:Item = new Item("Prothgs finest wine");
			wine.set_dropped_description("a filled wine glass sits on the ground");
			wine.set_inventory_description("The liquid in this wine glass has a musky scent that leaves you wondering what kind of grape grows in the mountains.");
			wine.set_use_description("</n> drinks the wine and starts to look a little woozy.");
			wine.set_image_id(FPalace_helper.unknown_img);
			wine.set_identify_difficulty(1);
			wine.add_effect(FPalace_helper.curr_mp_id,-2);
			
			var consequence:Consequence = new Consequence();
			var tf:Tick_Effect = new Tick_Effect();
				tf.set_end_tick(Main.t1_hour);
				tf.set_status_id(Tick_Effect.drunk_status);
				var c2:Consequence = new Consequence();
				c2.add_consequence(FPalace_helper.str_id,-1, "</n> sobers up. ", 0);
				c2.add_consequence(FPalace_helper.dex_id,1, "",0);
				c2.add_consequence(FPalace_helper.will_id,-1, "",0);
				c2.add_consequence(FPalace_helper.int_id,1, "",0);
				c2.add_consequence(FPalace_helper.wis_id,1, "",0);
				c2.add_consequence(FPalace_helper.cha_id,-1, "",0);
				tf.set_end_consequence(c2);
				
				consequence.add_consequence(FPalace_helper.str_id,1, "</n> is a bit drunk. ",0,0,0,-1, false, tf);
				consequence.add_consequence(FPalace_helper.dex_id,-1, "",0);
				consequence.add_consequence(FPalace_helper.will_id,1, "",0);
				consequence.add_consequence(FPalace_helper.int_id,-1, "",0);
				consequence.add_consequence(FPalace_helper.wis_id,-1, "",0);
				consequence.add_consequence(FPalace_helper.cha_id,1, "",0);
				
			wine.add_consequence(consequence);
			
			var a:Action = new Action();
			a.set_dialogue("",0);
			var chall:Challenge = new Challenge();
			chall.set_attack_stat(FPalace_helper.penis_length_id);
			chall.set_defense_stat(-1, 14);
			chall.set_variability(0);
			c2 = new Consequence();
			c2.amt_by_roll_flag();
			c2.set_max_damage(2);
			c2.add_consequence(FPalace_helper.penis_length_id,Consequence.amt_from_roll_const, "", 0,0,0,1);
			c2.add_consequence(-FPalace_helper.penis_length_id,Consequence.amt_from_roll_const, "", -1,0,0,1);
			
			a.add_challenge(chall, c2);
			
			chall = new Challenge();
			chall.set_attack_stat(FPalace_helper.penis_girth_id);
			chall.set_defense_stat(-1, 10);
			chall.set_variability(0);
			c2 = new Consequence();
			c2.amt_by_roll_flag();
			c2.set_max_damage(1);
			c2.add_consequence(FPalace_helper.penis_girth_id,Consequence.amt_from_roll_const, "", 0);
			c2.add_consequence(-FPalace_helper.penis_girth_id,Consequence.amt_from_roll_const, "", -1);
		
			a.add_challenge(chall, c2);
			
			wine.add_action(a);
			
			wine.set_value(20);
			return wine;
		}
		
		public static function Wests_Bourban():Item{
			//selling NPC: FPalace_bartender
			var bourban:Item = new Item("Wests Bourban");
			bourban.set_dropped_description("a filled glass sits on the ground");
			bourban.set_inventory_description("The liquid in this glass is murky yet light, and the smell leaves you thinking of fresh cut grass and cattle.");
			bourban.set_use_description("</n> drinks the bourban and starts to look a little woozy.");
			bourban.set_image_id(FPalace_helper.unknown_img);
			bourban.set_identify_difficulty(1);
			bourban.add_effect(FPalace_helper.curr_mp_id,-2);
			
			var consequence:Consequence = new Consequence();
			var tf:Tick_Effect = new Tick_Effect();
				tf.set_end_tick(Main.t1_hour);
				tf.set_status_id(Tick_Effect.drunk_status);
				var c2:Consequence = new Consequence();
				c2.add_consequence(FPalace_helper.str_id,-1, "</n> sobers up. ", 0);
				c2.add_consequence(FPalace_helper.dex_id,1, "",0);
				c2.add_consequence(FPalace_helper.will_id,-1, "",0);
				c2.add_consequence(FPalace_helper.int_id,1, "",0);
				c2.add_consequence(FPalace_helper.wis_id,1, "",0);
				c2.add_consequence(FPalace_helper.cha_id,-1, "",0);
				tf.set_end_consequence(c2);
				
				consequence.add_consequence(FPalace_helper.str_id,1, "</n> is a bit drunk. ",0,0,0,-1, false, tf);
				consequence.add_consequence(FPalace_helper.dex_id,-1, "",0);
				consequence.add_consequence(FPalace_helper.will_id,1, "",0);
				consequence.add_consequence(FPalace_helper.int_id,-1, "",0);
				consequence.add_consequence(FPalace_helper.wis_id,-1, "",0);
				consequence.add_consequence(FPalace_helper.cha_id,1, "",0);
			
			bourban.add_consequence(consequence);
			
			var a:Action = new Action();
			a.set_dialogue("",0);
			var chall:Challenge = new Challenge();
			chall.set_attack_stat(FPalace_helper.breast_size_id);
			chall.set_defense_stat(-1, 7);
			chall.set_variability(0);
			c2 = new Consequence();
			c2.amt_by_roll_flag();
			c2.set_max_damage(1);
			c2.add_consequence(FPalace_helper.breast_size_id,Consequence.amt_from_roll_const, "", 0,0,0,1);
			c2.add_consequence(-FPalace_helper.breast_size_id,Consequence.amt_from_roll_const, "", -1,0,0,1);
			
			a.add_challenge(chall, c2);
			
			chall = new Challenge();
			chall.set_attack_stat(FPalace_helper.milk_volume_id);
			chall.set_defense_stat(-1, 500);
			chall.set_variability(0);
			c2 = new Consequence();
			c2.amt_by_roll_flag();
			c2.set_max_damage(10);
			c2.add_consequence(FPalace_helper.milk_volume_id,Consequence.amt_from_roll_const, "", 0);
			c2.add_consequence(-FPalace_helper.milk_volume_id,Consequence.amt_from_roll_const, "", -1);
		
			a.add_challenge(chall, c2);
			
			bourban.add_action(a);
			
			bourban.set_value(10);
			return bourban;
		}
		
		public static function Grulv_Vodka():Item{
			//selling NPC: FPalace_bartender
			var vodka:Item = new Item("Grulv Vodka");
			vodka.set_dropped_description("a filled glass sits on the ground");
			vodka.set_inventory_description("The liquid in this glass is as clear as the glass, and the smell already has your stomach ready to heave.");
			vodka.set_use_description("</n> drinks the vodka and starts to look woozy.");
			vodka.set_image_id(FPalace_helper.unknown_img);
			vodka.set_identify_difficulty(1);
			vodka.add_effect(FPalace_helper.curr_mp_id,-10);
			
			var consequence:Consequence = new Consequence();
			var tf:Tick_Effect = new Tick_Effect();
				tf.set_end_tick(Main.t1_hour);
				tf.set_status_id(Tick_Effect.drunk_status);
				var c2:Consequence = new Consequence();
				c2.add_consequence(FPalace_helper.str_id,-1, "</n> sobers up. ", 0);
				c2.add_consequence(FPalace_helper.dex_id,1, "",0);
				c2.add_consequence(FPalace_helper.will_id,-1, "",0);
				c2.add_consequence(FPalace_helper.int_id,1, "",0);
				c2.add_consequence(FPalace_helper.wis_id,1, "",0);
				c2.add_consequence(FPalace_helper.cha_id,-1, "",0);
				tf.set_end_consequence(c2);
				
				consequence.add_consequence(FPalace_helper.str_id,1, "</n> is a bit drunk. ",0,0,0,-1, false, tf);
				consequence.add_consequence(FPalace_helper.dex_id,-1, "",0);
				consequence.add_consequence(FPalace_helper.will_id,1, "",0);
				consequence.add_consequence(FPalace_helper.int_id,-1, "",0);
				consequence.add_consequence(FPalace_helper.wis_id,-1, "",0);
				consequence.add_consequence(FPalace_helper.cha_id,1, "",0);
							
			vodka.add_consequence(consequence);
			
			var a:Action = new Action();
			a.set_dialogue("",0);
			var chall:Challenge = new Challenge();
			chall.set_attack_stat(FPalace_helper.vaginal_depth_id);
			chall.set_defense_stat(-1, 7);
			chall.set_variability(0);
			c2 = new Consequence();
			c2.amt_by_roll_flag();
			c2.set_max_damage(1);
			c2.add_consequence(FPalace_helper.vaginal_depth_id,Consequence.amt_from_roll_const, "", 0,0,0,1);
			c2.add_consequence(-FPalace_helper.vaginal_depth_id,Consequence.amt_from_roll_const, "", -1,0,0,1);
			
			a.add_challenge(chall, c2);
			
			chall = new Challenge();
			chall.set_attack_stat(FPalace_helper.vaginal_width_id);
			chall.set_defense_stat(-1, 5);
			chall.set_variability(0);
			c2 = new Consequence();
			c2.amt_by_roll_flag();
			c2.set_max_damage(1);
			c2.add_consequence(FPalace_helper.vaginal_width_id,Consequence.amt_from_roll_const, "", 0);
			c2.add_consequence(-FPalace_helper.vaginal_width_id,Consequence.amt_from_roll_const, "", -1);
		
			a.add_challenge(chall, c2);
			
			vodka.add_action(a);
			
			vodka.set_value(30);
			return vodka;
		}
		
		public static function Palace_Private_Reserve():Item{
			//selling NPC: FPalace_bartender
			var ppp:Item = new Item("Palace Private Reserve");
			ppp.set_dropped_description("a filled glass sits on the ground");
			ppp.set_inventory_description("Despite having the familiar smell of red wine, the liquid in this glass has a strange whitish-blue hugh to it.");
			ppp.set_use_description("</n> drinks the wine and starts to look a little woozy.");
			ppp.set_image_id(FPalace_helper.unknown_img);
			ppp.set_identify_difficulty(1);
			ppp.add_effect(FPalace_helper.curr_mp_id,-2);
			
			var consequence:Consequence = new Consequence();
			var tf:Tick_Effect = new Tick_Effect();
				tf.set_end_tick(Main.t1_hour);
				tf.set_status_id(Tick_Effect.drunk_status);
				var c2:Consequence = new Consequence();
				c2.add_consequence(FPalace_helper.str_id,-1, "</n> sobers up. ", 0);
				c2.add_consequence(FPalace_helper.dex_id,1, "",0);
				c2.add_consequence(FPalace_helper.will_id,-1, "",0);
				c2.add_consequence(FPalace_helper.int_id,1, "",0);
				c2.add_consequence(FPalace_helper.wis_id,1, "",0);
				c2.add_consequence(FPalace_helper.cha_id,-1, "",0);
				tf.set_end_consequence(c2);
				
				consequence.add_consequence(FPalace_helper.str_id,1, "</n> is a bit drunk. ",0,0,0,-1, false, tf);
				consequence.add_consequence(FPalace_helper.dex_id,-1, "",0);
				consequence.add_consequence(FPalace_helper.will_id,1, "",0);
				consequence.add_consequence(FPalace_helper.int_id,-1, "",0);
				consequence.add_consequence(FPalace_helper.wis_id,-1, "",0);
				consequence.add_consequence(FPalace_helper.cha_id,1, "",0);
			
			ppp.add_consequence(consequence);
			
			var a:Action = new Action();
			a.set_dialogue("",0);
			var chall:Challenge = new Challenge();
			chall.set_attack_stat(FPalace_helper.balls_size_id);
			chall.set_defense_stat(-1, 7);
			chall.set_variability(0);
			c2 = new Consequence();
			c2.amt_by_roll_flag();
			c2.set_max_damage(1);
			c2.add_consequence(FPalace_helper.balls_size_id,Consequence.amt_from_roll_const, "", 0,0,0,1);
			c2.add_consequence(-FPalace_helper.balls_size_id,Consequence.amt_from_roll_const, "", -1,0,0,1);
			
			a.add_challenge(chall, c2);
			
			chall = new Challenge();
			chall.set_attack_stat(FPalace_helper.cum_volume_id);
			chall.set_defense_stat(-1, 500);
			chall.set_variability(0);
			c2 = new Consequence();
			c2.amt_by_roll_flag();
			c2.set_max_damage(10);
			c2.add_consequence(FPalace_helper.cum_volume_id,Consequence.amt_from_roll_const, "", 0);
			c2.add_consequence(-FPalace_helper.cum_volume_id,Consequence.amt_from_roll_const, "", -1);
		
			a.add_challenge(chall, c2);
			
			ppp.add_action(a);
			
			ppp.set_value(15);
			return ppp;
		}
		
		public static function Stallion_Stout():Alchemy_item{
			//selling NPC: equine_encampment_shopkeeper
			var stout:Alchemy_item = new Alchemy_item("Stallion Stout");
			stout.set_dropped_description("a filled glass sits on the ground");
			stout.set_inventory_description("The liquid in this large pint glass smells strongly of grain and hops.");
			stout.set_use_description("</n> drinks the ale and starts to look a little woozy.");
			stout.set_image_id(FPalace_helper.unknown_img);
			stout.set_identify_difficulty(1);
			stout.set_number_of_uses(2);
			
			stout.add_effect(FPalace_helper.curr_mp_id,-2);
			stout.add_effect(FPalace_helper.lust_id,15);
			stout.add_change_effect(FPalace_races.race_anthro_equine());
			
			stout.add_type(FPalace_helper.curr_mp_id);
			stout.add_type(FPalace_helper.lust_id);
			stout.add_type(FPalace_helper.str_id);
			stout.add_type(-FPalace_helper.dex_id);
			stout.add_type(FPalace_helper.penis_length_id);
			stout.add_type(-FPalace_helper.erection_ratio_id);
			stout.add_type(FPalace_helper.hair_length_id);
			
			var consequence:Consequence = new Consequence();
				var tf:Tick_Effect = new Tick_Effect();
				tf.set_end_tick(Main.t1_hour);
				tf.set_status_id(Tick_Effect.drunk_status);
				var c2:Consequence = new Consequence();
				c2.add_consequence(FPalace_helper.str_id,-1, "</n> sobers up. ", 0);
				c2.add_consequence(FPalace_helper.dex_id,1, "",0);
				c2.add_consequence(FPalace_helper.will_id,-1, "",0);
				c2.add_consequence(FPalace_helper.int_id,1, "",0);
				c2.add_consequence(FPalace_helper.wis_id,1, "",0);
				c2.add_consequence(FPalace_helper.cha_id,-1, "",0);
				tf.set_end_consequence(c2);
				
			consequence.add_consequence(FPalace_helper.str_id,1, "</n> is a bit drunk. ",0,0,0,-1, false, tf);
			consequence.add_consequence(FPalace_helper.dex_id,-1, "",0);
			consequence.add_consequence(FPalace_helper.will_id,1, "",0);
			consequence.add_consequence(FPalace_helper.int_id,-1, "",0);
			consequence.add_consequence(FPalace_helper.wis_id,-1, "",0);
			consequence.add_consequence(FPalace_helper.cha_id,1, "",0);
			
			stout.add_consequence(consequence);
			
			stout.set_value(15);
			return stout;
		}
		
		public static function sexsnake_egg():Alchemy_item{
			var ai:Alchemy_item = new Alchemy_item("Sexsnake Egg");
			ai.set_dropped_description("there is an egg on the ground");
			ai.set_inventory_description("This is a small egg, small blotches dotting the off white exterior. ");
			ai.set_use_description("</n> eats the egg. ");
			ai.set_image_id(FPalace_helper.unknown_img);
			
			ai.add_effect(FPalace_helper.curr_fatigue_id,1);
			ai.add_effect(FPalace_helper.biomass_consumed,50);
			
			ai.add_type(FPalace_helper.curr_fatigue_id);
			ai.add_type(FPalace_helper.biomass_consumed);
			ai.add_type(FPalace_helper.penis_length_id);
			ai.add_type(-FPalace_helper.curr_hp_id);
			ai.add_type(FPalace_helper.breast_size_id);
						
			ai.set_identify_difficulty(10);
			ai.set_value(3);
			return ai;
		}
		
		public static function scorpion_egg():Alchemy_item{
			var ai:Alchemy_item = new Alchemy_item("Scorpion Egg");
			ai.set_dropped_description("there is an egg on the ground");
			ai.set_inventory_description("This is a small egg, rough and sandy on the outside. ");
			ai.set_use_description("</n> eats the egg. ");
			ai.set_image_id(FPalace_helper.unknown_img);
			
			ai.add_effect(FPalace_helper.curr_fatigue_id,1);
			ai.add_effect(FPalace_helper.biomass_consumed,50);
			
			ai.add_type(FPalace_helper.curr_fatigue_id);
			ai.add_type(-FPalace_helper.biomass_consumed);
			ai.add_type(-FPalace_helper.bloat_id);
			ai.add_type(FPalace_helper.age_id);
						
			ai.set_identify_difficulty(10);
			ai.set_value(3);
			return ai;
		}
		
		public static function actino_egg():Alchemy_item{
			var ai:Alchemy_item = new Alchemy_item("Actino Egg");
			ai.set_dropped_description("there is an egg on the ground");
			ai.set_inventory_description("This is a small egg, covered in a strange slime. ");
			ai.set_use_description("</n> eats the egg. ");
			ai.set_image_id(FPalace_helper.unknown_img);
			
			ai.add_effect(FPalace_helper.curr_fatigue_id,1);
			ai.add_effect(FPalace_helper.biomass_consumed,50);
			
			ai.add_type(FPalace_helper.curr_fatigue_id);
			ai.add_type(FPalace_helper.biomass_consumed);
			ai.add_type(FPalace_helper.max_hp_id);
			ai.add_type(-FPalace_helper.anal_width_id);
			ai.add_type(-FPalace_helper.bust_id);
						
			ai.set_identify_difficulty(10);
			ai.set_value(10);
			return ai;
		}
		
		public static function arachnid_egg():Alchemy_item{
			var ai:Alchemy_item = new Alchemy_item("Arachnid Egg");
			ai.set_dropped_description("there is an egg on the ground");
			ai.set_inventory_description("This is a large egg, trails of spiders silk still running from it. ");
			ai.set_use_description("</n> eats the egg. ");
			ai.set_image_id(FPalace_helper.unknown_img);
			
			ai.add_effect(FPalace_helper.curr_fatigue_id,2);
			ai.add_effect(FPalace_helper.biomass_consumed,250);
			
			ai.add_type(FPalace_helper.curr_fatigue_id);
			ai.add_type(FPalace_helper.biomass_consumed);
			ai.add_type(FPalace_helper.egg_fertility_id);
			ai.add_type(-FPalace_helper.waist_id);
			ai.add_type(FPalace_helper.max_fatigue_id);
						
			ai.set_number_of_uses(2);
			ai.set_identify_difficulty(50);
			ai.set_value(10);
			return ai;
		}
		
		public static function caudata_egg():Alchemy_item{
			var ai:Alchemy_item = new Alchemy_item("Caudata Egg");
			ai.set_dropped_description("there is an egg on the ground");
			ai.set_inventory_description("This is a large egg covered in green scales. ");
			ai.set_use_description("</n> eats the egg. ");
			ai.set_image_id(FPalace_helper.unknown_img);
			
			ai.add_effect(FPalace_helper.curr_fatigue_id,2);
			ai.add_effect(FPalace_helper.biomass_consumed,250);
			
			ai.add_type(FPalace_helper.biomass_consumed);
			ai.add_type(FPalace_helper.curr_fatigue_id);
			ai.add_type(FPalace_helper.max_weight_id);
			ai.add_type(-FPalace_helper.milk_volume_id);
			ai.add_type(FPalace_helper.semen_fertility_id);
			
			ai.set_number_of_uses(2);
			ai.set_identify_difficulty(50);
			ai.set_value(10);
			return ai;
		}
		
		public static function futa_cola():Alchemy_item{
			//selling NPC: area_futa_high vending machine
			var ai:Alchemy_item = new Alchemy_item("Futa Cola");
			ai.set_dropped_description("there is a can on the ground");
			ai.set_inventory_description("This soda can is colourfully labelled \"Futa Cola\". ");
			ai.set_use_description("</n> drinks some cola. ");
			ai.set_image_id(FPalace_helper.futa_cola_1_img);
			ai.set_number_of_uses(2);
			ai.set_identify_difficulty(50);
			
			ai.add_effect(FPalace_helper.curr_fatigue_id,2);
			ai.add_effect(FPalace_helper.curr_mp_id,-2);
			ai.add_effect(FPalace_helper.curr_hp_id,-2);
			ai.add_effect(FPalace_helper.lust_id,50);
						
			ai.add_type(FPalace_helper.curr_fatigue_id);
			ai.add_type(FPalace_helper.curr_mp_id);
			ai.add_type(FPalace_helper.curr_hp_id);
			ai.add_type(FPalace_helper.lust_id);
			ai.add_type(FPalace_helper.height_id);
			ai.add_type(FPalace_helper.bust_id);
			ai.add_type(FPalace_helper.waist_id);
			ai.add_type(FPalace_helper.hips_id);
			ai.add_type(FPalace_helper.breast_size_id);
			ai.add_type(FPalace_helper.penis_length_id);
			ai.add_type(FPalace_helper.penis_girth_id);
			ai.add_type(FPalace_helper.balls_size_id);
			ai.add_type(FPalace_helper.cum_volume_id);
			
			var a:Action = new Action();
			a.set_dialogue("",0);
			
			var challenge:Challenge = new Challenge();
			challenge.set_attack_stat(FPalace_helper.vaginal_depth_id);
			challenge.set_defense_stat(-1,1);
			challenge.set_variability(0);
			
			var consequence:Consequence = new Consequence();
			consequence.add_consequence(0,0, "",0,0,0,1);//has vag
			consequence.add_consequence(0,0, "",-1);//no vag, nothing to do here
			
			a.add_challenge(challenge, consequence);
			
			challenge = new Challenge();
			challenge.set_attack_stat(FPalace_helper.penis_length_id);
			challenge.set_defense_stat(-1,1);
			challenge.set_variability(0);
			
			consequence = new Consequence();
			consequence.add_consequence(0,0, "",0,0,0,3);//already has a dick...
			consequence.add_consequence(0,0, "",-1,0,0,2);//no dick...
			
			a.add_challenge(challenge, consequence);
			
			challenge = new Challenge();
			challenge.set_attack_stat(-1,1);
			challenge.set_defense_stat(-1,0);
			challenge.set_variability(0);
			
			consequence = new Consequence();
			consequence.add_consequence(0,0, "",0,0,0,3);
			consequence.add_change_effect(FPalace_helper.new_penis(null));
			
			a.add_challenge(challenge, consequence);
			
			challenge = new Challenge();
			challenge.set_attack_stat(FPalace_helper.balls_size_id);
			challenge.set_defense_stat(-1,1);
			challenge.set_variability(0);
			
			consequence = new Consequence();
			consequence.add_consequence(0,0, "",0,0,0,5);//already has balls...
			consequence.add_consequence(0,0, "",-1,0,0,4);//no balls..
			
			a.add_challenge(challenge, consequence);
			
			challenge = new Challenge();
			challenge.set_attack_stat(-1,1);
			challenge.set_defense_stat(-1,0);
			challenge.set_variability(0);
			
			consequence = new Consequence();
			consequence.add_consequence(0,0, "",0,0,0,5);
			consequence.add_change_effect(FPalace_helper.new_balls(null));
			
			a.add_challenge(challenge, consequence);
			
			challenge = new Challenge();
			challenge.set_attack_stat(FPalace_helper.breast_size_id);
			challenge.set_defense_stat(-1,1);
			challenge.set_variability(0);
			
			consequence = new Consequence();
			consequence.add_consequence(0,0, "",0,0,0,7);//has breasts...
			consequence.add_consequence(0,0, "",-1,0,0,-1);//no breasts... nothing to do here
			
			a.add_challenge(challenge, consequence);
			
			challenge = new Challenge();
			challenge.set_attack_stat(-1,1);
			challenge.set_defense_stat(-1,0);
			challenge.set_variability(0);
			
			consequence = new Consequence();
			consequence.add_consequence(FPalace_helper.height_id,7, "",0);
			consequence.add_consequence(FPalace_helper.bust_id,1.6, "",0);
			consequence.add_consequence(FPalace_helper.waist_id,1.3, "",0);
			consequence.add_consequence(FPalace_helper.hips_id,2, "",0);
			consequence.add_consequence(FPalace_helper.breast_size_id,1.75, "",0);
			consequence.add_consequence(FPalace_helper.penis_length_id,4.5, "",0);
			consequence.add_consequence(FPalace_helper.penis_girth_id,1.5, "",0);
			consequence.add_consequence(FPalace_helper.balls_size_id,.5, "",0);
			consequence.add_consequence(FPalace_helper.str_id,1,"",0);
			
			a.add_challenge(challenge, consequence);
			
			challenge = new Challenge();
			challenge.set_hard_stat();//checking erect length, not current length...
			challenge.set_attack_stat(FPalace_helper.penis_length_id);
			challenge.set_defense_stat(-1,1);
			challenge.set_variability(0);
			
			consequence = new Consequence();
			consequence.add_consequence(0,0, "",0,0,0,6);
			consequence.add_consequence(0,0, "",32,0,0,8);
			consequence.add_consequence(0,0, "",-1,0,0,-1);
			
			a.add_challenge(challenge, consequence);
			
			challenge = new Challenge();
			challenge.set_attack_equip_slot_check(FPalace_helper.cock_slot,true);
			challenge.set_defense_stat(-1,2);
			challenge.set_variability(0);
			
			consequence = new Consequence();
			consequence.add_consequence(0,0, "",0,0,0,6);
			consequence.add_consequence(0,0, "",-1,0,0,9);//should be growing a second cock (same size as first one), and making dicks equine at a certain point...
			
			a.add_challenge(challenge, consequence);
			
			challenge = new Challenge();
			challenge.set_attack_stat(-1,1);
			challenge.set_defense_stat(-1,0);
			challenge.set_variability(0);
			
			consequence = new Consequence();
			var race:Race = FPalace_races.race_anthro_equine();
			consequence.add_consequence(0,0, "",0,0,0,-1);
			consequence.add_consequence(FPalace_helper.height_id,7, "",0);
			consequence.add_consequence(FPalace_helper.bust_id,1.6, "",0);
			consequence.add_consequence(FPalace_helper.waist_id,1.3, "",0);
			consequence.add_consequence(FPalace_helper.hips_id,2, "",0);
			consequence.add_consequence(FPalace_helper.breast_size_id,1.75, "",0);
			consequence.add_consequence(FPalace_helper.str_id,1,"",0);
			consequence.add_change_effect(race,FPalace_helper.cock_slot);
			consequence.add_change_effect(race,FPalace_helper.balls_slot);
			consequence.add_change_effect(FPalace_helper.new_penis(race,16,5.5),FPalace_helper.cock_slot);//this should *duplicate* the existing dick...
			
			a.add_challenge(challenge, consequence);
			
			ai.add_action(a);
			ai.set_value(50);
			return ai;
		}
		
		public static function lactaid():Alchemy_item{
			//selling NPC: freedom_farms_lilly, century_city_medical_supplies_clerk
			var ai:Alchemy_item = new Alchemy_item("Lactaid");
			ai.set_dropped_description("there is a plastic jar on the ground");
			ai.set_inventory_description("This jar is filled with pills.");
			ai.set_use_description("</n> swollows a few pills.");
			ai.set_image_id(FPalace_helper.unknown_img);
			ai.set_identify_difficulty(10);
			ai.add_effect(FPalace_helper.lust_id, -10);
			
			ai.add_type(-FPalace_helper.lust_id);
			ai.add_type(FPalace_helper.milk_volume_id);
			ai.add_type(-FPalace_helper.cum_volume_id);
			ai.add_type(FPalace_helper.nipple_size_id);
			
			var consequence:Consequence = new Consequence();
				var tf:Tick_Effect = new Tick_Effect();
				tf.set_status_id(Tick_Effect.lactating_status);
				tf.set_end_tick(Main.t1_week);
				
			consequence.add_consequence(FPalace_helper.lust_id,5, "</n> feels a bit odd. ",0,0,0,-1, false, tf);
			
			ai.add_consequence(consequence);
			ai.set_value(10);
			return ai;
		}
		
		public static function chocoate_bar():Alchemy_item{
			//selling NPC: century_city_shopkeeper
			var c_bar:Alchemy_item = new Alchemy_item("Chocolate bar");
			c_bar.set_dropped_description("there is a tinfoil covered bar on the ground");
			c_bar.set_inventory_description("This bar smells a bit like chocolate and looks rather delicious.");
			c_bar.set_use_description("</n> eats the chocolate bar and savours the taste for a moment.");
			c_bar.set_image_id(FPalace_helper.unknown_img);
			c_bar.set_identify_difficulty(10);
			c_bar.add_effect(FPalace_helper.curr_fatigue_id, 3);
			c_bar.add_effect(FPalace_helper.lust_id, 15);
			
			c_bar.add_type(FPalace_helper.lust_id);
			c_bar.add_type(FPalace_helper.curr_fatigue_id);
			c_bar.add_type(FPalace_helper.milk_volume_id);
			c_bar.add_type(-FPalace_helper.cum_volume_id);
			c_bar.add_type(FPalace_helper.nipple_size_id);
			
			c_bar.set_value(10);
			return c_bar;
		}
		
		public static function floppy_cucumber():Alchemy_item{
			//selling NPC: N/A
			var aitem:Alchemy_item = new Alchemy_item("Floppy cucumber");
			aitem.set_propogate();
			aitem.set_dropped_description("there is a cucumber on the ground");
			aitem.set_inventory_description("This cucumber flops around as you hold it.");
			aitem.set_use_description("</n> eats the cucumber.");
			aitem.set_image_id(FPalace_helper.unknown_img);
			aitem.set_identify_difficulty(10);
			aitem.add_effect(FPalace_helper.curr_fatigue_id, 1);
			
			aitem.add_type(FPalace_helper.curr_fatigue_id);
			aitem.add_type(FPalace_helper.clit_length);
			aitem.add_type(FPalace_helper.penis_length_id);
			aitem.add_type(-FPalace_helper.erection_ratio_id);
			
			aitem.set_value(5);
			return aitem;
		}
		
		public static function sperm_fish():Alchemy_item{
			//selling NPC: N/A
			var aitem:Alchemy_item = new Alchemy_item("Sperm fish");
			aitem.set_propogate();
			aitem.set_dropped_description("there is a fish on the ground");
			aitem.set_inventory_description("This fish bears a striking resemblance to something.");
			aitem.set_use_description("</n> eats the fish.");
			aitem.set_image_id(FPalace_helper.unknown_img);
			aitem.set_identify_difficulty(10);
			aitem.add_effect(FPalace_helper.curr_fatigue_id, 1);
			aitem.add_effect(FPalace_helper.curr_hp_id, 1);
			aitem.add_effect(FPalace_helper.curr_mp_id, -1);
			
			aitem.add_type(FPalace_helper.curr_fatigue_id);
			aitem.add_type(FPalace_helper.curr_hp_id);
			aitem.add_type(-FPalace_helper.curr_mp_id);
			
			aitem.add_type(FPalace_helper.semen_fertility_id);
			aitem.add_type(-FPalace_helper.skin_colour_id);
			aitem.add_type(-FPalace_helper.semen_fertility_id);
			
			aitem.set_value(5);
			return aitem;
		}
		
		public static function hairy_eggplant():Alchemy_item{
			//selling NPC: N/A
			var aitem:Alchemy_item = new Alchemy_item("Hairy Eggplant");
			aitem.set_propogate();
			aitem.set_dropped_description("there is an eggplant on the ground");
			aitem.set_inventory_description("This eggplant is covered in short purple hairs.");
			aitem.set_use_description("</n> eats the eggplant.");
			aitem.set_image_id(FPalace_helper.unknown_img);
			aitem.set_identify_difficulty(10);
			aitem.add_effect(FPalace_helper.curr_fatigue_id, 1);
			
			aitem.add_type(FPalace_helper.curr_fatigue_id);
			aitem.add_type(FPalace_helper.hair_length_id);
			aitem.add_type(-FPalace_helper.penis_girth_id);
			aitem.add_type(FPalace_helper.vaginal_width_id);
			
			aitem.set_value(5);
			return aitem;
		}
		
		public static function perky_potatoes():Alchemy_item{
			//selling NPC: N/A
			var aitem:Alchemy_item = new Alchemy_item("Perky potato");
			aitem.set_propogate();
			aitem.set_dropped_description("there is a potato on the ground");
			aitem.set_inventory_description("This potato is covered in perky small nubs.");
			aitem.set_use_description("</n> eats the raw potato.");
			aitem.set_image_id(FPalace_helper.unknown_img);
			aitem.set_identify_difficulty(10);
			aitem.add_effect(FPalace_helper.curr_fatigue_id, 1);
			
			aitem.add_type(FPalace_helper.curr_fatigue_id);
			aitem.add_type(FPalace_helper.nipple_size_id);
			aitem.add_type(-FPalace_helper.balls_size_id);
			aitem.add_type(FPalace_helper.max_lust_id);
			
			aitem.set_value(5);
			return aitem;
		}
		
		public static function manly_mangoes():Alchemy_item{
			//selling NPC: N/A
			var aitem:Alchemy_item = new Alchemy_item("Manly mango");
			aitem.set_propogate();
			aitem.set_dropped_description("there is a mango on the ground");
			aitem.set_inventory_description("This mangos green orange skin almost looks like a bulging muscle.");
			aitem.set_use_description("</n> eats the mango.");
			aitem.set_image_id(FPalace_helper.unknown_img);
			aitem.set_identify_difficulty(10);
			aitem.add_effect(FPalace_helper.curr_fatigue_id, 1);
			aitem.add_effect(FPalace_helper.curr_hp_id, -1);
			
			aitem.add_type(FPalace_helper.curr_fatigue_id);
			aitem.add_type(-FPalace_helper.curr_hp_id);
			aitem.add_type(FPalace_helper.erection_ratio_id);
			aitem.add_type(-FPalace_helper.egg_fertility_id);
			aitem.add_type(FPalace_helper.cum_volume_id);
			
			aitem.set_value(5);
			return aitem;
		}
		
		public static function slim_reed():Alchemy_item{
			//selling NPC: N/A
			var aitem:Alchemy_item = new Alchemy_item("Slim reed");
			aitem.set_propogate();
			aitem.set_dropped_description("there is a reed on the ground");
			aitem.set_inventory_description("This whisper thin reed is barely visible as you hold it.");
			aitem.set_use_description("</n> eats the reed.");
			aitem.set_image_id(FPalace_helper.unknown_img);
			aitem.set_identify_difficulty(10);
			aitem.add_effect(FPalace_helper.curr_mp_id, -1);
			
			aitem.add_type(-FPalace_helper.curr_mp_id);
			aitem.add_type(FPalace_helper.anal_depth_id);
			aitem.add_type(-FPalace_helper.bust_id);
			aitem.add_type(-FPalace_helper.hips_id);
						
			aitem.set_value(5);
			return aitem;
		}
		
		public static function sucking_shrooms():Alchemy_item{
			//selling NPC: N/A
			var aitem:Alchemy_item = new Alchemy_item("Sucking shrooms");
			aitem.set_propogate();
			aitem.set_dropped_description("some mushrooms are growing from the ground here");
			aitem.set_inventory_description("This brown and green mushroom seems to almost be breathing as you hold it. ");
			aitem.set_use_description("</n> eats the mushroom.");
			aitem.set_image_id(FPalace_helper.unknown_img);
			aitem.set_identify_difficulty(10);
			aitem.add_effect(FPalace_helper.curr_fatigue_id, -1);
			
			aitem.add_type(-FPalace_helper.curr_fatigue_id);
			aitem.add_type(FPalace_helper.cum_volume_id);
			aitem.add_type(-FPalace_helper.anal_depth_id);
			aitem.add_type(-FPalace_helper.vaginal_depth_id);
			
			
			aitem.set_value(5);
			return aitem;
		}
		
		public static function funny_figs():Alchemy_item{
			//selling NPC: N/A
			var aitem:Alchemy_item = new Alchemy_item("Funny figs");
			aitem.set_propogate();
			aitem.set_dropped_description("there are some figs on the ground");
			aitem.set_inventory_description("These figs are shaped like smiles.");
			aitem.set_use_description("</n> eats the succulent figs.");
			aitem.set_image_id(FPalace_helper.unknown_img);
			aitem.set_identify_difficulty(10);
			aitem.add_effect(FPalace_helper.curr_fatigue_id, 1);
			aitem.add_effect(FPalace_helper.lust_id, 10);
			
			aitem.add_type(FPalace_helper.curr_fatigue_id);
			aitem.add_type(FPalace_helper.lust_id);
			aitem.add_type(FPalace_helper.max_mp_id);
			aitem.add_type(-FPalace_helper.height_id);
			aitem.add_type(-FPalace_helper.penis_length_id);
			
			aitem.set_value(5);
			return aitem;
		}
		
		public static function colourful_cabbage():Alchemy_item{
			//selling NPC: N/A
			var aitem:Alchemy_item = new Alchemy_item("Colourful Cabbage");
			aitem.set_propogate();
			aitem.set_dropped_description("there is a head of cabbage on the ground");
			aitem.set_inventory_description("This cabbage seems to be every colour of the rainbow.");
			aitem.set_use_description("</n> munches down on the pods.");
			aitem.set_image_id(FPalace_helper.unknown_img);
			aitem.set_identify_difficulty(10);
			aitem.add_effect(FPalace_helper.curr_fatigue_id, 3);
			aitem.add_effect(FPalace_helper.curr_hp_id, 1);
			
			aitem.add_type(FPalace_helper.curr_fatigue_id);
			aitem.add_type(FPalace_helper.curr_hp_id);
			aitem.add_type(FPalace_helper.hair_colour_id);
			aitem.add_type(-FPalace_helper.clit_length);
			aitem.add_type(FPalace_helper.eye_colour_id);
			
			aitem.set_value(5);
			return aitem;
		}
		
		public static function spotted_peas():Alchemy_item{
			//selling NPC: N/A
			var aitem:Alchemy_item = new Alchemy_item("Spotted Peas");
			aitem.set_propogate();
			aitem.set_dropped_description("there are some pea pods the ground");
			aitem.set_inventory_description("These pea pods have strange multi-coloured spots.");
			aitem.set_use_description("</n> munches down on the pods.");
			aitem.set_image_id(FPalace_helper.unknown_img);
			aitem.set_identify_difficulty(10);
			aitem.add_effect(FPalace_helper.curr_fatigue_id, 1);
			
			aitem.add_type(FPalace_helper.curr_fatigue_id);
			aitem.add_type(FPalace_helper.balls_size_id);
			aitem.add_type(-FPalace_helper.vaginal_width_id);
			aitem.add_type(FPalace_helper.eye_colour_id);
			
			aitem.set_value(5);
			return aitem;
		}
		
		public static function heavy_squash():Alchemy_item{
			//selling NPC: N/A
			var aitem:Alchemy_item = new Alchemy_item("Heavy Squash");
			aitem.set_propogate();
			aitem.set_dropped_description("there is a gourd on the ground");
			aitem.set_inventory_description("This heavy gourd feels like it could feed a family.");
			aitem.set_use_description("</n> bites into the flesh of the gourd.");
			aitem.set_image_id(FPalace_helper.unknown_img);
			aitem.set_identify_difficulty(10);
			aitem.add_effect(FPalace_helper.curr_fatigue_id, 5);
			
			aitem.add_type(FPalace_helper.curr_fatigue_id);
			aitem.add_type(FPalace_helper.max_weight_id);
			aitem.add_type(-FPalace_helper.semen_fertility_id);
			aitem.add_type(FPalace_helper.bloat_id);
			
			aitem.set_value(5);
			return aitem;
		}
		
		public static function baby_berry():Alchemy_item{
			//selling NPC: N/A
			var aitem:Alchemy_item = new Alchemy_item("Baby Berries");
			aitem.set_propogate();
			aitem.set_dropped_description("there are some berries on the ground");
			aitem.set_inventory_description("These berries are unbelievably small, though their bright red colour is appealing.");
			aitem.set_use_description("</n> consumes the handful of berries quickly.");
			aitem.set_image_id(FPalace_helper.unknown_img);
			aitem.set_identify_difficulty(10);
			aitem.add_effect(FPalace_helper.curr_fatigue_id, 1);
			
			aitem.add_type(FPalace_helper.curr_fatigue_id);
			aitem.add_type(FPalace_helper.semen_fertility_id);
			aitem.add_type(-FPalace_helper.age_id);
			aitem.add_type(FPalace_helper.egg_fertility_id);
			
			aitem.set_value(5);
			return aitem;
		}
		
		public static function hearty_pepper():Alchemy_item{
			//selling NPC: N/A
			var aitem:Alchemy_item = new Alchemy_item("Hearty Pepper");
			aitem.set_propogate();
			aitem.set_dropped_description("there is a bell pepper on the ground");
			aitem.set_inventory_description("This is a large bell pepper that glints green and metalic brown.");
			aitem.set_use_description("</n> bites into the pepper, quickly consuming it.");
			aitem.set_image_id(FPalace_helper.unknown_img);
			aitem.set_identify_difficulty(7);
			aitem.add_effect(FPalace_helper.curr_fatigue_id, 1);
			aitem.add_effect(FPalace_helper.curr_hp_id, 1);
			
			aitem.add_type(FPalace_helper.curr_fatigue_id);
			aitem.add_type(FPalace_helper.curr_hp_id);
			aitem.add_type(FPalace_helper.max_fatigue_id);
			aitem.add_type(-FPalace_helper.max_mp_id);
			aitem.add_type(FPalace_helper.waist_id);
			
			aitem.set_value(5);
			return aitem;
		}
		
		public static function black_onion():Alchemy_item{
			//selling NPC: N/A
			var aitem:Alchemy_item = new Alchemy_item("Black Onion");
			aitem.set_propogate();
			aitem.set_dropped_description("there is an onion on the ground");
			aitem.set_inventory_description("This is a large, black onion, free of rot.");
			aitem.set_use_description("</n> bites into the onion, tears quickly streaming down </noun> face.");
			aitem.set_image_id(FPalace_helper.unknown_img);
			aitem.set_identify_difficulty(10);
			aitem.add_effect(FPalace_helper.curr_fatigue_id, 1);
			aitem.add_effect(FPalace_helper.curr_mp_id, 1);
			
			aitem.add_type(FPalace_helper.curr_fatigue_id);
			aitem.add_type(FPalace_helper.curr_mp_id);
			aitem.add_type(FPalace_helper.max_lust_id);
			aitem.add_type(-FPalace_helper.milk_volume_id);
			aitem.add_type(FPalace_helper.anal_depth_id);
			
			aitem.set_value(5);
			return aitem;
		}
		
		public static function coconuts():Alchemy_item{
			//selling NPC: N/A
			var aitem:Alchemy_item = new Alchemy_item("Pink Coconut");
			aitem.set_propogate();
			aitem.set_dropped_description("there is a coconut on the ground");
			aitem.set_inventory_description("This is a large, tough skinned coconut that is oddly flesh-toned.");
			aitem.set_use_description("</n> breaks open the coconut, eating the tender flesh.");
			aitem.set_image_id(FPalace_helper.unknown_img);
			aitem.set_identify_difficulty(10);
			aitem.add_effect(FPalace_helper.curr_fatigue_id, 3);
			aitem.add_effect(FPalace_helper.curr_hp_id, 1);
			
			aitem.add_type(FPalace_helper.curr_fatigue_id);
			aitem.add_type(FPalace_helper.curr_hp_id);
			aitem.add_type(FPalace_helper.egg_fertility_id);
			aitem.add_type(-FPalace_helper.hair_length_id);
			aitem.add_type(FPalace_helper.vaginal_depth_id);
			
			aitem.set_value(5);
			return aitem;
		}
		
		public static function iceberg_lettuce():Alchemy_item{
			//selling NPC: N/A
			var aitem:Alchemy_item = new Alchemy_item("Iceberg lettuce");
			aitem.set_propogate();
			aitem.set_dropped_description("there is a head of lettuce on the ground");
			aitem.set_inventory_description("This head of lettuce actually looks like an iceberg, sheer fronds sweeping back into one another.");
			aitem.set_use_description("</n> crunches into the lettuce.");
			aitem.set_image_id(FPalace_helper.unknown_img);
			aitem.set_identify_difficulty(15);
			aitem.add_effect(FPalace_helper.curr_fatigue_id, 5);
			
			aitem.add_type(FPalace_helper.curr_fatigue_id);
			aitem.add_type(FPalace_helper.semen_fertility_id);
			aitem.add_type(-FPalace_helper.anal_width_id);
			aitem.add_type(FPalace_helper.vaginal_depth_id);
			
			aitem.set_value(10);
			return aitem;
		}
		
		public static function snowy_flower():Alchemy_item{
			//selling NPC: job_aghapei_guru
			var aitem:Alchemy_item = new Alchemy_item("Snowy Flower");
			aitem.set_propogate();
			aitem.set_dropped_description("there is a flower on the ground");
			aitem.set_inventory_description("This flower is pure white, root, stem, and pettle.");
			aitem.set_use_description("</n> eats the flower.");
			aitem.set_image_id(FPalace_helper.unknown_img);
			aitem.set_identify_difficulty(15);
			aitem.add_effect(FPalace_helper.curr_hp_id, 1);
			aitem.add_effect(FPalace_helper.curr_mp_id, -1);
			
			aitem.add_type(FPalace_helper.curr_hp_id);
			aitem.add_type(-FPalace_helper.curr_mp_id);
			aitem.add_type(FPalace_helper.milk_volume_id);
			aitem.add_type(-FPalace_helper.weight_id);
			aitem.add_type(FPalace_helper.breast_size_id);
			
			aitem.set_value(10);
			return aitem;
		}
		
		public static function gaping_moss():Alchemy_item{
			//selling NPC: N/A
			var aitem:Alchemy_item = new Alchemy_item("Gaping Moss");
			aitem.set_propogate();
			aitem.set_dropped_description("there is some glowing moss on the ground");
			aitem.set_inventory_description("This (predictably) glowing moss seems to push itself into a circle, gaping hole in the middle.");
			aitem.set_use_description("</n> throws the moss down </noun> throat.");
			aitem.set_image_id(FPalace_helper.unknown_img);
			aitem.set_identify_difficulty(15);
			aitem.add_effect(FPalace_helper.curr_fatigue_id, -1);
			
			aitem.add_type(-FPalace_helper.curr_fatigue_id);
			aitem.add_type(FPalace_helper.vaginal_width_id);
			aitem.add_type(-FPalace_helper.penis_length_id);
			aitem.add_type(FPalace_helper.anal_width_id);
			
			aitem.set_value(3);
			return aitem;
		}
		
		public static function thick_rice():Alchemy_item{
			//selling NPC: N/A
			var aitem:Alchemy_item = new Alchemy_item("Thick rice");
			aitem.set_propogate();
			aitem.set_dropped_description("there are some kernals of rice on the ground");
			aitem.set_inventory_description("A handfull of rice, each nearly round from the bulging center.");
			aitem.set_use_description("</n> chews greedily on the rice.");
			aitem.set_image_id(FPalace_helper.unknown_img);
			aitem.set_identify_difficulty(10);
			aitem.add_effect(FPalace_helper.curr_fatigue_id, 1);
			
			aitem.add_type(FPalace_helper.curr_fatigue_id);
			aitem.add_type(FPalace_helper.waist_id);
			aitem.add_type(-FPalace_helper.min_lust_id);
			aitem.add_type(FPalace_helper.hips_id);
			
			aitem.set_value(3);
			return aitem;
		}
		
		public static function black_beans():Alchemy_item{
			//selling NPC: N/A
			var aitem:Alchemy_item = new Alchemy_item("Black beans");
			aitem.set_propogate();
			aitem.set_dropped_description("there are some beans on the ground");
			aitem.set_inventory_description("A handfull of black beans, oddly proportioned, one side much larger then the other.");
			aitem.set_use_description("</n> eats the beans.");
			aitem.set_image_id(FPalace_helper.unknown_img);
			aitem.set_identify_difficulty(10);
			aitem.add_effect(FPalace_helper.curr_fatigue_id, 1);
			
			aitem.add_type(FPalace_helper.curr_fatigue_id);
			aitem.add_type(FPalace_helper.bust_id);
			aitem.add_type(-FPalace_helper.anal_depth_id);
			aitem.add_type(-FPalace_helper.hips_id);
			
			aitem.set_value(3);
			return aitem;
		}
		
		public static function pleni_chili():Alchemy_item{
			//selling NPC: N/A
			var aitem:Alchemy_item = new Alchemy_item("Pleni Chilis");
			aitem.set_propogate();
			aitem.set_dropped_description("there is a small pepper on the ground");
			aitem.set_inventory_description("An oddly shaped pepper, with a large cap but long slim body.");
			aitem.set_use_description("</n> takes a brave bite of the chili.");
			aitem.set_image_id(FPalace_helper.unknown_img);
			aitem.set_identify_difficulty(15);
			aitem.add_effect(FPalace_helper.curr_fatigue_id, 1);
			aitem.add_effect(FPalace_helper.curr_hp_id, -2);
			
			aitem.add_type(FPalace_helper.curr_fatigue_id);
			aitem.add_type(-FPalace_helper.curr_hp_id);
			aitem.add_type(FPalace_helper.semen_fertility_id);
			aitem.add_type(-FPalace_helper.hair_colour_id);
			aitem.add_type(-FPalace_helper.eye_colour_id);
			
			aitem.set_value(10);
			return aitem;
		}
		
		public static function bulky_seeds():Alchemy_item{
			//selling NPC: N/A
			var aitem:Alchemy_item = new Alchemy_item("Bulky Seeds");
			aitem.set_propogate();
			aitem.set_dropped_description("there are some seeds on the ground");
			aitem.set_inventory_description("A handful of surprisingly heavy and tough seeds.");
			aitem.set_use_description("</n> munches down on the seeds.");
			aitem.set_image_id(FPalace_helper.unknown_img);
			aitem.set_identify_difficulty(10);
			aitem.add_effect(FPalace_helper.curr_fatigue_id, -1);
			aitem.add_effect(FPalace_helper.curr_hp_id, 1);
			
			aitem.add_type(-FPalace_helper.curr_fatigue_id);
			aitem.add_type(FPalace_helper.curr_hp_id);
			aitem.add_type(-FPalace_helper.height_id);
			aitem.add_type(-FPalace_helper.max_hp_id);
			aitem.add_type(FPalace_helper.weight_id);
			
			aitem.set_value(3);
			return aitem;
		}
		
		public static function garbage():Alchemy_item{
			//selling NPC: N/A
			var aitem:Alchemy_item = new Alchemy_item("Garbage");
			aitem.set_propogate();
			aitem.set_dropped_description("there is a pile of garbage on the ground");
			aitem.set_inventory_description("Just a pile of rubbish.");
			aitem.set_use_description("</n> does </noun> best to consume the garbage, coughting and gagging the entire time.");
			aitem.set_image_id(FPalace_helper.unknown_img);
			aitem.set_identify_difficulty(30);
			aitem.add_effect(FPalace_helper.lust_id, -10);
			aitem.add_effect(FPalace_helper.curr_hp_id, -2);
			aitem.add_effect(FPalace_helper.curr_fatigue_id, -2);
			
			aitem.add_type(-FPalace_helper.lust_id);
			aitem.add_type(-FPalace_helper.curr_fatigue_id);
			aitem.add_type(-FPalace_helper.curr_hp_id);
			aitem.add_type(FPalace_helper.age_id);
			aitem.add_type(-FPalace_helper.bloat_id);
			aitem.add_type(-FPalace_helper.balls_size_id);
			aitem.set_value(1);
			return aitem;
		}
		
		public static function cocoa_beans():Alchemy_item{
			//selling NPC: N/A
			var aitem:Alchemy_item = new Alchemy_item("Cocoa beans");
			aitem.set_propogate();
			aitem.set_dropped_description("there are some beans on the ground");
			aitem.set_inventory_description("These small, brown beans smell a bit like chocolate.");
			aitem.set_use_description("</n> eats the beans and looks a little lusty.");
			aitem.set_image_id(FPalace_helper.unknown_img);
			aitem.set_identify_difficulty(15);
			aitem.add_effect(FPalace_helper.curr_mp_id, 1);
			
			
			aitem.add_type(FPalace_helper.curr_mp_id);
			aitem.add_type(FPalace_helper.hips_id);
			aitem.add_type(-FPalace_helper.bust_id);
			aitem.add_type(FPalace_helper.hair_colour_id);
			aitem.set_value(10);
			return aitem;
		}
		
		public static function Honey():Alchemy_item{
			//selling NPC: bee_hive_shopkeeper
			var aitem:Alchemy_item = new Alchemy_item("Honey");
			aitem.set_dropped_description("there's a broken off honeycomb on the ground");
			aitem.set_inventory_description("These large, fist size combs of honey smell a bit salty.");
			aitem.set_use_description("</n> eats the honey and almost goes mad with lust.");
			aitem.set_image_id(FPalace_helper.unknown_img);
			aitem.set_identify_difficulty(15);
			aitem.add_change_effect(FPalace_races.race_anthro_bee());
			aitem.add_effect(FPalace_helper.lust_id, 50);
			
			aitem.add_type(FPalace_helper.lust_id);
			aitem.add_type(FPalace_helper.dex_id);
			aitem.add_type(-FPalace_helper.will_id);
			aitem.add_type(FPalace_helper.min_lust_id);
			aitem.add_type(-FPalace_helper.cum_volume_id);
			aitem.add_type(FPalace_helper.milk_volume_id);
			aitem.set_value(30);
			return aitem;
		}
		
		public static function donkey_daikon():Alchemy_item{
			//selling NPC: job_benevol_herbalist
			var aitem:Alchemy_item = new Alchemy_item("Donkey Daikon");
			aitem.set_dropped_description("there's a radish on the ground");
			aitem.set_inventory_description("This large radish has to leaves oddly reminiscent of a donkeys ears.");
			aitem.set_use_description("</n> eats the radish.");
			aitem.set_image_id(FPalace_helper.unknown_img);
			aitem.set_identify_difficulty(15);
			aitem.add_change_effect(FPalace_races.race_anthro_donkey());
			aitem.add_effect(FPalace_helper.curr_fatigue_id, 2);
			aitem.add_effect(FPalace_helper.curr_mp_id, 2);
			
			aitem.add_type(FPalace_helper.curr_fatigue_id);
			aitem.add_type(FPalace_helper.curr_mp_id);
			aitem.add_type(FPalace_helper.wis_id);
			aitem.add_type(-FPalace_helper.int_id);			
			aitem.add_type(-FPalace_helper.erection_ratio_id);
			aitem.add_type(-FPalace_helper.egg_fertility_id);
			aitem.add_type(FPalace_helper.balls_size_id);
			
			aitem.set_value(20);
			return aitem;
		}
		
		public static function froggy_feijoa():Alchemy_item{
			//selling NPC: job_chastity_witch
			var aitem:Alchemy_item = new Alchemy_item("Froggy Feijoa");
			aitem.set_dropped_description("there's a radish on the ground");
			aitem.set_inventory_description("This large radish has to leaves oddly reminiscent of a donkeys ears.");
			aitem.set_use_description("</n> eats the feijoa.");
			aitem.set_image_id(FPalace_helper.unknown_img);
			aitem.set_identify_difficulty(15);
			aitem.add_change_effect(FPalace_races.race_anthro_frog());
			aitem.add_effect(FPalace_helper.curr_fatigue_id, 2);
			
			aitem.add_type(FPalace_helper.curr_fatigue_id);
			aitem.add_type(FPalace_helper.erection_ratio_id);
			aitem.add_type(-FPalace_helper.sex_appeal_id);
			aitem.add_type(-FPalace_helper.weight_id);
			aitem.add_type(-FPalace_helper.hair_length_id);
			aitem.add_type(FPalace_helper.cha_id);
			
			aitem.set_value(20);
			return aitem;
		}
		
		public static function strong_cheese():Alchemy_item{
			//selling NPC: job_burrowton_cheesemonger
			var aitem:Alchemy_item = new Alchemy_item("Strong Cheese");
			aitem.set_dropped_description("there's some cheese on the ground");
			aitem.set_inventory_description("This strong smelling cheese has holes that have strangely formed into the shape of some sort of rodent.");
			aitem.set_use_description("</n> eats the cheese.");
			aitem.set_image_id(FPalace_helper.unknown_img);
			aitem.set_identify_difficulty(15);
			aitem.add_change_effect(FPalace_races.race_anthro_mouse());
			aitem.add_effect(FPalace_helper.curr_fatigue_id, 2);
			
			aitem.add_type(FPalace_helper.curr_fatigue_id);
			aitem.add_type(FPalace_helper.nipple_size_id);
			aitem.add_type(-FPalace_helper.str_id);
			aitem.add_type(-FPalace_helper.penis_girth_id);
			aitem.add_type(-FPalace_helper.vaginal_depth_id);
			aitem.add_type(FPalace_helper.dex_id);
			
			aitem.set_value(20);
			return aitem;
		}
		
		public static function edible_warranty():Alchemy_item{
			//selling NPC: N/A
			var aitem:Alchemy_item = new Alchemy_item("Edible Warranty");
			aitem.set_dropped_description("there's some paper on the ground");
			aitem.set_inventory_description("This warranty warns that it will be voided if a seal is broken. It smells vaguely of fish. ");
			aitem.set_use_description("</n> eats the warranty.");
			aitem.set_image_id(FPalace_helper.unknown_img);
			aitem.set_identify_difficulty(15);
			aitem.add_change_effect(FPalace_races.race_anthro_seal());
			aitem.add_effect(FPalace_helper.curr_fatigue_id, -2);
			
			aitem.add_type(-FPalace_helper.curr_fatigue_id);
			
			aitem.add_type(FPalace_helper.fur_colour_id);
			aitem.add_type(-FPalace_helper.nipple_size_id);
			aitem.add_type(-FPalace_helper.balls_size_id);
			
			aitem.add_type(-FPalace_helper.wis_id);
			aitem.add_type(FPalace_helper.con_id);
			
			aitem.set_value(20);
			return aitem;
		}
		
		public static function goblin_giblets():Alchemy_item{
			//selling NPC: job_industria_grocer
			var aitem:Alchemy_item = new Alchemy_item("Goblin giblets");
			aitem.set_dropped_description("there's some guts on the ground");
			aitem.set_inventory_description("This pile of cooked giblets clearly came from something larger than a chicken.");
			aitem.set_use_description("</n> eats some giblets.");
			aitem.set_image_id(FPalace_helper.unknown_img);
			aitem.set_identify_difficulty(15);
			aitem.add_change_effect(FPalace_races.race_goblin());
			aitem.add_effect(FPalace_helper.curr_fatigue_id, -1);
			aitem.add_effect(FPalace_helper.curr_mp_id, -1);
			aitem.add_effect(FPalace_helper.curr_hp_id, 2);
			
			aitem.add_type(-FPalace_helper.curr_fatigue_id);
			aitem.add_type(-FPalace_helper.curr_mp_id);
			aitem.add_type(FPalace_helper.curr_hp_id);
			
			aitem.add_type(-FPalace_helper.wis_id);
			aitem.add_type(FPalace_helper.int_id);			
			aitem.add_type(-FPalace_helper.height_id);
			aitem.add_type(FPalace_helper.egg_fertility_id);
			aitem.add_type(FPalace_helper.min_lust_id);
			
			aitem.set_value(20);
			return aitem;
		}
		
		public static function orcish_delight():Alchemy_item{
			//selling NPC: N/A
			var aitem:Alchemy_item = new Alchemy_item("Orcish delight");
			aitem.set_dropped_description("there is some candy on the ground");
			aitem.set_inventory_description("If you had to guess, these small green cubes are probably made of pure suger.");
			aitem.set_use_description("</n> eats some candy.");
			aitem.set_image_id(FPalace_helper.unknown_img);
			aitem.set_identify_difficulty(15);
			aitem.add_change_effect(FPalace_races.race_orc());
			aitem.add_effect(FPalace_helper.curr_fatigue_id, 1);
			aitem.add_effect(FPalace_helper.curr_mp_id, 1);
			
			aitem.add_type(FPalace_helper.curr_fatigue_id);
			aitem.add_type(FPalace_helper.curr_mp_id);
			
			aitem.add_type(-FPalace_helper.cha_id);
			aitem.add_type(FPalace_helper.con_id);			
			aitem.add_type(-FPalace_helper.clit_length);
			aitem.add_type(FPalace_helper.skin_colour_id);
			aitem.add_type(-FPalace_helper.biomass_consumed);
			
			aitem.set_value(20);
			return aitem;
		}
		
		public static function veiny_venison():Alchemy_item{
			//selling NPC: N/A
			var aitem:Alchemy_item = new Alchemy_item("Veiny venison");
			aitem.set_dropped_description("there is some meat on the ground");
			aitem.set_inventory_description("This hunk of meat is well marbled, but strangely contains thick veins.");
			aitem.set_use_description("</n> eats some raw meat.");
			aitem.set_image_id(FPalace_helper.unknown_img);
			aitem.set_identify_difficulty(15);
			aitem.add_change_effect(FPalace_races.race_anthro_deer());
			aitem.add_effect(FPalace_helper.curr_fatigue_id, -1);
			aitem.add_effect(FPalace_helper.curr_hp_id, -1);
			aitem.add_effect(FPalace_helper.curr_mp_id, 4);
			
			aitem.add_type(-FPalace_helper.curr_fatigue_id);
			aitem.add_type(-FPalace_helper.curr_hp_id);
			aitem.add_type(FPalace_helper.curr_mp_id);
			
			aitem.add_type(-FPalace_helper.str_id);
			aitem.add_type(FPalace_helper.wis_id);
			
			aitem.add_type(-FPalace_helper.anal_depth_id);
			aitem.add_type(FPalace_helper.fur_colour_id);
			aitem.add_type(-FPalace_helper.max_weight_id);
			
			aitem.set_value(20);
			return aitem;
		}
		
		public static function doggy_bone():Alchemy_item{
			//selling NPC: job_chastity_witch
			var aitem:Alchemy_item = new Alchemy_item("Doggy Bone");
			aitem.set_dropped_description("there's a bone on the ground");
			aitem.set_inventory_description("This bone is actually soft and maleable, smelling of suger.");
			aitem.set_use_description("</n> chews on the bone.");
			aitem.set_image_id(FPalace_helper.unknown_img);
			aitem.set_identify_difficulty(15);
			aitem.add_change_effect(FPalace_races.race_anthro_canine());
			aitem.add_effect(FPalace_helper.curr_mp_id, 1);
			aitem.add_effect(FPalace_helper.curr_hp_id, 2);
			
			aitem.add_type(FPalace_helper.curr_mp_id);
			aitem.add_type(FPalace_helper.curr_hp_id);
			
			aitem.add_type(-FPalace_helper.con_id);
			aitem.add_type(FPalace_helper.str_id);		
			aitem.add_type(-FPalace_helper.max_lust_id);
			aitem.add_type(FPalace_helper.bust_id);
			aitem.add_type(-FPalace_helper.vaginal_width_id);
			
			aitem.set_value(20);
			return aitem;
		}
		
		public static function scaled_egg():Alchemy_item{
			//selling NPC: job_industria_grocer
			var aitem:Alchemy_item = new Alchemy_item("Scaled Egg");
			aitem.set_dropped_description("there is an egg on the ground");
			aitem.set_inventory_description("This is a large egg, multi-coloured scales covering it. ");
			aitem.set_use_description("</n> eats the egg. ");
			aitem.set_image_id(FPalace_helper.unknown_img);
			aitem.set_identify_difficulty(15);
			aitem.add_change_effect(FPalace_races.race_anthro_lizard());
			aitem.add_effect(FPalace_helper.curr_fatigue_id, 1);
			
			aitem.add_type(FPalace_helper.int_id);
			aitem.add_type(-FPalace_helper.cha_id);
			aitem.add_type(FPalace_helper.height_id);
			aitem.add_type(-FPalace_helper.hair_length_id);
			aitem.add_type(-FPalace_helper.breast_size_id);
			aitem.add_type(FPalace_helper.curr_fatigue_id);
			
			aitem.set_value(30);
			return aitem;
		}
		
		public static function Stubby_twig():Alchemy_item{
			//selling NPC: job_benevol_herbalist
			var aitem:Alchemy_item = new Alchemy_item("Stubby twig");
			aitem.set_propogate();
			aitem.set_dropped_description("there's a stubby looking plant growing from the path");
			aitem.set_inventory_description("These roots are wrinkled and thick, but have some give to them.");
			aitem.set_use_description("</n> chews on the twig over and over, eventually turning it into a paste. It's surprisingly sweet.");
			aitem.set_image_id(FPalace_helper.unknown_img);
			aitem.set_identify_difficulty(20);
			aitem.add_effect(FPalace_helper.lust_id, 5);
			aitem.add_effect(FPalace_helper.curr_fatigue_id, -1);
			
			aitem.add_type(FPalace_helper.lust_id);
			aitem.add_type(-FPalace_helper.curr_fatigue_id);
			aitem.add_type(FPalace_helper.penis_girth_id);
			aitem.add_type(-FPalace_helper.breast_size_id);
			aitem.add_type(-FPalace_helper.egg_fertility_id);
			aitem.set_value(30);
			return aitem;
		}
		
		public static function Cactus_petal():Alchemy_item{
			//selling NPC: N/A
			var aitem:Alchemy_item = new Alchemy_item("Cactus petal");
			aitem.set_propogate();
			aitem.set_dropped_description("there are some cactus petals on the ground");
			aitem.set_inventory_description("These petals are bright blue and red, and surprisingly thick.");
			aitem.set_use_description("</n> chews on the cactus petals and looks repulsed by their sharp flavour.");
			aitem.set_image_id(FPalace_helper.unknown_img);
			aitem.set_identify_difficulty(15);
			aitem.add_effect(FPalace_helper.curr_mp_id, 5);
			
			aitem.add_type(FPalace_helper.curr_mp_id);			
			aitem.add_type(FPalace_helper.age_id);
			aitem.add_type(-FPalace_helper.clit_length);
			aitem.add_type(FPalace_helper.max_mp_id);
			
			aitem.set_value(30);
			return aitem;
		}
		
		public static function milk_jug():Alchemy_item{
			//selling NPC: job_burrowton_cheesemonger
			var aitem:Alchemy_item = new Alchemy_item("Milk Jug");
			aitem.set_dropped_description("there's a milk jug on the ground");
			aitem.set_inventory_description("This is a large jug filled with a heavy white fluid.");
			aitem.set_use_description("</n> drinks down the smooth and creamy milk.");
			aitem.set_image_id(FPalace_helper.unknown_img);
			aitem.set_identify_difficulty(20);
			aitem.add_effect(FPalace_helper.biomass_consumed,250);
			aitem.add_effect(FPalace_helper.curr_hp_id, 5);
			
			aitem.add_type(FPalace_helper.biomass_consumed);
			aitem.add_type(FPalace_helper.curr_hp_id);
			
			aitem.add_type(FPalace_helper.breast_size_id);
			aitem.add_type(-FPalace_helper.penis_length_id);
			aitem.add_type(FPalace_helper.milk_volume_id);

			aitem.set_number_of_uses(2);
			aitem.set_value(10);
			aitem.set_weight(2);
			return aitem;
		}
		
		public static function bovine_milk_jug():Alchemy_item{
			//selling NPC: freedom_farms_lilly
			var aitem:Alchemy_item = new Alchemy_item("Milk Bottle");
			aitem.set_dropped_description("there's a milk jug on the ground");
			aitem.set_inventory_description("This is a large bottle filled with a heavy white fluid, a strange label with a cow slapped across the front.");
			aitem.set_use_description("</n> drinks down the smooth and creamy milk.");
			aitem.set_image_id(FPalace_helper.unknown_img);
			aitem.set_identify_difficulty(20);
			aitem.add_change_effect(FPalace_races.race_anthro_bovine());
			aitem.add_effect(FPalace_helper.biomass_consumed,250);
			aitem.add_effect(FPalace_helper.curr_hp_id, 5);
			
			aitem.add_type(FPalace_helper.biomass_consumed);
			aitem.add_type(FPalace_helper.curr_hp_id);
			
			aitem.add_type(FPalace_helper.con_id);
			aitem.add_type(-FPalace_helper.will_id);
			aitem.add_type(FPalace_helper.max_hp_id);
			aitem.add_type(-FPalace_helper.max_mp_id);
			aitem.add_type(FPalace_helper.nipple_size_id);
			aitem.set_number_of_uses(2);
			aitem.set_value(30);
			aitem.set_weight(2);
			return aitem;
		}
		
		public static function cockorn():Alchemy_item{
			//selling NPC: N/A
			var aitem:Alchemy_item = new Alchemy_item("Cockorn");
			aitem.set_propogate();
			aitem.set_dropped_description("there's an ear of corn on the ground");
			aitem.set_inventory_description("This is an oddly shaped vegetable covered in small kernals.");
			aitem.set_use_description("</n> bites down on the uncooked cockorn.");
			aitem.set_image_id(FPalace_helper.unknown_img);
			aitem.set_identify_difficulty(15);
			aitem.add_effect(FPalace_helper.curr_hp_id, 1);
			aitem.add_effect(FPalace_helper.curr_fatigue_id, 1);
			
			aitem.add_type(FPalace_helper.curr_hp_id);
			aitem.add_type(FPalace_helper.curr_fatigue_id);
			aitem.add_type(FPalace_helper.height_id);
			aitem.add_type(-FPalace_helper.bloat_id);
			aitem.add_type(-FPalace_helper.milk_volume_id);
			aitem.set_value(3);
			aitem.set_weight(1);
			return aitem;
		}
		
		public static function cum_jug():Alchemy_item{
			//selling NPC: N/A
			var aitem:Alchemy_item = new Alchemy_item("'Milk' Jug");
			aitem.set_dropped_description("there's a jug on the ground");
			aitem.set_inventory_description("This is a large jug filled with a heavy white fluid.");
			aitem.set_use_description("</n> drinks down the thick and salty 'milk'.");
			aitem.set_image_id(FPalace_helper.unknown_img);
			aitem.set_identify_difficulty(20);
			aitem.add_effect(FPalace_helper.curr_mp_id, -1);
			aitem.add_effect(FPalace_helper.lust_id, 5);			
			aitem.add_effect(FPalace_helper.biomass_consumed,250);
			
			aitem.add_type(FPalace_helper.lust_id);
			aitem.add_type(FPalace_helper.biomass_consumed);
			aitem.add_type(-FPalace_helper.curr_mp_id);
			aitem.add_type(FPalace_helper.bloat_id);
			aitem.add_type(-FPalace_helper.nipple_size_id);
			aitem.add_type(-FPalace_helper.breast_size_id);
			
			aitem.set_number_of_uses(2);
			aitem.set_value(5);
			aitem.set_weight(2);
			return aitem;
		}
		
		public static function rainbow_cherry():Alchemy_item{
			//selling NPC: N/A
			var aitem:Alchemy_item = new Alchemy_item("Rainbow Cherries");
			aitem.set_propogate();
			aitem.set_dropped_description("there're some multi-coloured cherries on the ground here");
			aitem.set_inventory_description("Every single cherry seems to have the entire rainbow visible on its skin.");
			aitem.set_use_description("</n> eats some cherries, finding the flavour different with every chew.");
			aitem.set_image_id(FPalace_helper.unknown_img);
			aitem.set_identify_difficulty(10);
			aitem.add_effect(FPalace_helper.curr_fatigue_id, 1);
			aitem.add_effect(FPalace_helper.curr_mp_id, 1);
			
			aitem.add_type(FPalace_helper.curr_fatigue_id);
			aitem.add_type(FPalace_helper.curr_mp_id);
			aitem.add_type(FPalace_helper.hair_colour_id);
			aitem.add_type(-FPalace_helper.breast_size_id);
			aitem.add_type(FPalace_helper.eye_colour_id);
			
			aitem.set_value(10);
			return aitem;
		}
		
		public static function round_apple():Alchemy_item{
			//selling NPC: N/A
			var aitem:Alchemy_item = new Alchemy_item("Round Apples");
			aitem.set_propogate();
			aitem.set_dropped_description("there're some apples on the ground that are completely spherical");
			aitem.set_inventory_description("Lovely red apples, with none of the usual bumps or imperfections.");
			aitem.set_use_description("</n> eats the apple, and finds it tastes like a normal apple, but with an unmistakable twinge to the aftertaste.");
			aitem.set_image_id(FPalace_helper.unknown_img);
			aitem.set_identify_difficulty(15);
			aitem.add_effect(FPalace_helper.curr_fatigue_id, 2);
			
			aitem.add_type(FPalace_helper.curr_fatigue_id);
			aitem.add_type(FPalace_helper.breast_size_id);
			aitem.add_type(-FPalace_helper.waist_id);
			aitem.add_type(FPalace_helper.balls_size_id);
			
			aitem.set_value(10);
			return aitem;
		}
		
		public static function dickweed():Alchemy_item{
			//selling NPC: N/A
			var aitem:Alchemy_item = new Alchemy_item("Dickweed");
			aitem.set_propogate();
			aitem.set_dropped_description("there's some dickweed growing nearby");
			aitem.set_inventory_description("The leaves on these sprigs are strangely reminiscent of something.");
			aitem.set_use_description("</n> eats the dickweed, finding the taste rather bland and salty.");
			aitem.set_image_id(FPalace_helper.unknown_img);
			aitem.set_identify_difficulty(15);
			aitem.add_effect(FPalace_helper.curr_fatigue_id, -1);
						
			aitem.add_type(-FPalace_helper.curr_fatigue_id);
			aitem.add_type(FPalace_helper.penis_length_id);
			aitem.add_type(-FPalace_helper.max_lust_id);
			aitem.add_type(-FPalace_helper.penis_girth_id);
			aitem.set_value(10);
			return aitem;
		}
		
		public static function FPalace_book():Alchemy_item{
			//selling NPC: N/A
			var aitem:Alchemy_item = new Alchemy_item("Book");
			aitem.set_propogate();
			aitem.set_dropped_description("there's a book lying on the ground here");
			aitem.set_inventory_description("A quick flip through shows a number of articles... and pictures.");
			aitem.set_use_description("</n> reads the book and finds </objnoun>self more informed of the world. And a bit hornier.");
			aitem.set_image_id(FPalace_helper.unknown_img);
			aitem.set_identify_difficulty(15);
			aitem.add_effect(FPalace_helper.curr_mp_id, -1);
			
			aitem.add_type(-FPalace_helper.curr_mp_id);
			
			aitem.add_type(FPalace_helper.max_mp_id);
			aitem.add_type(-FPalace_helper.min_lust_id);
			aitem.add_type(-FPalace_helper.max_hp_id);
			aitem.set_value(10);
			aitem.set_weight(2);
			return aitem;
		}
		
		public static function naughty_pictures():Alchemy_item{
			//selling NPC: FPalace_guardian
			var aitem:Alchemy_item = new Alchemy_item("Naughty Pictures");
			aitem.set_dropped_description("there is a pile of paper strewn about on the ground here");
			aitem.set_inventory_description("A stack of paper with full colour images on them.");
			aitem.set_use_description("</n> starts to look at the images, and finds picture after picture of the most gorgeous futanari </pronoun> has ever seen.");
			aitem.set_image_id(FPalace_helper.unknown_img);
			aitem.set_identify_difficulty(15);
			aitem.add_effect(FPalace_helper.lust_id, 35);
			
			aitem.add_type(FPalace_helper.lust_id);
			
			aitem.add_type(FPalace_helper.anal_width_id);
			aitem.add_type(-FPalace_helper.max_fatigue_id);
			aitem.add_type(FPalace_helper.penis_girth_id);
			aitem.set_value(18);
			
			aitem.set_topic(FPalace_topics.topic_naughty_pictures(aitem));
			
			return aitem;
		}
		
		public static function plain_jane_potion():Alchemy_item{
			//selling NPC: century_city_shopkeeper, century_city_medical_supplies_clerk
			var aitem:Alchemy_item = new Alchemy_item("Plain Potion");
			aitem.set_dropped_description("a bottle sits lazily on the ground here");
			aitem.set_inventory_description("This bottle contains a shockingly pink fluid and a label that says \"Plain Jane loves to be plain\"");
			aitem.set_use_description("</n> drinks the potion and appears kind of plain.");
			aitem.set_image_id(FPalace_helper.unknown_img);
			aitem.set_identify_difficulty(20);
			aitem.add_effect(FPalace_helper.curr_hp_id, 2);			
			aitem.add_change_effect(FPalace_races.race_human());
			
			aitem.add_type(FPalace_helper.curr_hp_id);
			aitem.add_type(FPalace_helper.weight_id);
			aitem.add_type(-FPalace_helper.max_hp_id);
			aitem.add_type(-FPalace_helper.clit_length);
			
			aitem.set_number_of_uses(2);
			aitem.set_value(20);
			return aitem;
		}
		
		public static function catnip():Alchemy_item{
			//selling NPC: N/A
			var aitem:Alchemy_item = new Alchemy_item("Catnip");
			aitem.set_dropped_description("some herbs are laying on the ground here");
			aitem.set_inventory_description("These strange leafy buds have a pungent odour when you sniff them.");
			aitem.set_use_description("</n> munches on the catnip, and appears more playful.");
			aitem.set_image_id(FPalace_helper.unknown_img);
			aitem.set_identify_difficulty(20);
			aitem.add_change_effect(FPalace_races.race_anthro_feline());
			aitem.add_effect(FPalace_helper.curr_mp_id, 2);
			
			aitem.add_type(FPalace_helper.curr_mp_id);
			aitem.add_type(FPalace_helper.cha_id);
			aitem.add_type(-FPalace_helper.con_id);
			aitem.add_type(FPalace_helper.milk_volume_id);
			aitem.add_type(-FPalace_helper.hips_id);
			aitem.add_type(FPalace_helper.waist_id);
			aitem.set_number_of_uses(2);
						
			aitem.set_value(20);
			return aitem;
		}
		
		public static function elvish_bread():Alchemy_item{
			//selling NPC: ahimsa_shopkeeper
			var aitem:Alchemy_item = new Alchemy_item("Elvish bread");
			aitem.set_dropped_description("some bread is laying on the ground here");
			aitem.set_inventory_description("This flat bread crumbles when you touch it.");
			aitem.set_use_description("</n> eats the bread, and looks a bit older and wiser.");
			aitem.set_image_id(FPalace_helper.unknown_img);
			aitem.set_identify_difficulty(20);
			aitem.add_change_effect(FPalace_races.race_elf());
			aitem.add_effect(FPalace_helper.curr_fatigue_id, 4);
			aitem.add_effect(FPalace_helper.curr_hp_id, 1);
			
			
			aitem.add_type(FPalace_helper.curr_fatigue_id);
			aitem.add_type(FPalace_helper.curr_hp_id);
			
			aitem.add_type(FPalace_helper.wis_id);
			aitem.add_type(-FPalace_helper.str_id);
			aitem.add_type(FPalace_helper.max_mp_id);
			aitem.add_type(-FPalace_helper.breast_size_id);
			aitem.add_type(-FPalace_helper.balls_size_id);
			aitem.set_number_of_uses(2);
			
			aitem.set_value(20);
			aitem.set_weight(2);
			return aitem;
		}
		
		public static function vial_of_goo():Alchemy_item{
			//selling NPC: fpalace_shopkeeper
			var aitem:Alchemy_item = new Alchemy_item("Vial o' Goo");
			aitem.set_dropped_description("a vial is laying on the ground here");
			aitem.set_inventory_description("The vial contains a strange sticky blue liquid.");
			aitem.set_use_description("</n> drinks down the vial, and can feel </noun> innards turn gooey.");
			aitem.set_image_id(FPalace_helper.unknown_img);
			aitem.set_identify_difficulty(15);
			aitem.add_change_effect(FPalace_races.race_goo());
			aitem.add_effect(FPalace_helper.lust_id, 15);
			aitem.add_effect(FPalace_helper.curr_hp_id, -1);
			aitem.add_effect(FPalace_helper.curr_mp_id, -1);
			aitem.add_effect(FPalace_helper.curr_fatigue_id, -1);
			
			aitem.add_type(FPalace_helper.lust_id);
			aitem.add_type(-FPalace_helper.curr_hp_id);
			aitem.add_type(-FPalace_helper.curr_mp_id);
			aitem.add_type(-FPalace_helper.curr_fatigue_id);
			aitem.add_type(FPalace_helper.will_id);
			aitem.add_type(-FPalace_helper.wis_id);
			aitem.add_type(FPalace_helper.vaginal_depth_id);
			aitem.add_type(-FPalace_helper.height_id);
			aitem.add_type(FPalace_helper.min_lust_id);
			aitem.set_number_of_uses(2);

			aitem.set_value(20);
			aitem.set_weight(2);
			return aitem;
		}
		
		public static function vial_of_ichor():Alchemy_item{
			//selling NPC: lux_invira_shopkeeper
			var aitem:Alchemy_item = new Alchemy_item("Vial of Spiders Ichor");
			aitem.set_dropped_description("a vile is laying on the ground here");
			aitem.set_inventory_description("The vial contains a strange sticky green substance.");
			aitem.set_use_description("</n> drinks down the vial, and seems more at home in a hive.");
			aitem.set_image_id(FPalace_helper.unknown_img);
			aitem.set_identify_difficulty(20);
			aitem.add_change_effect(FPalace_races.race_anthro_spider());
			aitem.add_effect(FPalace_helper.curr_fatigue_id, -1);
			aitem.add_effect(FPalace_helper.curr_hp_id, -1);
			aitem.add_effect(FPalace_helper.curr_mp_id, 1);
			aitem.add_effect(FPalace_helper.lust_id, -1);
			
			
			aitem.add_type(-FPalace_helper.curr_fatigue_id);
			aitem.add_type(-FPalace_helper.curr_hp_id);
			aitem.add_type(-FPalace_helper.lust_id);
			aitem.add_type(FPalace_helper.curr_mp_id);
			aitem.add_type(FPalace_helper.dex_id);
			aitem.add_type(-FPalace_helper.sex_appeal_id);
			aitem.add_type(FPalace_helper.anal_depth_id);
			aitem.add_type(-FPalace_helper.weight_id);
			aitem.add_type(FPalace_helper.bloat_id);
			
			aitem.set_number_of_uses(2);

			aitem.set_value(30);
			aitem.set_weight(2);
			return aitem;
		}
		
		public static function fishy_fruit():Alchemy_item{
			//selling NPC: job_chastity_witch
			var aitem:Alchemy_item = new Alchemy_item("Fishy Fruit");
			aitem.set_dropped_description("a fruit is laying on the ground here");
			aitem.set_inventory_description("This fruit is shaped plainly enough, but seems fishy somehow. ");
			aitem.set_use_description("</n> bites into the fruit, and feels a bit more at home in the water.");
			aitem.set_image_id(FPalace_helper.unknown_img);
						
			aitem.add_change_effect(FPalace_races.race_anthro_fish());
			aitem.add_effect(FPalace_helper.curr_fatigue_id, 2);
			
			aitem.add_type(FPalace_helper.curr_fatigue_id);
			aitem.add_type(FPalace_helper.will_id);
			aitem.add_type(-FPalace_helper.dex_id);			
			aitem.add_type(FPalace_helper.penis_girth_id);
			aitem.add_type(-FPalace_helper.erection_ratio_id);
			aitem.add_type(-FPalace_helper.age_id);
			
			aitem.set_identify_difficulty(20);
			aitem.set_number_of_uses(2);			
			
			aitem.set_value(20);
			return aitem;
		}
		
		public static function foxy_fruit():Alchemy_item{
			//selling NPC: N/A
			var aitem:Alchemy_item = new Alchemy_item("Foxy Fruit");
			aitem.set_dropped_description("a fruit is laying on the ground here");
			aitem.set_inventory_description("This strangely shaped red fruit seems to constantly slip out of your hands. ");
			aitem.set_use_description("</n> bites into the fruit, and </noun> eyes widen in surprise.");
			aitem.set_image_id(FPalace_helper.unknown_img);
						
			aitem.add_change_effect(FPalace_races.race_anthro_fox());
			aitem.add_effect(FPalace_helper.curr_fatigue_id, 4);
			
			aitem.add_type(FPalace_helper.curr_fatigue_id);
			aitem.add_type(FPalace_helper.int_id);
			aitem.add_type(-FPalace_helper.str_id);
			aitem.add_type(-FPalace_helper.waist_id);
			aitem.add_type(FPalace_helper.waist_id);
			
			aitem.add_type(-FPalace_helper.age_id);
			
			aitem.set_identify_difficulty(20);
			aitem.set_number_of_uses(2);			
			
			aitem.set_value(20);
			return aitem;
		}
		
		public static function penguins_pocky():Alchemy_item{
			//selling NPC: N/A
			var aitem:Alchemy_item = new Alchemy_item("Penguins Pocky");
			aitem.set_dropped_description("there is some candy on the ground");
			aitem.set_inventory_description("This length of chocolate coated biscuit sure looks tasty. ");
			aitem.set_use_description("</n> quickly crunches through the pocky, surprised to find a fishy after-taste.");
			aitem.set_image_id(FPalace_helper.unknown_img);
						
			aitem.add_change_effect(FPalace_races.race_anthro_penguin());
			aitem.add_effect(FPalace_helper.curr_fatigue_id, 1);
			aitem.add_effect(FPalace_helper.curr_hp_id, 1);
			
			aitem.add_type(FPalace_helper.curr_fatigue_id);
			aitem.add_type(FPalace_helper.curr_hp_id);
			
			aitem.add_type(FPalace_helper.sex_appeal_id);
			aitem.add_type(-FPalace_helper.dex_id);
			
			aitem.add_type(-FPalace_helper.goo_colour_id);
			aitem.add_type(FPalace_helper.cum_volume_id);			
			aitem.add_type(-FPalace_helper.hair_length_id);
			
			aitem.set_identify_difficulty(20);
			aitem.set_number_of_uses(2);			
			
			aitem.set_value(20);
			return aitem;
		}
		
		public static function rabbity_carrot():Alchemy_item{
			//selling NPC: equine_encampment_shopkeeper
			var aitem:Alchemy_item = new Alchemy_item("Rabbity Carrot");
			aitem.set_dropped_description("a carrot is laying on the ground here");
			aitem.set_inventory_description("The leaves on this carrot look suspiciously like a rabbit.");
			aitem.set_use_description("</n> bites into the carrot, and feels a bit more intuitive, and at home in nature.");
			aitem.set_image_id(FPalace_helper.unknown_img);
						
			aitem.add_change_effect(FPalace_races.race_anthro_rabbit());
			aitem.add_effect(FPalace_helper.curr_fatigue_id, 2);
			
			aitem.add_type(FPalace_helper.curr_fatigue_id);
			aitem.add_type(FPalace_helper.sex_appeal_id);
			aitem.add_type(-FPalace_helper.int_id);
			aitem.add_type(FPalace_helper.egg_fertility_id);
			aitem.add_type(-FPalace_helper.cum_volume_id);
			aitem.add_type(FPalace_helper.hips_id);
			
			aitem.set_identify_difficulty(20);
			aitem.set_number_of_uses(2);
			
			
			aitem.set_value(20);
			return aitem;
		}
		
		public static function mushrooms():Alchemy_item{
			//selling NPC: N/A
			var aitem:Alchemy_item = new Alchemy_item("Mushrooms");
			aitem.set_propogate();
			aitem.set_dropped_description("some mushrooms are growing from the ground here");
			aitem.set_inventory_description("These round red capped mushrooms have cute little white stems.");
			aitem.set_use_description("</n> eats the mushrooms happily, though </noun> stomach gurgles afterwards.");
			aitem.set_image_id(FPalace_helper.unknown_img);
			aitem.set_identify_difficulty(7);
			aitem.add_effect(FPalace_helper.curr_fatigue_id, -1);
			
			var consequence:Consequence = new Consequence();
				var tf:Tick_Effect = new Tick_Effect();
				tf.set_status_id(Tick_Effect.poisoned_status);
				var c2:Consequence = new Consequence();
				c2.add_consequence(FPalace_helper.curr_hp_id,-1, "</n> coughs up some blood. ", 0);
				tf.set_tick_consequence(3, c2);
				
			consequence.add_consequence(FPalace_helper.curr_hp_id,-1, "</n> feels a bit sick. ",0,0,0,-1, false, tf);
			
			aitem.add_consequence(consequence);
			
			aitem.add_type(FPalace_helper.max_hp_id);
			aitem.add_type(-FPalace_helper.max_weight_id);
			aitem.add_type(-FPalace_helper.max_fatigue_id);
			aitem.add_type(-FPalace_helper.curr_hp_id);
			aitem.add_type(-FPalace_helper.curr_fatigue_id);
			aitem.set_value(10);
			return aitem
		}
		
		public static function spent_tissues():Alchemy_item{
			//selling NPC: 
			var aitem:Alchemy_item = new Alchemy_item("Tissues");
			aitem.set_dropped_description("a pile of crusty tissues is lying on the ground");
			aitem.set_inventory_description("These crusty things are rough in some places, and still slimey in others.");
			aitem.set_use_description("</n> sniffs at the tissues and the scent immediately reminds </objnoun> of sex.");
			aitem.set_image_id(FPalace_helper.unknown_img);
			aitem.set_identify_difficulty(5);
			aitem.add_effect(FPalace_helper.curr_fatigue_id, -1);
			aitem.add_effect(FPalace_helper.lust_id, 10);
			
			aitem.add_type(FPalace_helper.lust_id);
			aitem.add_type(-FPalace_helper.curr_fatigue_id);
			aitem.add_type(FPalace_helper.max_fatigue_id);
			aitem.add_type(-FPalace_helper.max_lust_id);
			aitem.add_type(-FPalace_helper.max_mp_id);
			
			aitem.set_value(1);
			return aitem;
		}
		
		public static function devils_food_cake():Alchemy_item{
			//selling NPC: N/A
			var aitem:Alchemy_item = new Alchemy_item("Devils-food cake");
			aitem.set_dropped_description("there's a piece of cake on the ground");
			aitem.set_inventory_description("This cake smells sweetly of sulfur.");
			aitem.set_use_description("</n> consumes the cake.");
			aitem.set_image_id(FPalace_helper.unknown_img);
			aitem.set_identify_difficulty(15);
			aitem.add_change_effect(FPalace_races.race_demon());
			aitem.add_effect(FPalace_helper.curr_mp_id, 5);
			aitem.add_effect(FPalace_helper.lust_id, 25);
			aitem.add_effect(FPalace_helper.curr_hp_id, -2);
			
			aitem.add_type(FPalace_helper.curr_mp_id);
			aitem.add_type(FPalace_helper.lust_id);
			aitem.add_type(-FPalace_helper.curr_hp_id);
			
			aitem.add_type(-FPalace_helper.cha_id);
			aitem.add_type(FPalace_helper.sex_appeal_id);
			
			aitem.add_type(-FPalace_helper.skin_colour_id);
			aitem.add_type(FPalace_helper.scale_colour_id);
			aitem.add_type(-FPalace_helper.semen_fertility_id);
			
			aitem.set_value(20);
			return aitem;
		}
		
		public static function heavenly_hash():Alchemy_item{
			//selling NPC: N/A
			var aitem:Alchemy_item = new Alchemy_item("Heavenly Hash Ice Cream");
			aitem.set_dropped_description("there's a bowl on the ground");
			aitem.set_inventory_description("This bowl of ice cream smells absolutely heavenly.");
			aitem.set_use_description("</n> consumes the ice cream.");
			aitem.set_image_id(FPalace_helper.unknown_img);
			aitem.set_identify_difficulty(15);
			aitem.add_change_effect(FPalace_races.race_angel());
			aitem.add_effect(FPalace_helper.curr_hp_id, 5);
			aitem.add_effect(FPalace_helper.curr_fatigue_id, 5);
			aitem.add_effect(FPalace_helper.lust_id, -25);
			
			aitem.add_type(FPalace_helper.curr_fatigue_id);
			aitem.add_type(FPalace_helper.curr_hp_id);
			aitem.add_type(-FPalace_helper.lust_id);
			
			aitem.add_type(FPalace_helper.cha_id);
			aitem.add_type(-FPalace_helper.sex_appeal_id);
			
			aitem.add_type(FPalace_helper.skin_colour_id);
			aitem.add_type(-FPalace_helper.scale_colour_id);
			aitem.add_type(-FPalace_helper.vaginal_width_id);
			
			aitem.set_value(20);
			return aitem;
		}
		
		//EQUIPMENT
		
			//HEAD
		public static function bronze_salet():Equipment{
			//selling NPC: mensch_smith
			var equip:Equipment = new Equipment("Bronze Sallet");
			equip.add_crafting_requirement(textiles(),1);
			equip.add_crafting_requirement(bronze(),2);			
			
			equip.add_damage_resistance(FPalace_helper.slash_damage_type().get_id());
			equip.add_damage_resistance(FPalace_helper.pierce_damage_type().get_id());
			equip.add_damage_resistance(FPalace_helper.bludg_damage_type().get_id());
			equip.add_upgrade_slot(Upgrade_Item.upgrade_lining);
			equip.add_upgrade_slot(Upgrade_Item.upgrade_plates);
			equip.set_dropped_description("a helmet is laying on the ground");
			equip.set_inventory_description("This helmet looks to cover the entire face, with one long slim eyeslit.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.new_equip_slot(FPalace_helper.head_slot , 1);
			equip.new_cover_slot(FPalace_helper.head_slot,"A Bronze Sallet is completely covering </noun> head. ");
			equip.new_cover_image(FPalace_helper.head_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.hair_slot,"");
			equip.new_cover_slot(FPalace_helper.hair_slot,"</noun> <sd/"+FPalace_helper.hair_colour_id+"> hair flows from the bottom of </noun> sallet. ",FPalace_helper.hair_length_id, 12);
			equip.new_cover_image(FPalace_helper.hair_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.horn_slot,"");
			equip.new_cover_image(FPalace_helper.horn_slot,FPalace_helper.unknown_img);
			equip.set_identify_difficulty(12);
			
			equip.add_effect(FPalace_helper.con_id,1);
			equip.add_effect(FPalace_helper.max_hp_id,3);
			
			equip.set_value(21);
			equip.set_weight(5);
			return equip;
		}
		
		public static function shy_mask():Equipment{
			//selling NPC: correction_office_shopkeeper
			var equip:Equipment = new Equipment("Shy mask");
			equip.add_crafting_requirement(wood(),2);
			equip.add_damage_resistance(FPalace_helper.slash_damage_type().get_id());
			equip.add_damage_resistance(FPalace_helper.pierce_damage_type().get_id());
			equip.add_damage_resistance(FPalace_helper.bludg_damage_type().get_id());
			equip.set_dropped_description("a mask is laying on the ground");
			equip.set_inventory_description("This mask completely covers the entire face, with only two black eyes that almost appear painted on.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.new_equip_slot(FPalace_helper.head_slot , 1);
			equip.new_cover_slot(FPalace_helper.head_slot,"A mask is completely covering </noun> face, only two painted black eyes visible on the white surface. ");
			equip.new_cover_image(FPalace_helper.head_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.eyes_slot,"");
			equip.new_cover_image(FPalace_helper.eyes_slot,FPalace_helper.unknown_img);
			equip.set_identify_difficulty(25);
			
			equip.add_effect(FPalace_helper.max_hp_id,3);
			equip.add_effect(FPalace_helper.sex_appeal_id,-5);
			
			equip.set_value(11);
			equip.set_weight(1);
			return equip;
		}
			
		public static function gold_medallion():Equipment{
			//selling NPC: benevol_jeweller
			var equip:Equipment = new Equipment("Gold Medallion");
			equip.add_crafting_requirement(gold_bar(),1);
			equip.set_dropped_description("a medallion is lying on the ground");
			equip.set_inventory_description("A round hunk of gold with a crest on it.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.set_show_other_cover();
			equip.new_equip_slot(FPalace_helper.head_slot, 1);
			equip.new_cover_slot(FPalace_helper.head_slot,"</pronoun> is wearing a gold medallion around </noun> neck. ");
			equip.new_cover_image(FPalace_helper.head_slot,FPalace_helper.unknown_img);
			
			equip.add_effect(FPalace_helper.cha_id,1);
									
			equip.set_value(25);
			return equip;
		}
			
		public static function fancy_pee_cap():Equipment{
			//selling NPC: castilla_seamstress
			var equip:Equipment = new Equipment("Fancy Pee Cap");
			equip.add_crafting_requirement(textiles(),1);
			
			equip.add_damage_weakness(FPalace_helper.fire_damage_type().get_id());
			equip.add_upgrade_slot(Upgrade_Item.upgrade_lining);
			equip.set_dropped_description("a hat is lying on the ground");
			equip.set_inventory_description("This Blue and Red hat balloons out from it's brim.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.new_equip_slot(FPalace_helper.head_slot , 1);
			equip.new_cover_slot(FPalace_helper.head_slot,"A Blue and Red ballooning cap is covering </noun> head. ");
			equip.new_cover_image(FPalace_helper.head_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.hair_slot,"");
			equip.new_cover_slot(FPalace_helper.hair_slot,"</noun> <sd/"+FPalace_helper.hair_colour_id+"> hair flows from the bottom of </noun> cap. ",FPalace_helper.hair_length_id, 2);
			equip.new_cover_image(FPalace_helper.hair_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.horn_slot,"");
			equip.new_cover_image(FPalace_helper.horn_slot,FPalace_helper.unknown_img);
			equip.set_identify_difficulty(20);
			
			equip.add_effect(FPalace_helper.sex_appeal_id,-1);
			equip.add_effect(FPalace_helper.dex_id,1);
			equip.add_effect(FPalace_helper.con_id,1);
			equip.add_effect(FPalace_helper.max_hp_id,2);
			
			equip.set_value(9);
			return equip;
		}
		
		public static function baseball_cap():Equipment{
			//selling NPC: century_city_shopkeeper
			var equip:Equipment = new Equipment("Baseball Cap");
			equip.add_crafting_requirement(textiles(),1);
			equip.add_damage_weakness(FPalace_helper.fire_damage_type().get_id());
			equip.set_dropped_description("a hat is lying on the ground");
			equip.set_inventory_description("This baseball hat seems to be advertising something in an emroidered emblem on its front.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.new_equip_slot(FPalace_helper.head_slot , 1);
			equip.new_cover_slot(FPalace_helper.head_slot,"A Baseball cap is covering </noun> head. ");
			equip.new_cover_image(FPalace_helper.head_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.hair_slot,"");
			equip.new_cover_slot(FPalace_helper.hair_slot,"</noun> <sd/"+FPalace_helper.hair_colour_id+"> hair flows from the bottom of </noun> cap. ",FPalace_helper.hair_length_id, 2);
			equip.new_cover_image(FPalace_helper.hair_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.horn_slot,"");
			equip.new_cover_image(FPalace_helper.horn_slot,FPalace_helper.unknown_img);
			equip.set_identify_difficulty(20);
			
			equip.add_effect(FPalace_helper.sex_appeal_id,-1);
			equip.add_effect(FPalace_helper.max_hp_id,2);
			
			equip.set_value(4);
			
			return equip;
		}
			
		public static function cowboy_hat():Equipment{
			//selling NPC: freedom_farms_lilly
			var equip:Equipment = new Equipment("Cowboy Hat");
			equip.add_crafting_requirement(leather(),1);
			equip.add_upgrade_slot(Upgrade_Item.upgrade_lining);
			equip.set_dropped_description("a hat is lying on the ground");
			equip.set_inventory_description("A tough leather hat made for long days in the sun.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.new_equip_slot(FPalace_helper.head_slot , 1);
			equip.new_cover_slot(FPalace_helper.head_slot,"A Cowboy Hat is covering </noun> head. ");
			equip.new_cover_image(FPalace_helper.head_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.hair_slot,"");
			equip.new_cover_slot(FPalace_helper.hair_slot,"</noun> <sd/"+FPalace_helper.hair_colour_id+"> hair flows from the bottom of </noun> hat. ",FPalace_helper.hair_length_id, 2);
			equip.new_cover_image(FPalace_helper.hair_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.horn_slot,"");
			equip.new_cover_image(FPalace_helper.horn_slot,FPalace_helper.unknown_img);
			equip.set_identify_difficulty(20);
			equip.add_effect(FPalace_helper.sex_appeal_id,1);
			equip.add_effect(FPalace_helper.dex_id,1);
			equip.add_effect(FPalace_helper.con_id,1);
			equip.add_effect(FPalace_helper.max_hp_id,1);
			
			equip.set_skill_bonus(FPalace_skills.covert_id, -2);
			
			equip.set_value(15);
			return equip;
		}
			
		public static function silver_circlet():Equipment{
			//selling NPC: benevol_jeweller
			var equip:Equipment = new Equipment("Silver Circlet");
			equip.add_crafting_requirement(silver_bar(),1);
			equip.set_dropped_description("a Circlet is lying on the ground");
			equip.set_inventory_description("A gorgeous silver circlet incrusted with a leaf pattern.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.set_show_other_cover();
			equip.new_equip_slot(FPalace_helper.head_slot , 1);
			equip.new_cover_slot(FPalace_helper.head_slot,"</pronoun> is wearing a silver circlet incrusted with designs. ");
			equip.new_cover_image(FPalace_helper.head_slot,FPalace_helper.unknown_img);
			equip.set_identify_difficulty(25);
			equip.add_effect(FPalace_helper.wis_id,2);
			equip.add_effect(FPalace_helper.sex_appeal_id,2);
			equip.add_effect(FPalace_helper.cha_id,2);
			equip.add_effect(FPalace_helper.dex_id,1);
			equip.add_effect(FPalace_helper.max_hp_id,1);
			
			equip.set_value(37);
			return equip;
		}
		
		public static function goggles():Equipment{
			//selling NPC: industria_seamstress
			var equip:Equipment = new Equipment("Goggles");
			equip.add_crafting_requirement(glass(),1);
			equip.add_crafting_requirement(wood(),1);
			equip.set_dropped_description("a pair of goggles are lying on the ground");
			equip.set_inventory_description("A set of goggles, thick and protective of the eyes. Supposedly. ");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.new_equip_slot(FPalace_helper.head_slot, 1);
			equip.new_cover_slot(FPalace_helper.head_slot,"</noun> eyes are covered by goggles that hook around the back of </noun> head. ");
			equip.new_cover_image(FPalace_helper.head_slot,FPalace_helper.unknown_img);
			equip.new_cover_image(FPalace_helper.eyes_slot,FPalace_helper.unknown_img);
			equip.set_identify_difficulty(15);
			
			equip.add_effect(FPalace_helper.cha_id,-1);
			equip.add_effect(FPalace_helper.con_id,1);
			equip.add_effect(FPalace_helper.max_hp_id,1);
			
			equip.set_value(17);
			return equip;
		}
		
		public static function black_rimmed_glasses():Equipment{
			//selling NPC: school_store_shopkeeper
			var equip:Equipment = new Equipment("Black Rimmed Glasses");
			equip.add_crafting_requirement(glass(),1);
			equip.add_crafting_requirement(wood(),1);
			equip.set_dropped_description("a pair of glasses are lying on the ground");
			equip.set_inventory_description("A set of Black Rimmed glasses, whose lenses you find to just be flat glass.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.new_equip_slot(FPalace_helper.head_slot, 1);
			equip.new_cover_slot(FPalace_helper.head_slot,"</noun> eyes are covered by black rimmed glasses that hook around </noun> </rn> ears. ");
			equip.new_cover_image(FPalace_helper.head_slot,FPalace_helper.unknown_img);
			equip.new_cover_image(FPalace_helper.eyes_slot,FPalace_helper.unknown_img);
			equip.set_identify_difficulty(15);
			
			equip.add_effect(FPalace_helper.cha_id,-1);
			equip.add_effect(FPalace_helper.int_id,2);
			equip.add_effect(FPalace_helper.max_hp_id,1);
			
			equip.set_value(32);
			return equip;
		}
		
		public static function monocle():Equipment{
			//selling NPC: N/A
			var equip:Equipment = new Equipment("Black Rimmed Glasses");
			equip.add_crafting_requirement(glass(),1);
			equip.add_crafting_requirement(gold_bar(),1);
			equip.set_dropped_description("a pair of glasses are lying on the ground");
			equip.set_inventory_description("A single monocle, with accompanying length of chain.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.new_equip_slot(FPalace_helper.eyes_slot, 1);
			equip.new_cover_slot(FPalace_helper.eyes_slot,"one of </noun> eyes is covered by a monocle </pronoun> is squinting to keep in place. ");
			equip.new_cover_image(FPalace_helper.eyes_slot,FPalace_helper.unknown_img);
			equip.set_identify_difficulty(15);
			
			equip.add_effect(FPalace_helper.cha_id,2);
			equip.add_effect(FPalace_helper.int_id,-1);
			
			equip.set_value(45);
			return equip;
		}
		
		public static function red_lipstick():Equipment{
			//selling NPC: fpalace_shopkeeper
			var equip:Equipment = new Equipment("Red Lipstick");
			equip.set_dropped_description("a stick of lipstick is on the ground");
			equip.set_inventory_description("A stick of lipstick that extends when you twirl the base.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.set_show_other_cover();
			equip.new_equip_slot(FPalace_helper.head_slot, 1);
			equip.new_cover_slot(FPalace_helper.head_slot,"</noun> </rn> lips are a bright shade of red. ");
			equip.new_cover_image(FPalace_helper.head_slot,FPalace_helper.unknown_img);
			equip.set_identify_difficulty(10);
			
			equip.add_effect(FPalace_helper.cha_id,1);
			equip.add_effect(FPalace_helper.sex_appeal_id,1);
			
			equip.set_skill_bonus(FPalace_skills.covert_id, -2);
						
			equip.set_value(5);
			return equip;
		}
			
		public static function bunny_ears():Equipment{
			//selling NPC: N/A
			var equip:Equipment = new Equipment("Bunny Ears");
			equip.add_crafting_requirement(textiles(),1);
			equip.add_crafting_requirement(silk(),1);
			equip.add_damage_weakness(FPalace_helper.fire_damage_type().get_id());
			equip.set_dropped_description("a set of novelty ears are on the ground");
			equip.set_inventory_description("This set of novelty ears looks uncomfortable, but sexy.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.new_equip_slot(FPalace_helper.head_slot , 1);
			equip.new_cover_slot(FPalace_helper.head_slot,"At first glance </pronoun> appears to have bunny ears, but you quickly see the plastic strap holding </noun> hair back, exposing </noun> </rn> ears. ");
			equip.new_cover_image(FPalace_helper.head_slot,FPalace_helper.unknown_img);
			equip.set_identify_difficulty(12);
			
			
			equip.add_effect(FPalace_helper.wis_id,-1);
			equip.add_effect(FPalace_helper.sex_appeal_id,2);
			equip.add_effect(FPalace_helper.cha_id,2);
			equip.add_effect(FPalace_helper.con_id,-1);
			equip.add_effect(FPalace_helper.max_hp_id,1);
			
			equip.set_skill_bonus(FPalace_skills.covert_id, -2);
			
			equip.set_value(22);
			return equip;
		}
		
		public static function sunglasses():Equipment{
			//selling NPC: century_city_shopkeeper
			var equip:Equipment = new Equipment("Sunglasses");
			equip.add_crafting_requirement(glass(),1);
			equip.add_crafting_requirement(wood(),1);
			equip.set_dropped_description("a pair of glasses are lying on the ground");
			equip.set_inventory_description("The lenses in these glasses are nearly pitch black.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.new_equip_slot(FPalace_helper.head_slot, 1);
			equip.new_cover_slot(FPalace_helper.head_slot,"</noun> eyes are covered by sunglasses that hook around </noun> </rn> ears. ");
			equip.new_cover_image(FPalace_helper.head_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.eyes_slot,"");
			equip.new_cover_image(FPalace_helper.eyes_slot,FPalace_helper.unknown_img);
			equip.set_identify_difficulty(15);
			equip.add_effect(FPalace_helper.cha_id,2);
			equip.add_effect(FPalace_helper.max_hp_id,1);
			equip.set_skill_bonus(FPalace_skills.perception_id, -5);
			
			equip.set_value(12);
			return equip;
		}
		
		public static function blue_surgical_mask():Equipment{
			//selling NPC: N/A
			var equip:Equipment = new Equipment("Surgical Mask");
			equip.add_crafting_requirement(textiles(),1);
			equip.add_damage_weakness(FPalace_helper.fire_damage_type().get_id());
			equip.set_dropped_description("a face-mask is on the ground here");
			equip.set_inventory_description("This blue surgical mask is somewhat inhuman looking, but would probably protect from disease.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.new_equip_slot(FPalace_helper.head_slot, 1);
			equip.new_cover_slot(FPalace_helper.head_slot,"Most of </noun> face is covered by a blue surgical mask that hook around </noun> </rn> ears with white elastic bands. ");
			equip.new_cover_image(FPalace_helper.head_slot,FPalace_helper.unknown_img);
			equip.set_identify_difficulty(10);
			equip.add_effect(FPalace_helper.cha_id,-1);
			equip.add_effect(FPalace_helper.con_id,2);
			equip.add_effect(FPalace_helper.max_hp_id,1);
			
			equip.set_value(12);
			return equip;
		}
		
			//HAIR
		public static function rapunzels_ribbon():Equipment{
			//selling NPC: N/A
			var equip:Equipment = new Equipment("Ribbon");
			equip.add_damage_weakness(FPalace_helper.fire_damage_type().get_id());
			equip.set_dropped_description("a piece of silk is on the ground");
			equip.set_inventory_description("This ribbon looks funtional and sexy.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.new_equip_slot(FPalace_helper.hair_slot , 1);
			equip.new_cover_slot(FPalace_helper.hair_slot,"</pronoun> is wearing a ribbon that pulls her </noun> hair back, exposing </noun> </rn> ears. ");
			equip.new_cover_image(FPalace_helper.head_slot,FPalace_helper.unknown_img);
			equip.set_identify_difficulty(12);
			
			equip.add_effect(FPalace_helper.sex_appeal_id,2);
			equip.add_effect(FPalace_helper.cha_id,1);
			equip.add_effect(FPalace_helper.max_hp_id,1);
			
			equip.set_skill_bonus(FPalace_skills.covert_id, -2);
			
			var a:Action = new Action();
			a.set_dialogue("",0);
			
			var tef_chall:Challenge = new Challenge();
			tef_chall.set_attack_stat(FPalace_helper.hair_length_id);
			tef_chall.set_defense_stat(-1, 1);
			tef_chall.set_variability(0);
			
			var tef_con:Consequence = new Consequence();//0
			
			var tf:Tick_Effect = new Tick_Effect();
			tf.set_status_id(Tick_Effect.rapunzels_ribbon_status);
			var c2:Consequence = new Consequence();
			c2.add_consequence(FPalace_helper.hair_length_id,1, "", 0);
			
			tf.set_tick_consequence(Main.t1_hour,c2);
			
			tef_con.add_consequence(FPalace_helper.curr_hp_id,0, "", 0,0,0,-1,false,tf);
			tef_con.add_consequence(FPalace_helper.curr_hp_id,0, "", -1);
			
			a.add_challenge(tef_chall, tef_con);
			
			equip.add_action(a);
			
			tef_con = new Consequence();
			tef_con.add_remove_status(Tick_Effect.rapunzels_ribbon_status);
			
			equip.add_remove_consequence(tef_con);
			
			equip.set_value(50);
			return equip;
		}
			
			//TORSO
		public static function spandex_suit():Equipment{
			//selling NPC: century_city_clothing_store_clerk			
			var equip:Equipment = new Equipment("Spandex suit");
			equip.add_crafting_requirement(plastics(),2);
			equip.add_upgrade_slot(Upgrade_Item.upgrade_lining);
			equip.set_dropped_description("a piece of plastic is on the ground");
			equip.set_inventory_description("This looks like a skintight spandex suit.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.new_equip_slot(FPalace_helper.torso_slot,1);
			equip.set_equip_condition(FPalace_helper.breast_size_id, 4);
			equip.set_equip_condition(FPalace_helper.bloat_id, 5);

			equip.new_cover_slot(FPalace_helper.torso_slot,"</pronoun> is wearing a skin tight spandex suit. ");
			equip.new_cover_slot(FPalace_helper.torso_slot,"</pronoun> is wearing a skin tight spandex suit that disdends around </noun> pregnant belly. ", FPalace_helper.bloat_id,2);			
			equip.new_cover_image(FPalace_helper.torso_slot,FPalace_helper.unknown_img);
			//this one needs to be variable dependent on the stat; - this works
			equip.new_cover_slot(FPalace_helper.breasts_slot,"the top of </noun> spandex buldges slightly from </noun> <sd/"+FPalace_helper.breast_size_id+"> breasts. ");
			equip.new_cover_slot(FPalace_helper.breasts_slot,"The spandex is struggling to contain </noun> <sd/"+FPalace_helper.breast_size_id+"> breasts. ",FPalace_helper.breast_size_id,3);
			equip.new_cover_image(FPalace_helper.breasts_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.cock_slot,"",-1,0,0,5);
			equip.new_cover_slot(FPalace_helper.cock_slot,"The lower half of </noun> spandex is being stretched as </noun> <sd/"+FPalace_helper.penis_length_id+"> </rn> cock knocks it about. ",FPalace_helper.penis_length_id, 12);
			equip.new_cover_image(FPalace_helper.cock_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.balls_slot,"",-1,0,0,5);
			equip.new_cover_image(FPalace_helper.balls_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.vag_slot,"",-1,0,0,5);
			equip.new_cover_image(FPalace_helper.vag_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.clit_slot,"");
			equip.new_cover_image(FPalace_helper.clit_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.hips_slot,"");
			equip.new_cover_image(FPalace_helper.hips_id,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.arms_slot,"");
			equip.new_cover_image(FPalace_helper.arms_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.legs_slot,"");
			equip.new_cover_image(FPalace_helper.legs_slot,FPalace_helper.unknown_img);
			equip.set_identify_difficulty(10);
			equip.add_effect(FPalace_helper.max_hp_id,2);
			equip.set_skill_bonus(FPalace_skills.covert_id, -1);
			
			equip.set_value(10);
			equip.set_weight(1);
			return equip;
		}
		
		public static function bronze_breastplate():Equipment{
			//selling NPC: mensch_smith
			var equip:Equipment = new Equipment("Bronze Breastplate");
			equip.add_crafting_requirement(textiles(),2);
			equip.add_crafting_requirement(bronze(),6);
			equip.add_damage_resistance(FPalace_helper.slash_damage_type().get_id());
			equip.add_damage_resistance(FPalace_helper.pierce_damage_type().get_id());
			equip.add_damage_resistance(FPalace_helper.bludg_damage_type().get_id());
			equip.add_upgrade_slot(Upgrade_Item.upgrade_lining);
			equip.add_upgrade_slot(Upgrade_Item.upgrade_plates);
			equip.set_dropped_description("a breastplate is on the ground");
			equip.set_inventory_description("A bronze breastplate, with pectorals pounded out but worn from use.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.new_equip_slot(FPalace_helper.torso_slot,1);
			equip.set_equip_condition(FPalace_helper.breast_size_id, 4);
			equip.set_equip_condition(FPalace_helper.bloat_id, 2);

			equip.new_cover_slot(FPalace_helper.torso_slot,"</pronoun> is wearing a bronze breastplate. ");
			equip.new_cover_image(FPalace_helper.torso_slot,FPalace_helper.unknown_img);
			//this one needs to be variable dependent on the stat; - this works
			equip.new_cover_slot(FPalace_helper.breasts_slot,"",-1,0,0,5);
			equip.new_cover_slot(FPalace_helper.breasts_slot,"The breastplate can't contain </noun> breasts, and </n> can see them trying to escape from the top. ",FPalace_helper.breast_size_id,3);
			equip.new_cover_image(FPalace_helper.breasts_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.udder_slot,"");
			equip.new_cover_image(FPalace_helper.udder_slot,FPalace_helper.unknown_img);
			equip.set_identify_difficulty(10);
			equip.add_effect(FPalace_helper.max_hp_id,10);
			equip.set_skill_bonus(FPalace_skills.covert_id, -5);
			
			equip.set_value(35);
			equip.set_weight(25);
			return equip;
		}
		
		public static function red_tunic():Equipment{
			//selling NPC: ahimsa_seamstress
			var equip:Equipment = new Equipment("Red Tunic");
			equip.add_crafting_requirement(textiles(),4);
			equip.add_damage_weakness(FPalace_helper.fire_damage_type().get_id());
			equip.add_upgrade_slot(Upgrade_Item.upgrade_lining);
			equip.set_dropped_description("a tunic is on the ground");
			equip.set_inventory_description("A bright red shirt that extends down to mid thigh.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.new_equip_slot(FPalace_helper.torso_slot,1);
			equip.set_equip_condition(FPalace_helper.breast_size_id, 4);
			equip.set_equip_condition(FPalace_helper.bloat_id, 3);

			equip.new_cover_slot(FPalace_helper.torso_slot,"</pronoun> is wearing a tight red tunic. ");
			equip.new_cover_slot(FPalace_helper.torso_slot,"</pronoun> is wearing a tight red tunic that disdends around </noun> pregnant belly. ", FPalace_helper.bloat_id,2);
			equip.new_cover_image(FPalace_helper.torso_slot,FPalace_helper.unknown_img);
			//this one needs to be variable dependent on the stat; - this works
			equip.new_cover_slot(FPalace_helper.breasts_slot,"the top of </noun> tunic has some small bumps in it where </noun> breasts push against it. ",-1,0,0,1);
			equip.new_cover_slot(FPalace_helper.breasts_slot,"The tunic can't contain </noun> breasts, and it looks as though it is starting to fray around </noun> <sd/"+FPalace_helper.breast_size_id+"> mounds. ",FPalace_helper.breast_size_id,3);
			equip.new_cover_image(FPalace_helper.breasts_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.udder_slot,"The tunic is stretched at the stomach, barely containing </noun> udder. ");
			equip.new_cover_image(FPalace_helper.udder_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.cock_slot,"",-1,0,0,5);
			equip.new_cover_slot(FPalace_helper.cock_slot,"</noun> <sd/"+FPalace_helper.penis_length_id+"> cock hangs past the bottom edge of </noun> tunic. ",FPalace_helper.penis_length_id, 7);
			equip.new_cover_image(FPalace_helper.cock_slot, Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.balls_slot,"",-1,0,0,5);
			equip.new_cover_image(FPalace_helper.balls_slot, Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.vag_slot,"",-1,0,0,5);
			equip.new_cover_image(FPalace_helper.vag_slot, Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.clit_slot,"");
			equip.new_cover_image(FPalace_helper.clit_slot, Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.hips_slot,"");
			equip.new_cover_image(FPalace_helper.hips_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.arms_slot,"");
			equip.new_cover_image(FPalace_helper.arms_slot,FPalace_helper.unknown_img);
			equip.set_identify_difficulty(15);
			equip.add_effect(FPalace_helper.sex_appeal_id,1);
			equip.add_effect(FPalace_helper.max_hp_id,3);
			
			equip.set_value(18);
			equip.set_weight(2);
			return equip;
		}
		
		public static function blue_apron():Equipment{
			//selling NPC: castilla_seamstress
			var equip:Equipment = new Equipment("Blue Apron");
			equip.add_crafting_requirement(textiles(),2);
			equip.add_damage_weakness(FPalace_helper.fire_damage_type().get_id());
			equip.set_dropped_description("an apron is on the ground");
			equip.set_inventory_description("A light blue apron that extends down to mid thigh.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.new_equip_slot(FPalace_helper.torso_slot,1);

			equip.new_cover_slot(FPalace_helper.torso_slot,"</pronoun> is wearing a light blue apron. ");
			equip.new_cover_slot(FPalace_helper.torso_slot,"</pronoun> is wearing a light blue apron that disdends around </noun> pregnant belly. ", FPalace_helper.bloat_id,2);
			equip.new_cover_image(FPalace_helper.torso_slot,FPalace_helper.unknown_img);
			//this one needs to be variable dependent on the stat; - this works
			equip.new_cover_slot(FPalace_helper.breasts_slot,"the top of </noun> apron has some small bumps in it where </noun> breasts push against it. ",-1,0,0,1);
			equip.new_cover_slot(FPalace_helper.breasts_slot,"The apron can't contain </noun> breasts, and it looks as though </noun> </sd"+FPalace_helper.breast_size_id+"> mounds are ready to leap from its top. ",FPalace_helper.breast_size_id,3);
			equip.new_cover_image(FPalace_helper.breasts_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.udder_slot,"The apron is disdends at the stomach, </noun> udder causing it to jut away from the rest of </objnoun>. ");
			equip.new_cover_image(FPalace_helper.udder_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.cock_slot,"",-1,0,0,5);
			equip.new_cover_slot(FPalace_helper.cock_slot,"</noun> </sd"+FPalace_helper.penis_length_id+"> cock hangs past the bottom edge of </noun> apron. ",FPalace_helper.penis_length_id, 7);
			equip.new_cover_image(FPalace_helper.cock_slot, Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.balls_slot,"",-1,0,0,5);
			equip.new_cover_image(FPalace_helper.balls_slot, Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.vag_slot,"",-1,0,0,5);
			equip.new_cover_image(FPalace_helper.vag_slot, Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.clit_slot,"");
			equip.new_cover_image(FPalace_helper.clit_slot, Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.hips_slot,"");
			equip.new_cover_image(FPalace_helper.hips_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.arms_slot,"");
			equip.new_cover_image(FPalace_helper.arms_slot,FPalace_helper.unknown_img);
			equip.set_identify_difficulty(10);
			equip.add_effect(FPalace_helper.max_hp_id,3);
			
			equip.set_value(11);
			equip.set_weight(2);
			return equip;
		}
		
		public static function maternity_bra():Equipment{
			//selling NPC: nunnery_shopkeeper
			var equip:Equipment = new Equipment("Maternity Bra");
			equip.set_dropped_description("a bra is on the ground");
			equip.set_inventory_description("A classy red bra.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.set_equip_condition(FPalace_helper.breast_size_id, 5);
			equip.new_equip_slot(FPalace_helper.torso_slot);
			
			equip.new_cover_slot(FPalace_helper.torso_slot,"</pronoun> is wearing a frumpy maternity bra. ");
			equip.new_cover_image(FPalace_helper.torso_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.breasts_slot,"A maternity is pressing </noun> </sd"+FPalace_helper.breast_size_id+"> breasts together and in place as they proudly pressing against the white fabric. ");
			equip.new_cover_slot(FPalace_helper.breasts_slot,"</noun> maternity bra is overflowing with flesh as </noun> </sd"+FPalace_helper.breast_size_id+"> breasts burst around the constricting edges and straps. ",FPalace_helper.breast_size_id,3);
			equip.new_cover_slot(FPalace_helper.nipples_slot,"");
			equip.new_cover_image(FPalace_helper.breasts_slot,FPalace_helper.unknown_img);
			equip.set_identify_difficulty(17);
			equip.add_effect(FPalace_helper.sex_appeal_id,-2);
			equip.add_effect(FPalace_helper.max_weight_id,3);
			var a:Action = new Action();
			a.set_dialogue("",0);
			
			var tef_chall:Challenge = new Challenge();
			tef_chall.set_attack_stat(FPalace_helper.milk_volume_id);
			tef_chall.set_defense_stat(-1, 1);
			tef_chall.set_variability(0);
			
			var tef_con:Consequence = new Consequence();//0
			
			var tf:Tick_Effect = new Tick_Effect();
			tf.set_status_id(Tick_Effect.maternity_bra_status);
			var c2:Consequence = new Consequence();
			c2.add_consequence(FPalace_helper.milk_volume_id,50, "", 0);
			
			tf.set_tick_consequence(Main.t1_hour,c2);
			
			tef_con.add_consequence(FPalace_helper.curr_hp_id,0, "", 0,0,0,-1,false,tf);
			tef_con.add_consequence(FPalace_helper.curr_hp_id,0, "", -1);
			
			a.add_challenge(tef_chall, tef_con);
			
			equip.add_action(a);
			
			tef_con = new Consequence();
			tef_con.add_remove_status(Tick_Effect.maternity_bra_status);
			
			equip.add_remove_consequence(tef_con);
			
			equip.set_value(50);
			
			return equip;
		}
		
		public static function training_bra():Equipment{
			//selling NPC: 
			var equip:Equipment = new Equipment("Training Bra");
			equip.add_damage_weakness(FPalace_helper.fire_damage_type().get_id());
			equip.set_dropped_description("a bra is on the ground");
			equip.set_inventory_description("A bra with large padded inserts.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.set_equip_condition(FPalace_helper.breast_size_id, 5);
			equip.new_equip_slot(FPalace_helper.torso_slot);
			
			equip.new_cover_slot(FPalace_helper.torso_slot,"</pronoun> is wearing a training bra. ");
			equip.new_cover_image(FPalace_helper.torso_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.breasts_slot,"A training bra is pressing </noun> </sd"+FPalace_helper.breast_size_id+"> breasts together and in place as they proudly pressing against the white fabric. ");
			equip.new_cover_slot(FPalace_helper.breasts_slot,"</noun> training bra is overflowing with flesh as </noun> </sd"+FPalace_helper.breast_size_id+"> breasts burst around the constricting edges and straps. ",FPalace_helper.breast_size_id,2);
			equip.new_cover_slot(FPalace_helper.nipples_slot,"");
			equip.new_cover_image(FPalace_helper.breasts_slot,FPalace_helper.unknown_img);
			equip.set_identify_difficulty(17);
			equip.add_effect(FPalace_helper.sex_appeal_id,1);
			equip.add_effect(FPalace_helper.breast_size_id,1);
			equip.add_effect(FPalace_helper.max_hp_id,2);
			equip.add_effect(FPalace_helper.max_weight_id,2);
			equip.set_skill_bonus(FPalace_skills.covert_id, -2);
			var a:Action = new Action();
			a.set_dialogue("",0);
			
			var tef_chall:Challenge = new Challenge();
			tef_chall.set_attack_stat(FPalace_helper.breast_size_id);
			tef_chall.set_defense_stat(-1, 1);
			tef_chall.set_variability(0);
			
			var tef_con:Consequence = new Consequence();//0
			
			var tf:Tick_Effect = new Tick_Effect();
			tf.set_status_id(Tick_Effect.training_bra_status);
			var c2:Consequence = new Consequence();
			c2.add_consequence(FPalace_helper.breast_size_id,0.1, "", 0);
			c2.add_consequence(FPalace_helper.lust_id,10, "", 0);
			
			tf.set_tick_consequence(Main.t1_hour,c2);
			
			tef_con.add_consequence(FPalace_helper.curr_hp_id,0, "", 0,0,0,-1,false,tf);
			tef_con.add_consequence(FPalace_helper.curr_hp_id,0, "", -1);
			
			a.add_challenge(tef_chall, tef_con);
			
			equip.add_action(a);
			
			tef_con = new Consequence();
			tef_con.add_remove_status(Tick_Effect.training_bra_status);
			
			equip.add_remove_consequence(tef_con);
			
			equip.set_value(50);
			return equip;
		}
			
		public static function red_bra():Equipment{
			//selling NPC: lux_invira_lingerie
			var equip:Equipment = new Equipment("Red Bra");
			equip.add_crafting_requirement(textiles(),1);
			equip.add_crafting_requirement(silk(),1);
			equip.add_damage_weakness(FPalace_helper.fire_damage_type().get_id());
			equip.set_dropped_description("a bra is on the ground");
			equip.set_inventory_description("A classy red bra.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.set_equip_condition(FPalace_helper.breast_size_id, 5);
			equip.new_equip_slot(FPalace_helper.torso_slot);
			
			equip.new_cover_slot(FPalace_helper.torso_slot,"</pronoun> is wearing a classy red bra. ");
			equip.new_cover_image(FPalace_helper.torso_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.breasts_slot,"A red bra is pressing </noun> </sd"+FPalace_helper.breast_size_id+"> breasts together and in place as they proudly pressing against the red fabric. ");
			equip.new_cover_slot(FPalace_helper.breasts_slot,"</noun> red bra is overflowing with flesh as </noun> </sd"+FPalace_helper.breast_size_id+"> breasts burst around the constricting edges and straps. ",FPalace_helper.breast_size_id,3);
			equip.new_cover_slot(FPalace_helper.nipples_slot,"");
			equip.new_cover_image(FPalace_helper.breasts_slot,FPalace_helper.unknown_img);
			equip.set_identify_difficulty(17);
			equip.add_effect(FPalace_helper.sex_appeal_id,2);
			equip.add_effect(FPalace_helper.max_hp_id,2);
			equip.add_effect(FPalace_helper.max_weight_id,3);
			equip.set_value(30);
			return equip;
		}
		
		public static function pushup_bra():Equipment{
			//selling NPC: lux_invira_lingerie
			var equip:Equipment = new Equipment("Pushup Bra");
			equip.add_crafting_requirement(textiles(),1);
			equip.add_crafting_requirement(silk(),1);
			equip.add_damage_weakness(FPalace_helper.fire_damage_type().get_id());
			equip.set_dropped_description("a bra is on the ground");
			equip.set_inventory_description("A bra with large padded inserts.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.set_equip_condition(FPalace_helper.breast_size_id, 4);
			equip.new_equip_slot(FPalace_helper.torso_slot);
			
			equip.new_cover_slot(FPalace_helper.torso_slot,"</pronoun> is wearing a pushup bra. ");
			equip.new_cover_image(FPalace_helper.torso_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.breasts_slot,"A pushup bra is pressing </noun> </sd"+FPalace_helper.breast_size_id+"> breasts together and in place as they proudly pressing against the red fabric. ");
			equip.new_cover_slot(FPalace_helper.breasts_slot,"</noun> pushup bra is overflowing with flesh as </noun> </sd"+FPalace_helper.breast_size_id+"> breasts burst around the constricting edges and straps. ",FPalace_helper.breast_size_id,2);
			equip.new_cover_slot(FPalace_helper.nipples_slot,"");
			equip.new_cover_image(FPalace_helper.breasts_slot,FPalace_helper.unknown_img);
			equip.set_identify_difficulty(17);
			equip.add_effect(FPalace_helper.sex_appeal_id,1);
			equip.add_effect(FPalace_helper.breast_size_id,1);
			equip.add_effect(FPalace_helper.max_hp_id,2);
			equip.add_effect(FPalace_helper.max_weight_id,2);
			
			equip.set_skill_bonus(FPalace_skills.covert_id, -2);
			
			equip.set_value(23);
			return equip;
		}
			
		public static function dirty_haltertop():Equipment{
			//selling NPC: equine_encampment_shopkeeper
			var equip:Equipment = new Equipment("Dirty haltertop");
			equip.add_crafting_requirement(textiles(),2);
			equip.add_damage_weakness(FPalace_helper.fire_damage_type().get_id());
			equip.set_dropped_description("a shirt is on the ground");
			equip.set_inventory_description("This stained and dirty haltertop looks like it might have been white once.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.set_equip_condition(FPalace_helper.breast_size_id, 7);
			equip.new_equip_slot(FPalace_helper.torso_slot ,1);

			equip.new_cover_slot(FPalace_helper.torso_slot,"</pronoun> is wearing a stained and dirty haltertop. ");
			equip.new_cover_image(FPalace_helper.torso_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.breasts_slot,"The haltertop is barely covering </noun> </sd"+FPalace_helper.breast_size_id+"> breasts, glimpses of them appearing as the loose fabric moves. ");
			equip.new_cover_slot(FPalace_helper.breasts_slot,"</noun> dirty haltertop doesn't cover </noun> </sd"+FPalace_helper.breast_size_id+"> breasts at all, as they squeeze and tear at the fabric. ",FPalace_helper.breast_size_id,3);
			equip.new_cover_slot(FPalace_helper.nipples_slot,"");
			equip.new_cover_image(FPalace_helper.breasts_slot,FPalace_helper.unknown_img);
			equip.set_identify_difficulty(13);
			equip.add_effect(FPalace_helper.sex_appeal_id,1);
			equip.add_effect(FPalace_helper.max_hp_id,1);
			equip.set_value(12);
			return equip;
		}
		
		public static function leather_tube_top():Equipment{
			//selling NPC: lux_invira_shopkeeper
			var equip:Equipment = new Equipment("Leather tube top");
			equip.add_crafting_requirement(leather(),2);
			equip.set_dropped_description("a shirt is on the ground");
			equip.set_inventory_description("A leather tube top made of animal skins.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.set_equip_condition(FPalace_helper.breast_size_id, 6);
			equip.new_equip_slot(FPalace_helper.breasts_slot);
			equip.new_equip_slot(FPalace_helper.torso_slot ,1);

			equip.new_cover_slot(FPalace_helper.torso_slot,"</pronoun> is wearing a rough cut leather tube-top. ");
			equip.new_cover_image(FPalace_helper.torso_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.breasts_slot,"A rough cut leather tube top is tauntly holding </noun> </sd"+FPalace_helper.breast_size_id+"> breasts steady and in place as they proudly press against the fabric. ");
			equip.new_cover_slot(FPalace_helper.breasts_slot,"</noun> rough cut leather tube top is visibly stretched, wavy lines apparent between </noun> </sd"+FPalace_helper.breast_size_id+"> breasts. ",FPalace_helper.breast_size_id,3);
			equip.new_cover_slot(FPalace_helper.nipples_slot,"");
			equip.new_cover_image(FPalace_helper.breasts_slot,FPalace_helper.unknown_img);
			equip.set_identify_difficulty(12);
			equip.add_effect(FPalace_helper.sex_appeal_id,1);
			equip.add_effect(FPalace_helper.max_hp_id,2);
			equip.set_value(12);
			return equip;
		}
		
		public static function Blue_silk_shirt():Equipment{
			//selling NPC: industria_seamstress
			var equip:Equipment = new Equipment("Blue Silk Shirt");
			equip.add_crafting_requirement(silk(),4);
			equip.add_damage_weakness(FPalace_helper.fire_damage_type().get_id());
			equip.add_upgrade_slot(Upgrade_Item.upgrade_lining);
			equip.set_dropped_description("a shirt is on the ground");
			equip.set_inventory_description("A blue silk shirt thats smooth fabric doesn't stretch, no matter how hard you pull.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.set_equip_condition(FPalace_helper.breast_size_id, 5);
			equip.set_equip_condition(FPalace_helper.bloat_id, 3);
			equip.new_equip_slot(FPalace_helper.torso_slot ,1);

			equip.new_cover_slot(FPalace_helper.torso_slot,"</pronoun> is wearing a blue silk shirt. ");
			equip.new_cover_slot(FPalace_helper.torso_slot,"</pronoun> is wearing a blue silk shirt that disdends around </noun> pregnant belly. ", FPalace_helper.bloat_id,2);
			equip.new_cover_image(FPalace_helper.torso_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.breasts_slot,"",-1,0,0,5);
			equip.new_cover_slot(FPalace_helper.breasts_slot,"There are barely noticible bumps in the chest of </noun> blue silk shirt. ",FPalace_helper.breast_size_id, 1);
			equip.new_cover_slot(FPalace_helper.breasts_slot,"</noun> blue silk shirt is lifted from </noun> chest by </sd"+FPalace_helper.breast_size_id+"> breasts, sensually falling back to follow </noun> curves. ",FPalace_helper.breast_size_id,3);
			equip.new_cover_slot(FPalace_helper.nipples_slot,"");
			equip.new_cover_image(FPalace_helper.breasts_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.udder_slot,"The shirt is stretched at the stomach by </noun> udder. ");
			equip.new_cover_image(FPalace_helper.udder_slot,FPalace_helper.unknown_img);
			equip.set_identify_difficulty(11);
			equip.add_effect(FPalace_helper.max_hp_id,3);

			equip.set_value(31);
			equip.set_weight(2);
			return equip;
		}
		
		public static function black_tshirt():Equipment{
			//selling NPC: century_city_clothing_store_clerk
			var equip:Equipment = new Equipment("Black T-shirt");
			equip.add_crafting_requirement(textiles(),4);
			equip.add_damage_weakness(FPalace_helper.fire_damage_type().get_id());
			equip.set_dropped_description("a shirt is on the ground");
			equip.set_inventory_description("A black t-shirt. You half expect there to be some sort of colourful design on the front, but find it conspiciously absent.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.set_equip_condition(FPalace_helper.breast_size_id, 10);
			equip.set_equip_condition(FPalace_helper.bloat_id, 7);
			equip.new_equip_slot(FPalace_helper.torso_slot ,1);

			equip.new_cover_slot(FPalace_helper.torso_slot,"</pronoun> is wearing a black t-shirt. ");
			equip.new_cover_slot(FPalace_helper.torso_slot,"</pronoun> is wearing a black t-shirt that disdends around </noun> pregnant belly. ", FPalace_helper.bloat_id,2);
			equip.new_cover_image(FPalace_helper.torso_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.breasts_slot,"A black t-shirt is tauntly holding </noun> <sd/"+FPalace_helper.breast_size_id+"> breasts steady and in place as they do their best to be visible. ");
			equip.new_cover_slot(FPalace_helper.breasts_slot,"</noun> black t-shirt is visibly stretched, wavy lines apparent between </noun> <sd/"+FPalace_helper.breast_size_id+"> breasts as they visibly stretch </noun> t-shirt. ",FPalace_helper.breast_size_id,3);
			equip.new_cover_image(FPalace_helper.breasts_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.udder_slot,"The shirt is stretched at the stomach by </noun> udder. ");
			equip.new_cover_slot(FPalace_helper.nipples_slot,"");
			equip.new_cover_image(FPalace_helper.udder_slot,FPalace_helper.unknown_img);
			equip.set_identify_difficulty(12);
			equip.add_effect(FPalace_helper.max_hp_id,2);

			equip.set_value(11);
			equip.set_weight(2);
			return equip;
		}
		
		public static function white_tshirt():Equipment{
			//selling NPC: century_city_clothing_store_clerk
			var equip:Equipment = new Equipment("White T-shirt");
			equip.add_crafting_requirement(textiles(),4);
			equip.add_damage_weakness(FPalace_helper.fire_damage_type().get_id());
			equip.set_dropped_description("a shirt is on the ground");
			equip.set_inventory_description("A plain white t-shirt, with short sleaves, and stretchy fabric.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.set_equip_condition(FPalace_helper.breast_size_id, 15);
			equip.set_equip_condition(FPalace_helper.bloat_id, 8);
			equip.new_equip_slot(FPalace_helper.torso_slot,1);

			equip.new_cover_slot(FPalace_helper.torso_slot,"</pronoun> is wearing a white t-shirt. ");
			equip.new_cover_slot(FPalace_helper.torso_slot,"</pronoun> is wearing a white t-shirt that disdends around </noun> pregnant belly. ", FPalace_helper.bloat_id,2);
			equip.new_cover_image(FPalace_helper.torso_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.breasts_slot,"The white t-shirt is pressed out by </noun> <sd/"+FPalace_helper.breast_size_id+"> breast. ");
			equip.new_cover_slot(FPalace_helper.breasts_slot,"</noun> white t-shirt is visibly stretched, wavy lines apparent between </noun> <sd/"+FPalace_helper.breast_size_id+"> breasts as they desperately try to break free. ",FPalace_helper.breast_size_id,3);
			equip.new_cover_slot(FPalace_helper.nipples_slot,"</noun> nipples are clearly visible through the white material of </noun> shirt. ");
			equip.new_cover_image(FPalace_helper.breasts_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.udder_slot,"The shirt is stretched at the stomach by </noun> udder. ");
			equip.new_cover_image(FPalace_helper.udder_slot,FPalace_helper.unknown_img);
			equip.set_identify_difficulty(12);
			equip.add_effect(FPalace_helper.sex_appeal_id,1);
			equip.add_effect(FPalace_helper.max_hp_id,2);
			equip.set_value(16);
			return equip;
		}
		
		public static function white_blouse():Equipment{
			//selling NPC: castilla_seamstress
			var equip:Equipment = new Equipment("White Blouse");
			equip.add_crafting_requirement(textiles(),4);
			equip.add_damage_weakness(FPalace_helper.fire_damage_type().get_id());
			equip.set_dropped_description("a shirt is on the ground");
			equip.set_inventory_description("A starched white blouse, with a button up front.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.set_equip_condition(FPalace_helper.breast_size_id, 6);
			equip.set_equip_condition(FPalace_helper.bloat_id, 6);
			equip.new_equip_slot(FPalace_helper.torso_slot,1);

			equip.new_cover_slot(FPalace_helper.torso_slot,"</pronoun> is wearing a white blouse. ");
			equip.new_cover_slot(FPalace_helper.torso_slot,"</pronoun> is wearing a white blouse that disdends around </noun> pregnant belly. ", FPalace_helper.bloat_id,2);
			equip.new_cover_image(FPalace_helper.torso_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.breasts_slot,"A white blouse is tauntly holding </noun> <sd/"+FPalace_helper.breast_size_id+"> breasts as they gently jut from either side of the buttons. ");
			equip.new_cover_slot(FPalace_helper.breasts_slot,"</noun> white blouse is visibly stretched, the buttons fighting against </noun> <sd/"+FPalace_helper.breast_size_id+"> breasts. ",FPalace_helper.breast_size_id,3);
			equip.new_cover_slot(FPalace_helper.nipples_slot,"</noun> nipples are clearly visible through the white material of </noun> shirt. ", FPalace_helper.nipple_size_id, 1);
			equip.new_cover_image(FPalace_helper.breasts_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.udder_slot,"The blouses buttons struggle to contain </noun> udder. ");
			equip.new_cover_image(FPalace_helper.udder_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.arms_slot,"");
			equip.new_cover_image(FPalace_helper.arms_slot,FPalace_helper.unknown_img);
			equip.set_identify_difficulty(14);
			equip.add_effect(FPalace_helper.sex_appeal_id,1);
			equip.add_effect(FPalace_helper.max_hp_id,2);
			equip.set_value(16);
			equip.set_weight(2);
			return equip;
		}
		
		public static function white_dress_shirt():Equipment{
			//selling NPC: castilla_seamstress
			var equip:Equipment = new Equipment("White Dress Shirt");
			equip.add_crafting_requirement(textiles(),4);
			equip.add_damage_weakness(FPalace_helper.fire_damage_type().get_id());
			equip.set_dropped_description("a shirt is on the ground");
			equip.set_inventory_description("A starched white shirt, with a button up front.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.set_equip_condition(FPalace_helper.breast_size_id, 15);
			equip.set_equip_condition(FPalace_helper.bloat_id, 15);
			equip.new_equip_slot(FPalace_helper.torso_slot,1);

			equip.new_cover_slot(FPalace_helper.torso_slot,"</pronoun> is wearing a white dress shirt. ");
			equip.new_cover_slot(FPalace_helper.torso_slot,"</pronoun> is wearing a white dress shirt that disdends around </noun> pregnant belly. ", FPalace_helper.bloat_id,2);
			equip.new_cover_image(FPalace_helper.torso_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.breasts_slot,"A white dress shirt is tauntly holding </noun> <sd/"+FPalace_helper.breast_size_id+"> breasts as they gently jut from either side of the buttons. ");
			equip.new_cover_slot(FPalace_helper.breasts_slot,"</noun> white dress shirt is visibly stretched, the buttons fighting against </noun> <sd/"+FPalace_helper.breast_size_id+"> breasts. ",FPalace_helper.breast_size_id,3);
			equip.new_cover_slot(FPalace_helper.nipples_slot,"</noun> nipples are clearly visible through the white material of </noun> shirt. ", FPalace_helper.nipple_size_id, 1);
			equip.new_cover_image(FPalace_helper.breasts_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.udder_slot,"The dress shirts buttons struggle to contain </noun> udder. ");
			equip.new_cover_image(FPalace_helper.udder_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.arms_slot,"");
			equip.new_cover_image(FPalace_helper.arms_slot,FPalace_helper.unknown_img);
			equip.set_identify_difficulty(14);
			equip.add_effect(FPalace_helper.sex_appeal_id,1);
			equip.add_effect(FPalace_helper.max_hp_id,2);
			equip.set_value(16);
			equip.set_weight(2);
			return equip;
		}
		
		public static function plaid_blazer():Equipment{
			//selling NPC: school_store_shopkeeper
			var equip:Equipment = new Equipment("Plaid Blazer");
			equip.add_crafting_requirement(textiles(),4);
			equip.add_damage_weakness(FPalace_helper.fire_damage_type().get_id());
			equip.add_upgrade_slot(Upgrade_Item.upgrade_lining);
			equip.set_dropped_description("a shirt is on the ground");
			equip.set_inventory_description("A plaid blazer, like those a student at a private school would wear.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.set_equip_condition(FPalace_helper.breast_size_id, 15);
			equip.set_equip_condition(FPalace_helper.bloat_id, 15);
			equip.new_equip_slot(FPalace_helper.torso_slot,1);

			equip.new_cover_slot(FPalace_helper.torso_slot,"</pronoun> is wearing a plaid blazer. ");
			equip.new_cover_slot(FPalace_helper.torso_slot,"</pronoun> is wearing a plaid blazer that disdends around </noun> pregnant belly. ", FPalace_helper.bloat_id,2);
			equip.new_cover_image(FPalace_helper.torso_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.breasts_slot,"A plaid blazer is tauntly holding </noun> <sd/"+FPalace_helper.breast_size_id+"> breasts as they gently jut from either side of the buttons. ");
			equip.new_cover_slot(FPalace_helper.breasts_slot,"</noun> plaid blazer is visibly stretched, the buttons fighting against </noun> <sd/"+FPalace_helper.breast_size_id+"> breasts. ",FPalace_helper.breast_size_id,3);
			equip.new_cover_slot(FPalace_helper.nipples_slot,"</noun> nipples are clearly visible through the white material of </noun> blazer. ", FPalace_helper.nipple_size_id, 1);
			equip.new_cover_image(FPalace_helper.breasts_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.udder_slot,"The blazer is stretched at the stomach by </noun> udder. ");
			equip.new_cover_image(FPalace_helper.udder_slot,FPalace_helper.unknown_img);
			equip.set_identify_difficulty(14);
			equip.add_effect(FPalace_helper.max_hp_id,2);
			equip.set_value(11);
			equip.set_weight(2);
			return equip;
		}
		
		public static function blue_scrub_top():Equipment{
			//selling NPC: N/A
			var equip:Equipment = new Equipment("Scrubs top");
			equip.add_crafting_requirement(textiles(),4);
			equip.add_damage_weakness(FPalace_helper.fire_damage_type().get_id());
			equip.set_dropped_description("a shirt is on the ground");
			equip.set_inventory_description("A solid blue top that is surprisingly form fitting.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.set_equip_condition(FPalace_helper.breast_size_id, 10);
			equip.set_equip_condition(FPalace_helper.bloat_id, 10);
			equip.new_equip_slot(FPalace_helper.torso_slot,1);
			equip.new_equip_slot(FPalace_helper.arms_slot ,2);

			equip.new_cover_slot(FPalace_helper.torso_slot,"</pronoun> is wearing a blue scrub shirt. ");
			equip.new_cover_slot(FPalace_helper.torso_slot,"</pronoun> is wearing a blue scrub shirt that disdends around </noun> pregnant belly. ", FPalace_helper.bloat_id,2);
			equip.new_cover_image(FPalace_helper.torso_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.breasts_slot,"A blue scrub shirt is barely disturbed by </noun> <sd/"+FPalace_helper.breast_size_id+"> breast. ");
			equip.new_cover_slot(FPalace_helper.breasts_slot,"</noun> blue scrub shirt is visibly stretched, wavy lines apparent between </noun> <sd/"+FPalace_helper.breast_size_id+"> breasts as they do their best to escape the constricting garment. ",FPalace_helper.breast_size_id,3);
			equip.new_cover_slot(FPalace_helper.nipples_slot,"</noun> nipples are clearly visible through the blue material of </noun> shirt. ");
			equip.new_cover_image(FPalace_helper.breasts_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.udder_slot,"The scrubs are stretched at the stomach by </noun> udder. ");
			equip.new_cover_image(FPalace_helper.udder_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.arms_slot,"");
			equip.new_cover_image(FPalace_helper.arms_slot,FPalace_helper.unknown_img);
			equip.set_identify_difficulty(16);
			equip.add_effect(FPalace_helper.sex_appeal_id,1);
			equip.add_effect(FPalace_helper.max_hp_id,2);
			equip.set_value(16);
			equip.set_weight(2);
			return equip;
		}
		
		public static function black_leather_jacket():Equipment{
			//selling NPC: N/A
			var equip:Equipment = new Equipment("Black Leather Jacket");
			equip.add_crafting_requirement(leather(),4);
			equip.add_damage_resistance(FPalace_helper.slash_damage_type().get_id());
			equip.add_upgrade_slot(Upgrade_Item.upgrade_lining);
			equip.set_dropped_description("a Jacket is on the ground");
			equip.set_inventory_description("This Black Leather Jacket is the sort you'd expect to find on a biker.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.new_equip_slot(FPalace_helper.arms_slot,2);
			equip.new_equip_slot(FPalace_helper.torso_slot,1);

			equip.new_cover_slot(FPalace_helper.torso_slot,"</pronoun> is wearing a black leather jacket. ");
			equip.new_cover_slot(FPalace_helper.torso_slot,"</pronoun> is wearing a black leather jacket that disdends around </noun> pregnant belly. ", FPalace_helper.bloat_id,2);
			equip.new_cover_image(FPalace_helper.torso_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.breasts_slot,"A black leather jacket is closed and shows only the briefest hint of what is underneath. ");
			equip.new_cover_slot(FPalace_helper.breasts_slot,"</noun> black leather jacket has been pushed open by </noun> <sd/"+FPalace_helper.breast_size_id+"> breasts. ",FPalace_helper.breast_size_id,3);
			equip.new_cover_slot(FPalace_helper.nipples_slot,"");
			equip.new_cover_image(FPalace_helper.breasts_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.arms_slot,"");
			equip.new_cover_image(FPalace_helper.arms_slot,FPalace_helper.unknown_img);
			equip.set_identify_difficulty(19);
			equip.add_effect(FPalace_helper.sex_appeal_id,1);
			equip.add_effect(FPalace_helper.max_hp_id,5);
			equip.set_value(22);
			equip.set_weight(5);
			return equip;
		}
		
		public static function Red_fur_overcoat():Equipment{
			//selling NPC: N/A
			var equip:Equipment = new Equipment("Fur Overcoat");
			equip.add_crafting_requirement(textiles(),8);
			equip.add_damage_weakness(FPalace_helper.fire_damage_type().get_id());
			equip.show_other_cover();
			equip.add_upgrade_slot(Upgrade_Item.upgrade_lining);
			equip.set_dropped_description("a robe is on the ground here");
			equip.set_inventory_description("A gorgeous fur overcoat that screams \"Money\"");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.new_equip_slot(FPalace_helper.torso_slot,1);

			equip.new_cover_slot(FPalace_helper.torso_slot,"</pronoun> is wearing a rich, and warm, looking red fur overcoat. ");
			equip.new_cover_slot(FPalace_helper.torso_slot,"</pronoun> is wearing a rich, warm looking red fur overcoat that disdends around </noun> pregnant belly. ", FPalace_helper.bloat_id,2);
			equip.new_cover_image(FPalace_helper.torso_slot,FPalace_helper.unknown_img);
			//this one needs to be variable dependent on the stat; - this works
			equip.new_cover_slot(FPalace_helper.breasts_slot,"the top of </noun> robe is tightly drawn, but the bulge of </noun> <sd/"+FPalace_helper.breast_size_id+"> breasts is never the less evident. ");
			equip.new_cover_slot(FPalace_helper.breasts_slot,"The robe can't contain </noun> <sd/"+FPalace_helper.breast_size_id+"> breasts, and the edges of </noun> areola are showing from </noun> orbs shoving out from the rest of </noun>. ",FPalace_helper.breast_size_id,3);
			equip.new_cover_slot(FPalace_helper.breasts_slot,"</noun> <sd/"+FPalace_helper.breast_size_id+"> breasts are completely bare to the world despite </noun> robe. ",FPalace_helper.breast_size_id,6);
			equip.new_cover_slot(FPalace_helper.nipples_slot,"and are capped by <sd/"+FPalace_helper.nipple_size_id+"> nipples. ",FPalace_helper.breast_size_id,15);
			equip.new_cover_image(FPalace_helper.breasts_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.cock_slot,"",-1,0,0,5);
			equip.new_cover_slot(FPalace_helper.cock_slot,"The lower half of </noun> robe is being torn assunder as </noun> <sd/"+FPalace_helper.penis_length_id+"> </rn> cock knocks it about. ",FPalace_helper.penis_length_id, 12);
			equip.new_cover_image(FPalace_helper.cock_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.balls_slot,"",-1,0,0,5);
			equip.new_cover_image(FPalace_helper.balls_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.vag_slot,"",-1,0,0,5);
			equip.new_cover_image(FPalace_helper.vag_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.clit_slot,"");
			equip.new_cover_image(FPalace_helper.clit_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.hips_slot,"");
			equip.new_cover_image(FPalace_helper.hips_id,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.arms_slot,"");
			equip.new_cover_image(FPalace_helper.arms_slot,FPalace_helper.unknown_img);
			equip.set_identify_difficulty(13);
			equip.add_effect(FPalace_helper.max_hp_id,7);
			
			equip.set_skill_bonus(FPalace_skills.covert_id, -5);
			
			equip.set_value(19);
			equip.set_weight(10);
			return equip;
		}
		
		public static function robe():Equipment{
			//selling NPC: FPalace_guardian
			var equip:Equipment = new Equipment("Robe");
			equip.add_crafting_requirement(textiles(),8);
			equip.add_damage_weakness(FPalace_helper.fire_damage_type().get_id());
			equip.add_upgrade_slot(Upgrade_Item.upgrade_lining);
			equip.set_dropped_description("a robe is on the ground here");
			equip.set_inventory_description("Just a standard white bathrobe, with fluffy white trim.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.new_equip_slot(FPalace_helper.torso_slot,1);

			equip.new_cover_slot(FPalace_helper.torso_slot,"</pronoun> is wearing a loose fitting robe. ");
			equip.new_cover_slot(FPalace_helper.torso_slot,"</pronoun> is wearing a loose fitting robe that disdends around </noun> pregnant belly. ", FPalace_helper.bloat_id,2);
			equip.new_cover_image(FPalace_helper.torso_slot,FPalace_helper.unknown_img);
			//this one needs to be variable dependent on the stat; - this works
			equip.new_cover_slot(FPalace_helper.breasts_slot,"the top of </noun> robe is tightly drawn, but </noun> <sd/"+FPalace_helper.breast_size_id+"> breasts do their best to be noticed. ");
			equip.new_cover_slot(FPalace_helper.breasts_slot,"The robe can't contain </noun> <sd/"+FPalace_helper.breast_size_id+"> breasts, and the edges of </noun> areola are showing from </noun> orbs shoving out from the rest of </noun>. ",FPalace_helper.breast_size_id,3);
			equip.new_cover_slot(FPalace_helper.breasts_slot,"</noun> <sd/"+FPalace_helper.breast_size_id+"> breasts are completely bare to the world despite </noun> robe. ",FPalace_helper.breast_size_id,6);
			equip.new_cover_slot(FPalace_helper.nipples_slot,"and are capped by <sd/"+FPalace_helper.nipple_size_id+"> nipples. ",FPalace_helper.breast_size_id,15);
			equip.new_cover_image(FPalace_helper.breasts_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.cock_slot,"",-1,0,0,5);
			equip.new_cover_slot(FPalace_helper.cock_slot,"The lower half of </noun> robe is being torn assunder as </noun> <sd/"+FPalace_helper.penis_length_id+"> </rn> cock knocks it about. ",FPalace_helper.penis_length_id, 12);
			equip.new_cover_image(FPalace_helper.cock_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.balls_slot,"",-1,0,0,5);
			equip.new_cover_image(FPalace_helper.balls_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.vag_slot,"",-1,0,0,5);
			equip.new_cover_image(FPalace_helper.vag_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.clit_slot,"");
			equip.new_cover_image(FPalace_helper.clit_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.hips_slot,"\n\n");
			equip.new_cover_image(FPalace_helper.hips_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.arms_slot,"");
			equip.new_cover_image(FPalace_helper.arms_slot,FPalace_helper.unknown_img);
			equip.set_identify_difficulty(16);
			equip.add_effect(FPalace_helper.sex_appeal_id,2);
			equip.add_effect(FPalace_helper.max_hp_id,5);
			
			equip.set_skill_bonus(FPalace_skills.covert_id, -5);
			
			equip.set_value(25);
			equip.set_weight(5);
			return equip;
		}
		
		public static function habit():Equipment{
			//selling NPC: nunnery_shopkeeper
			var equip:Equipment = new Equipment("Nuns habit");
			equip.add_crafting_requirement(textiles(),8);
			equip.add_damage_weakness(FPalace_helper.fire_damage_type().get_id());
			equip.add_upgrade_slot(Upgrade_Item.upgrade_lining);
			equip.set_dropped_description("a robe is on the ground here");
			equip.set_inventory_description("This is a nuns habit, intended to hide the form of the wearer. ");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.new_equip_slot(FPalace_helper.torso_slot,1);

			equip.new_cover_slot(FPalace_helper.torso_slot,"</pronoun> is wearing a loose fitting habit that gives no hint to </noun> form. ");
			equip.new_cover_image(FPalace_helper.torso_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.breasts_slot,"");
			equip.new_cover_slot(FPalace_helper.nipples_slot,"");
			equip.new_cover_image(FPalace_helper.breasts_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.cock_slot,"",-1,0,0,5);
			equip.new_cover_image(FPalace_helper.cock_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.balls_slot,"",-1,0,0,5);
			equip.new_cover_image(FPalace_helper.balls_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.vag_slot,"",-1,0,0,5);
			equip.new_cover_image(FPalace_helper.vag_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.clit_slot,"");
			equip.new_cover_image(FPalace_helper.clit_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.hips_slot,"\n\n");
			equip.new_cover_image(FPalace_helper.hips_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.arms_slot,"");
			equip.new_cover_image(FPalace_helper.arms_slot,FPalace_helper.unknown_img);
			equip.set_identify_difficulty(16);
			equip.add_effect(FPalace_helper.sex_appeal_id,-2);
			equip.add_effect(FPalace_helper.max_hp_id,5);
			
			equip.set_skill_bonus(FPalace_skills.covert_id, -5);
			
			equip.set_value(5);
			equip.set_weight(5);
			return equip;
		}
		
		public static function bloody_lab_coat():Equipment{
			//selling NPC: N/A
			var equip:Equipment = new Equipment("Lab coat");
			equip.add_crafting_requirement(textiles(),6);
			equip.add_damage_weakness(FPalace_helper.fire_damage_type().get_id());
			equip.set_dropped_description("a coat is on the ground here.");
			equip.set_inventory_description("This long coat has a disquieting amount of blood on it.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.new_equip_slot(FPalace_helper.torso_slot,1);

			equip.new_cover_slot(FPalace_helper.torso_slot,"</pronoun> is wearing a lab coat with a disquieting amount of blood on it. ");
			equip.new_cover_slot(FPalace_helper.torso_slot,"</pronoun> is wearing a lab coat with a disquieting amount of blood on it. The coat disdends around </noun> pregnant belly. ", FPalace_helper.bloat_id,2);
			equip.new_cover_image(FPalace_helper.torso_slot,FPalace_helper.unknown_img);
			//this one needs to be variable dependent on the stat; - this works
			equip.new_cover_slot(FPalace_helper.breasts_slot,"the top of </noun> lab coat is tightly drawn, but </noun> <sd/"+FPalace_helper.breast_size_id+"> breasts are doing their best to open it. ");
			equip.new_cover_slot(FPalace_helper.breasts_slot,"The lab coat can't contain </noun> <sd/"+FPalace_helper.breast_size_id+"> breasts, and the edges of </noun> areola are showing from </noun> orbs shoving out from the rest of </noun>. ",FPalace_helper.breast_size_id,3);
			equip.new_cover_slot(FPalace_helper.breasts_slot,"</noun> <sd/"+FPalace_helper.breast_size_id+"> breasts are completely bare to the world despite </noun> lab coat. ",FPalace_helper.breast_size_id,6);
			equip.new_cover_slot(FPalace_helper.nipples_slot,"and are capped by<sd/"+FPalace_helper.nipple_size_id+"> nipples. ",FPalace_helper.breast_size_id,15);
			equip.new_cover_image(FPalace_helper.breasts_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.cock_slot,"",-1,0,0,5);
			equip.new_cover_slot(FPalace_helper.cock_slot,"The lower half of </noun> lab coat is being knocked about as </noun> <sd/"+FPalace_helper.penis_length_id+"> </rn> cock flaps about. ",FPalace_helper.penis_length_id, 12);
			equip.new_cover_image(FPalace_helper.cock_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.balls_slot,"",-1,0,0,5);
			equip.new_cover_image(FPalace_helper.balls_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.vag_slot,"",-1,0,0,5);
			equip.new_cover_image(FPalace_helper.vag_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.clit_slot,"");
			equip.new_cover_image(FPalace_helper.clit_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.hips_slot,"\n\n");
			equip.new_cover_image(FPalace_helper.hips_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.arms_slot,"");
			equip.new_cover_image(FPalace_helper.arms_slot,FPalace_helper.unknown_img);
			equip.set_identify_difficulty(18);
			equip.add_effect(FPalace_helper.sex_appeal_id,-1);
			equip.add_effect(FPalace_helper.max_hp_id,2);
			
			equip.set_value(9);
			equip.set_weight(5);
			
			return equip;
		}
		
		public static function prosperous_one_piece():Equipment{
			//selling NPC: N/A
			var equip:Equipment = new Equipment("One Piece Bathing Suit");
			equip.add_damage_weakness(FPalace_helper.fire_damage_type().get_id());
			equip.add_upgrade_slot(Upgrade_Item.upgrade_lining);
			equip.set_dropped_description("a leotard is on the ground");
			equip.set_inventory_description("A tight fitting leotard like one would use for bathing.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.new_equip_slot(FPalace_helper.torso_slot,1);
			equip.new_equip_slot(FPalace_helper.hips_slot,1);

			equip.new_cover_slot(FPalace_helper.torso_slot,"</pronoun> is wearing a nearly skin-tight blue leotard. ");
			equip.new_cover_slot(FPalace_helper.torso_slot,"</pronoun> is wearing a nearly skin-tight blue leotard that disdends around </noun> pregnant belly. ", FPalace_helper.bloat_id,2);
			equip.new_cover_image(FPalace_helper.torso_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.breasts_slot,"</noun> <sd/"+FPalace_helper.breast_size_id+"> breasts are trying as they jut out from the rest of </noun> chest. ");
			equip.new_cover_slot(FPalace_helper.breasts_slot,"</noun> <sd/"+FPalace_helper.breast_size_id+"> breasts are barely contained by the garment. ",FPalace_helper.breast_size_id,3);
			equip.new_cover_slot(FPalace_helper.nipples_slot,"");
			equip.new_cover_image(FPalace_helper.breasts_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.udder_slot,"The suit is stretched at the stomach by </noun> udder. ");
			equip.new_cover_image(FPalace_helper.udder_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.cock_slot,"In the crotch there is a bulge clearly indicating the presence of male genitalia. ");
			equip.new_cover_slot(FPalace_helper.cock_slot,"There is a <sd/"+FPalace_helper.penis_length_id+"> bulge in the fabric jutting from </noun> nether regions. ",FPalace_helper.penis_length_id, 8);
			equip.new_cover_image(FPalace_helper.cock_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.balls_slot,"</noun> <sd/"+FPalace_helper.balls_size_id+"> scrotum is clearly trying to escape from the outfit, each orb struggling seperately. ");
			equip.new_cover_image(FPalace_helper.balls_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.vag_slot,"",-1,0,0,5);
			equip.new_cover_image(FPalace_helper.vag_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.clit_slot,"");
			equip.new_cover_image(FPalace_helper.clit_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.hips_slot,"");
			equip.new_cover_image(FPalace_helper.hips_slot,FPalace_helper.unknown_img);
			equip.set_identify_difficulty(19);
			equip.add_effect(FPalace_helper.sex_appeal_id,4);
			equip.add_effect(FPalace_helper.max_hp_id,5);
			equip.add_effect(FPalace_helper.max_weight_id,4);
			equip.set_skill_bonus(FPalace_skills.covert_id, -5);
			
			var a:Action = new Action();
			a.set_dialogue("",0);
			
			var tef_chall:Challenge = new Challenge();
			tef_chall.set_attack_stat(FPalace_helper.bust_id);
			tef_chall.set_defense_stat(-1, 1);
			tef_chall.set_variability(0);
			
			var tef_con:Consequence = new Consequence();//0
			
			var tf:Tick_Effect = new Tick_Effect();
			tf.set_status_id(Tick_Effect.one_piece_status);
			var chall:Challenge = new Challenge();
			chall.set_attack_stat(FPalace_helper.bust_id);
			chall.set_defense_stat(-1, 36);
			chall.set_variability(0);
			var c2:Consequence = new Consequence();
			c2.amt_by_roll_flag();
			c2.set_max_damage(0.2);
			c2.add_consequence(FPalace_helper.bust_id,Consequence.amt_from_roll_const, "", 0);
			c2.add_consequence(-FPalace_helper.bust_id,Consequence.amt_from_roll_const, "", -1);
			
			tf.set_tick_consequence(Main.t1_hour,c2,chall);
			
			chall = new Challenge();
			chall.set_attack_stat(FPalace_helper.waist_id);
			chall.set_defense_stat(-1, 24);
			chall.set_variability(0);
			c2 = new Consequence();
			c2.amt_by_roll_flag();
			c2.set_max_damage(0.2);
			c2.add_consequence(FPalace_helper.waist_id,Consequence.amt_from_roll_const, "", 0);
			c2.add_consequence(-FPalace_helper.waist_id,Consequence.amt_from_roll_const, "", -1);
			
			tf.set_tick_consequence(Main.t1_hour,c2,chall);
			
			chall = new Challenge();
			chall.set_attack_stat(FPalace_helper.hips_id);
			chall.set_defense_stat(-1, 36);
			chall.set_variability(0);
			c2 = new Consequence();
			c2.amt_by_roll_flag();
			c2.set_max_damage(0.2);
			c2.add_consequence(FPalace_helper.hips_id,Consequence.amt_from_roll_const, "", 0);
			c2.add_consequence(-FPalace_helper.hips_id,Consequence.amt_from_roll_const, "", -1);
			
			tf.set_tick_consequence(Main.t1_hour,c2,chall);
			
			chall = new Challenge();
			chall.set_attack_stat(FPalace_helper.breast_size_id);
			chall.set_defense_stat(-1, 4.9);
			chall.set_variability(0);
			c2 = new Consequence();
			c2.amt_by_roll_flag();
			c2.set_max_damage(0.2);
			c2.add_consequence(FPalace_helper.breast_size_id,Consequence.amt_from_roll_const, "", 0);
			c2.add_consequence(-FPalace_helper.breast_size_id,Consequence.amt_from_roll_const, "", -1);
			
			tf.set_tick_consequence(Main.t1_hour,c2,chall);
			
			tef_con.add_consequence(FPalace_helper.curr_hp_id,0, "", 0,0,0,-1,false,tf);
			tef_con.add_consequence(FPalace_helper.curr_hp_id,0, "", -1);
			
			a.add_challenge(tef_chall, tef_con);
			
			equip.add_action(a);
			
			tef_con = new Consequence();
			tef_con.add_remove_status(Tick_Effect.one_piece_status);
			
			equip.add_remove_consequence(tef_con);
			
			equip.set_value(50);			
			equip.set_weight(5);
			
			return equip;
		}
		
		public static function bunny_suit():Equipment{
			//selling NPC: N/A
			var equip:Equipment = new Equipment("Bunny suit");
			equip.add_crafting_requirement(textiles(),4);
			equip.add_damage_weakness(FPalace_helper.fire_damage_type().get_id());
			equip.add_upgrade_slot(Upgrade_Item.upgrade_lining);
			equip.set_dropped_description("a leotard is on the ground");
			equip.set_inventory_description("A tight fitting leotard with a large white ball of fluff where ones bum would end up.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.set_equip_condition(FPalace_helper.penis_length_id, 22);
			equip.set_equip_condition(FPalace_helper.breast_size_id, 12);
			equip.set_equip_condition(FPalace_helper.bloat_id, 12);
			equip.new_equip_slot(FPalace_helper.torso_slot,1);
			equip.new_equip_slot(FPalace_helper.hips_slot,1);

			equip.new_cover_slot(FPalace_helper.torso_slot,"</pronoun> is wearing a nearly skin-tight red leotard with a large fluffy bulge on top of </noun> ass. ");
			equip.new_cover_slot(FPalace_helper.torso_slot,"</pronoun> is wearing a nearly skin-tight red leotard with a large fluffy bulge on top of </noun> ass. The leotard disdends around </noun> pregnant belly. ", FPalace_helper.bloat_id,2);
			equip.new_cover_image(FPalace_helper.torso_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.breasts_slot,"You can see a teardrop of flesh where the leotard is cut out for a much better endowed woman, though </noun> <sd/"+FPalace_helper.breast_size_id+"> breasts are trying as they jut out from the rest of </noun> chest. ");
			equip.new_cover_slot(FPalace_helper.breasts_slot,"There is a cavern of cleavage in the leotards teardrop opening, and </noun> <sd/"+FPalace_helper.breast_size_id+"> breasts are barely contained by the garment. ",FPalace_helper.breast_size_id,3);
			equip.new_cover_slot(FPalace_helper.nipples_slot,"");
			equip.new_cover_image(FPalace_helper.breasts_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.udder_slot,"The suit is stretched at the stomach by </noun> udder. ");
			equip.new_cover_image(FPalace_helper.udder_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.cock_slot,"In the crotch there is a bulge clearly indicating the presence of male genitalia. ");
			equip.new_cover_slot(FPalace_helper.cock_slot,"There is a <sd/"+FPalace_helper.penis_length_id+"> bulge in the fabric jutting from </noun> nether regions. ",FPalace_helper.penis_length_id, 8);
			equip.new_cover_image(FPalace_helper.cock_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.balls_slot,"</noun> <sd/"+FPalace_helper.balls_size_id+"> scrotum is clearly trying to escape from the outfit, each orb struggling seperately. ");
			equip.new_cover_image(FPalace_helper.balls_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.vag_slot,"",-1,0,0,5);
			equip.new_cover_image(FPalace_helper.vag_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.clit_slot,"");
			equip.new_cover_image(FPalace_helper.clit_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.hips_slot,"");
			equip.new_cover_image(FPalace_helper.hips_slot,FPalace_helper.unknown_img);
			equip.set_identify_difficulty(19);
			equip.add_effect(FPalace_helper.sex_appeal_id,4);
			equip.add_effect(FPalace_helper.max_hp_id,5);
			equip.add_effect(FPalace_helper.max_weight_id,4);
			
			equip.set_skill_bonus(FPalace_skills.covert_id, -5);
						
			equip.set_value(40);
			equip.set_weight(5);
			
			return equip;
		}
		
		public static function brown_elvish_gown():Equipment{
			//selling NPC: ahimsa_seamstress
			var equip:Equipment = new Equipment("Brown Elvish Gown");
			equip.add_crafting_requirement(textiles(),10);
			equip.add_damage_weakness(FPalace_helper.fire_damage_type().get_id());
			equip.add_upgrade_slot(Upgrade_Item.upgrade_lining);
			equip.set_dropped_description("a dress is on the ground");
			equip.set_inventory_description("This full length brown gown has woodland patterns in greens highlighting it.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.set_equip_condition(FPalace_helper.breast_size_id, 8);
			equip.set_equip_condition(FPalace_helper.bloat_id, 8);
			equip.new_equip_slot(FPalace_helper.torso_slot,1);
			equip.new_equip_slot(FPalace_helper.hips_slot,1);

			equip.new_cover_slot(FPalace_helper.torso_slot,"</pronoun> is wearing a flowing full length brown gown with patterns of the forest inlaid in stitch. ");
			equip.new_cover_slot(FPalace_helper.torso_slot,"</pronoun> is wearing a flowing full length brown gown with patterns of the forest inlaid in stitch that disdends around </noun> pregnant belly. ", FPalace_helper.bloat_id,2);
			equip.new_cover_image(FPalace_helper.torso_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.breasts_slot,"There is a slight bump in the gown as </noun> <sd/"+FPalace_helper.breast_size_id+"> breasts press out from the rest of </noun> chest. ");
			equip.new_cover_slot(FPalace_helper.breasts_slot,"There is a huge mound where </noun> <sd/"+FPalace_helper.breast_size_id+"> breasts are barely contained by the gown. ",FPalace_helper.breast_size_id,3);
			equip.new_cover_slot(FPalace_helper.nipples_slot,"");
			equip.new_cover_image(FPalace_helper.breasts_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.udder_slot,"The gown is stretched at the stomach by </noun> udder. ");
			equip.new_cover_image(FPalace_helper.udder_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.cock_slot,"",-1,0,0,5);
			equip.new_cover_slot(FPalace_helper.cock_slot,"The gown has a <sd/"+FPalace_helper.penis_length_id+"> buldge in </noun> nether regions. ",FPalace_helper.penis_length_id, 14);
			equip.new_cover_image(FPalace_helper.cock_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.balls_slot,"",-1,0,0,5);
			equip.new_cover_slot(FPalace_helper.balls_slot,"Twin <sd/"+FPalace_helper.balls_size_id+"> orbs seem to be knocking about </noun> knees. ", 10);
			equip.new_cover_image(FPalace_helper.balls_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.hips_slot,"\n\nThe curve of </noun> body shows as </noun> </"+FPalace_helper.hips_id+"> inch hips show in the gown. ");
			equip.new_cover_image(FPalace_helper.hips_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.vag_slot,"",-1,0,0,5);
			equip.new_cover_image(FPalace_helper.vag_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.clit_slot,"");
			equip.new_cover_image(FPalace_helper.clit_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.arms_slot,"");
			equip.new_cover_image(FPalace_helper.arms_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.legs_slot,"");
			equip.new_cover_image(FPalace_helper.legs_slot,FPalace_helper.unknown_img);
			equip.set_identify_difficulty(21);
			equip.add_effect(FPalace_helper.sex_appeal_id,3);
			equip.add_effect(FPalace_helper.max_hp_id,10);
						
			equip.set_value(38);
			equip.set_weight(5);
			
			return equip;
		}
			
			//ARMS
			
			//HANDS
			
		public static function bronze_gauntlets():Equipment{
			//selling NPC: mensch_smith
			var equip:Equipment = new Equipment("bronze gauntlets");
			equip.add_crafting_requirement(bronze(),1);
			equip.add_crafting_requirement(leather(),1);
			equip.set_dropped_description("some gauntlets are on the ground");
			equip.set_inventory_description("A set of solid bronze gauntlets made to protect the hands.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.new_equip_slot(FPalace_helper.hands_slot,2);

			equip.new_cover_slot(FPalace_helper.hands_slot,"</pronoun> is wearing bronze gauntlets on </noun> </bpn>. ",-1,0,2);
			equip.new_cover_image(FPalace_helper.hands_slot,FPalace_helper.unknown_img);
			equip.set_identify_difficulty(11);
			equip.add_effect(FPalace_helper.max_hp_id,5);
			equip.set_skill_bonus(FPalace_skills.covert_id, -2);
			
			equip.set_value(13);
			
			return equip;
		}
			
		public static function gold_ring():Equipment{
			//selling NPC: benevol_jeweller
			var equip:Equipment = new Equipment("Gold Ring");
			equip.add_crafting_requirement(gold_bar(),1);
			equip.set_dropped_description("a ring is on the ground");
			equip.set_inventory_description("A solid golden ring. Nothing suspicious about that.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.new_equip_slot(FPalace_helper.hands_slot,1);

			equip.new_cover_slot(FPalace_helper.hands_slot,"</pronoun> is wearing a gold ring on </noun> </bpn>. ",-1,0,1);
			equip.new_cover_image(FPalace_helper.hands_slot,FPalace_helper.unknown_img);
			equip.set_identify_difficulty(11);
			equip.add_effect(FPalace_helper.sex_appeal_id,1);
			equip.add_effect(FPalace_helper.wis_id,2);
			
			equip.set_skill_bonus(FPalace_skills.covert_id, -2);
			
			equip.set_value(33);
			return equip;
		}
		
		public static function hermpire_ring():Equipment{
			//selling NPC: N/A
			var equip:Equipment = new Equipment("Golden Woman Ring");
			equip.set_dropped_description("a ring is on the ground");
			equip.set_inventory_description("A solid golden ring, made to look like a woman bending over backwards and grabbing her feet. There is a barely perceptable bulge in her robes at the groin.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.new_equip_slot(FPalace_helper.hands_slot,1);

			equip.new_cover_slot(FPalace_helper.hands_slot,"</pronoun> is wearing a gold ring on </noun> </bpn>. ",-1,0,1);
			equip.new_cover_image(FPalace_helper.hands_slot,FPalace_helper.unknown_img);
			equip.set_identify_difficulty(15);
			equip.add_effect(FPalace_helper.sex_appeal_id,4);
			equip.add_effect(FPalace_helper.min_lust_id,15);
			
			var a:Action = new Action();
			a.set_dialogue("",0);
			a.set_impreg_action();
			a.set_consume_action();
			
			var tef_chall:Challenge = new Challenge();
			tef_chall.set_attack_stat(FPalace_helper.penis_length_id);
			tef_chall.set_defense_stat(-1, 1);
			tef_chall.set_variability(0);
			
			var tef_con:Consequence = new Consequence();//0
			tef_con.set_change_on_success();
			tef_con.add_consequence(FPalace_helper.curr_hp_id,0, "", 0, 0, 0, 1);
			
			tef_con.add_consequence(FPalace_helper.curr_hp_id,0, "\n</n> struggles to keep </noun> feet as </noun> stomach gurgles, and a pungent smell escapes </noun> lips. </pronoun> itches at </noun> groin. ", -1, 0, 0, 1);
			tef_con.add_consequence(FPalace_helper.curr_hp_id,0, "", -1, 0, 0, 3);
			tef_con.add_change_effect(FPalace_helper.new_penis(null,3,1));
			tef_con.add_change_effect(FPalace_helper.new_balls(null));
			tef_con.add_change_effect(a,FPalace_helper.cum_volume_id);
			tef_con.add_change_effect(a,FPalace_helper.milk_volume_id);
			
			a.add_challenge(tef_chall, tef_con);
			
			tef_chall = new Challenge();//1
			tef_chall.set_attack_equip_slot_check(FPalace_helper.breasts_slot,true);
			tef_chall.set_attack_stat(-1, 0);
			tef_chall.set_defense_stat(-1, 1);
			tef_chall.set_variability(0);
			
			tef_con = new Consequence();
			tef_con.set_change_on_success();
			tef_con.add_consequence(FPalace_helper.curr_hp_id,0, "", 0, 0, 0, 2);
			tef_con.add_consequence(FPalace_helper.curr_hp_id,0, "\n</n> struggles to keep </noun> feet as </noun> stomach gurgles, and a pungent smell escapes </noun> lips. </pronoun> itches at </noun> chest. ", -1, 0, 0, 2);
			tef_con.add_consequence(FPalace_helper.curr_hp_id,0, "", -1, 0, 0, 3);
			tef_con.add_change_effect(FPalace_helper.new_breasts(null,1));
			tef_con.add_change_effect(a,FPalace_helper.cum_volume_id);
			tef_con.add_change_effect(a,FPalace_helper.milk_volume_id);
			
			a.add_challenge(tef_chall, tef_con);
			
			tef_chall = new Challenge();//2
			tef_chall.set_attack_stat(FPalace_helper.vaginal_depth_id);
			tef_chall.set_defense_stat(-1, 1);
			tef_chall.set_variability(0);
			
			tef_con = new Consequence();
			tef_con.set_change_on_success();
			tef_con.add_consequence(FPalace_helper.curr_hp_id,0, "", 0);
			tef_con.add_consequence(FPalace_helper.curr_hp_id,0, "\n</n> struggles to keep </noun> feet as </noun> stomach gurgles, and a pungent smell escapes </noun> lips. </pronoun> itches at </noun> groin. ", -1, 0, 0, 3);
			tef_con.add_change_effect(FPalace_helper.new_vagina(null));
			tef_con.add_change_effect(FPalace_helper.new_clit(null));
			tef_con.add_change_effect(a,FPalace_helper.cum_volume_id);
			tef_con.add_change_effect(a,FPalace_helper.milk_volume_id);
			
			a.add_challenge(tef_chall, tef_con);
			
			tef_chall = new Challenge();//3
			tef_chall.set_attack_stat(-1,1);
			tef_chall.set_defense_stat(FPalace_helper.cum_volume_id);
			tef_chall.set_variability(0);
			
			tef_con = new Consequence();
			tef_con.amt_by_roll_flag(["r", "/", 250.0]);
			tef_con.set_max_damage(5);
			tef_con.add_consequence(-FPalace_helper.penis_girth_id,Consequence.amt_from_roll_const, "\n", -1);
			tef_con.add_consequence(FPalace_helper.curr_hp_id,0, "", -1,0,0,4);
			
			//no cum... must be milk instead
			tef_con.add_consequence(FPalace_helper.curr_hp_id,0, "", 0,0,0,7);
			
			a.add_challenge(tef_chall, tef_con);
			
			tef_chall = new Challenge();//4
			tef_chall.set_attack_stat(-1,1);
			tef_chall.set_defense_stat(FPalace_helper.cum_volume_id);
			tef_chall.set_variability(0);
			
			tef_con = new Consequence();
			tef_con.amt_by_roll_flag(["r", "/", 83.0]);
			tef_con.set_max_damage(15);
			tef_con.add_consequence(-FPalace_helper.penis_length_id,Consequence.amt_from_roll_const, "\n", -1);
			tef_con.add_consequence(FPalace_helper.curr_hp_id,0, "", -1,0,0,5);
						
			a.add_challenge(tef_chall, tef_con);
			
			tef_chall = new Challenge();//5
			tef_chall.set_attack_stat(-1,1);
			tef_chall.set_defense_stat(FPalace_helper.cum_volume_id);
			tef_chall.set_variability(0);
			
			tef_con = new Consequence();
			tef_con.amt_by_roll_flag(["r", "/", 250.0]);
			tef_con.set_max_damage(5);
			tef_con.add_consequence(-FPalace_helper.breast_size_id,Consequence.amt_from_roll_const, "\n", -1);
			tef_con.add_consequence(-FPalace_helper.balls_size_id,Consequence.amt_from_roll_const, "\n", -1);
			tef_con.add_consequence(FPalace_helper.curr_hp_id,0, "", -1,0,0,6);
						
			a.add_challenge(tef_chall, tef_con);
			
			tef_chall = new Challenge();//6
			tef_chall.set_attack_stat(-1,1);
			tef_chall.set_defense_stat(FPalace_helper.cum_volume_id);
			tef_chall.set_variability(0);
			
			tef_con = new Consequence();
			tef_con.amt_by_roll_flag(["r", "/", 2.0]);
			tef_con.set_max_damage(4000);
			tef_con.add_consequence(-FPalace_helper.cum_volume_id,Consequence.amt_from_roll_const, "\n", -1);
			tef_con.add_consequence(-FPalace_helper.milk_volume_id,Consequence.amt_from_roll_const, "\n", -1);
			tef_con.add_consequence(FPalace_helper.curr_hp_id,0, "", -1,0,0,0);
						
			a.add_challenge(tef_chall, tef_con);
			
			tef_chall = new Challenge();//7
			tef_chall.set_attack_stat(-1,1);
			tef_chall.set_defense_stat(FPalace_helper.milk_volume_id);
			tef_chall.set_variability(0);
			
			tef_con = new Consequence();
			tef_con.amt_by_roll_flag(["r", "/", 250.0]);
			tef_con.set_max_damage(5);
			tef_con.add_consequence(-FPalace_helper.penis_girth_id,Consequence.amt_from_roll_const, "\n", -1);
			tef_con.add_consequence(FPalace_helper.curr_hp_id,0, "", -1,0,0,8);
			
			a.add_challenge(tef_chall, tef_con);
			
			tef_chall = new Challenge();//8
			tef_chall.set_attack_stat(-1,1);
			tef_chall.set_defense_stat(FPalace_helper.milk_volume_id);
			tef_chall.set_variability(0);
			
			tef_con = new Consequence();
			tef_con.amt_by_roll_flag(["r", "/", 83.0]);
			tef_con.set_max_damage(15);
			tef_con.add_consequence(-FPalace_helper.penis_length_id,Consequence.amt_from_roll_const, "\n", -1);
			tef_con.add_consequence(FPalace_helper.curr_hp_id,0, "", -1,0,0,9);
						
			a.add_challenge(tef_chall, tef_con);
			
			tef_chall = new Challenge();//9
			tef_chall.set_attack_stat(-1,1);
			tef_chall.set_defense_stat(FPalace_helper.milk_volume_id);
			tef_chall.set_variability(0);
			
			tef_con = new Consequence();
			tef_con.amt_by_roll_flag(["r", "/", 250.0]);
			tef_con.set_max_damage(5);
			tef_con.add_consequence(-FPalace_helper.breast_size_id,Consequence.amt_from_roll_const, "\n", -1);
			tef_con.add_consequence(-FPalace_helper.balls_size_id,Consequence.amt_from_roll_const, "\n", -1);
			tef_con.add_consequence(FPalace_helper.curr_hp_id,0, "", -1,0,0,10);
						
			a.add_challenge(tef_chall, tef_con);
			
			tef_chall = new Challenge();//10
			tef_chall.set_attack_stat(-1,1);
			tef_chall.set_defense_stat(FPalace_helper.milk_volume_id);
			tef_chall.set_variability(0);
			
			tef_con = new Consequence();
			tef_con.amt_by_roll_flag(["r", "/", 2.0]);
			tef_con.set_max_damage(4000);
			tef_con.add_consequence(-FPalace_helper.cum_volume_id,Consequence.amt_from_roll_const, "\n", -1);
			tef_con.add_consequence(-FPalace_helper.milk_volume_id,Consequence.amt_from_roll_const, "\n", -1);
			tef_con.add_consequence(FPalace_helper.curr_hp_id,0, "", -1,0,0,0);
						
			a.add_challenge(tef_chall, tef_con);
			
			
			equip.new_stat_action(FPalace_helper.cum_volume_id, a);
			equip.new_stat_action(FPalace_helper.milk_volume_id, a);
			
			equip.add_action(a);
			
			equip.set_value(500);
			return equip;
		}
		
		//COCK
		public static function be_cock_ring():Equipment{
			//selling NPC: N/A
			var equip:Equipment = new Equipment("Large Silver Ring");
			equip.set_dropped_description("a ring is on the ground");
			equip.set_inventory_description("A solid silver ring, far too large for a finger. There are strange circles engraved on every surface.");
			equip.set_image_id(FPalace_helper.unknown_img);
			
			equip.new_equip_slot(FPalace_helper.cock_slot,1);
			equip.new_cover_slot(FPalace_helper.cock_slot,"</pronoun> is wearing a silver ring around the base of </noun> <sd/"+FPalace_helper.penis_length_id+"> </"+FPalace_helper.penis_length_id+">-inch long, <sd/"+FPalace_helper.penis_girth_id+"> sized </"+FPalace_helper.penis_girth_id+">-inch </bpn> that is </r>",FPalace_helper.penis_length_id,0,1);
			equip.new_cover_image(FPalace_helper.cock_slot,FPalace_helper.unknown_img);
			
			equip.add_effect(FPalace_helper.con_id,4);
			equip.add_effect(FPalace_helper.cum_volume_id,6);
			
			equip.set_identify_difficulty(15);
			
			var a:Action = new Action();
			a.set_dialogue("",0);
			a.set_consume_action();
			
			var tef_chall:Challenge = new Challenge();
			tef_chall.set_attack_stat(FPalace_helper.breast_size_id);
			tef_chall.set_defense_stat(-1, 1);
			tef_chall.set_variability(0);
			
			var tef_con:Consequence = new Consequence();
			tef_con.set_change_on_success();
			tef_con.add_consequence(FPalace_helper.curr_hp_id,0, "", 0, 0, 0, 1);
			
			tef_con.add_consequence(FPalace_helper.curr_hp_id,0, "\n</n> struggles to keep </noun> feet as </noun> stomach gurgles, and a pungent smell escapes </noun> lips. </pronoun> itches at </noun> chest. ", -1, 0, 0, 1);
			tef_con.add_change_effect(FPalace_helper.new_breasts(null,1));
			
			a.add_challenge(tef_chall, tef_con);
			
			tef_chall = new Challenge();
			tef_chall.set_attack_stat(-1,1);
			tef_chall.set_defense_stat(FPalace_helper.cum_volume_id);
			tef_chall.set_variability(0);
			
			tef_con = new Consequence();
			tef_con.amt_by_roll_flag(["r", "/", 250.0]);
			tef_con.set_max_damage(5);
			tef_con.add_consequence(-FPalace_helper.breast_size_id,Consequence.amt_from_roll_const, "\n", -1,0,0,2);
			
			a.add_challenge(tef_chall, tef_con);
			
			tef_chall = new Challenge();
			tef_chall.set_attack_stat(-1,1);
			tef_chall.set_defense_stat(FPalace_helper.cum_volume_id);
			tef_chall.set_variability(0);
			
			tef_con = new Consequence();
			tef_con.amt_by_roll_flag();
			tef_con.set_max_damage(4000);
			tef_con.add_consequence(-FPalace_helper.milk_volume_id,Consequence.amt_from_roll_const, "\n", -1);
			
			a.add_challenge(tef_chall, tef_con);
			
			
			
			equip.new_stat_action(FPalace_helper.cum_volume_id, a);
			
			equip.set_value(200);
			return equip;
		}
		
		public static function queens_cock_ring():Equipment{
			//selling NPC: N/A
			var equip:Equipment = new Equipment("Large Gold Ring");
			equip.set_dropped_description("a ring is on the ground");
			equip.set_inventory_description("A solid gold ring, far too large for a finger. There are strange triangles engraved on every surface.");
			equip.set_image_id(FPalace_helper.unknown_img);
			
			equip.new_equip_slot(FPalace_helper.cock_slot,1);
			equip.new_cover_slot(FPalace_helper.cock_slot,"</pronoun> is wearing a gold ring around the base of </noun> <sd/"+FPalace_helper.penis_length_id+"> </"+FPalace_helper.penis_length_id+">-inch long, <sd/"+FPalace_helper.penis_girth_id+"> sized </"+FPalace_helper.penis_girth_id+">-inch </bpn> that is </r>",FPalace_helper.penis_length_id,0,1);
			equip.new_cover_image(FPalace_helper.cock_slot,FPalace_helper.unknown_img);
			
			equip.add_effect(FPalace_helper.sex_appeal_id,2);
			
			equip.set_identify_difficulty(15);
			
			var a:Action = new Action();
			a.set_dialogue("",0);
			a.set_extract_action();
			
			var tef_chall:Challenge = new Challenge();
			tef_chall.set_attack_stat(-1,1);
			tef_chall.set_defense_stat(-1,0);
			tef_chall.set_variability(0);
			
			var tef_con:Consequence = new Consequence();
			tef_con.add_consequence(FPalace_helper.height_id,10, "", 0);
			tef_con.add_consequence(FPalace_helper.bust_id,5, "", 0);
			tef_con.add_consequence(FPalace_helper.waist_id,3, "", 0);
			tef_con.add_consequence(FPalace_helper.hips_id,5, "", 0);
			tef_con.add_consequence(FPalace_helper.str_id,0.25, "", 0);
			
			a.add_challenge(tef_chall, tef_con);
			
			equip.new_stat_action(FPalace_helper.cum_volume_id, a);
			
			equip.set_value(200);
			return equip;
		}
			
		//LEGS
		public static function girdle_masculin_feminin():Equipment{
			var equip:Equipment = new Equipment("Girdle");
			equip.set_dropped_description("a belt is on the ground");
			equip.set_inventory_description("A thick belt made to fit around the waist. ");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.new_equip_slot(FPalace_helper.hips_slot,1);
			equip.new_cover_slot(FPalace_helper.hips_slot,"\n\n</pronoun> is wearing a girdle. ");
			equip.new_cover_image(FPalace_helper.hips_slot,FPalace_helper.unknown_img);
			
			equip.set_identify_difficulty(12);
			equip.add_effect(FPalace_helper.max_hp_id,2);
			equip.set_skill_bonus(FPalace_skills.covert_id, -1);
			
			var a:Action = new Action();
			a.set_dialogue("",0);
			
			var tef_chall:Challenge = new Challenge();
			tef_chall.set_attack_equip_slot_check(FPalace_helper.cock_slot,true);//tef_chall.set_attack_stat(FPalace_helper.penis_length_id);
			tef_chall.set_defense_stat(-1,1);
			tef_chall.set_variability(0);
			
			var tef_con:Consequence = new Consequence();
			tef_con.set_change_on_success();
			tef_con.add_change_effect(FPalace_helper.new_penis(null));
			tef_con.add_consequence(0,0, "", 0,0,0,1);
			tef_con.add_consequence(0,0, "", -1);//add penis
			
			a.add_challenge(tef_chall, tef_con);
			
			tef_chall = new Challenge();
			tef_chall.set_attack_equip_slot_check(FPalace_helper.cock_slot,true);
			tef_chall.set_defense_stat(-1,1);
			tef_chall.set_variability(0);
			
			tef_con = new Consequence();
			tef_con.add_consequence(FPalace_helper.curr_hp_id,-100, "", 0,0,0,-1,false,null, FPalace_helper.cock_slot);//remove penis
			
			a.add_challenge(tef_chall, tef_con);
			
			equip.add_action(a);
			equip.add_remove_action(a);
			
			a = new Action();
			a.set_dialogue("",0);
			
			tef_chall = new Challenge();
			tef_chall.set_attack_equip_slot_check(FPalace_helper.balls_slot,true);//tef_chall.set_attack_stat(FPalace_helper.balls_size_id);
			tef_chall.set_defense_stat(-1,1);
			tef_chall.set_variability(0);
			
			tef_con = new Consequence();
			tef_con.set_change_on_success();
			tef_con.add_change_effect(FPalace_helper.new_balls(null));
			tef_con.add_consequence(0,0, "", 0,0,0,1);
			tef_con.add_consequence(0,0, "", -1);//add balls
			
			a.add_challenge(tef_chall, tef_con);
			
			tef_chall = new Challenge();
			tef_chall.set_attack_equip_slot_check(FPalace_helper.balls_slot,true);
			tef_chall.set_defense_stat(-1,1);
			tef_chall.set_variability(0);
			
			tef_con = new Consequence();
			tef_con.add_consequence(FPalace_helper.curr_hp_id,-100, "", 0,0,0,-1,false,null, FPalace_helper.balls_slot);//remove penis
			
			a.add_challenge(tef_chall, tef_con);
			
			equip.add_action(a);
			equip.add_remove_action(a);
			
			a = new Action();
			a.set_dialogue("",0);
			
			tef_chall = new Challenge();
			tef_chall.set_attack_equip_slot_check(FPalace_helper.breasts_slot,true);//tef_chall.set_attack_stat(FPalace_helper.breast_size_id);
			tef_chall.set_defense_stat(-1,1);
			tef_chall.set_variability(0);
			
			tef_con = new Consequence();
			tef_con.set_change_on_success();
			tef_con.add_change_effect(FPalace_helper.new_breasts(null));
			tef_con.add_consequence(0,0, "", 0,0,0,1);
			tef_con.add_consequence(0,0, "", -1);//add breasts
			
			a.add_challenge(tef_chall, tef_con);
			
			tef_chall = new Challenge();
			tef_chall.set_attack_equip_slot_check(FPalace_helper.breasts_slot,true);
			tef_chall.set_defense_stat(-1,1);
			tef_chall.set_variability(0);
			
			tef_con = new Consequence();
			tef_con.add_consequence(FPalace_helper.curr_hp_id,-100, "", 0,0,0,-1,false,null, FPalace_helper.breasts_slot);//remove breasts
			
			a.add_challenge(tef_chall, tef_con);
			
			equip.add_action(a);
			equip.add_remove_action(a);
			
			a = new Action();
			a.set_dialogue("",0);
			
			tef_chall = new Challenge();
			tef_chall.set_attack_equip_slot_check(FPalace_helper.vag_slot,true);//tef_chall.set_attack_stat(FPalace_helper.vaginal_depth_id);
			tef_chall.set_defense_stat(-1,1);
			tef_chall.set_variability(0);
			
			tef_con = new Consequence();
			tef_con.set_change_on_success();
			tef_con.add_change_effect(FPalace_helper.new_vagina(null));
			tef_con.add_consequence(0,0, "", 0,0,0,1);
			tef_con.add_consequence(0,0, "", -1);//add vagina
			
			a.add_challenge(tef_chall, tef_con);
			
			tef_chall = new Challenge();
			tef_chall.set_attack_equip_slot_check(FPalace_helper.vag_slot,true);
			tef_chall.set_defense_stat(-1,1);
			tef_chall.set_variability(0);
			
			tef_con = new Consequence();
			tef_con.add_consequence(FPalace_helper.curr_hp_id,-100, "", 0,0,0,-1,false,null, FPalace_helper.vag_slot);//remove vag
			
			a.add_challenge(tef_chall, tef_con);
			
			equip.add_action(a);
			equip.add_remove_action(a);
			
			a = new Action();
			a.set_dialogue("",0);
			
			tef_chall = new Challenge();
			tef_chall.set_attack_equip_slot_check(FPalace_helper.clit_slot,true);//tef_chall.set_attack_stat(FPalace_helper.clit_length);
			tef_chall.set_defense_stat(-1,1);
			tef_chall.set_variability(0);
			
			tef_con = new Consequence();
			tef_con.set_change_on_success();
			tef_con.add_change_effect(FPalace_helper.new_clit(null));
			tef_con.add_consequence(0,0, "", 0,0,0,1);
			tef_con.add_consequence(0,0, "", -1);//add clit
			
			a.add_challenge(tef_chall, tef_con);
			
			tef_chall = new Challenge();
			tef_chall.set_attack_equip_slot_check(FPalace_helper.clit_slot,true);
			tef_chall.set_defense_stat(-1,1);
			tef_chall.set_variability(0);
			
			tef_con = new Consequence();
			tef_con.add_consequence(FPalace_helper.curr_hp_id,-100, "", 0,0,0,-1,false,null, FPalace_helper.clit_slot);//remove clit
			
			a.add_challenge(tef_chall, tef_con);
			
			equip.add_action(a);
			equip.add_remove_action(a);
			
			equip.set_value(50);
			equip.set_weight(2);
			return equip;
		}
		
		public static function bronze_greaves():Equipment{
			//selling NPC: mensch_smith
			var equip:Equipment = new Equipment("Bronze Greaves");
			equip.add_crafting_requirement(textiles(),2);
			equip.add_crafting_requirement(leather(),4);
			equip.add_crafting_requirement(bronze(),4);
			equip.add_damage_resistance(FPalace_helper.slash_damage_type().get_id());
			equip.add_damage_resistance(FPalace_helper.pierce_damage_type().get_id());
			equip.add_damage_resistance(FPalace_helper.bludg_damage_type().get_id());
			equip.add_upgrade_slot(Upgrade_Item.upgrade_lining);
			equip.add_upgrade_slot(Upgrade_Item.upgrade_plates);
			equip.set_dropped_description("a pair of greaves is on the ground");
			equip.set_inventory_description("A set of leather shorts with the thighs covered by banged up bronze plates.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.set_equip_condition(FPalace_helper.waist_id, 40,28);
			equip.set_equip_condition(FPalace_helper.hips_id, 50);
			equip.new_equip_slot(FPalace_helper.hips_slot,1);

			equip.new_cover_slot(FPalace_helper.hips_slot,"\n\n</pronoun> is wearing a pair of bronze greaves. ");
			equip.new_cover_image(FPalace_helper.hips_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.cock_slot,"",-1,0,0,5);
			equip.new_cover_slot(FPalace_helper.cock_slot,"</noun> <sd/"+FPalace_helper.penis_length_id+"> </rn> cock just manages to peek it's head out from underneath </noun> greaves, just barely visible. ",FPalace_helper.penis_length_id,13);
			equip.new_cover_image(FPalace_helper.cock_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.balls_slot,"",-1,0,0,5);
			equip.new_cover_slot(FPalace_helper.balls_slot,"</noun> balls are even visibly hanging from </noun> greaves, the <sd/"+FPalace_helper.balls_size_id+"> twin orbs ballooning beneath. ",FPalace_helper.balls_size_id,14);
			equip.new_cover_image(FPalace_helper.balls_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.legs_slot,"");
			equip.new_cover_image(FPalace_helper.legs_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.vag_slot,"",-1,0,0,5);
			equip.new_cover_image(FPalace_helper.vag_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.clit_slot,"");
			equip.new_cover_image(FPalace_helper.clit_slot,Equipment.hide_part);
			equip.set_identify_difficulty(12);
			equip.add_effect(FPalace_helper.max_hp_id,10);
			equip.set_skill_bonus(FPalace_skills.covert_id, -5);
			equip.set_value(33);
			equip.set_weight(15);
			return equip;
		}
			
		public static function Overalls():Equipment{
			//selling NPC: aghapei_seamstress
			var equip:Equipment = new Equipment("Over-alls");
			equip.add_crafting_requirement(textiles(),6);
			equip.add_damage_weakness(FPalace_helper.fire_damage_type().get_id());
			equip.add_upgrade_slot(Upgrade_Item.upgrade_lining);
			equip.set_dropped_description("a pair of overalls is on the ground");
			equip.set_inventory_description("A pair of blue denim pants with a tall front and straps that hook over the shoulders.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.set_equip_condition(FPalace_helper.penis_length_id, 30);
			equip.set_equip_condition(FPalace_helper.breast_size_id, 10);
			equip.set_equip_condition(FPalace_helper.bloat_id, 10);
			equip.new_equip_slot(FPalace_helper.torso_slot, 1);
			equip.new_equip_slot(FPalace_helper.hips_slot, 1);
			equip.new_equip_slot(FPalace_helper.legs_slot, 2);

			equip.new_cover_slot(FPalace_helper.torso_slot,"</pronoun> is wearing a set of denim overalls. ");
			equip.new_cover_slot(FPalace_helper.torso_slot,"</pronoun> is wearing a set of denim overalls that disdends around </noun> pregnant belly. ", FPalace_helper.bloat_id,2);
			equip.new_cover_image(FPalace_helper.torso_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.breasts_slot,"The straps that hold the overalls up are pressing barely managing to cover </noun> <sd/"+FPalace_helper.breast_size_id+"> breasts. ");
			equip.new_cover_slot(FPalace_helper.breasts_slot,"The overalls straps are being visibly stretched as </noun> <sd/"+FPalace_helper.breast_size_id+"> breasts jut out from </noun> chest. ",FPalace_helper.breast_size_id,2);
			equip.new_cover_slot(FPalace_helper.nipples_slot,"");
			equip.new_cover_image(FPalace_helper.breasts_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.udder_slot,"The overalls stretch over </noun> udder. ");
			equip.new_cover_image(FPalace_helper.udder_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.cock_slot,"",-1,0,0,5);
			equip.new_cover_slot(FPalace_helper.cock_slot,"In the crotch there is a bulge clearly indicating the presence of male genitalia. ",FPalace_helper.penis_length_id, 8);
			equip.new_cover_slot(FPalace_helper.cock_slot,"There is a <sd/"+FPalace_helper.penis_length_id+"> bulge in the fabric starting from </noun> nether regions and trailing down the pantleg. ",FPalace_helper.penis_length_id, 16);
			equip.new_cover_image(FPalace_helper.cock_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.balls_slot,"",-1,0,0,5);
			equip.new_cover_slot(FPalace_helper.balls_slot,"</noun> <sd/"+FPalace_helper.balls_size_id+"> scrotum is clearly trying to escape from the outfit, each orb struggling seperately. ", FPalace_helper.balls_size_id, 15);
			equip.new_cover_image(FPalace_helper.balls_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.hips_slot,"\n\n");
			equip.new_cover_image(FPalace_helper.hips_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.legs_slot,"");
			equip.new_cover_image(FPalace_helper.legs_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.vag_slot,"",-1,0,0,5);
			equip.new_cover_image(FPalace_helper.vag_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.clit_slot,"");
			equip.new_cover_image(FPalace_helper.clit_slot,Equipment.hide_part);
			equip.set_identify_difficulty(14);
			equip.add_effect(FPalace_helper.sex_appeal_id,1);
			equip.add_effect(FPalace_helper.max_hp_id,5);
			equip.set_value(23);
			equip.set_weight(8);
			
			return equip;
		}
		
		public static function black_pencil_skirt():Equipment{
			//selling NPC: century_city_clothing_store_clerk
			var equip:Equipment = new Equipment("Black Pencil Skirt");
			equip.add_crafting_requirement(textiles(),2);
			equip.add_damage_weakness(FPalace_helper.fire_damage_type().get_id());
			equip.set_dropped_description("a skirt is on the ground");
			equip.set_inventory_description("This black pencil skirt is surprisingly short.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.set_equip_condition(FPalace_helper.waist_id, 32,20);
			equip.set_equip_condition(FPalace_helper.hips_id, 40);
			equip.new_equip_slot(FPalace_helper.hips_slot,1);

			equip.new_cover_slot(FPalace_helper.hips_slot,"\n\n</pronoun> is wearing a tight black pencil skirt. ");
			equip.new_cover_image(FPalace_helper.hips_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.hips_slot,"\n\n</noun> ass is roughly pressing against </noun> skirt, each orb of </noun> </"+FPalace_helper.hips_id+"> inch behind clearly showing against the black fabric. ", FPalace_helper.hips_id, 36);
			equip.new_cover_slot(FPalace_helper.cock_slot,"",-1,0,0,5);
			equip.new_cover_slot(FPalace_helper.cock_slot,"</noun> <sd/"+FPalace_helper.penis_length_id+"> </rn> cock just manages to peek it's head out from underneath </noun> skirt, just barely visible. ",FPalace_helper.penis_length_id,13);
			equip.new_cover_slot(FPalace_helper.cock_slot,"</noun> </rn> <sd/"+FPalace_helper.penis_length_id+"> cock hangs heavily out from underneath </noun> skirt,  it's length completely passing the skirts bottomost freyed edge. ",FPalace_helper.penis_length_id,18);
			equip.new_cover_image(FPalace_helper.cock_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.balls_slot,"",-1,0,0,5);
			equip.new_cover_slot(FPalace_helper.balls_slot,"</noun> <sd/"+FPalace_helper.balls_size_id+"> balls are even visibly hanging from </noun> skirt, the twin orbs ballooning beneath. ",FPalace_helper.balls_size_id,14);
			equip.new_cover_image(FPalace_helper.balls_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.vag_slot,"",-1,0,0,5);
			equip.new_cover_image(FPalace_helper.vag_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.clit_slot,"");
			equip.new_cover_image(FPalace_helper.clit_slot,Equipment.hide_part);
			equip.set_identify_difficulty(18);
			equip.add_effect(FPalace_helper.sex_appeal_id,1);
			equip.add_effect(FPalace_helper.max_hp_id,2);
			equip.set_value(14);
			equip.set_weight(2);
			return equip;
		}
		
		public static function plaid_skirt():Equipment{
			//selling NPC: school_store_shopkeeper
			var equip:Equipment = new Equipment("Plaid Skirt");
			equip.add_crafting_requirement(textiles(),2);
			equip.add_damage_weakness(FPalace_helper.fire_damage_type().get_id());
			equip.add_upgrade_slot(Upgrade_Item.upgrade_lining);
			equip.set_dropped_description("a skirt is on the ground");
			equip.set_inventory_description("This plaid skirt is quite modest.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.set_equip_condition(FPalace_helper.waist_id, 26,20);
			equip.set_equip_condition(FPalace_helper.hips_id, 50);
			equip.new_equip_slot(FPalace_helper.hips_slot,1);

			equip.new_cover_slot(FPalace_helper.hips_slot,"\n\n</pronoun> is wearing a loose plaid skirt. ");
			equip.new_cover_image(FPalace_helper.hips_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.hips_slot,"\n\n</noun> ass is roughly pressing against </noun> skirt, each orb of </noun> </"+FPalace_helper.hips_id+"> inch behind clearly showing against the plaid fabric. ", FPalace_helper.hips_id, 36);
			equip.new_cover_slot(FPalace_helper.cock_slot,"",-1,0,0,5);
			equip.new_cover_slot(FPalace_helper.cock_slot,"</noun> <sd/"+FPalace_helper.penis_length_id+"> </rn> cock just manages to peek it's head out from underneath </noun> skirt, just barely visible. ",FPalace_helper.penis_length_id,20);
			equip.new_cover_slot(FPalace_helper.cock_slot,"</noun> </rn> <sd/"+FPalace_helper.penis_length_id+"> cock hangs heavily out from underneath </noun> skirt,  it's length completely passing the skirts bottomost edge. ",FPalace_helper.penis_length_id,30);
			equip.new_cover_image(FPalace_helper.cock_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.balls_slot,"",-1,0,0,5);
			equip.new_cover_slot(FPalace_helper.balls_slot,"</noun> <sd/"+FPalace_helper.balls_size_id+"> balls are even visibly hanging from </noun> skirt, the twin orbs ballooning beneath. ",FPalace_helper.balls_size_id,14);
			equip.new_cover_image(FPalace_helper.balls_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.vag_slot,"",-1,0,0,5);
			equip.new_cover_image(FPalace_helper.vag_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.clit_slot,"");
			equip.new_cover_image(FPalace_helper.clit_slot,Equipment.hide_part);
			equip.set_identify_difficulty(18);
			equip.add_effect(FPalace_helper.sex_appeal_id,1);
			equip.add_effect(FPalace_helper.max_hp_id,2);
			equip.set_value(14);
			equip.set_weight(2);
			return equip;
		}
		
		public static function leather_skirt():Equipment{
			//selling NPC: lux_invira_shopkeeper
			var equip:Equipment = new Equipment("Leather skirt");
			equip.add_crafting_requirement(leather(),4);
			equip.add_damage_weakness(FPalace_helper.fire_damage_type().get_id());
			equip.add_upgrade_slot(Upgrade_Item.upgrade_lining);
			equip.set_dropped_description("a skirt is on the ground");
			equip.set_inventory_description("This short leather skirt is made from animal hides whose fur has been cut very short.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.set_equip_condition(FPalace_helper.waist_id, 26,20);
			equip.set_equip_condition(FPalace_helper.hips_id, 50);
			equip.new_equip_slot(FPalace_helper.hips_slot,1);

			equip.new_cover_slot(FPalace_helper.hips_slot,"\n\n</pronoun> is wearing a rough cut leather skirt. ");
			equip.new_cover_image(FPalace_helper.hips_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.hips_slot,"\n\n</noun> ass is roughly pressing against </noun> rough leather skirt, each orb of </noun> </"+FPalace_helper.hips_id+"> inch behind clearly visible. ", FPalace_helper.hips_id, 36);
			equip.new_cover_slot(FPalace_helper.cock_slot,"",-1,0,0,5);
			equip.new_cover_slot(FPalace_helper.cock_slot,"</noun> <sd/"+FPalace_helper.penis_length_id+"> </rn> cock just manages to peek it's head out from underneath </noun> skirt, it's length just barely visible. ",FPalace_helper.penis_length_id,13);
			equip.new_cover_slot(FPalace_helper.cock_slot,"</noun> <sd/"+FPalace_helper.penis_length_id+"> </rn> cock hangs heavily out from underneath </noun> skirt, it's length completely passing the skirts bottomost freyed edge. ",FPalace_helper.penis_length_id,18);
			equip.new_cover_image(FPalace_helper.cock_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.balls_slot,"",-1,0,0,5);
			equip.new_cover_slot(FPalace_helper.balls_slot,"</noun> <sd/"+FPalace_helper.balls_size_id+"> balls are even visibly hanging from </noun> skirt, the twin orbs ballooning beneath. ",FPalace_helper.balls_size_id,14);
			equip.new_cover_image(FPalace_helper.balls_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.vag_slot,"",-1,0,0,5);
			equip.new_cover_image(FPalace_helper.vag_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.clit_slot,"");
			equip.new_cover_image(FPalace_helper.clit_slot,Equipment.hide_part);
			equip.set_identify_difficulty(19);
			equip.add_effect(FPalace_helper.sex_appeal_id,1);
			equip.add_effect(FPalace_helper.max_hp_id,2);
			equip.set_value(16);
			equip.set_weight(2);
			return equip;
		}
		
		public static function booty_thong():Equipment{
			//selling NPC: 
			var equip:Equipment = new Equipment("Thong");
			equip.set_dropped_description("a small slip of cloth is on the ground");
			equip.set_inventory_description("This barely noticible strip of red cloth could be used as underwear.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.set_equip_condition(FPalace_helper.waist_id, 36,16);
			equip.new_equip_slot(FPalace_helper.hips_slot,1);

			equip.new_cover_slot(FPalace_helper.hips_slot,"\n\n</pronoun> is wearing a nearly invisible red thong. ");
			equip.new_cover_image(FPalace_helper.hips_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.hips_slot,"\n\n</noun> ass is clearly visible, each orb of </noun> </"+FPalace_helper.hips_id+"> inch behind showing as the thong disappears between their mass. ", FPalace_helper.hips_id, 33);
			equip.new_cover_slot(FPalace_helper.cock_slot,"</noun> <sd/"+FPalace_helper.penis_length_id+"> </rn> cock is clearly buldging in </noun> thong,  it's length just barely visible. ",FPalace_helper.penis_length_id,4);
			equip.new_cover_slot(FPalace_helper.cock_slot,"</noun> <sd/"+FPalace_helper.penis_length_id+"> </rn> cock juts boldly from </noun> thong,  it's length completely passing the thong scant covering. ",FPalace_helper.penis_length_id,6);
			equip.new_cover_image(FPalace_helper.cock_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.balls_slot,"</noun> <sd/"+FPalace_helper.balls_size_id+"> balls are even visibly hanging from </noun> thong,  the twin orbs pushed off to one side. ",FPalace_helper.balls_size_id,4);
			equip.new_cover_image(FPalace_helper.balls_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.vag_slot,"",-1,0,0,1);
			equip.new_cover_image(FPalace_helper.vag_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.clit_slot,"");
			equip.new_cover_image(FPalace_helper.clit_slot,FPalace_helper.unknown_img);
			
			equip.set_identify_difficulty(14);
			equip.add_effect(FPalace_helper.sex_appeal_id,1);
			equip.add_effect(FPalace_helper.max_hp_id,1);
			equip.add_effect(FPalace_helper.max_weight_id,1);
			
			var a:Action = new Action();
			a.set_dialogue("",0);
			
			var tef_chall:Challenge = new Challenge();
			tef_chall.set_attack_stat(FPalace_helper.hips_id);
			tef_chall.set_defense_stat(-1, 1);
			tef_chall.set_variability(0);
			
			var tef_con:Consequence = new Consequence();//0
			
			var tf:Tick_Effect = new Tick_Effect();
			tf.set_status_id(Tick_Effect.booty_thong_status);
			var c2:Consequence = new Consequence();
			c2.add_consequence(FPalace_helper.hips_id,0.25, "", 0);
			
			tf.set_tick_consequence(Main.t1_hour,c2);
			
			tef_con.add_consequence(FPalace_helper.curr_hp_id,0, "", 0,0,0,-1,false,tf);
			tef_con.add_consequence(FPalace_helper.curr_hp_id,0, "", -1);
			
			a.add_challenge(tef_chall, tef_con);
			
			equip.add_action(a);
			
			tef_con = new Consequence();
			tef_con.add_remove_status(Tick_Effect.booty_thong_status);
			
			equip.add_remove_consequence(tef_con);
			
			equip.set_value(50);
			return equip;
		}
		
		public static function red_g_string():Equipment{
			//selling NPC: lux_invira_lingerie
			var equip:Equipment = new Equipment("Red G-String");
			equip.add_crafting_requirement(textiles(),1);
			equip.add_crafting_requirement(silk(),1);
			equip.set_dropped_description("a small slip of cloth is on the ground");
			equip.set_inventory_description("This barely noticible strip of red cloth could be used as underwear.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.set_equip_condition(FPalace_helper.waist_id, 36,16);
			equip.new_equip_slot(FPalace_helper.hips_slot,1);

			equip.new_cover_slot(FPalace_helper.hips_slot,"\n\n</pronoun> is wearing a nearly invisible red G-String. ");
			equip.new_cover_image(FPalace_helper.hips_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.hips_slot,"\n\n</noun> ass is clearly visible, each orb of </noun> </"+FPalace_helper.hips_id+"> inch behind showing as the g-string disappears between their mass. ", FPalace_helper.hips_id, 33);
			equip.new_cover_slot(FPalace_helper.cock_slot,"</noun> <sd/"+FPalace_helper.penis_length_id+"> </rn> cock is clearly buldging in </noun> G-String,  it's length just barely visible. ",FPalace_helper.penis_length_id,4);
			equip.new_cover_slot(FPalace_helper.cock_slot,"</noun> <sd/"+FPalace_helper.penis_length_id+"> </rn> cock juts boldly from </noun> G-String,  it's length completely passing the G-Strings scant covering. ",FPalace_helper.penis_length_id,6);
			equip.new_cover_image(FPalace_helper.cock_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.balls_slot,"</noun> <sd/"+FPalace_helper.balls_size_id+"> balls are even visibly hanging from </noun> G-String,  the twin orbs pushed off to one side. ",FPalace_helper.balls_size_id,4);
			equip.new_cover_image(FPalace_helper.balls_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.vag_slot,"",-1,0,0,1);
			equip.new_cover_image(FPalace_helper.vag_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.clit_slot,"");
			equip.new_cover_image(FPalace_helper.clit_slot,FPalace_helper.unknown_img);
			
			equip.set_identify_difficulty(14);
			equip.add_effect(FPalace_helper.sex_appeal_id,2);
			equip.add_effect(FPalace_helper.max_hp_id,1);
			equip.add_effect(FPalace_helper.max_weight_id,1);
			equip.set_value(24);
			return equip;
		}
		
		public static function leather_panties():Equipment{
			//selling NPC: lux_invira_shopkeeper
			var equip:Equipment = new Equipment("Leather panties");
			equip.add_crafting_requirement(leather(),1);
			equip.add_damage_weakness(FPalace_helper.fire_damage_type().get_id());
			equip.set_dropped_description("a pair of underwear is on the ground");
			equip.set_inventory_description("A set of womens underwear made from brown leather.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.set_equip_condition(FPalace_helper.waist_id, 26,20);
			equip.new_equip_slot(FPalace_helper.hips_slot,1);

			equip.new_cover_slot(FPalace_helper.hips_slot,"\n\n</pronoun> is wearing a small pair of rough cut leather panties. ");
			equip.new_cover_image(FPalace_helper.hips_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.hips_slot,"\n\n</noun> ass is clearly visible, each orb of </noun> </"+FPalace_helper.hips_id+"> inch behind showing as the panties disappear between their mass. ", FPalace_helper.hips_id, 36);
			equip.new_cover_slot(FPalace_helper.cock_slot,"</noun> <sd/"+FPalace_helper.penis_length_id+"> </rn> cock is clearly buldging in </noun> panties,  it's length just barely visible. ",FPalace_helper.penis_length_id,5);
			equip.new_cover_slot(FPalace_helper.cock_slot,"</noun> <sd/"+FPalace_helper.penis_length_id+"> </rn> cock hangs heavily out from </noun> panties,  it's length completely passing the panties bottomost freyed edge. ",FPalace_helper.penis_length_id,10);
			equip.new_cover_image(FPalace_helper.cock_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.balls_slot,"</noun> <sd/"+FPalace_helper.balls_size_id+"> balls are even visibly hanging from </noun> panties,  the twin orbs ballooning beneath. ",FPalace_helper.balls_size_id,6);
			equip.new_cover_image(FPalace_helper.balls_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.vag_slot,"",-1,0,0,2);
			equip.new_cover_image(FPalace_helper.vag_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.clit_slot,"");
			equip.new_cover_image(FPalace_helper.clit_slot,FPalace_helper.unknown_img);
			equip.set_identify_difficulty(14);
			equip.add_effect(FPalace_helper.sex_appeal_id,1);
			equip.add_effect(FPalace_helper.max_hp_id,1);
			equip.add_effect(FPalace_helper.max_weight_id,1);
			equip.set_value(14);
			return equip;
		}
		
		public static function chastity_belt():Equipment{
			//selling NPC: 
			var equip:Equipment = new Equipment("Chastity Belt");
			equip.add_crafting_requirement(iron(),2);
			equip.set_dropped_description("a pair of underwear is on the ground");
			equip.set_inventory_description("A chastity belt made of shimmering iron. Someone has attached a dildo to the inside of the crotch. ");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.set_equip_condition(FPalace_helper.waist_id, 30, 18);
			equip.set_equip_condition(FPalace_helper.penis_length_id, 10);
			equip.set_equip_condition(FPalace_helper.balls_size_id, 4);
			equip.new_equip_slot(FPalace_helper.hips_slot,1);

			equip.new_cover_slot(FPalace_helper.hips_slot,"\n\n</pronoun> is wearing a chastity belt. ");
			equip.new_cover_image(FPalace_helper.hips_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.hips_slot,"\n\n</noun> ass is clearly visible, each orb of </noun> </"+FPalace_helper.hips_id+"> inch behind showing as the chastity belt disappear between their mass. ", FPalace_helper.hips_id, 36);
			equip.new_cover_slot(FPalace_helper.cock_slot,"</noun> <sd/"+FPalace_helper.penis_length_id+"> </rn> cock is attempting to escape from </noun> chastity belt,  it's head peaking out from the edge of the belt. ",FPalace_helper.penis_length_id,5);
			equip.new_cover_image(FPalace_helper.cock_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.balls_slot,"</noun> <sd/"+FPalace_helper.balls_size_id+"> balls are even visibly hanging from </noun> chastity belt, the twin orbs ballooning beneath. ",FPalace_helper.balls_size_id,2);
			equip.new_cover_image(FPalace_helper.balls_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.vag_slot,"",-1,0,0,2);
			equip.new_cover_image(FPalace_helper.vag_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.clit_slot,"");
			equip.new_cover_image(FPalace_helper.clit_slot,FPalace_helper.unknown_img);
			equip.set_identify_difficulty(14);
			equip.add_effect(FPalace_helper.sex_appeal_id,1);
			equip.add_effect(FPalace_helper.max_hp_id,2);
			equip.add_effect(FPalace_helper.max_weight_id,1);
			equip.set_skill_bonus(FPalace_skills.grappling_id, 5);
			
			equip.set_value(26);
			return equip;
		}
		
		public static function horny_chastity_belt():Equipment{
			//selling NPC: 
			var equip:Equipment = new Equipment("Chastity Belt");
			equip.add_crafting_requirement(iron(),2);
			equip.add_crafting_requirement(plastics(),1);
			equip.set_dropped_description("a pair of underwear is on the ground");
			equip.set_inventory_description("A chastity belt made of shimmering iron. Someone has attached a dildo to the inside of the crotch. ");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.set_equip_condition(FPalace_helper.waist_id, 30,18);
			equip.set_equip_condition(FPalace_helper.penis_length_id, 10);
			equip.set_equip_condition(FPalace_helper.balls_size_id, 4);
			equip.new_equip_slot(FPalace_helper.hips_slot,1);

			equip.new_cover_slot(FPalace_helper.hips_slot,"\n\n</pronoun> is wearing a chastity belt. ");
			equip.new_cover_image(FPalace_helper.hips_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.hips_slot,"\n\n</noun> ass is clearly visible, each orb of </noun> </"+FPalace_helper.hips_id+"> inch behind showing as the chastity belt disappear between their mass. ", FPalace_helper.hips_id, 36);
			equip.new_cover_slot(FPalace_helper.cock_slot,"</noun> <sd/"+FPalace_helper.penis_length_id+"> </rn> cock is attempting to escape from </noun> chastity belt,  it's head peaking out from the edge of the belt. ",FPalace_helper.penis_length_id,5);
			equip.new_cover_image(FPalace_helper.cock_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.balls_slot,"</noun> <sd/"+FPalace_helper.balls_size_id+"> balls are even visibly hanging from </noun> chastity belt, the twin orbs ballooning beneath. ",FPalace_helper.balls_size_id,2);
			equip.new_cover_image(FPalace_helper.balls_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.vag_slot,"",-1,0,0,2);
			equip.new_cover_image(FPalace_helper.vag_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.clit_slot,"");
			equip.new_cover_image(FPalace_helper.clit_slot,FPalace_helper.unknown_img);
			equip.set_identify_difficulty(14);
			equip.add_effect(FPalace_helper.sex_appeal_id,1);
			equip.add_effect(FPalace_helper.max_hp_id,2);
			equip.add_effect(FPalace_helper.max_weight_id,1);
			equip.add_effect(FPalace_helper.min_lust_id,5);
			equip.set_skill_bonus(FPalace_skills.grappling_id, 5);
			
			var a:Action = new Action();
			a.set_dialogue("",0);
			
			var tef_chall:Challenge = new Challenge();
			tef_chall.set_attack_stat(FPalace_helper.curr_hp_id);
			tef_chall.set_defense_stat(-1, 1);
			tef_chall.set_variability(0);
			
			var tef_con:Consequence = new Consequence();//0
			
			var tf:Tick_Effect = new Tick_Effect();
			tf.set_status_id(Tick_Effect.horny_chastity_status);
			var c2:Consequence = new Consequence();
			c2.add_consequence(FPalace_helper.lust_id,10, "</n> feels something pushing against </noun> insides. ", 0);
			
			tf.set_tick_consequence(Main.t1_hour,c2);
			
			tef_con.add_consequence(FPalace_helper.curr_hp_id,0, "", 0,0,0,-1,false,tf);
			tef_con.add_consequence(FPalace_helper.curr_hp_id,0, "", -1);
			
			a.add_challenge(tef_chall, tef_con);
			
			equip.add_action(a);
			
			tef_con = new Consequence();
			tef_con.add_remove_status(Tick_Effect.horny_chastity_status);
			
			equip.add_remove_consequence(tef_con);
			
			equip.set_value(39);
			return equip;
		}
		
		public static function jutting_jockstrap():Equipment{
			var equip:Equipment = new Equipment("Jutting jockstrap");
			equip.add_damage_weakness(FPalace_helper.fire_damage_type().get_id());
			equip.set_dropped_description("a pair of underwear is on the ground");
			equip.set_inventory_description("This jockstrap looks like it'd help keep dangling bits in place.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.set_equip_condition(FPalace_helper.waist_id, 40,16);
			equip.set_equip_condition(FPalace_helper.penis_length_id, 12);
			equip.new_equip_slot(FPalace_helper.hips_slot,1);

			equip.new_cover_slot(FPalace_helper.hips_slot,"\n\n</pronoun> is wearing a jockstrap. ");
			equip.new_cover_slot(FPalace_helper.hips_slot,"\n\n</noun> ass is clearly visible, each orb of </noun> </"+FPalace_helper.hips_id+"> inch behind showing jockstrap rides up between them. ", FPalace_helper.hips_id);
			equip.new_cover_slot(FPalace_helper.cock_slot,"",-1,0,0,5);
			equip.new_cover_slot(FPalace_helper.cock_slot,"</noun> <sd/"+FPalace_helper.penis_length_id+"> </rn> cock is clearly buldging in </noun> boxers,  it's length just barely visible. ",FPalace_helper.penis_length_id,8);
			equip.new_cover_slot(FPalace_helper.cock_slot,"</noun> <sd/"+FPalace_helper.penis_length_id+"> </rn> cock hangs heavily out from </noun> boxers  it's length completely passing the jockstraps bindings. ",FPalace_helper.penis_length_id,12);
			equip.new_cover_image(FPalace_helper.cock_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.balls_slot,"",-1,0,0,5);
			equip.new_cover_slot(FPalace_helper.balls_slot,"</noun> <sd/"+FPalace_helper.balls_size_id+"> balls are even visibly hanging from </noun> jockstrap, the twin orbs ballooning beneath. ",FPalace_helper.balls_size_id,4);
			equip.new_cover_image(FPalace_helper.balls_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.vag_slot,"",-1,0,0,5);
			equip.new_cover_image(FPalace_helper.vag_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.clit_slot,"");
			equip.new_cover_image(FPalace_helper.clit_slot,Equipment.hide_part);
			equip.set_identify_difficulty(14);
			equip.add_effect(FPalace_helper.sex_appeal_id,1);
			equip.add_effect(FPalace_helper.max_hp_id,1);
			equip.add_effect(FPalace_helper.max_weight_id,3);
			
			var a:Action = new Action();
			a.set_dialogue("",0);
			
			var tef_chall:Challenge = new Challenge();
			tef_chall.set_attack_stat(FPalace_helper.penis_length_id);
			tef_chall.set_defense_stat(-1, 1);
			tef_chall.set_variability(0);
			
			var tef_con:Consequence = new Consequence();//0
			
			var tf:Tick_Effect = new Tick_Effect();
			tf.set_status_id(Tick_Effect.jutting_jockstrap_status);
			var c2:Consequence = new Consequence();
			c2.add_consequence(FPalace_helper.penis_length_id,0.3, "", 0);
			c2.add_consequence(FPalace_helper.penis_girth_id,0.1, "", 0);
			c2.add_consequence(FPalace_helper.lust_id,10, "", 0);
			
			tf.set_tick_consequence(Main.t1_hour,c2);
			
			tef_con.add_consequence(FPalace_helper.curr_hp_id,0, "", 0,0,0,-1,false,tf);
			tef_con.add_consequence(FPalace_helper.curr_hp_id,0, "", -1);
			
			a.add_challenge(tef_chall, tef_con);
			
			equip.add_action(a);
			
			tef_con = new Consequence();
			tef_con.add_remove_status(Tick_Effect.jutting_jockstrap_status);
			
			equip.add_remove_consequence(tef_con);
			
			equip.set_value(50);
			return equip;
		}
		
		public static function Blue_silk_boxers():Equipment{
			//selling NPC: industria_seamstress
			var equip:Equipment = new Equipment("Blue Silk Boxers");
			equip.add_crafting_requirement(silk(),2);
			equip.add_damage_weakness(FPalace_helper.fire_damage_type().get_id());
			equip.set_dropped_description("a pair of underwear is on the ground");
			equip.set_inventory_description("This airy pair of blue silk boxers would probably be form fitting.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.set_equip_condition(FPalace_helper.waist_id, 40,16);
			equip.new_equip_slot(FPalace_helper.hips_slot,1);

			equip.new_cover_slot(FPalace_helper.hips_slot,"\n\n</pronoun> is wearing a small pair of blue silken boxers. ");
			equip.new_cover_image(FPalace_helper.hips_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.hips_slot,"\n\n</noun> ass is clearly visible, each orb of </noun> </"+FPalace_helper.hips_id+"> inch behind showing as the boxers fall from their mass. ", FPalace_helper.hips_id, 36);
			equip.new_cover_slot(FPalace_helper.cock_slot,"",-1,0,0,5);
			equip.new_cover_slot(FPalace_helper.cock_slot,"</noun> <sd/"+FPalace_helper.penis_length_id+"> </rn> cock is clearly buldging in </noun> boxers, it's length just barely visible. ",FPalace_helper.penis_length_id,8);
			equip.new_cover_slot(FPalace_helper.cock_slot,"</noun> <sd/"+FPalace_helper.penis_length_id+"> </rn> cock hangs heavily out from </noun> boxers it's length completely passing the boxers bottomost freyed edge. ",FPalace_helper.penis_length_id,12);
			equip.new_cover_image(FPalace_helper.cock_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.balls_slot,"",-1,0,0,5);
			equip.new_cover_slot(FPalace_helper.balls_slot,"</noun> <sd/"+FPalace_helper.balls_size_id+"> balls are even visibly hanging from </noun> boxers, the twin orbs ballooning beneath. ",FPalace_helper.balls_size_id,9);
			equip.new_cover_image(FPalace_helper.balls_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.vag_slot,"",-1,0,0,5);
			equip.new_cover_image(FPalace_helper.vag_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.clit_slot,"");
			equip.new_cover_image(FPalace_helper.clit_slot,Equipment.hide_part);
			equip.set_identify_difficulty(14);
			equip.add_effect(FPalace_helper.sex_appeal_id,1);
			equip.add_effect(FPalace_helper.max_hp_id,2);
			equip.add_effect(FPalace_helper.max_weight_id,3);
			equip.set_value(27);
			return equip;
		}
		
		public static function tightie_whities():Equipment{
			//selling NPC: century_city_clothing_store_clerk
			var equip:Equipment = new Equipment("White underwear");
			equip.add_crafting_requirement(textiles(),1);
			equip.add_damage_weakness(FPalace_helper.fire_damage_type().get_id());
			equip.set_dropped_description("a pair of underwear is on the ground");
			equip.set_inventory_description("This pair of white underwear are dangerously reminiscent of what a mother would buy for her son.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.set_equip_condition(FPalace_helper.waist_id, 30, 20);
			equip.new_equip_slot(FPalace_helper.hips_slot,1);

			equip.new_cover_slot(FPalace_helper.hips_slot,"\n\n</pronoun> is wearing a small pair of tight white underwear. ");
			equip.new_cover_image(FPalace_helper.hips_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.hips_slot,"\n\n</noun> ass is clearly visible, each orb of </noun> </"+FPalace_helper.hips_id+"> inch behind showing as their underwear fails to hide their mass. ", FPalace_helper.hips_id, 36);
			equip.new_cover_slot(FPalace_helper.cock_slot,"",-1,0,0,5);
			equip.new_cover_slot(FPalace_helper.cock_slot,"</noun> <sd/"+FPalace_helper.penis_length_id+"> </rn> cock is clearly buldging in </noun> underwear, it's length just barely visible. ",FPalace_helper.penis_length_id,8);
			equip.new_cover_slot(FPalace_helper.cock_slot,"</noun> <sd/"+FPalace_helper.penis_length_id+"> </rn> cock hangs heavily out from </noun> underwear it's length falling from the underwears bottomost edge. ",FPalace_helper.penis_length_id,12);
			equip.new_cover_image(FPalace_helper.cock_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.balls_slot,"",-1,0,0,5);
			equip.new_cover_slot(FPalace_helper.balls_slot,"</noun> <sd/"+FPalace_helper.balls_size_id+"> balls are even visibly hanging from </noun> underwear, the twin orbs ballooning beneath. ",FPalace_helper.balls_size_id,9);
			equip.new_cover_image(FPalace_helper.balls_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.vag_slot,"",-1,0,0,5);
			equip.new_cover_image(FPalace_helper.vag_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.clit_slot,"");
			equip.new_cover_image(FPalace_helper.clit_slot,Equipment.hide_part);
			equip.set_identify_difficulty(14);
			equip.add_effect(FPalace_helper.sex_appeal_id,-1);
			equip.add_effect(FPalace_helper.max_hp_id,2);
			equip.add_effect(FPalace_helper.max_weight_id,2);
			equip.set_value(8);
			return equip;
		}
		
		public static function mighty_whities():Equipment{
			//selling NPC: nunnery_shopkeeper
			var equip:Equipment = new Equipment("Mighty Whities");
			equip.set_dropped_description("a pair of underwear is on the ground");
			equip.set_inventory_description("This pair of white underwear are dangerously reminiscent of what a mother would buy for her son.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.set_equip_condition(FPalace_helper.waist_id, 40, 20);
			equip.set_equip_condition(FPalace_helper.balls_size_id, 2.5);
			equip.new_equip_slot(FPalace_helper.hips_slot,1);

			equip.new_cover_slot(FPalace_helper.hips_slot,"\n\n</pronoun> is wearing a small pair of tight white underwear. ");
			equip.new_cover_image(FPalace_helper.hips_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.hips_slot,"\n\n</noun> ass is clearly visible, each orb of </noun> </"+FPalace_helper.hips_id+"> inch behind showing as their underwear fails to hide their mass. ", FPalace_helper.hips_id, 36);
			equip.new_cover_slot(FPalace_helper.cock_slot,"",-1,0,0,5);
			equip.new_cover_slot(FPalace_helper.cock_slot,"</noun> <sd/"+FPalace_helper.penis_length_id+"> </rn> cock is clearly buldging in </noun> underwear, it's length just barely visible. ",FPalace_helper.penis_length_id,8);
			equip.new_cover_slot(FPalace_helper.cock_slot,"</noun> <sd/"+FPalace_helper.penis_length_id+"> </rn> cock hangs heavily out from </noun> underwear it's length falling from the underwears bottomost edge. ",FPalace_helper.penis_length_id,12);
			equip.new_cover_image(FPalace_helper.cock_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.balls_slot,"",-1,0,0,5);
			equip.new_cover_slot(FPalace_helper.balls_slot,"</noun> <sd/"+FPalace_helper.balls_size_id+"> balls are even visibly hanging from </noun> underwear, the twin orbs ballooning beneath. ",FPalace_helper.balls_size_id,2);
			equip.new_cover_image(FPalace_helper.balls_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.vag_slot,"",-1,0,0,5);
			equip.new_cover_image(FPalace_helper.vag_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.clit_slot,"");
			equip.new_cover_image(FPalace_helper.clit_slot,Equipment.hide_part);
			equip.set_identify_difficulty(14);
			equip.add_effect(FPalace_helper.sex_appeal_id,-1);
			equip.add_effect(FPalace_helper.max_hp_id,2);
			equip.add_effect(FPalace_helper.max_weight_id,2);
			
			var a:Action = new Action();
			a.set_dialogue("",0);
			
			var tef_chall:Challenge = new Challenge();
			tef_chall.set_attack_stat(FPalace_helper.cum_volume_id);
			tef_chall.set_defense_stat(-1, 1);
			tef_chall.set_variability(0);
			
			var tef_con:Consequence = new Consequence();//0
			
			var tf:Tick_Effect = new Tick_Effect();
			tf.set_status_id(Tick_Effect.mighty_whities_status);
			var c2:Consequence = new Consequence();
			c2.add_consequence(FPalace_helper.cum_volume_id,5, "", 0);
			c2.add_consequence(FPalace_helper.balls_size_id,0.1, "", 0);
			c2.add_consequence(FPalace_helper.lust_id,10, "", 0);
			
			tf.set_tick_consequence(Main.t1_hour,c2);
			
			tef_con.add_consequence(FPalace_helper.curr_hp_id,0, "", 0,0,0,-1,false,tf);
			tef_con.add_consequence(FPalace_helper.curr_hp_id,0, "", -1);
			
			a.add_challenge(tef_chall, tef_con);
			
			equip.add_action(a);
			
			tef_con = new Consequence();
			tef_con.add_remove_status(Tick_Effect.mighty_whities_status);
			
			equip.add_remove_consequence(tef_con);
			
			equip.set_value(50);
			
			
			return equip;
		}
		
		public static function Loincloth():Equipment{
			//selling NPC: lux_invira_shopkeeper
			var equip:Equipment = new Equipment("Loincloth");
			equip.add_crafting_requirement(textiles(),1);
			equip.add_damage_weakness(FPalace_helper.fire_damage_type().get_id());
			equip.add_upgrade_slot(Upgrade_Item.upgrade_lining);
			equip.set_dropped_description("a piece of cloth is on the ground");
			equip.set_inventory_description("This lengthly piece of cloth has a string that looks to go around the waist.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.set_equip_condition(FPalace_helper.waist_id, 40);
			equip.new_equip_slot(FPalace_helper.hips_slot,1);

			equip.new_cover_slot(FPalace_helper.hips_slot,"\n\n</pronoun> is wearing a length of cloth trailing down the front of </noun> groin. ");
			equip.new_cover_image(FPalace_helper.hips_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.hips_slot,"\n\n</noun> ass is clearly visible, each orb of </noun> </"+FPalace_helper.hips_id+"> inch behind showing, despite her loincloth. ", FPalace_helper.hips_id, 36);
			equip.new_cover_slot(FPalace_helper.cock_slot,"",-1,0,0,5);
			equip.new_cover_slot(FPalace_helper.cock_slot,"</noun> <sd/"+FPalace_helper.penis_girth_id+"> </rn> cock is clearly buldging down the length of </noun> loincloth. ",FPalace_helper.penis_girth_id,8);
			equip.new_cover_slot(FPalace_helper.cock_slot,"the head of </noun> <sd/"+FPalace_helper.penis_length_id+"> </rn> cock hangs heavily out from </noun> loincloth it's length completely passing the fabrics bottomost freyed edge. ",FPalace_helper.penis_length_id,16);
			equip.new_cover_image(FPalace_helper.cock_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.balls_slot,"",-1,0,0,5);
			equip.new_cover_slot(FPalace_helper.balls_slot,"</noun> <sd/"+FPalace_helper.balls_size_id+"> balls are visibly hanging from </noun> loincloth, the twin orbs ballooning beneath. ",FPalace_helper.balls_size_id,9);
			equip.new_cover_image(FPalace_helper.balls_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.vag_slot,"",-1,0,0,5);
			equip.new_cover_image(FPalace_helper.vag_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.clit_slot,"");
			equip.new_cover_image(FPalace_helper.clit_slot,Equipment.hide_part);
			equip.set_identify_difficulty(14);
			equip.add_effect(FPalace_helper.sex_appeal_id,1);
			equip.add_effect(FPalace_helper.max_hp_id,1);
			equip.set_value(12);
			return equip;
		}
		
		public static function Blue_silk_pants():Equipment{
			//selling NPC: industria_seamstress
			var equip:Equipment = new Equipment("Blue Silk Pants");
			equip.add_crafting_requirement(silk(),4);
			equip.add_damage_weakness(FPalace_helper.fire_damage_type().get_id());
			equip.add_upgrade_slot(Upgrade_Item.upgrade_lining);
			equip.set_dropped_description("a pair of pants is on the ground");
			equip.set_inventory_description("This pair of blue pants is made from a smooth, unstretchable material.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.set_equip_condition(FPalace_helper.hips_id, 50,6);
			
			equip.new_equip_slot(FPalace_helper.hips_slot,1);
			equip.new_equip_slot(FPalace_helper.legs_slot,2);

			equip.new_cover_slot(FPalace_helper.hips_slot,"\n\n</pronoun> is wearing a pair of blue silk pants. ");
			equip.new_cover_image(FPalace_helper.hips_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.hips_slot,"\n\n</noun> ass is gently carrassed by </noun> pair of blue silk pants, each orb of </noun> </"+FPalace_helper.hips_id+"> inch behind clearly visible. ", FPalace_helper.hips_id, 36);
			equip.new_cover_slot(FPalace_helper.cock_slot,"",-1,0,0,5);
			equip.new_cover_slot(FPalace_helper.cock_slot,"</noun> <sd/"+FPalace_helper.penis_length_id+"> </rn> cock is visible as a buldge, it's length just barely visible. ",FPalace_helper.penis_length_id,13);
			equip.new_cover_slot(FPalace_helper.cock_slot,"</noun> <sd/"+FPalace_helper.penis_length_id+"> </rn> cock bulges down </noun> pantleg, it's length trailing down </noun> thigh. ",FPalace_helper.penis_length_id,18);
			equip.new_cover_image(FPalace_helper.cock_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.balls_slot,"",-1,0,0,5);
			equip.new_cover_slot(FPalace_helper.balls_slot,"</noun> <sd/"+FPalace_helper.balls_size_id+"> twin orbs bulge out from </noun> groin, stretching </noun> pants fabric. ",FPalace_helper.balls_size_id,6);
			equip.new_cover_image(FPalace_helper.balls_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.vag_slot,"",-1,0,0,5);
			equip.new_cover_image(FPalace_helper.vag_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.clit_slot,"");
			equip.new_cover_image(FPalace_helper.clit_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.legs_slot,"");
			equip.new_cover_image(FPalace_helper.legs_slot,FPalace_helper.unknown_img);
			equip.set_identify_difficulty(11);
			equip.add_effect(FPalace_helper.max_hp_id,6);
									
			equip.set_value(37);
			equip.set_weight(2);
			return equip;
		}
		
		public static function blue_slacks():Equipment{
			//selling NPC: castilla_seamstress
			var equip:Equipment = new Equipment("Navy Blue Slacks");
			equip.add_crafting_requirement(textiles(),4);
			equip.add_damage_weakness(FPalace_helper.fire_damage_type().get_id());
			equip.add_upgrade_slot(Upgrade_Item.upgrade_lining);
			equip.set_dropped_description("a pair of pants is on the ground");
			equip.set_inventory_description("This pair of navy blue slacks is made from a soft warm wool.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.set_equip_condition(FPalace_helper.hips_id, 50,6);
			
			equip.new_equip_slot(FPalace_helper.hips_slot,1);
			equip.new_equip_slot(FPalace_helper.legs_slot,2);

			equip.new_cover_slot(FPalace_helper.hips_slot,"\n\n</pronoun> is wearing a pair of navy blue slacks. ");
			equip.new_cover_image(FPalace_helper.hips_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.hips_slot,"\n\n</noun> ass is gently carrassed by </noun> pair of slacks, each orb of </noun> </"+FPalace_helper.hips_id+"> inch behind clearly visible. ", FPalace_helper.hips_id, 36);
			equip.new_cover_slot(FPalace_helper.cock_slot,"",-1,0,0,5);
			equip.new_cover_slot(FPalace_helper.cock_slot,"</noun> <sd/"+FPalace_helper.penis_length_id+"> </rn> cock is visible as a buldge, it's length just barely visible. ",FPalace_helper.penis_length_id,13);
			equip.new_cover_slot(FPalace_helper.cock_slot,"</noun> <sd/"+FPalace_helper.penis_length_id+"> </rn> cock bulges down </noun> pantleg, it's length trailing down </noun> thigh. ",FPalace_helper.penis_length_id,18);
			equip.new_cover_image(FPalace_helper.cock_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.balls_slot,"",-1,0,0,5);
			equip.new_cover_slot(FPalace_helper.balls_slot,"</noun> <sd/"+FPalace_helper.balls_size_id+"> twin orbs bulge out from </noun> groin, stretching </noun> pants fabric. ",FPalace_helper.balls_size_id,6);
			equip.new_cover_image(FPalace_helper.balls_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.vag_slot,"",-1,0,0,5);
			equip.new_cover_image(FPalace_helper.vag_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.clit_slot,"");
			equip.new_cover_image(FPalace_helper.clit_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.legs_slot,"");
			equip.new_cover_image(FPalace_helper.legs_slot,FPalace_helper.unknown_img);
			equip.set_identify_difficulty(11);
			equip.add_effect(FPalace_helper.max_hp_id,6);
									
			equip.set_value(19);
			equip.set_weight(2);
			return equip;
		}
		
		public static function baggy_bluejeans():Equipment{
			//selling NPC: century_city_clothing_store_clerk
			var equip:Equipment = new Equipment("Baggy Bluejeans");
			equip.add_crafting_requirement(textiles(),4);
			equip.add_damage_weakness(FPalace_helper.fire_damage_type().get_id());
			equip.set_dropped_description("a pair of pants is on the ground");
			equip.set_inventory_description("A pair of blue denim pants whose legs balloon from the waist.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.set_equip_condition(FPalace_helper.hips_id, 40,6);
			equip.set_equip_condition(FPalace_helper.penis_length_id, 40);
			equip.set_equip_condition(FPalace_helper.penis_girth_id, 15);
			equip.new_equip_slot(FPalace_helper.hips_slot,1);
			equip.new_equip_slot(FPalace_helper.legs_slot,2);

			equip.new_cover_slot(FPalace_helper.hips_slot,"\n\n</pronoun> is wearing a pair of baggy blue jeans. ");
			equip.new_cover_image(FPalace_helper.hips_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.hips_slot,"\n\n</noun> ass is roughly pressing against </noun> pair of baggy blue jeans, each orb of </noun> </"+FPalace_helper.hips_id+"> inch behind clearly visible. ", FPalace_helper.hips_id, 36);
			equip.new_cover_slot(FPalace_helper.cock_slot,"",-1,0,0,5);
			equip.new_cover_slot(FPalace_helper.cock_slot,"</noun> <sd/"+FPalace_helper.penis_length_id+"> </rn> cock is visible as a buldge, it's length just barely visible. ",FPalace_helper.penis_length_id,13);
			equip.new_cover_slot(FPalace_helper.cock_slot,"</noun> <sd/"+FPalace_helper.penis_length_id+"> </rn> cock bulges down </noun> pantleg, it's length trailing down </noun> thigh. ",FPalace_helper.penis_length_id,18);
			equip.new_cover_image(FPalace_helper.cock_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.balls_slot,"",-1,0,0,5);
			equip.new_cover_slot(FPalace_helper.balls_slot,"</noun> <sd/"+FPalace_helper.balls_size_id+"> twin orbs bulge out from </noun> groin, stretching </noun> pants fabric. ",FPalace_helper.balls_size_id,6);
			equip.new_cover_image(FPalace_helper.balls_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.vag_slot,"",-1,0,0,5);
			equip.new_cover_image(FPalace_helper.vag_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.clit_slot,"");
			equip.new_cover_image(FPalace_helper.clit_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.legs_slot,"");
			equip.new_cover_image(FPalace_helper.legs_slot,FPalace_helper.unknown_img);
			equip.set_identify_difficulty(12);
			equip.add_effect(FPalace_helper.max_hp_id,4);
						
			equip.set_value(15);
			equip.set_weight(4);
			return equip;
		}
		
		public static function ripped_jean_shorts():Equipment{
			//selling NPC: aghapei_seamstress
			var equip:Equipment = new Equipment("Ripped jean shorts");
			equip.add_crafting_requirement(textiles(),2);
			equip.add_damage_weakness(FPalace_helper.fire_damage_type().get_id());
			equip.set_dropped_description("a pair of shorts is on the ground");
			equip.set_inventory_description("This pair of blue denim shorts is ripped and torn just below the groin.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.set_equip_condition(FPalace_helper.hips_id, 36,20);
			equip.set_equip_condition(FPalace_helper.penis_girth_id, 10);
			equip.new_equip_slot(FPalace_helper.hips_slot,1);
			equip.new_equip_slot(FPalace_helper.legs_slot,2);

			equip.new_cover_slot(FPalace_helper.hips_slot,"\n\n</pronoun> is wearing a pair of ripped blue jean shorts. ");
			equip.new_cover_image(FPalace_helper.hips_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.hips_slot,"\n\n</noun> ass is roughly pressing against </noun> pair of baggy blue jeans, each orb of </noun> </"+FPalace_helper.hips_id+"> inch behind falling from the short shorts. ", FPalace_helper.hips_id, 36);
			equip.new_cover_slot(FPalace_helper.cock_slot,"",-1,0,0,5);
			equip.new_cover_slot(FPalace_helper.cock_slot,"</noun> <sd/"+FPalace_helper.penis_length_id+"> </rn> cock is visible as a buldge,  it's length just barely visible. ",FPalace_helper.penis_length_id,8);
			equip.new_cover_slot(FPalace_helper.cock_slot,"</noun> <sd/"+FPalace_helper.penis_length_id+"> </rn> cock bulges out of </noun> shorts through a leg,  it's length trailing down </noun> thigh. ",FPalace_helper.penis_length_id,12);
			equip.new_cover_image(FPalace_helper.cock_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.balls_slot,"",-1,0,0,5);
			equip.new_cover_slot(FPalace_helper.balls_slot,"</noun> <sd/"+FPalace_helper.balls_size_id+"> twin orbs bulge out from </noun> groin, falling from </noun> shorts. ",FPalace_helper.balls_size_id,5);
			equip.new_cover_image(FPalace_helper.balls_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.vag_slot,"",-1,0,0,5);
			equip.new_cover_image(FPalace_helper.vag_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.clit_slot,"");
			equip.new_cover_image(FPalace_helper.clit_slot,Equipment.hide_part);
			equip.set_identify_difficulty(10);
			equip.add_effect(FPalace_helper.max_hp_id,3);

			equip.set_value(11);
			return equip;
		}
		
		public static function normal_bluejeans():Equipment{
			//selling NPC: century_city_clothing_store_clerk
			var equip:Equipment = new Equipment("Bluejeans");
			equip.add_crafting_requirement(textiles(),4);
			equip.add_damage_weakness(FPalace_helper.fire_damage_type().get_id());
			equip.set_dropped_description("a pair of pants is on the ground");
			equip.set_inventory_description("A standard pair of blue denim pants.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.set_equip_condition(FPalace_helper.hips_id, 40,6);
			equip.set_equip_condition(FPalace_helper.penis_length_id, 18);
			equip.set_equip_condition(FPalace_helper.penis_girth_id, 8);
			equip.new_equip_slot(FPalace_helper.hips_slot,1);
			equip.new_equip_slot(FPalace_helper.legs_slot,2);

			equip.new_cover_slot(FPalace_helper.hips_slot,"\n\n</pronoun> is wearing a pair of baggy blue jeans. ");
			equip.new_cover_image(FPalace_helper.hips_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.hips_slot,"\n\n</noun> ass is roughly pressing against </noun> pair of baggy blue jeans, each orb of </noun> </"+FPalace_helper.hips_id+"> inch behind clearly visible. ", FPalace_helper.hips_id, 36);
			equip.new_cover_slot(FPalace_helper.cock_slot,"",-1,0,0,5);
			equip.new_cover_slot(FPalace_helper.cock_slot,"</noun> <sd/"+FPalace_helper.penis_length_id+"> </rn> cock is visible as a buldge,  it's length just barely visible. ",FPalace_helper.penis_length_id,8);
			equip.new_cover_slot(FPalace_helper.cock_slot,"</noun> <sd/"+FPalace_helper.penis_length_id+"> </rn> cock bulges down </noun> pantleg,  it's length trailing down </noun> thigh. ",FPalace_helper.penis_length_id,12);
			equip.new_cover_image(FPalace_helper.cock_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.balls_slot,"",-1,0,0,5);
			equip.new_cover_slot(FPalace_helper.balls_slot,"</noun> <sd/"+FPalace_helper.balls_size_id+"> twin orbs bulge out from </noun> groin, stretching </noun> pants fabric. ",FPalace_helper.balls_size_id,6);
			equip.new_cover_image(FPalace_helper.balls_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.vag_slot,"",-1,0,0,5);
			equip.new_cover_image(FPalace_helper.vag_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.clit_slot,"");
			equip.new_cover_image(FPalace_helper.clit_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.legs_slot,"");
			equip.new_cover_image(FPalace_helper.legs_slot,FPalace_helper.unknown_img);
			equip.set_identify_difficulty(9);
			equip.add_effect(FPalace_helper.max_hp_id,4);

			equip.set_value(15);
			equip.set_weight(4);
			return equip;
		}
		
		public static function black_hose():Equipment{
			//selling NPC: lux_invira_lingerie
			var equip:Equipment = new Equipment("Black Pantyhose");
			equip.add_crafting_requirement(textiles(),2);
			equip.add_crafting_requirement(silk(),1);
			equip.add_damage_weakness(FPalace_helper.fire_damage_type().get_id());
			equip.set_dropped_description("a pair of hose are on the ground");
			equip.set_inventory_description("A pair of sexy black pantyhose.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.set_equip_condition(FPalace_helper.hips_id, 40,6);
			equip.set_equip_condition(FPalace_helper.penis_length_id, 30);
			equip.set_equip_condition(FPalace_helper.penis_girth_id, 8);
			equip.new_equip_slot(FPalace_helper.hips_slot,1);
			equip.new_equip_slot(FPalace_helper.legs_slot,2);

			equip.new_cover_slot(FPalace_helper.hips_slot,"\n\n</pronoun> is wearing a pair of semi-translucent black pantyhose. ");
			equip.new_cover_image(FPalace_helper.hips_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.hips_slot,"\n\n</noun> ass is nice compressed in </noun> hose, each orb of </noun> </"+FPalace_helper.hips_id+"> inch behind clearly visible. ", FPalace_helper.hips_id, 20);
			equip.new_cover_slot(FPalace_helper.cock_slot,"",-1,0,0,5);
			equip.new_cover_slot(FPalace_helper.cock_slot,"</noun> <sd/"+FPalace_helper.penis_length_id+"> </rn> cock is visible as a buldge,  it's length trailing down the hose. ",FPalace_helper.penis_length_id,1);
			equip.new_cover_slot(FPalace_helper.cock_slot,"</noun> <sd/"+FPalace_helper.penis_length_id+"> </rn> cock reaches passed </noun> knee,  it's length barely contained by </noun> black pantyhose. ",FPalace_helper.penis_length_id,16);
			equip.new_cover_image(FPalace_helper.cock_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.balls_slot,"",-1,0,0,5);
			equip.new_cover_slot(FPalace_helper.balls_slot,"</noun> <sd/"+FPalace_helper.balls_size_id+"> twin orbs bulge out from </noun> groin, stretching </noun> hoses fabric. ",FPalace_helper.balls_size_id,1);
			equip.new_cover_image(FPalace_helper.balls_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.vag_slot,"",-1,0,0,5);
			equip.new_cover_image(FPalace_helper.vag_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.clit_slot,"");
			equip.new_cover_image(FPalace_helper.clit_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.legs_slot,"");
			equip.new_cover_image(FPalace_helper.legs_slot,FPalace_helper.unknown_img);
			equip.set_identify_difficulty(7);
			equip.add_effect(FPalace_helper.max_hp_id,2);

			equip.set_value(14);
			return equip;
		}
		
		public static function knee_high_socks():Equipment{
			//selling NPC: school_store_shopkeeper
			var equip:Equipment = new Equipment("Knee high socks");
			equip.add_crafting_requirement(textiles(),2);
			equip.add_damage_weakness(FPalace_helper.fire_damage_type().get_id());
			equip.set_dropped_description("a pair of socks are on the ground");
			equip.set_inventory_description("A pair of knee high socks.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.new_equip_slot(FPalace_helper.legs_slot,2);
			equip.new_equip_slot(FPalace_helper.feet_slot,2);

			equip.new_cover_slot(FPalace_helper.legs_slot,"</pronoun> is wearing a pair of knee high socks. ");
			equip.new_cover_image(FPalace_helper.legs_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.feet_slot,"</pronoun> is wearing a pair of knee high socks. ");
			equip.new_cover_image(FPalace_helper.feet_slot,FPalace_helper.unknown_img);
			
			equip.set_identify_difficulty(7);
			equip.add_effect(FPalace_helper.max_hp_id,2);

			equip.set_value(9);
			return equip;
		}
		
		public static function blue_scrub_bottom():Equipment{
			//selling NPC: N/A
			var equip:Equipment = new Equipment("Scrubs bottom");
			equip.add_crafting_requirement(textiles(),4);
			equip.add_damage_weakness(FPalace_helper.fire_damage_type().get_id());
			equip.set_dropped_description("a pair of pants is on the ground");
			equip.set_inventory_description("A pair of clean blue pants.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.set_equip_condition(FPalace_helper.hips_id, 40,6);
			equip.set_equip_condition(FPalace_helper.penis_length_id, 18);
			equip.set_equip_condition(FPalace_helper.penis_girth_id, 8);
			equip.new_equip_slot(FPalace_helper.hips_slot,1);
			equip.new_equip_slot(FPalace_helper.legs_slot,2);

			equip.new_cover_slot(FPalace_helper.hips_slot,"\n\n</pronoun> is wearing a pair of blue scrub pants. ");
			equip.new_cover_image(FPalace_helper.hips_slot,FPalace_helper.unknown_img);
			equip.new_cover_slot(FPalace_helper.hips_slot,"\n\n</noun> ass is roughly pressing against </noun> pair of blue scrub pants, each orb of </noun> </"+FPalace_helper.hips_id+"> inch behind clearly visible. ", FPalace_helper.hips_id, 36);
			equip.new_cover_slot(FPalace_helper.cock_slot,"",-1,0,0,5);
			equip.new_cover_slot(FPalace_helper.cock_slot,"</noun> <sd/"+FPalace_helper.penis_length_id+"> </rn> cock is visible as a buldge,  it's length just barely visible. ",FPalace_helper.penis_length_id,8);
			equip.new_cover_slot(FPalace_helper.cock_slot,"</noun> <sd/"+FPalace_helper.penis_length_id+"> </rn> cock bulges down </noun> pantleg,  it's length trailing down </noun> thigh. ",FPalace_helper.penis_length_id,12);
			equip.new_cover_image(FPalace_helper.cock_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.balls_slot,"",-1,0,0,5);
			equip.new_cover_slot(FPalace_helper.balls_slot,"</noun> <sd/"+FPalace_helper.balls_size_id+"> twin orbs bulge out from </noun> groin, stretching </noun> pants fabric. ",FPalace_helper.balls_size_id,6);
			equip.new_cover_image(FPalace_helper.balls_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.vag_slot,"",-1,0,0,5);
			equip.new_cover_image(FPalace_helper.vag_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.clit_slot,"");
			equip.new_cover_image(FPalace_helper.clit_slot,Equipment.hide_part);
			equip.new_cover_slot(FPalace_helper.legs_slot,"");
			equip.new_cover_image(FPalace_helper.legs_slot,FPalace_helper.unknown_img);
			equip.set_identify_difficulty(7);
			equip.add_effect(FPalace_helper.max_hp_id,2);

			equip.set_value(11);
			return equip;
		}
			
			//FEET
		public static function hard_leather_boots():Equipment{
			//selling NPC: castilla_cobbler
			var equip:Equipment = new Equipment("Hard leather boots");
			equip.add_crafting_requirement(leather(),2);
			equip.add_damage_resistance(FPalace_helper.slash_damage_type().get_id());
			equip.add_damage_resistance(FPalace_helper.bludg_damage_type().get_id());
			equip.add_upgrade_slot(Upgrade_Item.upgrade_lining);
			equip.set_dropped_description("a pair of boots are on the ground");
			equip.set_inventory_description("This set of tough black leather look comfortable.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.new_equip_slot(FPalace_helper.feet_slot, 2);
			equip.new_cover_slot(FPalace_helper.feet_slot,"</noun> feet and shins are covered by thick, hard leather boots. ",-1,0,2);
			equip.new_cover_image(FPalace_helper.feet_slot,FPalace_helper.unknown_img);
			equip.set_identify_difficulty(12);
			equip.add_effect(FPalace_helper.con_id,1);
			equip.add_effect(FPalace_helper.max_hp_id,5);
			
			equip.set_skill_bonus(FPalace_skills.covert_id, -5);
			
			equip.set_value(15);
			equip.set_weight(5);
			return equip;
		}
			
		public static function black_heels():Equipment{
			//selling NPC: century_city_shoe_store_clerk
			var equip:Equipment = new Equipment("Black High Heels");
			equip.add_crafting_requirement(leather(),2);
			equip.set_dropped_description("a pair of heels are on the ground");
			equip.set_inventory_description("These inch high heels are made of shiny black material.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.new_equip_slot(FPalace_helper.feet_slot, 2);
			equip.new_cover_slot(FPalace_helper.feet_slot,"</noun> feet are being held up by a pair of sheer black high heels. ",-1,0,2);
			equip.new_cover_image(FPalace_helper.feet_slot,FPalace_helper.unknown_img);
			equip.set_identify_difficulty(12);
			equip.add_effect(FPalace_helper.height_id,1);
			equip.add_effect(FPalace_helper.sex_appeal_id,1);
			equip.add_effect(FPalace_helper.max_hp_id,1);
			
			equip.set_skill_bonus(FPalace_skills.covert_id, -5);
			
			equip.set_value(9);
			equip.set_weight(2);
			return equip;
		}
			
		public static function black_boots():Equipment{
			//selling NPC: castilla_cobbler
			var equip:Equipment = new Equipment("Black Boots");
			equip.add_crafting_requirement(leather(),2);
			equip.set_dropped_description("a pair of boots are on the ground");
			equip.set_inventory_description("This pair of solid black boots look comfortable.");
			equip.add_upgrade_slot(Upgrade_Item.upgrade_lining);
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.new_equip_slot(FPalace_helper.feet_slot, 2);
			equip.new_cover_slot(FPalace_helper.feet_slot,"</noun> feet are covered by thick black boots. ",-1,0,2);
			equip.new_cover_image(FPalace_helper.feet_slot,FPalace_helper.unknown_img);
			equip.set_identify_difficulty(14);
			equip.add_effect(FPalace_helper.con_id,2);
			equip.add_effect(FPalace_helper.max_hp_id,2);
			
			equip.set_skill_bonus(FPalace_skills.covert_id, -5);
			
			equip.set_value(20);
			equip.set_weight(5);
			return equip;
		}
		
		public static function black_dress_shoes():Equipment{
			//selling NPC: century_city_shoe_store_clerk
			var equip:Equipment = new Equipment("Black dress shoes");
			equip.add_crafting_requirement(leather(),2);
			equip.set_dropped_description("a pair of shoes are on the ground");
			equip.set_inventory_description("These shiny black shoes look both comfy AND classy.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.new_equip_slot(FPalace_helper.feet_slot, 2);
			equip.new_cover_slot(FPalace_helper.feet_slot,"</noun> feet are covered by shining black shoes. ",-1,0,2);
			equip.new_cover_image(FPalace_helper.feet_slot,FPalace_helper.unknown_img);
			equip.set_identify_difficulty(14);
			equip.add_effect(FPalace_helper.con_id,2);
			equip.add_effect(FPalace_helper.max_hp_id,2);
						
			equip.set_value(25);
			equip.set_weight(2);
			return equip;
		}
		
		public static function green_leather_sandals():Equipment{
			//selling NPC: ahimsa_cobler
			var equip:Equipment = new Equipment("Green Sandals");
			equip.add_crafting_requirement(leather(),1);
			equip.set_dropped_description("a pair of sandals are on the ground");
			equip.set_inventory_description("This pair of green dyed leathers each have two leather straps that meet slightly closer to one side then the other.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.new_equip_slot(FPalace_helper.feet_slot, 2);
			equip.new_cover_slot(FPalace_helper.feet_slot,"</noun> feet are covered by green dyed leather sandals. ",-1,0,2);
			equip.new_cover_image(FPalace_helper.feet_slot,FPalace_helper.unknown_img);
			equip.set_identify_difficulty(12);
			equip.add_effect(FPalace_helper.dex_id,2);
			equip.add_effect(FPalace_helper.max_hp_id,2);
			
			equip.set_skill_bonus(FPalace_skills.covert_id, -2);
			
			equip.set_value(17);
			return equip;
		}
		
		public static function sneakers():Equipment{
			//selling NPC: century_city_shoe_store_clerk
			var equip:Equipment = new Equipment("Sneakers");
			equip.add_crafting_requirement(textiles(),1);
			equip.add_crafting_requirement(leather(),2);
			equip.add_damage_weakness(FPalace_helper.fire_damage_type().get_id());
			equip.set_dropped_description("a pair of shoes are on the ground");
			equip.set_inventory_description("This pair of comfortable looking shoes is covered in advertisements.");
			equip.set_image_id(FPalace_helper.unknown_img);
			equip.new_equip_slot(FPalace_helper.feet_slot, 2);
			equip.new_cover_slot(FPalace_helper.feet_slot,"</noun> feet are covered by a pair of comfortable looking shoes. ",-1,0,2);
			equip.new_cover_image(FPalace_helper.feet_slot,FPalace_helper.unknown_img);
			equip.set_identify_difficulty(14);
			equip.add_effect(FPalace_helper.dex_id,1);
			equip.add_effect(FPalace_helper.max_hp_id,2);
			
			equip.set_value(15);
			equip.set_weight(2);
			return equip;
		}
		
		//HELD ITEMS
		public static function bronze_short_sword():Weapon{
			//selling NPC: mensch_smith
			var weapon:Weapon = new Weapon("Bronze Short Sword");
			weapon.add_crafting_requirement(bronze(),4);
			weapon.set_dropped_description("a sword is lying on the ground here");
			weapon.set_inventory_description("A solid copper sword with a foot and a half long blade.");
			weapon.set_image_id(FPalace_helper.unknown_img);
			weapon.set_hold_condition(FPalace_helper.str_id, 10);
			weapon.add_upgrade_slot(Upgrade_Item.upgrade_grip);
			weapon.add_upgrade_slot(Upgrade_Item.upgrade_blade);
			var inter_chal:Challenge = new Challenge(true);
				inter_chal.set_attack_stat(FPalace_skills.concentration_id);
				inter_chal.set_defense_stat(-1,12);
				inter_chal.set_variability(10);
			
			var a:Action = new Action();
				a.set_name("Attack");
				a.set_attack_flag();
				//dodge
				var challenge:Challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.one_handed_id);
				challenge.set_defense_stat(FPalace_skills.dodging_id);
				challenge.set_variability(10);
				challenge.set_text("Attack");
				var consequence:Consequence = new Consequence();
				consequence.set_damage_type(FPalace_helper.pierce_damage_type().get_id());
				consequence.add_consequence(FPalace_helper.curr_hp_id,-1, "</n2> lashes out with </noun2> short sword and strikes </n> successfully, ",0,1,0,1);
				consequence.set_interupt_chal(inter_chal);
				consequence.add_consequence(0,0, "</n2> misses as </pronoun2> slashes at air. ",-1);
				
				a.add_challenge(challenge,consequence);
				
				//parry - need to check to see if opponent is holding something, otherwise, no parry
				challenge = new Challenge();
				challenge.set_attack_stat(-1,0);
				challenge.set_defense_stat(-1,0);
				challenge.set_defense_hold_check();
				challenge.set_variability(0);
				challenge.set_text("");
				consequence = new Consequence();
				consequence.add_consequence(0,0, "",0,1,0,3);
				consequence.add_consequence(0,0, "",-1,1,0,2);
				
				a.add_challenge(challenge,consequence);
				
				challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.one_handed_id);
				challenge.set_defense_stat(FPalace_skills.parrying_id);
				challenge.set_variability(10);
				challenge.set_text("");
				consequence = new Consequence();
				consequence.set_damage_type(FPalace_helper.pierce_damage_type().get_id());
				consequence.add_consequence(FPalace_helper.curr_hp_id,-1, "",0,1,0,3);
				consequence.set_interupt_chal(inter_chal);
				consequence.add_consequence(0,0, "</n> manages to parry the blow however! ",-1);
				
				a.add_challenge(challenge,consequence);
				//block
				challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.one_handed_id);
				challenge.set_defense_stat(FPalace_skills.blocking_id);
				challenge.set_variability(10);
				challenge.set_text("");
				consequence = new Consequence();
				consequence.set_damage_type(FPalace_helper.pierce_damage_type().get_id());
				consequence.set_max_damage(10);
				consequence.add_consequence(FPalace_helper.curr_hp_id,Consequence.amt_from_roll_const, "and lands a clean hit upon </n>. ",0);
				consequence.add_consequence(FPalace_helper.curr_hp_id,-2, "</n2> has left a huge wound in </n>. ",4,0,0,-1,false,null,Body.change_stats_individual);
				consequence.set_interupt_chal(inter_chal);
				consequence.add_consequence(FPalace_helper.curr_hp_id,-1, "but </n> blocks most of the blow. ",-1);
				consequence.amt_by_roll_flag();
				
				a.add_challenge(challenge,consequence);
			
			weapon.set_attack_action(a);
			
			weapon.set_value(15);
			weapon.set_weight(10);
			
			return weapon;
		}
		
		public static function bronze_shield():Weapon{
			//selling NPC: mensch_smith
			var weapon:Weapon = new Weapon("Bronze Shield");
			weapon.add_crafting_requirement(bronze(),8);
			weapon.add_upgrade_slot(Upgrade_Item.upgrade_plates);
			weapon.set_dropped_description("a shield is lying on the ground here");
			weapon.set_inventory_description("This solid bronze shield would probably add some protection.");
			weapon.set_image_id(FPalace_helper.unknown_img);
			weapon.set_hold_condition(FPalace_helper.str_id, 10);
			weapon.set_num_hold(1);
			weapon.set_identify_difficulty(17);
			weapon.add_effect(FPalace_helper.dex_id,2);
			weapon.add_effect(FPalace_helper.con_id,2);
			weapon.add_effect(FPalace_helper.max_hp_id,10);
			weapon.set_skill_bonus(FPalace_skills.blocking_id, 10);
			
			weapon.set_value(70);
			weapon.set_weight(15);
			
			return weapon;
		}
		
		public static function pitch_fork():Weapon{
			//selling NPC: freedom_farms_lilly
			var weapon:Weapon = new Weapon("Pitch Fork");
			weapon.add_crafting_requirement(wood(),4);
			weapon.set_dropped_description("a pitch fork is lying on the ground here");
			weapon.set_inventory_description("This long three pronged stick still has a few pieces of straw attached to the end.");
			weapon.set_image_id(FPalace_helper.unknown_img);
			weapon.set_hold_condition(FPalace_helper.str_id, 10);
			weapon.set_num_hold(2);
			weapon.set_skill_bonus(FPalace_skills.two_handed_id, -2);
			
			var inter_chal:Challenge = new Challenge(true);
				inter_chal.set_attack_stat(FPalace_skills.concentration_id);
				inter_chal.set_defense_stat(-1,10);
				inter_chal.set_variability(10);
			
			var a:Action = new Action();
				a.set_name("Attack");
				a.set_attack_flag();
				//dodge
				var challenge:Challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.two_handed_id);
				challenge.set_defense_stat(FPalace_skills.dodging_id);
				challenge.set_variability(10);
				challenge.set_text("Attack");
				var consequence:Consequence = new Consequence();
				consequence.set_damage_type(FPalace_helper.pierce_damage_type().get_id());
				consequence.add_consequence(FPalace_helper.curr_hp_id,-1, "</n2> pokes at </n> with </noun2> pitch-fork, ",0,1,0,1);
				consequence.set_interupt_chal(inter_chal);
				consequence.add_consequence(0,0, "</n2> swipes at air. ",-1);
				
				a.add_challenge(challenge,consequence);
				
				//parry - need to check to see if opponent is holding something, otherwise, no parry
				challenge = new Challenge();
				challenge.set_attack_stat(-1,0);
				challenge.set_defense_stat(-1,0);
				challenge.set_defense_hold_check();
				challenge.set_variability(0);
				challenge.set_text("");
				consequence = new Consequence();
				consequence.add_consequence(0,0, "",0,1,0,3);
				consequence.add_consequence(0,0, "",-1,1,0,2);
				
				a.add_challenge(challenge,consequence);
				
				challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.two_handed_id);
				challenge.set_defense_stat(FPalace_skills.parrying_id);
				challenge.set_variability(10);
				challenge.set_text("");
				consequence = new Consequence();
				consequence.set_damage_type(FPalace_helper.pierce_damage_type().get_id());
				consequence.add_consequence(FPalace_helper.curr_hp_id,-1, "",0,1,0,3);
				consequence.set_interupt_chal(inter_chal);
				consequence.add_consequence(0,0, "</n> manages to parry the blow however! ",-1);
				
				a.add_challenge(challenge,consequence);
				//block
				challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.two_handed_id);
				challenge.set_defense_stat(FPalace_skills.blocking_id);
				challenge.set_variability(10);
				challenge.set_text("");
				consequence = new Consequence();
				consequence.set_damage_type(FPalace_helper.pierce_damage_type().get_id());
				consequence.set_max_damage(10);
				consequence.add_consequence(FPalace_helper.curr_hp_id,Consequence.amt_from_roll_const, "and lands a clean hit upon </n>. ",0);
				consequence.add_consequence(FPalace_helper.curr_hp_id,-10, "</n2> lifts </n> up with </noun2> pitch-fork, then slams </objnoun> to the ground. ",10);
				consequence.set_interupt_chal(inter_chal);
				consequence.add_consequence(FPalace_helper.curr_hp_id,-1, "but </n> blocks most of the blow. ",-1);
				consequence.amt_by_roll_flag();
				
				a.add_challenge(challenge,consequence);
			
			weapon.set_attack_action(a);
			
			weapon.set_value(5);
			weapon.set_weight(5);
			
			return weapon;
		}
		
		public static function hardcover_war_and_peace():Weapon{
			//selling NPC: mensch_librarian, ahimsa_librarian, benevol_librarian, aghapei_librarian
			var weapon:Weapon = new Weapon("Hardcover copy of War & Peace by Leo Tolstoy");
			weapon.add_crafting_requirement(paper(),10);
			weapon.add_crafting_requirement(dye(),3);
			weapon.add_crafting_requirement(textiles(),1);
			weapon.set_dropped_description("a book is lying on the ground here");
			weapon.set_inventory_description("You're pretty sure you'd earn a degree if you bothered to read this.");
			weapon.set_image_id(FPalace_helper.unknown_img);
			weapon.set_hold_condition(FPalace_helper.wis_id, 10);
			weapon.set_num_hold(2);
			
			var inter_chal:Challenge = new Challenge(true);
				inter_chal.set_attack_stat(FPalace_skills.concentration_id);
				inter_chal.set_defense_stat(-1,12);
				inter_chal.set_variability(10);
			
			var a:Action = new Action();
				a.set_name("Attack");
				a.set_attack_flag();
				//dodge
				var challenge:Challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.two_handed_id);
				challenge.set_defense_stat(FPalace_skills.dodging_id);
				challenge.set_variability(10);
				challenge.set_text("Attack");
				var consequence:Consequence = new Consequence();
				consequence.set_damage_type(FPalace_helper.bludg_damage_type().get_id());
				consequence.add_consequence(FPalace_helper.curr_hp_id,-1, "</n2> smashes </n> with </noun2> book, ",0,1,0,1);
				consequence.set_interupt_chal(inter_chal);
				consequence.add_consequence(0,0, "</n2> misses as </pronoun2> books *wooshes* through the air. ",-1);
				
				a.add_challenge(challenge,consequence);
				
				//parry - need to check to see if opponent is holding something, otherwise, no parry
				challenge = new Challenge();
				challenge.set_attack_stat(-1,0);
				challenge.set_defense_stat(-1,0);
				challenge.set_defense_hold_check();
				challenge.set_variability(0);
				challenge.set_text("");
				consequence = new Consequence();
				consequence.add_consequence(0,0, "",0,1,0,3);
				consequence.add_consequence(0,0, "",-1,1,0,2);
				
				a.add_challenge(challenge,consequence);
				
				challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.two_handed_id);
				challenge.set_defense_stat(FPalace_skills.parrying_id);
				challenge.set_variability(10);
				challenge.set_text("");
				consequence = new Consequence();
				consequence.set_damage_type(FPalace_helper.bludg_damage_type().get_id());
				consequence.add_consequence(FPalace_helper.curr_hp_id,-1, "",0,1,0,3);
				consequence.set_interupt_chal(inter_chal);
				consequence.add_consequence(0,0, "</n> manages to parry the blow however! ",-1);
				
				a.add_challenge(challenge,consequence);
				//block
				challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.two_handed_id);
				challenge.set_defense_stat(FPalace_skills.blocking_id);
				challenge.set_variability(10);
				challenge.set_text("");
				consequence = new Consequence();
				consequence.set_damage_type(FPalace_helper.bludg_damage_type().get_id());
				consequence.set_max_damage(7);
				consequence.add_consequence(FPalace_helper.curr_hp_id,Consequence.amt_from_roll_const, "and lands a clean hit upon </n>. ",0);
				consequence.add_consequence(FPalace_helper.curr_mp_id,-5, "The beating leaves </n>s wondering where </pronoun> is. ",1);
				consequence.set_interupt_chal(inter_chal);
				consequence.add_consequence(FPalace_helper.curr_hp_id,-1, "but </n> blocks most of the blow. ",-1);
				consequence.amt_by_roll_flag();
				
				a.add_challenge(challenge,consequence);
			
			weapon.set_attack_action(a);
			
			weapon.set_value(45);
			weapon.set_weight(5);
			
			return weapon;
		}
		
		public static function knife():Weapon{
			//selling NPC: grasslands_caravan_merchant
			var weapon:Weapon = new Weapon("Knife");
			weapon.add_crafting_requirement(leather(),1);
			weapon.add_crafting_requirement(iron(),2);
			weapon.add_crafting_requirement(wood(),1);			
			weapon.add_upgrade_slot(Upgrade_Item.upgrade_grip);
			weapon.add_upgrade_slot(Upgrade_Item.upgrade_blade);
			weapon.set_dropped_description("a knife is lying on the ground here");
			weapon.set_inventory_description("A plain knife, with a sharp edge and leather covered handle.");
			weapon.set_image_id(FPalace_helper.unknown_img);
			weapon.set_hold_condition(FPalace_helper.dex_id, 8);
			
			var inter_chal:Challenge = new Challenge(true);
				inter_chal.set_attack_stat(FPalace_skills.concentration_id);
				inter_chal.set_defense_stat(-1,12);
				inter_chal.set_variability(10);
			
			var a:Action = new Action();
				a.set_name("Attack");
				a.set_attack_flag();
				//dodge
				var challenge:Challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.one_handed_id);
				challenge.set_defense_stat(FPalace_skills.dodging_id);
				challenge.set_variability(10);
				challenge.set_text("Attack");
				var consequence:Consequence = new Consequence();
				consequence.set_damage_type(FPalace_helper.slash_damage_type().get_id());
				consequence.add_consequence(FPalace_helper.curr_hp_id,-1, "</n2> lashes out with </noun2> knife and strikes </n> successfully, ",0,1,0,1);
				consequence.set_interupt_chal(inter_chal);
				consequence.add_consequence(0,0, "</n2> misses as </pronoun2> slashes at air. ",-1);
				
				a.add_challenge(challenge,consequence);
				
				//parry - need to check to see if opponent is holding something, otherwise, no parry
				challenge = new Challenge();
				challenge.set_attack_stat(-1,0);
				challenge.set_defense_stat(-1,0);
				challenge.set_defense_hold_check();
				challenge.set_variability(0);
				challenge.set_text("");
				consequence = new Consequence();
				consequence.add_consequence(0,0, "",0,1,0,3);
				consequence.add_consequence(0,0, "",-1,1,0,2);
				
				a.add_challenge(challenge,consequence);
				
				challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.one_handed_id);
				challenge.set_defense_stat(FPalace_skills.parrying_id);
				challenge.set_variability(10);
				challenge.set_text("");
				consequence = new Consequence();
				consequence.set_damage_type(FPalace_helper.slash_damage_type().get_id());
				consequence.add_consequence(FPalace_helper.curr_hp_id,-1, "",0,1,0,3);
				consequence.set_interupt_chal(inter_chal);
				consequence.add_consequence(0,0, "</n> manages to parry the blow however! ",-1);
				
				a.add_challenge(challenge,consequence);
				//block
				challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.one_handed_id);
				challenge.set_defense_stat(FPalace_skills.blocking_id);
				challenge.set_variability(10);
				challenge.set_text("");
				consequence = new Consequence();
				consequence.set_damage_type(FPalace_helper.slash_damage_type().get_id());
				consequence.set_max_damage(6);
				consequence.add_consequence(FPalace_helper.curr_hp_id,Consequence.amt_from_roll_const, "and lands a clean hit upon </n>. ",0);
				consequence.add_consequence(FPalace_helper.curr_hp_id,-2, "</n2> has left a nasty red gash on </n>s skin. ",1);
				consequence.set_interupt_chal(inter_chal);
				consequence.add_consequence(FPalace_helper.curr_hp_id,-1, "but </n> blocks most of the blow. ",-1);
				consequence.amt_by_roll_flag();
				
				a.add_challenge(challenge,consequence);
			
			weapon.set_attack_action(a);
			
			weapon.set_value(10);
			
			return weapon;
		}
		
		public static function whip():Weapon{
			//selling NPC: mensch_slaver
			var weapon:Weapon = new Weapon("Whip");
			weapon.add_crafting_requirement(leather(),5);		
			weapon.add_upgrade_slot(Upgrade_Item.upgrade_grip);
			weapon.set_dropped_description("a whip is lying on the ground here");
			weapon.set_inventory_description("A length of hardened leather, perfect for lashing things with.");
			weapon.set_image_id(FPalace_helper.unknown_img);
			weapon.set_hold_condition(FPalace_helper.dex_id, 10);
			
			var inter_chal:Challenge = new Challenge(true);
				inter_chal.set_attack_stat(FPalace_skills.concentration_id);
				inter_chal.set_defense_stat(-1,12);
				inter_chal.set_variability(10);
			
			var a:Action = new Action();
				a.set_name("Attack");
				a.set_attack_flag();
				//dodge
				var challenge:Challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.one_handed_id);
				challenge.set_defense_stat(FPalace_skills.dodging_id);
				challenge.set_variability(10);
				challenge.set_text("Attack");
				var consequence:Consequence = new Consequence();
				consequence.set_damage_type(FPalace_helper.slash_damage_type().get_id());
				consequence.add_consequence(FPalace_helper.curr_hp_id,-1, "</n2> lashes out with </noun2> whip and strikes </n> successfully, ",0,1,0,1);
				consequence.set_interupt_chal(inter_chal);
				consequence.add_consequence(0,0, "</n2> misses as </noun2> whip flails through the air. ",-1);
				
				a.add_challenge(challenge,consequence);
				
				//parry - need to check to see if opponent is holding something, otherwise, no parry
				challenge = new Challenge();
				challenge.set_attack_stat(-1,0);
				challenge.set_defense_stat(-1,0);
				challenge.set_defense_hold_check();
				challenge.set_variability(0);
				challenge.set_text("");
				consequence = new Consequence();
				consequence.add_consequence(0,0, "",0,1,0,3);
				consequence.add_consequence(0,0, "",-1,1,0,2);
				
				a.add_challenge(challenge,consequence);
				
				challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.one_handed_id);
				challenge.set_defense_stat(FPalace_skills.parrying_id);
				challenge.set_variability(10);
				challenge.set_text("");
				consequence = new Consequence();
				consequence.set_damage_type(FPalace_helper.slash_damage_type().get_id());
				consequence.add_consequence(FPalace_helper.curr_hp_id,-1, "",0,1,0,3);
				consequence.set_interupt_chal(inter_chal);
				consequence.add_consequence(0,0, "</n> manages to parry the blow however! ",-1);
				
				a.add_challenge(challenge,consequence);
				//block
				challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.one_handed_id);
				challenge.set_defense_stat(FPalace_skills.blocking_id);
				challenge.set_variability(10);
				challenge.set_text("");
				consequence = new Consequence();
				consequence.set_damage_type(FPalace_helper.slash_damage_type().get_id());
				consequence.set_max_damage(10);
				consequence.add_consequence(FPalace_helper.curr_hp_id,Consequence.amt_from_roll_const, "and lands a clean hit upon </n>. ",0);
				consequence.add_consequence(FPalace_helper.curr_hp_id,-2, "</n2> has left a nasty red gash on </n>s skin. ",1);
				consequence.set_interupt_chal(inter_chal);
				consequence.add_consequence(FPalace_helper.curr_hp_id,-1, "but </n> blocks most of the blow. ",-1);
				consequence.amt_by_roll_flag();
				
				a.add_challenge(challenge,consequence);
			
			weapon.set_attack_action(a);
			
			weapon.set_value(8);
			
			return weapon;
		}
		
		public static function scalpel():Weapon{
			//selling NPC: century_city_medical_supplies_clerk
			var weapon:Weapon = new Weapon("Scalpel");
			weapon.add_crafting_requirement(iron(),1);
			weapon.set_dropped_description("a scalpel is lying on the ground here");
			weapon.set_inventory_description("This shining metal blade is only an inch long, but impossibly sharp.");
			weapon.set_image_id(FPalace_helper.unknown_img);
			weapon.set_hold_condition(FPalace_helper.dex_id, 10);
			
			var inter_chal:Challenge = new Challenge(true);
				inter_chal.set_attack_stat(FPalace_skills.concentration_id);
				inter_chal.set_defense_stat(-1,12);
				inter_chal.set_variability(10);
			
			var a:Action = new Action();
				a.set_name("Attack");
				a.set_attack_flag();
				//dodge
				var challenge:Challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.one_handed_id);
				challenge.set_defense_stat(FPalace_skills.dodging_id);
				challenge.set_variability(10);
				challenge.set_text("Attack");
				var consequence:Consequence = new Consequence();
				consequence.set_damage_type(FPalace_helper.slash_damage_type().get_id());
				consequence.add_consequence(FPalace_helper.curr_hp_id,-1, "</n2> lashes out with </noun2> scalpel and strikes </n> successfully, ",0,1,0,1);
				consequence.set_interupt_chal(inter_chal);
				consequence.add_consequence(0,0, "</n2> misses as </pronoun2> slashes at air. ",-1);
				
				a.add_challenge(challenge,consequence);
				
				//parry - need to check to see if opponent is holding something, otherwise, no parry
				challenge = new Challenge();
				challenge.set_attack_stat(-1,0);
				challenge.set_defense_stat(-1,0);
				challenge.set_defense_hold_check();
				challenge.set_variability(0);
				challenge.set_text("");
				consequence = new Consequence();
				consequence.add_consequence(0,0, "",0,1,0,3);
				consequence.add_consequence(0,0, "",-1,1,0,2);
				
				a.add_challenge(challenge,consequence);
				
				challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.one_handed_id);
				challenge.set_defense_stat(FPalace_skills.parrying_id);
				challenge.set_variability(10);
				challenge.set_text("");
				consequence = new Consequence();
				consequence.set_damage_type(FPalace_helper.slash_damage_type().get_id());
				consequence.add_consequence(FPalace_helper.curr_hp_id,-1, "",0,1,0,3);
				consequence.set_interupt_chal(inter_chal);
				consequence.add_consequence(0,0, "</n> manages to parry the blow however! ",-1);
				
				a.add_challenge(challenge,consequence);
				//block
				challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.one_handed_id);
				challenge.set_defense_stat(FPalace_skills.blocking_id);
				challenge.set_variability(10);
				challenge.set_text("");
				consequence = new Consequence();
				consequence.set_damage_type(FPalace_helper.slash_damage_type().get_id());
				consequence.set_max_damage(6);
				consequence.add_consequence(FPalace_helper.curr_hp_id,Consequence.amt_from_roll_const, "and lands a clean hit upon </n>. ",0);
				consequence.add_consequence(FPalace_helper.curr_hp_id,-5, "</n2> has left a nasty red gash on </n>s skin. ",1);
				consequence.set_interupt_chal(inter_chal);
				consequence.add_consequence(FPalace_helper.curr_hp_id,-1, "but </n> blocks most of the blow. ",-1);
				consequence.amt_by_roll_flag();
				
				a.add_challenge(challenge,consequence);
			
			weapon.set_attack_action(a);
			
			weapon.set_value(5);
			
			return weapon;
		}
		
		public static function elvish_rapier():Weapon{
			//selling NPC: ahimsa_smith
			var weapon:Weapon = new Weapon("Elvish Rapier");
			weapon.add_crafting_requirement(bronze(),1);
			weapon.add_crafting_requirement(iron(),4);
			weapon.add_crafting_requirement(wood(),1);
			weapon.add_crafting_requirement(leather(),1);
			weapon.add_upgrade_slot(Upgrade_Item.upgrade_grip);
			weapon.add_upgrade_slot(Upgrade_Item.upgrade_blade);
			weapon.set_dropped_description("a sword is lying on the ground here");
			weapon.set_inventory_description("This long thin blade has a fancy bronze hand guard, and gorgeous leaf patterns engraved in its steel blade.");
			weapon.set_image_id(FPalace_helper.unknown_img);
			weapon.set_hold_condition(FPalace_helper.dex_id, 10);
			weapon.set_skill_bonus(FPalace_skills.one_handed_id, -1);
			
			var inter_chal:Challenge = new Challenge(true);
				inter_chal.set_attack_stat(FPalace_skills.concentration_id);
				inter_chal.set_defense_stat(-1,12);
				inter_chal.set_variability(10);
			
			var a:Action = new Action();
				a.set_name("Attack");
				a.set_attack_flag();
				//dodge
				var challenge:Challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.one_handed_id);
				challenge.set_defense_stat(FPalace_skills.dodging_id);
				challenge.set_variability(10);
				challenge.set_text("Attack");
				var consequence:Consequence = new Consequence();
				consequence.set_damage_type(FPalace_helper.pierce_damage_type().get_id());
				consequence.add_consequence(FPalace_helper.curr_hp_id,-1, "</n2> lashes out with </noun2> rapier, and digs the point at </n>, ",0,1,0,1);
				consequence.set_interupt_chal(inter_chal);
				consequence.add_consequence(0,0, "</n2> misses as </pronoun2> pokes at air. ",-1);
				
				a.add_challenge(challenge,consequence);
				
				//parry - need to check to see if opponent is holding something, otherwise, no parry
				challenge = new Challenge();
				challenge.set_attack_stat(-1,0);
				challenge.set_defense_stat(-1,0);
				challenge.set_defense_hold_check();
				challenge.set_variability(0);
				challenge.set_text("");
				consequence = new Consequence();
				consequence.add_consequence(0,0, "",0,1,0,3);
				consequence.add_consequence(0,0, "",-1,1,0,2);
				
				a.add_challenge(challenge,consequence);
				
				challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.one_handed_id);
				challenge.set_defense_stat(FPalace_skills.parrying_id);
				challenge.set_variability(10);
				challenge.set_text("");
				consequence = new Consequence();
				consequence.set_damage_type(FPalace_helper.pierce_damage_type().get_id());
				consequence.add_consequence(FPalace_helper.curr_hp_id,-1, "",0,1,0,3);
				consequence.set_interupt_chal(inter_chal);
				consequence.add_consequence(0,0, "</n> manages to parry the blow however! ",-1);
				
				a.add_challenge(challenge,consequence);
				//block
				challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.one_handed_id);
				challenge.set_defense_stat(FPalace_skills.blocking_id);
				challenge.set_variability(10);
				challenge.set_text("");
				consequence = new Consequence();
				consequence.set_damage_type(FPalace_helper.pierce_damage_type().get_id());
				consequence.set_max_damage(9);
				consequence.add_consequence(FPalace_helper.curr_hp_id,Consequence.amt_from_roll_const, "and lands a clean hit upon </n>. ",0);
				var tf:Tick_Effect = new Tick_Effect();
					tf.set_end_tick(4);
					var c2:Consequence = new Consequence();
										
					c2.add_consequence(FPalace_helper.curr_hp_id,-1, "</n> begins to bleed. ", 0);
					tf.set_tick_consequence(1, c2);
					tf.set_tick_consequence(2, c2);
					tf.set_tick_consequence(3, c2);
					tf.set_tick_consequence(4, c2);
				consequence.add_consequence(FPalace_helper.curr_hp_id,-3, "</n2> has opened a bleeding wound in </n>. ",5,0,0,-1, false, tf);
				consequence.set_interupt_chal(inter_chal);
				consequence.add_consequence(FPalace_helper.curr_hp_id,-1, "but </n> blocks most of the blow. ",-1);
				consequence.amt_by_roll_flag();
				
				a.add_challenge(challenge,consequence);
			weapon.set_attack_action(a);
			
			weapon.set_value(24);
			weapon.set_weight(3);
			
			return weapon;
		}
		
		public static function greatsword():Weapon{
			//selling NPC: N/A
			var weapon:Weapon = new Weapon("Greatsword");
			weapon.add_crafting_requirement(bronze(),1);
			weapon.add_crafting_requirement(iron(),12);
			weapon.add_crafting_requirement(wood(),1);
			weapon.add_crafting_requirement(leather(),1);
			weapon.add_upgrade_slot(Upgrade_Item.upgrade_grip);
			weapon.add_upgrade_slot(Upgrade_Item.upgrade_blade);
			weapon.set_dropped_description("a sword is lying on the ground here");
			weapon.set_inventory_description("This gargantuan iron blade seems... deadly.");
			weapon.set_image_id(FPalace_helper.unknown_img);
			weapon.set_num_hold(2);
			weapon.set_hold_condition(FPalace_helper.str_id, 12);
			weapon.set_skill_bonus(FPalace_skills.two_handed_id, -5);
			
			var inter_chal:Challenge = new Challenge(true);
				inter_chal.set_attack_stat(FPalace_skills.concentration_id);
				inter_chal.set_defense_stat(-1,12);
				inter_chal.set_variability(10);
			
			var a:Action = new Action();
				a.set_name("Attack");
				a.set_attack_flag();
				//dodge
				var challenge:Challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.two_handed_id);
				challenge.set_defense_stat(FPalace_skills.dodging_id);
				challenge.set_variability(10);
				challenge.set_text("Attack");
				var consequence:Consequence = new Consequence();
				consequence.set_damage_type(FPalace_helper.pierce_damage_type().get_id());
				consequence.add_consequence(FPalace_helper.curr_hp_id,-1, "</n2> swings </noun2> massive blade, catching </n> in it's swing! ",0,1,0,1);
				consequence.set_interupt_chal(inter_chal);
				consequence.add_consequence(0,0, "</n2> swings </noun2> gargantuan sword at the air. ",-1);
				
				a.add_challenge(challenge,consequence);
				
				//parry - need to check to see if opponent is holding something, otherwise, no parry
				challenge = new Challenge();
				challenge.set_attack_stat(-1,0);
				challenge.set_defense_stat(-1,0);
				challenge.set_defense_hold_check();
				challenge.set_variability(0);
				challenge.set_text("");
				consequence = new Consequence();
				consequence.add_consequence(0,0, "",0,1,0,3);
				consequence.add_consequence(0,0, "",-1,1,0,2);
				
				a.add_challenge(challenge,consequence);
				
				challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.two_handed_id);
				challenge.set_defense_stat(FPalace_skills.parrying_id);
				challenge.set_variability(10);
				challenge.set_text("");
				consequence = new Consequence();
				consequence.set_damage_type(FPalace_helper.pierce_damage_type().get_id());
				consequence.add_consequence(FPalace_helper.curr_hp_id,-1, "",0,1,0,3);
				consequence.set_interupt_chal(inter_chal);
				consequence.add_consequence(0,0, "</n> manages to parry the blow however! ",-1);
				
				a.add_challenge(challenge,consequence);
				//block
				challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.two_handed_id);
				challenge.set_defense_stat(FPalace_skills.blocking_id);
				challenge.set_variability(10);
				challenge.set_text("");
				consequence = new Consequence();
				consequence.set_damage_type(FPalace_helper.slash_damage_type().get_id());
				consequence.set_max_damage(13);
				consequence.add_consequence(FPalace_helper.curr_hp_id,Consequence.amt_from_roll_const, "",0);
				consequence.add_consequence(FPalace_helper.curr_hp_id,-10, "</n2> nearly cleaves </n> in two! ",5);
				consequence.set_interupt_chal(inter_chal);
				consequence.add_consequence(FPalace_helper.curr_hp_id,-1, "but </n> blocks most of the blow. ",-1);
				consequence.amt_by_roll_flag();
				
				a.add_challenge(challenge,consequence);
			weapon.set_attack_action(a);
			
			weapon.set_value(45);
			weapon.set_weight(15);
			
			return weapon;
		}
		
		public static function spear():Weapon{
			//selling NPC: lux_invira_shopkeeper
			var weapon:Weapon = new Weapon("Spear");
			weapon.add_crafting_requirement(wood(),2);
			weapon.add_crafting_requirement(bronze(),1);
			weapon.set_dropped_description("a spear is lying on the ground here");
			weapon.set_inventory_description("This long thin length of wood with a sharp metal tip on one end is quite simple.");
			weapon.set_image_id(FPalace_helper.unknown_img);
			weapon.set_hold_condition(FPalace_helper.dex_id, 8);
			weapon.set_skill_bonus(FPalace_skills.one_handed_id, -1);
			weapon.add_upgrade_slot(Upgrade_Item.upgrade_grip);
			weapon.add_upgrade_slot(Upgrade_Item.upgrade_tip);
			var inter_chal:Challenge = new Challenge(true);
				inter_chal.set_attack_stat(FPalace_skills.concentration_id);
				inter_chal.set_defense_stat(-1,12);
				inter_chal.set_variability(10);
			
			var a:Action = new Action();
				a.set_name("Attack");
				a.set_attack_flag();
				//dodge
				var challenge:Challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.one_handed_id);
				challenge.set_defense_stat(FPalace_skills.dodging_id);
				challenge.set_variability(10);
				challenge.set_text("Attack");
				var consequence:Consequence = new Consequence();
				consequence.set_damage_type(FPalace_helper.pierce_damage_type().get_id());
				consequence.add_consequence(FPalace_helper.curr_hp_id,-1, "</n2> lashes out with </noun2> spear, and digs the point at </n>, ",0,1,0,1);
				consequence.set_interupt_chal(inter_chal);
				consequence.add_consequence(0,0, "</n2> misses as </pronoun2> pokes at air. ",-1);
				
				a.add_challenge(challenge,consequence);
				
				//parry - need to check to see if opponent is holding something, otherwise, no parry
				challenge = new Challenge();
				challenge.set_attack_stat(-1,0);
				challenge.set_defense_stat(-1,0);
				challenge.set_defense_hold_check();
				challenge.set_variability(0);
				challenge.set_text("");
				consequence = new Consequence();
				consequence.add_consequence(0,0, "",0,1,0,3);
				consequence.add_consequence(0,0, "",-1,1,0,2);
				
				a.add_challenge(challenge,consequence);
				
				challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.one_handed_id);
				challenge.set_defense_stat(FPalace_skills.parrying_id);
				challenge.set_variability(10);
				challenge.set_text("");
				consequence = new Consequence();
				consequence.set_damage_type(FPalace_helper.pierce_damage_type().get_id());
				consequence.add_consequence(FPalace_helper.curr_hp_id,-1, "",0,1,0,3);
				consequence.set_interupt_chal(inter_chal);
				consequence.add_consequence(0,0, "</n> manages to parry the blow however! ",-1);
				
				a.add_challenge(challenge,consequence);
				//block
				challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.one_handed_id);
				challenge.set_defense_stat(FPalace_skills.blocking_id);
				challenge.set_variability(10);
				challenge.set_text("");
				consequence = new Consequence();
				consequence.set_damage_type(FPalace_helper.pierce_damage_type().get_id());
				consequence.set_max_damage(8);
				consequence.add_consequence(FPalace_helper.curr_hp_id,Consequence.amt_from_roll_const, "and lands a clean hit upon </n>. ",0);
				var tf:Tick_Effect = new Tick_Effect();
					tf.set_end_tick(4);
					var c2:Consequence = new Consequence();
										
					c2.add_consequence(FPalace_helper.curr_hp_id,-1, "</n> begins to bleed. ", 0);
					tf.set_tick_consequence(1, c2);
					tf.set_tick_consequence(2, c2);
					tf.set_tick_consequence(3, c2);
					tf.set_tick_consequence(4, c2);
				consequence.add_consequence(FPalace_helper.curr_hp_id,-4, "</n2> has opened a bleeding wound in </n>. ",5,0,0,-1, false, tf);
				consequence.set_interupt_chal(inter_chal);
				consequence.add_consequence(FPalace_helper.curr_hp_id,-1, "but </n> blocks most of the blow. ",-1);
				consequence.amt_by_roll_flag();
				
				a.add_challenge(challenge,consequence);
			weapon.set_attack_action(a);
			
			weapon.set_value(9);
			weapon.set_weight(3);
			
			return weapon;
		}
		
		public static function parisol():Weapon{
			//selling NPC: N/A
			var weapon:Weapon = new Weapon("Parisol");
			weapon.add_crafting_requirement(wood(),2);
			weapon.add_crafting_requirement(silk(),3);
			weapon.set_dropped_description("an umbrella is lying on the ground here");
			weapon.set_inventory_description("This long thin length of wood has a cloth tarp that extends and retracts at the press of a button. ");
			weapon.set_image_id(FPalace_helper.unknown_img);
			weapon.set_hold_condition(FPalace_helper.dex_id, 8);
			weapon.set_skill_bonus(FPalace_skills.one_handed_id, -3);
			weapon.add_upgrade_slot(Upgrade_Item.upgrade_grip);
			weapon.add_upgrade_slot(Upgrade_Item.upgrade_tip);
			
			var inter_chal:Challenge = new Challenge(true);
				inter_chal.set_attack_stat(FPalace_skills.concentration_id);
				inter_chal.set_defense_stat(-1,12);
				inter_chal.set_variability(10);
			
			var a:Action = new Action();
				a.set_name("Attack");
				a.set_attack_flag();
				//dodge
				var challenge:Challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.one_handed_id);
				challenge.set_defense_stat(FPalace_skills.dodging_id);
				challenge.set_variability(10);
				challenge.set_text("Attack");
				var consequence:Consequence = new Consequence();
				consequence.set_damage_type(FPalace_helper.pierce_damage_type().get_id());
				consequence.add_consequence(FPalace_helper.curr_hp_id,-1, "</n2> lashes out with </noun2> parisol, and digs the point at </n>, ",0,1,0,1);
				consequence.set_interupt_chal(inter_chal);
				consequence.add_consequence(0,0, "</n2> misses as </pronoun2> pokes at air. ",-1);
				
				a.add_challenge(challenge,consequence);
				
				//parry - need to check to see if opponent is holding something, otherwise, no parry
				challenge = new Challenge();
				challenge.set_attack_stat(-1,0);
				challenge.set_defense_stat(-1,0);
				challenge.set_defense_hold_check();
				challenge.set_variability(0);
				challenge.set_text("");
				consequence = new Consequence();
				consequence.add_consequence(0,0, "",0,1,0,3);
				consequence.add_consequence(0,0, "",-1,1,0,2);
				
				a.add_challenge(challenge,consequence);
				
				challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.one_handed_id);
				challenge.set_defense_stat(FPalace_skills.parrying_id);
				challenge.set_variability(10);
				challenge.set_text("");
				consequence = new Consequence();
				consequence.set_damage_type(FPalace_helper.pierce_damage_type().get_id());
				consequence.add_consequence(FPalace_helper.curr_hp_id,-1, "",0,1,0,3);
				consequence.set_interupt_chal(inter_chal);
				consequence.add_consequence(0,0, "</n> manages to parry the blow however! ",-1);
				
				a.add_challenge(challenge,consequence);
				//block
				challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.one_handed_id);
				challenge.set_defense_stat(FPalace_skills.blocking_id);
				challenge.set_variability(10);
				challenge.set_text("");
				consequence = new Consequence();
				consequence.set_damage_type(FPalace_helper.pierce_damage_type().get_id());
				consequence.set_max_damage(8);
				consequence.add_consequence(FPalace_helper.curr_hp_id,Consequence.amt_from_roll_const, "and lands a clean hit upon </n>. ",0);
				consequence.add_consequence(FPalace_helper.curr_mp_id,-4, "</n2> open </noun2> parisol just as </objnoun2> strikes </n>, confusing </objnoun>! ",5);
				consequence.set_interupt_chal(inter_chal);
				consequence.add_consequence(FPalace_helper.curr_hp_id,-1, "but </n> blocks most of the blow. ",-1);
				consequence.amt_by_roll_flag();
				
				a.add_challenge(challenge,consequence);
			weapon.set_attack_action(a);
			
			weapon.set_value(20);
			weapon.set_weight(3);
			
			return weapon;
		}
		
		public static function maidens_wand():Weapon{
			//selling NPC: job_witch_potionmaster
			var weapon:Weapon = new Weapon("Wand");
			weapon.add_crafting_requirement(wood(),1);
			weapon.add_crafting_requirement(silver_bar(),1);
			
			weapon.set_dropped_description("a wand is lying on the ground here");
			weapon.set_inventory_description("This long thin length of wood is little more than a carving of a young woman with a handle.");
			weapon.set_image_id(FPalace_helper.unknown_img);
			weapon.set_hold_condition(FPalace_helper.wis_id, 8);
			weapon.set_skill_bonus(FPalace_skills.mental_magic_id, 4);
			
			var inter_chal:Challenge = new Challenge(true);
				inter_chal.set_attack_stat(FPalace_skills.concentration_id);
				inter_chal.set_defense_stat(-1,12);
				inter_chal.set_variability(10);
			
			var a:Action = new Action();
				a.set_name("Attack");
				a.set_attack_flag();
				//dodge
				var challenge:Challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.ranged_id);
				challenge.set_defense_stat(FPalace_skills.dodging_id);
				challenge.set_variability(10);
				challenge.set_text("Attack");
				var consequence:Consequence = new Consequence();
				consequence.set_damage_type(FPalace_helper.lit_damage_type().get_id());
				consequence.add_consequence(FPalace_helper.curr_hp_id,0, "</n2> points with </noun2> wand, and a bolt of light strikes </n>, ",0,1,0,1);
				consequence.set_interupt_chal(inter_chal);
				consequence.add_consequence(0,0, "A flash of light sparks out from </n2>s wand, but it's hard to know what </pronoun2> was aiming at. ",-1);
				
				a.add_challenge(challenge,consequence);
				
				//block
				challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.mental_magic_id);
				challenge.set_defense_stat(FPalace_skills.magic_id);
				challenge.set_variability(10);
				challenge.set_text("");
				consequence = new Consequence();
				consequence.set_damage_type(FPalace_helper.lit_damage_type().get_id());
				consequence.set_max_damage(10);
				consequence.add_consequence(FPalace_helper.curr_hp_id,Consequence.amt_from_roll_const, "bursting and scarring </objnoun>. ",0);
				var tf:Tick_Effect = new Tick_Effect();
					tf.set_end_tick(4);
					var c2:Consequence = new Consequence();
					c2.set_interupt_chal(inter_chal);
					c2.add_consequence(FPalace_helper.curr_hp_id,-1, "</n>s head pulses. ", 0);
					tf.set_tick_consequence(1, c2);
					tf.set_tick_consequence(2, c2);
					tf.set_tick_consequence(3, c2);
					tf.set_tick_consequence(4, c2);
				consequence.add_consequence(FPalace_helper.curr_hp_id,-1, "</n> looks to be in some mental anguish from the blast. ",5,0,0,-1, false, tf);
				consequence.set_interupt_chal(inter_chal);
				consequence.add_consequence(FPalace_helper.curr_hp_id,0, "but </pronoun> shrugs it off. ",-1);
				consequence.amt_by_roll_flag();
				
				a.add_challenge(challenge,consequence);
			weapon.set_attack_action(a);
			
			weapon.set_value(29);
			weapon.set_weight(1);
			
			return weapon;
		}
		
		public static function manyuu_blade():Weapon{//had to make a manyuu titty blade
		//selling NPC: N/A
			var weapon:Weapon = new Weapon("Manyuu Katana");
			weapon.set_dropped_description("a shimmering pink katana is laying on the ground here");
			weapon.set_inventory_description("This long curved blade shines pink in the light, and has a long handle intended for two hands.");
			weapon.set_image_id(FPalace_helper.unknown_img);
			weapon.set_num_hold(2);
			weapon.set_hold_condition(FPalace_helper.str_id, 10);
			weapon.set_hold_condition(FPalace_helper.dex_id, 10);
			weapon.set_skill_bonus(FPalace_skills.two_handed_id, -2);
			weapon.add_upgrade_slot(Upgrade_Item.upgrade_grip);
			weapon.add_upgrade_slot(Upgrade_Item.upgrade_blade);
			var inter_chal:Challenge = new Challenge(true);
				inter_chal.set_attack_stat(FPalace_skills.concentration_id);
				inter_chal.set_defense_stat(-1,12);
				inter_chal.set_variability(10);
			
			var a:Action = new Action();
				a.set_name("Attack");
				a.set_attack_flag();
				//dodge
				a.set_blowback(FPalace_helper.breast_size_id, 0);
				var challenge:Challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.two_handed_id);
				challenge.set_defense_stat(FPalace_skills.dodging_id);
				challenge.set_variability(10);
				challenge.set_text("Attack");
				var consequence:Consequence = new Consequence();
				consequence.set_damage_type(FPalace_helper.slash_damage_type().get_id());
				consequence.add_consequence(FPalace_helper.curr_hp_id,-1, "</n2> lashes out with </noun2> katana and tries to cut across </n>s skin, ",0,1,0,1);
				consequence.set_interupt_chal(inter_chal);
				consequence.add_consequence(0,0, "</n2> misses as </pronoun2> slashes at air. ",-1);
				
				a.add_challenge(challenge,consequence);
				
				//parry - need to check to see if opponent is holding something, otherwise, no parry
				challenge = new Challenge();
				challenge.set_attack_stat(-1,0);
				challenge.set_defense_stat(-1,0);
				challenge.set_defense_hold_check();
				challenge.set_variability(0);
				challenge.set_text("");
				consequence = new Consequence();
				consequence.add_consequence(0,0, "",0,1,0,3);
				consequence.add_consequence(0,0, "",-1,1,0,2);
				
				a.add_challenge(challenge,consequence);
				
				challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.two_handed_id);
				challenge.set_defense_stat(FPalace_skills.parrying_id);
				challenge.set_variability(10);
				challenge.set_text("");
				consequence = new Consequence();
				consequence.set_damage_type(FPalace_helper.slash_damage_type().get_id());
				consequence.add_consequence(FPalace_helper.curr_hp_id,-1, "",0,1,0,3);
				consequence.set_interupt_chal(inter_chal);
				consequence.add_consequence(0,0, "</n> manages to parry the blow however! ",-1);
				
				a.add_challenge(challenge,consequence);
				//block
				challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.two_handed_id);
				challenge.set_defense_stat(FPalace_skills.blocking_id);
				challenge.set_variability(10);
				challenge.set_text("");
				consequence = new Consequence();
				consequence.set_max_damage(15);
				consequence.set_damage_type(FPalace_helper.slash_damage_type().get_id());
				consequence.add_consequence(FPalace_helper.curr_hp_id,-5, "and lands a clean hit upon </n>. ",0);
 				consequence.add_consequence(FPalace_helper.curr_hp_id,Consequence.amt_from_roll_const, "</n2> has left a nasty red gash on </n>s skin. ",2);
				//this is completely destroying the opponents breasts, and I mean it to only reduce them to 0 or 1... not sure what i should do about it
				//maybe completely remove the part?
				consequence.add_consequence(FPalace_helper.breast_size_id,Consequence.amt_from_roll_const, "</n>s breasts seem to deflate and recede as the slash strikes. ",1);
			
				consequence.set_interupt_chal(inter_chal);
				consequence.add_consequence(FPalace_helper.curr_hp_id,-1, "but </n> blocks most of the blow. ",-1);
				consequence.amt_by_roll_flag();
				
				a.add_challenge(challenge,consequence);
			
			weapon.set_attack_action(a);
			weapon.set_weight(10);
			
			return weapon;
		}
		
	//MODS
		public static function strong_grip():Upgrade_Item{
			//selling NPC: ahimsa_smith
			var mod:Upgrade_Item = new Upgrade_Item("Strong grip");
			mod.add_crafting_requirement(leather(),1);
			mod.set_dropped_description("a weapon piece is lying on the ground here");
			mod.set_inventory_description("This is a weapon grip that looks strong and tough. ");
			mod.set_image_id(FPalace_helper.unknown_img);
			mod.add_effect(FPalace_helper.str_id,1);
			mod.set_skill_bonus(FPalace_skills.melee_id,-5);
			mod.set_upgrade_type(Upgrade_Item.upgrade_grip);
			mod.set_weight(0);
			mod.set_value(10);
			return mod;
		}
		
		public static function wool_lining():Upgrade_Item{
			//selling NPC: industria_seamstress
			var mod:Upgrade_Item = new Upgrade_Item("Wool lining");
			mod.add_crafting_requirement(textiles(),2);
			mod.set_dropped_description("some cloth is laying on the ground here");
			mod.set_inventory_description("This looks like the lining to some sort of garment. ");
			mod.set_image_id(FPalace_helper.unknown_img);
			mod.add_effect(FPalace_helper.max_hp_id,4);
			
			//should be adding weakness to fire
			
			mod.set_upgrade_type(Upgrade_Item.upgrade_lining);
			mod.set_weight(0);
			mod.set_value(18);
			return mod;
		}
		
		public static function hooked_tip():Upgrade_Item{
			//selling NPC: lux_invira_shopkeeper
			var mod:Upgrade_Item = new Upgrade_Item("Hooked tip");
			mod.add_crafting_requirement(iron(),1);
			mod.set_dropped_description("a weapon piece is lying on the ground here");
			mod.set_inventory_description("This looks like a spearhead with hooked back points. ");
			mod.set_image_id(FPalace_helper.unknown_img);
			mod.set_skill_bonus(FPalace_skills.two_handed_id,-5);
			
			//should be increasing max damage
			
			mod.set_upgrade_type(Upgrade_Item.upgrade_tip);
			mod.set_weight(0);
			mod.set_value(5);
			return mod;
		}
		
		public static function blade_balance():Upgrade_Item{
			//selling NPC: mensch_smith
			var mod:Upgrade_Item = new Upgrade_Item("Balanced blade");
			mod.add_crafting_requirement(iron(),1);
			mod.set_dropped_description("a weapon piece is lying on the ground here");
			mod.set_inventory_description("This looks like a weight you could clamp on a blade. ");
			mod.set_image_id(FPalace_helper.unknown_img);
			mod.set_skill_bonus(FPalace_skills.melee_id,5);
			
			//should be decreasing max damage
			
			mod.set_upgrade_type(Upgrade_Item.upgrade_blade);
			mod.set_weight(0);
			mod.set_value(15);
			return mod;
		}
		
		public static function slanted_plates():Upgrade_Item{
			//selling NPC: mensch_smith
			var mod:Upgrade_Item = new Upgrade_Item("Slanted plates");
			mod.add_crafting_requirement(iron(),1);
			mod.set_dropped_description("a weapon piece is lying on the ground here");
			mod.set_inventory_description("This looks like addition plating for armour. ");
			mod.set_image_id(FPalace_helper.unknown_img);
			mod.add_effect(FPalace_helper.max_hp_id,4);
			mod.set_skill_bonus(FPalace_skills.blocking_id,5);
			
			mod.set_upgrade_type(Upgrade_Item.upgrade_plates);
			mod.set_weight(0);
			mod.set_value(23);
			return mod;
		}
		
	}
}
