package{

	import flash.display.MovieClip;
	import flash.display.Bitmap;
	import flash.media.Sound;
	import flash.media.SoundChannel;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.events.TextEvent;
	import flash.events.KeyboardEvent;
	import flash.events.IOErrorEvent;
	import flash.events.SampleDataEvent;
	import flash.text.TextFormat;
	import flash.net.registerClassAlias;
	import flash.utils.setTimeout;
	import flash.utils.ByteArray;
	import flash.utils.describeType;
	import flash.utils.Dictionary;
	import flash.ui.Keyboard;
	import fl.controls.Button;
	import fl.controls.TextArea;
	import fl.controls.TextInput;
	import fl.controls.ProgressBar;
	import fl.controls.ProgressBarMode;
	import flash.geom.Matrix;
	import flash.display.Sprite;
	import flash.filesystem.File;
	import flash.filesystem.FileStream;
	import flash.filesystem.FileMode;
	
	[Frame(factoryClass="Preloader")]
	public class Main extends MovieClip
	{	
		/*
		COMMENTS FROM OTHERS:
		//Tombot ended up controlling an enemy slime at some point. He indicated he was pretty deep in the caves when it happened
			//Not really sure *how* this happened, though I've seen (and fixed!) it in the past. Issue is likely somewhere in Main_gui
				//Had it happen, and I suspect it's a targeting issue on behalf of the NPC (no target identified). Still not sure how to duplicate it
					//Have a trace in place, though no code changes. Want to make sure I only see it when the issue presents (which I STILL don't know how to duplicate)
					
		//There was a request for an adipose amulet that steadily increases bust/waist/hips to make people fatter/heavier
			//Thinking it should be a temple/statue somewhere in either the Jungle or Savanah...
				//Gonna be the Rainforest... the Savana at least has a single piece of content
		
		--------------------
		ERRORS:		
		//Combat can be halted by an npc talking to you
			//Probably here in Main.onEnterFrame()
		
		//Legdig said there was a bug where draining the age from a fox would cause them to become extremely tall in the wild where you encounter them
		
		//NONE of the monster races are balanced/have stat maxes! (Really only a problem due to Part Stealing...)
		
		//Be vigilant about bad text!
			//When you're swimming in the sea, and come across the text "A spermfish is on the ground here" something is wrong
				//should really have the room put the "is on the ground"... there are a lot of items to change
			//Combat is... interesting in a lot of ways
				//a lot of actions get cut off midway thanks to character death (which isn't always communicated... but is sometimes)	
					//This comes more from Character.attack()
			//The appearance descriptions are... pretty bad
				//The goo girls have things like "her arms are appear", "her vulva is appears", and "her hands are occasionally" in their descriptions
			//Should have multiples dropped text... "2x a ring is on the ground" looks strange, s/b "2 rings are on the ground"
				//Room.get_room_description() and Item, since it'll need multiples dropped text...
					//done in item, though it isn't used anywhere or added to any items... there are a lot of items
		
		//You can still quickmove when over max weight
			//This... is actually kinda useful for testing
				
		--------------------
		TODO:
		//Equipment/item crafting like KOTOR II/Witcher 3
			//Mostly done. Items have their own recipes you can get through dismantling or purchase from a few shops.
				//Still need to think of a mini-game for it. 
					//feels like something that should be rhythm based... just duplicated the other stuff for now, and go through skills and an action
			//Sewing could let you change some attributes of an item's description, like letting you change the color of somthing, or put an image on a T-shirt.
				//Maybe give equipment their own "Stats" for this? Could keep track of durability this way if I really feel like being an asshole
					//This'll also cut down on the number of items I need to make, so I think it's important
						//Don't know why I'd limit it to equipment... I'll probably work in the Item class
							
		//Items with actions should list off what those actions do rather than just saying "There's something off about it"
			//Item.get_description(). Have a bit there for Consequences change_effects, but not its stat effects
		
		//"Training" NPCs... can increase your skills for cash, instead of xp
			//need to be higher in skill than the learner
				//Don't have a Consequence that will increase skills instead of stats...
					//Uhm... "Defend" does exactly this, though it increases the skill bonus, not the ranks
			//maybe have them teach actions/attacks as well?
		
		//Kinda want masculinity/feminity stats, just to make gender identification more difficult
			//Thinking they make sense as calculated stats... (shoulders smaller than hips is feminine, etc.)
			//on a face, size of mouth (mens are bigger) and size of eyes (womens are bigger) seems to determine masculinity/feminity in real life
			//also kinda want it to impact current weight (same volume of woman actually weighs less than volume of man)
		
		//Conversations *about other Characters*
			//probably the most important and most dynamic topic... will likely need its own function/command because of it
				//Started Personality.gossip()... kinda sorta works. No mention about the other character past the relationship level, and the type of relationship
				//will likely want to start recording what has *caused* a relationship change, as opposed to the fact that it has simply changed
					//kinda sorta started, though it's cut down to three possible causes (initial reaction, was aggressive, and cause a stat change somewhere)
						//no details as to whether the character you're speaking to was the actual reciever of the cause as well
						//nor does it have any detail as to whether it was a GOOD OR BAD change, just that it was A change
			
		//I really need to make an actual "introduction" Conversation_topic, instead of relying on Personality.talk() to handle it
			//Kinda have one with the amazon introduction... though it doesn't actually set the flag like talk() does
		
		//Should make Conversation topics for stats... fatigue below 50% has "hungry" topics, health below 50% has "healing" topics, etc.
		
		//I need a good way of generating families... I've at least made the change for the (two) static families I'm making
			//not just families... I need to generate a mess of relationships for EVERYONE (except the player) during world generation
				//Have Mob.initialize_mob() for this, and Template_room.spawn_creatures() kinda makes families
					//It mostly just pairs off a man and woman and makes the woman pregnant. I'd like to maybe generate the children...
								
		//should i maybe attempt drawing the characters for appearance? Character.draw_self()
			//Working in Body.draw_self() and draw_part(). Should really be in the Main_gui, but meh for now
				//I have squares... with multiple widths for things like the torso/hips to work. 
					//put my first image down. I've got part images! And whole character images!
						//Need to figure out some multi-part stuff... multiple dicks is obviously easiest to test, though need to think of things like breasts, arms, legs as well...
						//Clit, vag, and hair left to figure out for humans... nothing for the other races yet, they're just using the human parts for those available
							//something tells me hair is going to be a huge pain. At the very least there are layering issues
						//Still need to figure out clothing as well...
					//Need to be able to have more complicated calculations for determining shap and size... like for breasts and arms
				//Came across something for making skeletons: http://edutechwiki.unige.ch/en/Flash_CS4_inverse_kinematics_tutorial
					//Don't think it'll be much help for actually GENERATING the characters... maybe animating them
				//Head:Height ratio is indicitive of age... should be worked into the character drawing and aging
					//Full grown adult head:body ratio is 1:8, while a childs is about 1:3
			//Should probably have colour masking options based on skin/fur/feather colour
				//this means a stat needs to have a changeable mask value depending on its value...
			//Still not happy with how characters are appearing during talk... logic is here in main.talk()
				//I think the real problem is that I want to do a 3/4 perspective image of the characters when they're talking...
					//maybe give it a go with something like catgirl_idle to start with, then move down to the part level?
						//givin' it a go with a placeholder image... Body.draw_34self()
							//I'd kinda like to use the placeholder image long term... thinking for a character named Rhea (wife of Cronus)
		
		//Some template rooms need to have "depth" (like the oceans and the valleys)
			//basically a *secondary* template after x number of rooms that designates the bottom
				//oceans will actually need a *third* template... one for swimming above the waves, one amidst, and one along the depths
		
		//Disguise mechanics
			//Probably in Personality and it's check_relationship stuff... would need to add a check to see if you can identify the character
				//May want the relationship to take "snapshot" images of the characters appearance to compare against for identification
			//Want to give characters the option of turning the "disguise" on and off, beyond forcing them to always be doing it
			//Test item: paper bag, Possibly other mask items (like Century Cities Shy Guy mask) could do something similar
		
		//Addiction mechanics
			//The growth drugs should probably be addictive...
		
		//Consolidate Actions/Attacks and the such (Challenges/Consequences) from the FPalace classes into a new FPalace_Actions... there are some duplicates, like fight, that I really don't like having to fish through twice
			//Shouldn't be too bad... at least I only have to go through the FPalace classes. I hope
		
		//equipment should have upgrade_slot array of upgrade_type_id's... need to make new class "upgrade_item"
			//upgrade items function like mods in Warframe, and can be improved by working on them further... (enchanting them seperately from the equipment maybe?)
				///there's still a bit of work to do, but it's started. Most of the work is likely in Upgrade_Item, Weapon, and Equipment
					//still need to be able to alter/add challenges/consequences of equiped weapons
					//still need to be able to alter weapon max damage
					//still need to be able to add/remove weaknesses
				
		//Weapon/Clothing Enchantments!
			//Mostly working... ability comes from Fpalace_skills.skill_physical_magic() atm. Vast majority of work is in Character.enchant()
				//skills do not impact it at all, beyond granting the ability. Really should change this
					//maybe make the increase a percentage increase instead of the hard increase it is now, and have skills impact the percent?
					//maybe make enchanting cheaper xp wise based on skill?
			//will need a way to provide damage resistance and extra damage
				//can kinda do damage resistance with the max hp increases... not sure about it though
					//being a stat, max_hp is SUPER expensive to increase...
						//maybe determine cost by each stat... would mean adding properties to Stat
					//gonna need to impact elements/weaknesses ...
						//Thinking this may be a seperate enchantment skill itself (will obviously require a check for the element)
				//need to go through the weapons and determine if they have a damage cap on part of their attacks to increase...
			//should have the potential to create an unintended negative effect
				//flex suggested something like race change, but I suspect there's something better that can be randomly determined
		
		//MP should have additional benefit - when under 2HP, dmg hits mp instead. when over 50% lust, mp is drained 1 point per round (until MP is 0, obviously)
			//I believe this is stat.get_change_magnitude() but it's likely more complicated than that.
				//There's a real straight-forward way... hard-code that shit in Character. 
					//The lust drain is easy to do in Character.tick()...
					//The HP/MP swap is pretty easy in Character.apply_affect_by_id()...
		
		//I need to rethink quickmove... it seems like something that shouldn't be available just because you have a map and know where you are
		
		//Legdig suggested being able to buy maps, instead of having to depend on the skills and exploration
		
		//Room descriptions should be altered by corpse burials...
			//1 corpse "a grave is here", 2-5 "a couple graves are here", 10 "a graveyard", 100 "a mass burial"
		
		//Perks... bonus that are granted after achieving something (100 enemies killed, etc...)
		
		//counterattacks? Need to standardize attacks first probably
			//They're pretty standardized. Should be looking at the successful dodges, and see about looking for counter attacks off a consequence...
			
		//combo attacks, similar to chrono-trigger
			//gang-bang would be a good first thing to try
		
		//different "attacks" like "swing from rope" based on where you are
		
		//Add a trading minigame like ac4 somewhere (city or the coast... probably both)
			//New class... economy. associated with "mob"s
				//I'm sort of thinking they should spawn the merchant caravans, instead of the Areas that are currently doing it
				//sends merchants to travel between areas and generate money based on their cargo and the distance
				//Will need to get rid of the never ending supply of some items on the merchant class...
				
		//Similar to the above trading game, another similar one sending adventurers into dungeons
			//closest thing I can think of having seen elsewhere are the "dispatch" missions in the final fantasy tactics games and metal gear solid V
			//likely to also be associated with mobs... holder of the grasslands would be sending adventurers into the cave there, etc.
		
		//if there's no one to Room.spread_reaction() to, maybe leave a 'clue' in the room to create a conversation_topic/mystery quest... watchers, aristocrats, criminals, here we come!
		
		//Need Party members to be able to purchase things using their money and into their inventories
		
		//Better unknown descriptor then just <race> <sex> - Character.get_short_description()
			//Still would like to have some equipment add a change to the description (if it's visible) 
				//requires changes to equipment, and probably body/body_part
				//Have peoples job impacting the description now, though it's probably a little heavy handed
					//after talking to some folks, it's really your uniform or location that determines what people think your job is... not your actualy job
		
		//There really isn't much in the relationship class... should I be adding some sort of "type" in addition to the current "score"?
			//Things like "married" or "dating" would fall into this category... kind of a "relationship status" ala facebook
				//Relationships that actually have a designated "status" should probably be listed somewhere... like the status screen maybe
					//Or maybe it gets mentioned via certain topics... like gossip. Which it is now. 
			//I have each relationship being given a status, and have the Johnsons with their "correct" relationship.
				//and while I have a function in place in personality, you CANNOT change relationship status with a character after you already have a relationship with them
					//This is consequence somewhere...
						//Or I can make one of the "fake" stat ids, and have Character.apply_affect_by_id() pass it to personality...
		
		//Making Mobs so I can have something like nations, etc... 
			//have sets of ideals and beliefs
				//people who do x are good/bad seems like a good place to start
					//Thinking this falls under personality traits
						//good way for personality to determine how "into" a mob it is. Number of ideals that they share with the mob
							//pretty much gone the exact opposite: a mob is a source of likes. A high stat gives approval via a mob
								//Still don't have a set of "dislikes" beyond the enemies of the mob
			//should have a heirachy/organization system too
				//more or less different ways of "ranking" members of the mob... how many in each "rank" would determine the organizational system
					//each rank might need a job
			//Should also add conversation topics to it's believers... or give them access to some
				//kinda sorta started. Just giving all toptics to all adherants right now
			//Will need to access a character opinion on a mob to determine actions/reactions: like the bloody protest conversation topic
				//have it working. Basically choose the mob associated with an action in Conversation_topic
			//Each "mob" will have it's own economy, and send out/generate merchants
				//I'm thinking this is where some "jobs" should actually come from... either that, or the jobs are area specific, and the number/type of them depend on the mob....
					//for example, the palace writers room might make porn when under control of sin, but bibles or books or something under a different mob
					//When the mob needs more of a given job, then the wanted ads would start to show up
						//and obviously only for some jobs. Others (like prositution or monster hunting) should be offered regardless
							//Mob generates pimps -> pimps offer jobs for prositutes. That way if a pimp dies, the "help wanted" is generated for the pimp
			//Currently generating the allegiances just like all the sexes... they are shared by all characters that have them
				//mobs mostly just give characters some likes and alterations to initial reactions
				
		//'Moving' rooms, so I can have carts/boats etc...
							
		//A "Travelling circus"
			//Will need to have travelling exits...
			
		//Do I want hacked off body parts to drop to the ground as items instead of just disintigrating into nothing?
		
		//Would kinda like it if, in combat, you could effect the initiative order (cause character to lose or skip turns/change their initiative, either for the entire combat, or for a few round)
		
		//Religions, though might be able to get away with just reusing mob logic... thinking I want either 7, 9 or 12 gods
			//Possible domains for the gods: Law, War, Nature, Sun, Trickery, Chaos, Luck, Magic, Destruction, Knowledge, Travel, Fertility, Death
			
		//Re-write lust out, or have multiple lust-outs
			//maybe based on the part that lusts out (busts a nut vs suddenly orgasms, etc.)
				//hopefully get the part description grabs done and use them
					//ex "Player is busy shooting gobs of cum from his gargantuan human cock."
			//should probably do a "get_combat_failures" same way i did for overworld failures
				//well, it works, but the text is rather... misplaced, since it's currently doubling for why you can't enter combat in the first place
					//fiddled with the text a bit. Would still like part specific failures....
		
		//Combat needs some way to tell your relationship to enemies (happy/sad faces?)
			//Main_gui.draw_participants() I think. Maybe Character.draw_self() instead
				//did it in Character.draw_self(). Just added a colour coded circle for now
		
		//Flex suggested preventing a body-part from providing it's actions when it runs out of fatigue
			//Since I've got Fatigue working as a stat total for incapacitated, I can make a new status to disable the actions/attacks associated with the part
		
		//World Gen needs to be broken down to the room level so it can be moved into enterFrame()
			
		//PERSONALITY TRAITS! 
			//start with initial character reactions (was thinking based on similarity, with modifier based on sex and sex appeal) to get rid of stupid aggressive flag
				//I've started in Personality.determine_initial()
					//added likes/dislikes, and a new class: Trait
					//Cock-snakes no longer attack one another, or the slimes. Just characters with penii (in the case of the males) and breasts/vag (in the case of the females)
						//Should probably take the visibility of the part into account...
			//Thinking something similar to "the Sims" here (Hunger, happiness, etc. With traits/race modifying how they achieve these things)
				//"Hunger" can more or less be determined using HP and Fatigue... not sure about happiness, though it may be best dealt with on a "am I achieving my aspirations" and "am I dealing with people I like" basis
				//Sims has 5 basic stats that determine personality (Neat, Outgoing, Active, Playful, and Nice) that are rated on a 0 to 10 scale
				 	//I can kind of get away with using my existing stats... Intelligence(Neat), Willpower(Outgowing), Charisma(Nice), and Wisdom(Playful)
				 //also has an "aspiration" (romance, wealth, creativity, popularity, and knowledge) and a "wanted career"
			//Should also have a degree of allegiance to given mobs....
				//just straight 100% allegiance (getting likes/dislikes from it) right now, but at least it's a start
			//Absolutely need to determine reaction to stat changes... (someone increase OR decreases your lust, you like them, if you find them attractive. Someone decreases your hp you hate them, but if they increase hp, you like them. etc.)
				//Thinking I'll need another new class... "change_reaction" or something, though may be able to just use the likes/dislikes
					//pretty much just used the likes/dislikes
			//Should also determine which skills/stats to increase, though their class should also make the decision to some degree too
				//This is along the lines of the "aspiration"s
				//currently just increasing the cheapest one at all times
				
		//with some merchants, I'll want to them to have hours of operation... 
			//something new for the Quest class to do? Will want things like "go to sleep" more generic then jobs too, so Quests make sense
				//Added a "get to a specific room" objective and time limit for the Quest class, which should be enough for what merchants need
					//Still need to make things like Personality.advance_objectives() deal with the time limits...
						//Unfortunately, I'm not exactly keeping track of how many ticks have gone by since the objective started... there's a trace in place
					//Will need the job to have an objective chain: go to room after time -> have trade action available after time, -> go back to first step after time
						//Have it in place with fpalace_shopkeeper, and it looks to be working... except for the time limits								
			//objectives are going to need to start impacting AI decisions.... Personality.determine_option_value()
				//kinda started... though mostly just for movement to rooms. At least, it working to keep the shopkeeper in the right room for now.
					
		//map should be able to display rooms with NPCs in them
			//be able to distinguish between enemies and friendlies
		
		//New options
			//volume control
			//screen resolution
				//will need to make main_gui and main use relative values instead of the currently hardcoded ones
					//pretty straight-forward: divide hardcoded values by hardcoded resolution, then multiply by the new resolution
		
		//Character.check_overworld_status should be consulted for some actions... currently it only prohibits movement
		
		//Music
			//a sound now exists in the world_tick() though it's commented out
					
		//I should probably change fill rooms hidden exits to use action objects instead of the hobbled implementation in Area.generate_filler they do now
		
		//Get rid of references to "FPalace" classes from the core non-"FPalace" classes (main and main_gui are likely lost causes)
			//Character needs the most work... 
		
		--------------------
		CONTENT: 
		//Still need to colour some of the areas
			//and populate them with npcs/items...
				//They mostly have their items and colours. The cities have their NPCs, but the overworld areas need their monsters
					//Have filler-slimes in place, and traces saying what they should be
				//have a list in FPalace_content about which race goes to which city
					
		//Quests and the like, in addition to the things that happen to the player...
			//have an unfinished quest in the main quest
				//want NPCs to each direct the Player to the "capital" of their mob
					//None of them really know how to get back, but want the Player for their own ends
				//Player needs to collect 8 mcguffins, get to (unmade) hidden island, give up the mcguffins, and portal for the end game
			//quest ideas:
				gaining access to gro-corp products
					Think I want you to sacrifice a party member to get access to Gro-corp
						bad end - you sacrifice yourself
				gaining entry to century city
					Thinking you need to have all your primary stats < 10 to gain access to the "City of Humility"
			//finishable quests: 
				In the palace: getting the fpalace membership
					(redo-able)Incapicating humans from Vivian.
				the Farm: turning lucy into a futa
					(redo-able)killing slimes for John
					(redo-able)delivering milk to the Nunnery of the fertile crescent for John
					(redo-able)Heidi is paying for jugs of cum
				Amazon Forest: (redo-able)Quest to gather ingredients for the Alchemist

		//Should be able to bottle the water from the two fountains of aging
		
		//Theme out and populate the cities with bits described in FPalace_content
			//means some new races... Which are mostly there. I actually need more cities... see FPalace_content
			//They mostly have their shops. The houses have residents, though they don't have clothing
		
		//still have 7 alchemy benches to make
			//Benevol/Kindness/Middle-eastern has an herbalist
				//not sure what this should be... probably a drying shed or something along those lines
			//Industria/Dilligence/Oriental has the grocer
				//not sure what this should be... 
			//Mensch/Temperance/Egyption has the slaver 
				//not sure what this should be... some sort of embalming facility?
			//Aghapei/Charity/Indian has a guru
				//not sure what this should be... 
			//Equine encampment/Gypsies has their normal shopkeeper
				//not sure what this should be... could just be an old gypsy pot in a wagon somewhere
			//Nunnery has a nun
				//not sure what this should be... some sort of basic nursing facility? Or the hidden drug facilities down below...			
		
		//Need Doctors for the healing of status ailments
			//started FPalace_classes.job_doctor() though the real work should be in FPalace_topics.doctor_topic()
				//have FPalace_npcs.century_city_doctor() as my test character... I'll need to make one in each city once I get it working
					//Works. Just need to put them in the various towns now
		
		//Catherine suggests: I'm thinking a massage parlor would probably fit in the Greco-Roman themed area (elvish massages are obviously asexual), 
		yoga idea would likely fit somewhere in the Indian themed area... though I suspect if I tried Feline Yoga I'd break my back. 
			//Both would be "pay for a bit of fatigue back" in my mind, or maybe the equivalent of a rest/sleep action without the time pass? 
			Or some temporary stat boost... like the massage gives you a temporary bonus to Wisdom, and Yoga gives one to Dexterity... 
				
		//JOBS!
			//Kind of need it to generate crafting materials as well, since they don't propogate
				//Thinking things like Woodcutter and Miner, etc
					//Need to add a Lumber Mill to the Forest, and a Mine to the mountains
			
		//Have a mess of attack ideas in FPalace_classes that need to be turned into *actual* attacks
			//Ideas are in: cclass_stripper, cclass_fertility_nun, cclass_dominatrix, cclass_sexmagus
				//working on sex magus next I think... dominatrix is by far the most complicated, likely followed by the nun... should actually probably do stripper, since it's the easiest... 
					//yup, sex_magus next. Got 2 attacks done. The others get more complicated, and I'm likely to skip one of them (changing targets desires)
						//eh, got some comments from others as well. Probably need to rework sex magus from ground up
			//Also have a mess of placeholder classes made that need ways to get them as well as attacks/skills
		
		//Need "Barbers" so you can get your hair cut (I really don't want to make an item for this, though I guess a reusable scissors or something?)
		
		//need to go through and add appropriate limits on ALL equipment
			//should be easier since I know have the stat ranges being pre-determined for the NPCs now
			
		//Need to make sure the npcs have clothing...
			//most of the shopkeepers do not have clothing!
			//need to make sure the requirements for equiping are more realistic... and still fit the NPCs after the changes. May require more shopkeepers...
		
		//There are requests for more Futa on Male content
			//Kinda need more male characters around... should probably get to populating the cities and areas...
			//At this point, probably means writing some more meat into things like Prostitution, Sex, and Blowjobs.
				//Prostitution - probably need to have more than just "brings to a climax" for the sex here... might as well finish sex topic first though
					//also needs an actual "Job offer" instead of just insta getting it. Maybe have Vivian fuck her potential prostitutes?
						//Kinda sorta started. FPalace_topics.pimping_aint_easy()
			//Probably some stuff on the Amazon Island and Freedom Farm as well
				//Freedom Farm - Thinking after her transformation, Lucy may want to "breed" like her older sister
					//Heidi is obviously asking for some content along these lines as well
				//Amazon Island - Alchemist and Venutian Arts master should probably rape in the event of failure in addition to their current effects
			//AND actually writing some events for the Futa in Century City
				//Miss Timins, The Johnson Family, Sammy, and Jane Poolman to think about here. 
					//Should probably setup transformation events for Sammy and Jane... they shouldn't be Futa from the get-go
					//Johnson Family does the boyfriend treatment of a guy... buttering him up before surprising him with their extra bits
					//Miss Timins should be interested in anyone willing to give her a dicking despite her double dongs
			//AND our Futa Blacksmith in Mensch... should probably make some Futa slaves as well in Mensch
				//The Blacksmith just wants her work taken seriously
			//AND working on Vivian and the girls in the Futanari Palace proper
				//Some sort of "Fresh meat" conversation where they rape people who don't have the topic? Or maybe not belonging to their Mob?
					//Made the secondary amazon mob, and now have the topic FPalace_topics.fresh_meat()... there's still no sex, but it functions
		
		//Jerri suggested dick-nipples and titty-fucking be put in the game somewhere... she also suggested foot-play
			//the breast play conversation topic seems the place for this sort of thing
			//dick-nipples raises a question... do I split nipples into their own part, and swap, or do I just treat long nipples like dicks?
		
		//Legdig provided me with a character description to work into the game somewhere... mostly there. See Fpalace_npcs.FPalace_legdig
				
		//Catherine had some more item suggestions:
				Sound activated vibrator? They actually exist, apparently there's webcams were you can "donate" to make a bell chime.... Ring for Service folks!
				Nipple rings instead of body tape for holding up suspenders or Vampirella's suit? Could double as a bra for the ladies
				Lube with heat activated pop rocks?
				Gerbil-shaped beads with authentic wiggling action? 
				Wiggling dildos.. if you can have vibration why not make it wiggle?
					
		//Magic robes for mages and what not which would go nice with sex magus when it gets an update.
			//Not sure what these should be, beyond skimpy. How do you do a skimpy magic robe? Standard magic robes are pretty easy. Need a mages tower or something to sell them though
			//The witches need their own robes as well
		
		//Sex conversation topics need work
			//They're all there, but pretty skeletal
			
		//Jerking off and Masturbate just dumps lust to its min... there really isn't much to it, when there COULD be so much
			//FPalace_helper.new_penis() and new_vagina()
			//would kind of like it if, after masturbating a particularly large amount (1L or so) there was a temporary change to the room description
				//"There is a gallon of white goo sprayed about here" or something like that, with the option to clean it (assuming you have something to clean it with)
					//can also consume, and risk changes
		
		//Want to add a "choose starting skills" section to a new game
			//let players choose skills that aren't necessarily at the top of the skill tree, and may not be a combo found in player classes
			//might be able to work it in with the existing questions... say, if a question was whether you would jump in to a brawl unarmed, your striking skill might go up as well as strength
		
		//Colleen suggested conversations about clothing... how feminine, but still good small-talk
			//Thinking most clothing can share the same topic... just do compares between what the speaking characters each have, and have encountered
			
		//finish home and barn in Freedom Farms (FPalace_content.area_freedom_farms())
			//NPCs and room interaction remain to be added.
				//have notes in area_freedom_farms()
			//Should add scare-crows and crow-girls to the fields too
		
		//Add weather/time stuff to appropriate Areas...
			//they're there, but need to be made to be area appropriate
				//and I'd kinda like to add colour to the descriptions....
		
		//Entrance to the city of Humility:
			//Requires character to have 5 or less in each of the 8 primary stats
				//Full on Harison Bergeron
					//shy girl/guy mask lower beauty/charisma
						//need to figure out how to get beauty down to an 8 at all times while it's worn
							//it's equiped on everyone (though still need to go test)... working in FPalace_items.shy_mask()
							//just doing -5 sex appeal for now
					//arm/leg weights to lower strength/dexterity
					//ear pieces to lower intelligence/wisdom
					//straightjacket to lower constitution/will
				//Place a corpse in the desert... or have wanderers clad in such gear there, and add some dangerous beasties (scorpions or something)
				
		//Chastity city: almost everyone is extremely old and infertile... there is only one child to a young couple
			//Fisher King?
		
		//Not sure if this should be a personality thing or not, but
			//I need to put a tick_effect on the main character about them missing home... culminating in a "Everyone at home probably assumes you're dead now..."
				//Andrzej suggested some sort of stat (int or wis) decrease, though some sort of "score" decrease would also work in my mind
		
		//Finish writing out the to-do lists in FPalace_content
		
		//Finish stealing content from Nimin's old game
			//see 1338779726.xadera_nimin_fetish_fantasy_v0.975.swf
			
		//Do the tower girls as sorta mini-dungeons/Quests
			
		//Finish the intro...
			//Have the stat questions being asked (though no text portion to the question)
			//Still need the 'going to sleep and waking up in a strange place' bit
				//It's there, though I'd still like a "tutorial" room (players bedroom/house, with the exit dumping them into their starting area) to start with, instead of just dumping into the world (let the player get some equipment...)
			
		//More todo hidden about the classes... unfortunately
		*/
		//timescales 1:180, 1:6		
		public static const t6_sec:int = 1;
		public static const t1_min:int = 1;//10;//
		public static const t10_min:int = 3;//100;//
		public static const t30_min:int = 9;//300;//
		public static const t1_hour:int = 18;//600;//
		public static const t1_day:int = 432;//14400;//
		public static const t1_week:int = 3024;//100800;//
		public static const t1_month:int = 12096;//403200;//
		public static const t1_year:int = 145152;//4838400;//
		//GUI
		public var newgame_button:Button;
		public var Inventory_button:Button;
		public var map_button:Button;
		public var Look_button:Button;
		public var wait_button:Button;
		public var save_button:Button;
		public var load_button:Button;
		public var appearance:Button;
		public var status:Button;
		public var skill_button:Button;
		public var options_button:Button;
		public var text_field:TextArea;
		public var input_text:TextInput;
		public var world_gen_progressbar:ProgressBar;
		public var sound_music_channel:SoundChannel;
		public var background_img_id:int;
		public var GUI_height:int;//unused
		public var GUI_width:int;//unused
		//world mechanics
		public var world:World;
		public var player:Character;
		public var output:String;
		public var look_flag:Boolean = false;
		public var move_to_id:int = -1;		
		//character gen
		public var world_gen:Boolean = false;
		public var array_of_fate:Array;
		//options
		public var mini_map:int = 2;
		public var button_text_format:TextFormat;
		public var textfield_text_format:TextFormat;
		public var combat_text_format:TextFormat;
		
		public var quickload_keycode:int = 119;
		public var quicksave_keycode:int = 116;
		public var appearance_keycode:int = 114;
		public var map_keycode:int = 77;
		public var inventory_keycode:int = 73;
		public var status_keycode:int = 96;
		public var look_keycode:int = 101;
		public var wait_keycode:int = 32;
		public var ne_keycode:int = 105;
		public var n_keycode:int = 104;
		public var nw_keycode:int = 103;
		public var e_keycode:int = 102;
		public var w_keycode:int = 100;
		public var se_keycode:int = 99;
		public var s_keycode:int = 98;
		public var sw_keycode:int = 97;
		
		public var combat_confirm_keycode:int = 13;
		public var combat_up_keycode:int = 38;
		public var combat_down_keycode:int = 40;
		public var combat_right_keycode:int = 39;
		public var combat_left_keycode:int = 37;
							
		public function Main():void{
			registerClassAlias("Action",Action);
			registerClassAlias("Action_object",Action_object);
			registerClassAlias("Alchemy_item",Alchemy_item);
			registerClassAlias("Area",Area);
			registerClassAlias("Area_weather",Area_weather);
			registerClassAlias("Body",Body);
			registerClassAlias("Body_part",Body_part);
			registerClassAlias("Body_part_state",Body_part_state);
			registerClassAlias("Challenge",Challenge);
			registerClassAlias("Character", Character);
			registerClassAlias("Character_template", Character_template);
			registerClassAlias("Character_class",Character_class);
			registerClassAlias("Character_job",Character_job);			
			registerClassAlias("Consequence",Consequence);
			registerClassAlias("Combat_manager",Combat_manager);
			registerClassAlias("Container",Container);
			registerClassAlias("Conversation_topic",Conversation_topic);
			registerClassAlias("Dynamic_Consequence",Dynamic_Consequence);
			registerClassAlias("Dynamic_object",Dynamic_object);
			registerClassAlias("Damage_type",Damage_type);
			registerClassAlias("Equipment",Equipment);
			registerClassAlias("Item",Item);
			registerClassAlias("Item_Consequence",Item_Consequence);			
			registerClassAlias("Mob", Mob);
			registerClassAlias("Party",Party);
			registerClassAlias("Personality",Personality);
			registerClassAlias("Quest",Quest);
			registerClassAlias("Quest_Consequence",Quest_Consequence);
			registerClassAlias("Race",Race);
			registerClassAlias("Relationship",Relationship);
			registerClassAlias("Room",Room);
			registerClassAlias("Room_Consequence",Room_Consequence);
			registerClassAlias("Sex",Sex);
			registerClassAlias("Skill",Skill);
			registerClassAlias("Skill_set",Skill_set);
			registerClassAlias("Stat",Stat);
			registerClassAlias("Static_object", Static_object); 
			registerClassAlias("Template_Room",Template_Room);
			registerClassAlias("Tick_Effect",Tick_Effect);
			registerClassAlias("Trait",Trait);
			registerClassAlias("Upgrade_Item", Upgrade_Item);
			registerClassAlias("Weapon", Weapon);
			registerClassAlias("World", World);
						
			button_text_format = new TextFormat();
			button_text_format.size = 16;
			
			textfield_text_format = new TextFormat();
			textfield_text_format.size = 12;
			textfield_text_format.color = 0x000000;
			textfield_text_format.font = "Times New Roman";
			textfield_text_format.italic = false;
			textfield_text_format.leftMargin
			
			combat_text_format = new TextFormat();
			combat_text_format.size = 20;
			combat_text_format.color = Main_gui.combat_txt_colour;
			
			array_of_fate = null;
			
			background_img_id = -1;
			
			Inventory_button = new Button();
			Inventory_button.x = 320;
			Inventory_button.y = 19.45;
			Inventory_button.width = 100;
			Inventory_button.height = 22;
			Inventory_button.label = "Inventory";
			Inventory_button.enabled = false;
			Inventory_button.setStyle("disabledSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_disabledSkin_img));
			Inventory_button.setStyle("downSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_downSkin_img));
			Inventory_button.setStyle("emphasizedSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_emphasizedSkin_img));
			Inventory_button.setStyle("overSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_overSkin_img));
			Inventory_button.setStyle("selectedDisabledSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_selectedDisabledSkin_img));
			Inventory_button.setStyle("selectedDownSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_selectedDownSkin_img));
			Inventory_button.setStyle("selectedOverSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_selectedOverSkin_img));
			Inventory_button.setStyle("selectedUpSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_selectedUpSkin_img));
			Inventory_button.setStyle("upSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_upSkin_img));
			Inventory_button.setStyle("textFormat", button_text_format);
			Inventory_button.setStyle("disabledTextFormat", button_text_format);
			this.addChild(Inventory_button);
			
			map_button = new Button();
			map_button.x = 470;
			map_button.y = 19.45;
			map_button.width = 100;
			map_button.height = 22;
			map_button.label = "Map";
			map_button.enabled = false;
			map_button.setStyle("disabledSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_disabledSkin_img));
			map_button.setStyle("downSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_downSkin_img));
			map_button.setStyle("emphasizedSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_emphasizedSkin_img));
			map_button.setStyle("overSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_overSkin_img));
			map_button.setStyle("selectedDisabledSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_selectedDisabledSkin_img));
			map_button.setStyle("selectedDownSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_selectedDownSkin_img));
			map_button.setStyle("selectedOverSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_selectedOverSkin_img));
			map_button.setStyle("selectedUpSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_selectedUpSkin_img));
			map_button.setStyle("upSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_upSkin_img));
			map_button.setStyle("textFormat", button_text_format);
			map_button.setStyle("disabledTextFormat", button_text_format);
			this.addChild(map_button);
			
			Look_button = new Button();
			Look_button.x = 170;
			Look_button.y = 19.45;
			Look_button.width = 100;
			Look_button.height = 22;
			Look_button.label = "Look";
			Look_button.enabled = false;
			Look_button.setStyle("disabledSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_disabledSkin_img));
			Look_button.setStyle("downSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_downSkin_img));
			Look_button.setStyle("emphasizedSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_emphasizedSkin_img));
			Look_button.setStyle("overSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_overSkin_img));
			Look_button.setStyle("selectedDisabledSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_selectedDisabledSkin_img));
			Look_button.setStyle("selectedDownSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_selectedDownSkin_img));
			Look_button.setStyle("selectedOverSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_selectedOverSkin_img));
			Look_button.setStyle("selectedUpSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_selectedUpSkin_img));
			Look_button.setStyle("upSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_upSkin_img));
			Look_button.setStyle("textFormat", button_text_format);
			Look_button.setStyle("disabledTextFormat", button_text_format);
			this.addChild(Look_button);
			
			wait_button = new Button();
			wait_button.x = 620;
			wait_button.y = 19.45;
			wait_button.width = 100;
			wait_button.height = 22;
			wait_button.label = "Wait";
			wait_button.enabled = false;
			wait_button.setStyle("disabledSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_disabledSkin_img));
			wait_button.setStyle("downSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_downSkin_img));
			wait_button.setStyle("emphasizedSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_emphasizedSkin_img));
			wait_button.setStyle("overSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_overSkin_img));
			wait_button.setStyle("selectedDisabledSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_selectedDisabledSkin_img));
			wait_button.setStyle("selectedDownSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_selectedDownSkin_img));
			wait_button.setStyle("selectedOverSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_selectedOverSkin_img));
			wait_button.setStyle("selectedUpSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_selectedUpSkin_img));
			wait_button.setStyle("upSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_upSkin_img));
			wait_button.setStyle("textFormat", button_text_format);
			wait_button.setStyle("disabledTextFormat", button_text_format);
			this.addChild(wait_button);
			
			status = new Button();
			status.x = 17.5;//newgame_button.x;
			status.y = 156.9;//newgame_button.y + 59.55;
			status.width = 100;
			status.height = 22;
			status.label = "Status";
			status.enabled = false;
			status.setStyle("disabledSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_disabledSkin_img));
			status.setStyle("downSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_downSkin_img));
			status.setStyle("emphasizedSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_emphasizedSkin_img));
			status.setStyle("overSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_overSkin_img));
			status.setStyle("selectedDisabledSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_selectedDisabledSkin_img));
			status.setStyle("selectedDownSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_selectedDownSkin_img));
			status.setStyle("selectedOverSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_selectedOverSkin_img));
			status.setStyle("selectedUpSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_selectedUpSkin_img));
			status.setStyle("upSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_upSkin_img));
			status.setStyle("textFormat", button_text_format);
			status.setStyle("disabledTextFormat", button_text_format);
			this.addChild(status);
			
			skill_button = new Button();
			skill_button.x = status.x;
			skill_button.y = status.y + 59.55;
			skill_button.width = 100;
			skill_button.height = 22;
			skill_button.label = "Train";
			skill_button.enabled = false;
			skill_button.setStyle("disabledSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_disabledSkin_img));
			skill_button.setStyle("downSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_downSkin_img));
			skill_button.setStyle("emphasizedSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_emphasizedSkin_img));
			skill_button.setStyle("overSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_overSkin_img));
			skill_button.setStyle("selectedDisabledSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_selectedDisabledSkin_img));
			skill_button.setStyle("selectedDownSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_selectedDownSkin_img));
			skill_button.setStyle("selectedOverSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_selectedOverSkin_img));
			skill_button.setStyle("selectedUpSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_selectedUpSkin_img));
			skill_button.setStyle("upSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_upSkin_img));
			skill_button.setStyle("textFormat", button_text_format);
			skill_button.setStyle("disabledTextFormat", button_text_format);
			this.addChild(skill_button);
			
			newgame_button = new Button();
			newgame_button.x = skill_button.x;//17.5;
			newgame_button.y = skill_button.y + 59.55;//156.9;//19.45;
			newgame_button.width = 100;
			newgame_button.height = 22;
			newgame_button.label = "New Game";
			newgame_button.setStyle("disabledSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_disabledSkin_img));
			newgame_button.setStyle("downSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_downSkin_img));
			newgame_button.setStyle("emphasizedSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_emphasizedSkin_img));
			newgame_button.setStyle("overSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_overSkin_img));
			newgame_button.setStyle("selectedDisabledSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_selectedDisabledSkin_img));
			newgame_button.setStyle("selectedDownSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_selectedDownSkin_img));
			newgame_button.setStyle("selectedOverSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_selectedOverSkin_img));
			newgame_button.setStyle("selectedUpSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_selectedUpSkin_img));
			newgame_button.setStyle("upSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_upSkin_img));
			newgame_button.setStyle("textFormat", button_text_format);
			newgame_button.setStyle("disabledTextFormat", button_text_format);
			this.addChild(newgame_button);
			
			appearance = new Button();
			appearance.x = newgame_button.x;
			appearance.y = newgame_button.y + 59.55;
			appearance.width = 100;
			appearance.height = 22;
			appearance.label = "Appearance";
			appearance.enabled = false;
			appearance.setStyle("disabledSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_disabledSkin_img));
			appearance.setStyle("downSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_downSkin_img));
			appearance.setStyle("emphasizedSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_emphasizedSkin_img));
			appearance.setStyle("overSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_overSkin_img));
			appearance.setStyle("selectedDisabledSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_selectedDisabledSkin_img));
			appearance.setStyle("selectedDownSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_selectedDownSkin_img));
			appearance.setStyle("selectedOverSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_selectedOverSkin_img));
			appearance.setStyle("selectedUpSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_selectedUpSkin_img));
			appearance.setStyle("upSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_upSkin_img));
			appearance.setStyle("textFormat", button_text_format);
			appearance.setStyle("disabledTextFormat", button_text_format);
			this.addChild(appearance);
			
			save_button = new Button();
			save_button.x = appearance.x;
			save_button.y = appearance.y + 59.55;
			save_button.width = 100;
			save_button.height = 22;
			save_button.label = "Save";
			save_button.enabled = false;
			save_button.setStyle("disabledSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_disabledSkin_img));
			save_button.setStyle("downSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_downSkin_img));
			save_button.setStyle("emphasizedSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_emphasizedSkin_img));
			save_button.setStyle("overSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_overSkin_img));
			save_button.setStyle("selectedDisabledSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_selectedDisabledSkin_img));
			save_button.setStyle("selectedDownSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_selectedDownSkin_img));
			save_button.setStyle("selectedOverSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_selectedOverSkin_img));
			save_button.setStyle("selectedUpSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_selectedUpSkin_img));
			save_button.setStyle("upSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_upSkin_img));
			save_button.setStyle("textFormat", button_text_format);
			save_button.setStyle("disabledTextFormat", button_text_format);
			this.addChild(save_button);
			
			load_button = new Button();
			load_button.x = save_button.x;
			load_button.y = save_button.y + 59.55;
			load_button.width = 100;
			load_button.height = 22;
			load_button.label = "Load";
			load_button.setStyle("disabledSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_disabledSkin_img));
			load_button.setStyle("downSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_downSkin_img));
			load_button.setStyle("emphasizedSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_emphasizedSkin_img));
			load_button.setStyle("overSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_overSkin_img));
			load_button.setStyle("selectedDisabledSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_selectedDisabledSkin_img));
			load_button.setStyle("selectedDownSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_selectedDownSkin_img));
			load_button.setStyle("selectedOverSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_selectedOverSkin_img));
			load_button.setStyle("selectedUpSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_selectedUpSkin_img));
			load_button.setStyle("upSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_upSkin_img));
			load_button.setStyle("textFormat", button_text_format);
			load_button.setStyle("disabledTextFormat", button_text_format);
			this.addChild(load_button);
			
			options_button = new Button();
			options_button.x = load_button.x;
			options_button.y = load_button.y + 59.55;
			options_button.width = 100;
			options_button.height = 22;
			options_button.label = "Options";
			options_button.setStyle("disabledSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_disabledSkin_img));
			options_button.setStyle("downSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_downSkin_img));
			options_button.setStyle("emphasizedSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_emphasizedSkin_img));
			options_button.setStyle("overSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_overSkin_img));
			options_button.setStyle("selectedDisabledSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_selectedDisabledSkin_img));
			options_button.setStyle("selectedDownSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_selectedDownSkin_img));
			options_button.setStyle("selectedOverSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_selectedOverSkin_img));
			options_button.setStyle("selectedUpSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_selectedUpSkin_img));
			options_button.setStyle("upSkin", FPalace_helper.get_image_by_id(FPalace_helper.Button_upSkin_img));
			options_button.setStyle("textFormat", button_text_format);
			options_button.setStyle("disabledTextFormat", button_text_format);
			this.addChild(options_button);
			
			text_field = new TextArea();
			text_field.x = 123.5;
			text_field.y = options_button.y + options_button.height - 480;
			text_field.width = 640;
			text_field.height = 480;
			text_field.editable = false;
			text_field.htmlText = "Click 'New Game' to begin a new game. You can use the numpad to move in the cardinal directions, as well as to look at where you are and check your status. Keybinds can be changed in the options menu. You can interact with the world through various keywords, sometimes highlighted <font color='#4CC417'>like this</font>, or <i>this</i>, but othertimes not. Experiment to see what you can do!\n\n\n"
				+ "If you have any comments, criticism, or suggestions, please feel free to share either on Furaffinity or the thread on Futanari Palace!\nhttp://www.furaffinity.net/user/ailer/\nhttps://www.futanaripalace.com/showthread.php?37585-Well-here-s-my-attempt";
			text_field.setStyle("upSkin",FPalace_helper.get_image_by_id(FPalace_helper.TextArea_upSkin_img));
			text_field.setStyle("disabledSkin",FPalace_helper.get_image_by_id(FPalace_helper.TextArea_disabledSkin_img));			
			text_field.setStyle("textFormat",textfield_text_format);
			text_field.setStyle("disabledTextFormat",textfield_text_format);
			
			text_field.setStyle("downArrowDisabledSkin",FPalace_helper.get_image_by_id(FPalace_helper.ScrollArrowDown_disabledSkin_img));
			text_field.setStyle("downArrowDownSkin",FPalace_helper.get_image_by_id(FPalace_helper.ScrollArrowDown_downSkin_img));
			text_field.setStyle("downArrowOverSkin",FPalace_helper.get_image_by_id(FPalace_helper.ScrollArrowDown_overSkin_img));
			text_field.setStyle("downArrowUpSkin",FPalace_helper.get_image_by_id(FPalace_helper.ScrollArrowDown_upSkin_img));			
			text_field.setStyle("thumbDownSkin",FPalace_helper.get_image_by_id(FPalace_helper.ScrollThumb_downSkin_img));
			text_field.setStyle("thumbIcon",FPalace_helper.get_image_by_id(FPalace_helper.ScrollBar_thumbIcon_img));
			text_field.setStyle("thumbOverSkin",FPalace_helper.get_image_by_id(FPalace_helper.ScrollThumb_overSkin_img));
			text_field.setStyle("thumbUpSkin",FPalace_helper.get_image_by_id(FPalace_helper.ScrollThumb_upSkin_img));
			text_field.setStyle("trackDisabledSkin",FPalace_helper.get_image_by_id(FPalace_helper.ScrollTrack_skin_img));
			text_field.setStyle("trackDownSkin",FPalace_helper.get_image_by_id(FPalace_helper.ScrollTrack_skin_img));
			text_field.setStyle("trackOverSkin",FPalace_helper.get_image_by_id(FPalace_helper.ScrollTrack_skin_img));
			text_field.setStyle("trackUpSkin",FPalace_helper.get_image_by_id(FPalace_helper.ScrollTrack_skin_img));
			text_field.setStyle("upArrowDisabledSkin",FPalace_helper.get_image_by_id(FPalace_helper.ScrollArrowUp_disabledSkin_img));
			text_field.setStyle("upArrowDownSkin",FPalace_helper.get_image_by_id(FPalace_helper.ScrollArrowUp_downSkin_img));
			text_field.setStyle("upArrowOverSkin",FPalace_helper.get_image_by_id(FPalace_helper.ScrollArrowUp_overSkin_img));
			text_field.setStyle("upArrowUpSkin",FPalace_helper.get_image_by_id(FPalace_helper.ScrollArrowUp_upSkin_img));
			
			this.addChild(text_field);
			
			input_text = new TextInput();
			input_text.x = 125.3;
			input_text.y = 567.9;
			input_text.width = 100;
			input_text.height = 22;
			input_text.visible = false;
			input_text.restrict = null;
			input_text.maxChars = 0;
			input_text.text = "";
			input_text.setStyle("disabledSkin",FPalace_helper.get_image_by_id(FPalace_helper.TextInput_disabledSkin_img));
			input_text.setStyle("upSkin",FPalace_helper.get_image_by_id(FPalace_helper.TextInput_upSkin_img));
			
			this.addChild(input_text);
			
			world_gen_progressbar = new ProgressBar();
			world_gen_progressbar.x = 125.3;
			world_gen_progressbar.y = 585.3;
			world_gen_progressbar.width = 639;
			world_gen_progressbar.height = 12;
			world_gen_progressbar.mode = ProgressBarMode.MANUAL;
			world_gen_progressbar.visible = false;
			world_gen_progressbar.indeterminate = false;
			world_gen_progressbar.setStyle("textFormat", textfield_text_format);
			world_gen_progressbar.setStyle("disabledTextFormat", textfield_text_format);
			world_gen_progressbar.setStyle("barSkin", FPalace_helper.get_image_by_id(FPalace_helper.ProgressBar_barSkin_img));
			world_gen_progressbar.setStyle("indeterminateSkin", FPalace_helper.get_image_by_id(FPalace_helper.ProgressBar_indeterminateSkin_img));
			world_gen_progressbar.setStyle("trackSkin", FPalace_helper.get_image_by_id(FPalace_helper.ProgressBar_trackSkin_img));
			this.addChild(world_gen_progressbar);
			
			this.addEventListener(Event.ENTER_FRAME, onEnterFrame);

			this.addEventListener(KeyboardEvent.KEY_UP, keyboardhandler);
			
			function keyboardhandler(event:KeyboardEvent):void{
				var mini_map_gen:Boolean = false;
				var temp_room:int = -1;
				var saveDataObject:File;
				
				if(event.keyCode == sw_keycode && Look_button.enabled){
					temp_room = player.location.get_exit_by_name("South-West");
				}else if(event.keyCode == s_keycode && Look_button.enabled){
					temp_room = player.location.get_exit_by_name("South");
				}else if(event.keyCode == se_keycode && Look_button.enabled){
					temp_room = player.location.get_exit_by_name("South-East");
				}else if(event.keyCode == w_keycode && Look_button.enabled){
					temp_room = player.location.get_exit_by_name("West");
				}else if(event.keyCode == look_keycode && Look_button.enabled){
					mini_map_gen = true;
					cleanup_gui();
					look();
				}else if(event.keyCode == e_keycode && Look_button.enabled){
					temp_room = player.location.get_exit_by_name("East");
				}else if(event.keyCode == nw_keycode && Look_button.enabled){
					temp_room = player.location.get_exit_by_name("North-West");
				}else if(event.keyCode == n_keycode && Look_button.enabled){
					temp_room = player.location.get_exit_by_name("North");
				}else if(event.keyCode == ne_keycode && Look_button.enabled){
					temp_room = player.location.get_exit_by_name("North-East");
				}else if(event.keyCode == status_keycode && status.enabled){
					mini_map_gen = true;
					cleanup_gui();
					stat();
				}else if(event.keyCode == inventory_keycode && Inventory_button.enabled){
					mini_map_gen = true;
					cleanup_gui();
					inventory();
				}else if(event.keyCode == map_keycode && map_button.enabled){
					mini_map_gen = true;
					cleanup_gui();
					map();
				}else if(event.keyCode == appearance_keycode && appearance.enabled){
					mini_map_gen = true;
					cleanup_gui();
					self_appearance();
				}else if(event.keyCode == quicksave_keycode && save_button.enabled){
					mini_map_gen = true;
					input_text.visible = false;
					input_text.enabled = false;	
					cleanup_gui();
					
					try{
						saveDataObject = File.applicationStorageDirectory.resolvePath("FPalaceQuickSave.sol"); 
						
						var compress_byte:ByteArray = new ByteArray();
						compress_byte.writeObject(player); 
						compress_byte.deflate();
						saveDataObject.addEventListener(Event.COMPLETE, fileSaved); 
						saveDataObject.save(compress_byte);
					}catch(e:Error){
						output = "Error saving: " + e.getStackTrace();
					}
					
					function fileSaved(event:Event):void 
					{ 
						output = "Quick Save Successful!";
						event.target.removeEventListener(Event.COMPLETE, fileSaved);
					}
				}else if(event.keyCode == quickload_keycode && load_button.enabled){
					mini_map_gen = true;
					cleanup_gui();
					if(File.applicationStorageDirectory.resolvePath("FPalaceQuickSave.sol").exists){
						try{
							saveDataObject = File.applicationStorageDirectory.resolvePath("FPalaceQuickSave.sol");
							saveDataObject.addEventListener(Event.COMPLETE, loaded); 
							saveDataObject.load();
						}catch(e:Error){
							output = "Error loading: " + e.getStackTrace();
						}
					}
					function loaded(event:Event):void { 
						if(saveDataObject.data == null){
							output = "No Game to Load!";
						}else{
							trace("(MAIN)reseting player...");
							world = new World();
							player = new Character();
						}
						compress_byte = event.target.data;
						compress_byte.inflate();
						player = compress_byte.readObject();
						compress_byte.deflate();
						world = player.location.area.world;
						
						if(world == null || player == null || player.location == null){
							output = "Load game failed!";
							world = null;
							player = null;
						}else{
							output = "Game loaded successfully\n" + player.look();
							Look_button.enabled = true;
							Inventory_button.enabled = true;
							appearance.enabled = true;
							status.enabled = true;
							map_button.enabled = true;
							save_button.enabled = true;
							wait_button.enabled = true;
							if(mini_map > 0){
								create_mini_map();
							}
						}
						event.target.removeEventListener(Event.COMPLETE, loaded);							
					}
				}else if(event.keyCode == wait_keycode && wait_button.enabled){
					mini_map_gen = true;
					cleanup_gui();
					wait(1);
				}else{
					if(quickload_keycode == -1){
						quickload_keycode = event.keyCode;
						output = "New keybinding set!";
					}else if(quicksave_keycode == -1){
						quicksave_keycode = event.keyCode;
						output = "New keybinding set!";
					}else if(appearance_keycode == -1){
						appearance_keycode = event.keyCode;
						output = "New keybinding set!";
					}else if(map_keycode == -1){
						map_keycode = event.keyCode;
						output = "New keybinding set!";
					}else if(inventory_keycode == -1){
						inventory_keycode = event.keyCode;
						output = "New keybinding set!";
					}else if(status_keycode == -1){
						status_keycode = event.keyCode;
						output = "New keybinding set!";
					}else if(look_keycode == -1){
						look_keycode = event.keyCode;
						output = "New keybinding set!";
					}else if(wait_keycode == -1){
						wait_keycode = event.keyCode;
						output = "New keybinding set!";
					}else if(ne_keycode == -1){
						ne_keycode = event.keyCode;
						output = "New keybinding set!";
					}else if(n_keycode == -1){
						n_keycode = event.keyCode;
						output = "New keybinding set!";
					}else if(nw_keycode == -1){
						nw_keycode = event.keyCode;
						output = "New keybinding set!";
					}else if(e_keycode == -1){
						e_keycode = event.keyCode;
						output = "New keybinding set!";
					}else if(w_keycode == -1){
						w_keycode = event.keyCode;
						output = "New keybinding set!";
					}else if(se_keycode == -1){
						se_keycode = event.keyCode;
						output = "New keybinding set!";
					}else if(s_keycode == -1){
						s_keycode = event.keyCode;
						output = "New keybinding set!";
					}else if(sw_keycode == -1){
						sw_keycode = event.keyCode;
						output = "New keybinding set!";
					}else if(combat_confirm_keycode == -1){
						combat_confirm_keycode = event.keyCode;
						output = "New keybinding set!";
					}else if(combat_up_keycode == -1){
						combat_up_keycode = event.keyCode;
						output = "New keybinding set!";
					}else if(combat_down_keycode == -1){
						combat_down_keycode = event.keyCode;
						output = "New keybinding set!";
					}else if(combat_right_keycode == -1){
						combat_right_keycode = event.keyCode;
						output = "New keybinding set!";
					}else if(combat_left_keycode == -1){
						combat_left_keycode = event.keyCode;
						output = "New keybinding set!";
					}
				}
				
				if(temp_room > -1){
					mini_map_gen = true;
					cleanup_gui();
					//player.go_to_new_location(temp_room,1);
					//output = "";
					move_to_id = temp_room;
					//look_flag = true;
					world_tick();
				}
				
				if(mini_map > 0 && mini_map_gen){
					create_mini_map();
				}
				
			}
			
			newgame_button.addEventListener(MouseEvent.CLICK, fl_MouseClickHandler);
			
			function fl_MouseClickHandler(event:MouseEvent):void{
				cleanup_gui();
				if(newgame_button.label == "New Game"){
					new_player();
				}else{
					show_journal();
					if(mini_map > 0){
						create_mini_map();
					}
				}
			}
			
			Look_button.addEventListener(MouseEvent.CLICK, f2_MouseClickHandler);
			
			function f2_MouseClickHandler(event:MouseEvent):void{
				cleanup_gui();
				look();
				if(mini_map > 0){
					create_mini_map();
				}
			}
			
			
			Inventory_button.addEventListener(MouseEvent.CLICK, f3_MouseClickHandler);
			
			function f3_MouseClickHandler(event:MouseEvent):void{
				cleanup_gui();
				inventory();
				if(mini_map > 0){
					create_mini_map();
				}
			}
			
			appearance.addEventListener(MouseEvent.CLICK, f4_MouseClickHandler);
			
			function f4_MouseClickHandler(event:MouseEvent):void{
				cleanup_gui();
				self_appearance();
				if(mini_map > 0){
					create_mini_map();
				}
			}
			
			map_button.addEventListener(MouseEvent.CLICK, f5_MouseClickHandler);
			
			function f5_MouseClickHandler(event:MouseEvent):void{
				if(map_button.label == "Map"){
					cleanup_gui();
					map_button.label = "World Map";
					map();
				}else{
					cleanup_gui();
					world_map();
				}
				if(mini_map > 0){
					create_mini_map();
				}
				
			}
			
			status.addEventListener(MouseEvent.CLICK, f6_MouseClickHandler);
			
			function f6_MouseClickHandler(event:MouseEvent):void{
				cleanup_gui();
				stat();
				if(mini_map > 0){
					create_mini_map();
				}
			}
			
			save_button.addEventListener(MouseEvent.CLICK, f7_MouseClickHandler);
			
			function f7_MouseClickHandler(event:MouseEvent):void{
				cleanup_gui();
				save_game();
				if(mini_map > 0){
					create_mini_map();
				}
			}
			
			load_button.addEventListener(MouseEvent.CLICK, f8_MouseClickHandler);
			
			function f8_MouseClickHandler(event:MouseEvent):void{
				cleanup_gui();
				load_game();
				if(mini_map > 0){
					create_mini_map();
				}
			}
			
			wait_button.addEventListener(MouseEvent.CLICK, f9_MouseClickHandler);
			
			function f9_MouseClickHandler(event:MouseEvent):void{
				cleanup_gui();
				if(wait_button.label == "Wait"){
					wait();
				}else{
					stop_waiting();
				}
				if(mini_map > 0){
					create_mini_map();
				}
			}
			
			options_button.addEventListener(MouseEvent.CLICK, f10_MouseClickHandler);
			
			function f10_MouseClickHandler(event:MouseEvent):void{
				cleanup_gui();
				options();
				if(mini_map > 0){
					create_mini_map();
				}
			}
			
			skill_button.addEventListener(MouseEvent.CLICK, f11_MouseClickHandler);
			
			function f11_MouseClickHandler(event:MouseEvent):void{
				cleanup_gui();
				show_skills();
				if(mini_map > 0){
					create_mini_map();
				}
			}
			
			text_field.addEventListener(TextEvent.LINK, linkHandler);
		}
		
		public function linkHandler(event:TextEvent):void {
			cleanup_gui();
			var tempArray:Array = new Array();
			tempArray = event.text.split(",");
			try{
				if (tempArray[0] == "open"){
					open(tempArray[1]);
				}else if(tempArray[0] == "inspect"){
					inspect(tempArray[1],tempArray[2]);
				}else if(tempArray[0] == "go_to_new_room"){
					go_to_new_room(tempArray[1]);
				}else if (tempArray[0] == "pick_up"){
					pick_up(tempArray[1]);
				}else if (tempArray[0] == "loot"){
					loot(tempArray[1],tempArray[2]);
				}else if (tempArray[0] == "look"){
					if (tempArray[2] == null){
						look(tempArray[1]);
					}else{
						look(tempArray[1], tempArray[2]);
					}
				}else if(tempArray[0] == "use_item"){
					if(tempArray[2] == null){
						use_item(tempArray[1]);
					}else{
						use_item(tempArray[1],tempArray[2], tempArray[3], tempArray[4],tempArray[5]);
					}
				}else if(tempArray[0] == "action"){
					action(tempArray[1],tempArray[2], tempArray[3]);
				}else if(tempArray[0] == "challenge"){
					challenge(tempArray[1], tempArray[2], tempArray[3], tempArray[4], tempArray.slice(5, tempArray.length));
				}else if(tempArray[0] == "combat"){
					if(tempArray[4] == null){
						combat(tempArray[1], tempArray[2], tempArray[3]);
					}else{
						combat(tempArray[1], tempArray[2], tempArray[3], tempArray[4], tempArray.slice(5, tempArray.length));
					}
				}else if(tempArray[0] == "new_player"){
					new_player(tempArray);
				}else if(tempArray[0] == "equip"){
					equip(tempArray[1], tempArray[2], tempArray[3], tempArray[4]);
				}else if(tempArray[0] == "unequip"){
					unequip(tempArray[1], tempArray[2]);
				}else if(tempArray[0] == "hold"){
					hold(tempArray[1], tempArray[2], tempArray[3], tempArray[4]);
				}else if(tempArray[0] == "unhold"){
					unhold(tempArray[1], tempArray[2]);
				}else if(tempArray[0] == "alchemy"){
					alchemy(tempArray[1],tempArray[2]);
				}else if(tempArray[0] == "enchant"){
					enchant(tempArray[1],tempArray[2]);
				}else if(tempArray[0] == "alchemy_gui"){
					alchemy_gui(tempArray[1],tempArray[2]);
				}else if(tempArray[0] == "quickmove"){
					quickmove(tempArray[1],tempArray[2]);
				}else if(tempArray[0] == "buy"){
					if(tempArray[2] == null){
						buy(tempArray[1]);
					}else if(tempArray[4] != null){
						buy(tempArray[1], tempArray[2],tempArray[3],tempArray[4]);
					}else if(tempArray[3] != null){
						buy(tempArray[1], tempArray[2],tempArray[3]);
					}else{
						buy(tempArray[1], tempArray[2]);
					}
				}else if(tempArray[0] == "sell"){
					if(tempArray[2] == null){
						sell(tempArray[1]);
					}else if(tempArray[3] != null){
						sell(tempArray[1], tempArray[2],tempArray[3]);
					}else{
						sell(tempArray[1], tempArray[2]);
					}
				}else if(tempArray[0] == "inventory"){
					inventory(tempArray[1]);
				}else if(tempArray[0] == "appearance"){
					self_appearance(tempArray[1]);
				}else if(tempArray[0] == "status"){
					if(tempArray[2] == null){
						stat(tempArray[1]);
					}else{
						stat(tempArray[1],tempArray[2]);
					}
				}else if(tempArray[0] == "act_by_type"){
					show_actions_by_type(tempArray[1], tempArray[2]);
				}else if(tempArray[0] == "talk"){
					if(tempArray[5] != null){
						talk(tempArray[1], tempArray[2], tempArray[3], tempArray[4], tempArray.slice(5, tempArray.length));
					}else if(tempArray[4] != null){
						talk(tempArray[1], tempArray[2], tempArray[3], tempArray[4]);
					}else{
						talk(tempArray[1], tempArray[2], tempArray[3]);
					}
				}else if(tempArray[0] == "save_game"){
					save_game(tempArray[1]);
				}else if(tempArray[0] == "load_game"){
					load_game(tempArray[1]);
				}else if(tempArray[0] == "wait"){
					wait(tempArray[1]);
				}else if(tempArray[0] == "options"){
					if(tempArray[1] == null){
						options();
					}else if(tempArray[2] == null){
						options(tempArray[1]);
					}else if(tempArray[3] == null){
						options(tempArray[1], tempArray[2]);
					}else if(tempArray[4] == null){
						options(tempArray[1], tempArray[2], tempArray[3]);
					}else{
						options(tempArray[1], tempArray[2], tempArray[3], tempArray[4]);
					}
				}else if(tempArray[0] == "show_skills"){
					if(tempArray[2] == null){
						show_skills(tempArray[1]);
					}else if(tempArray[3] == null){
						show_skills(tempArray[1], tempArray[2]);
					}else{
						show_skills(tempArray[1], tempArray[2], tempArray);
					}
				}else if(tempArray[0] == "cclass_history"){
					show_cclass_history(tempArray[1]);
				}else if(tempArray[0] == "sew"){
					sewing(tempArray[1],tempArray[2]);
				}else if(tempArray[0] == "dismantle"){
					dismantling(tempArray[1]);
				}else if(tempArray[0] == "craft"){
					crafting(tempArray[1]);
				}else if(tempArray[0] == "new_legend_mark"){
					if(tempArray[1] != null){
						create_legend_mark(tempArray[1]);
					}else{
						create_legend_mark();
					}
				}else if(tempArray[0] == "remove_legend_mark"){
					remove_legend_mark();
				}else if(tempArray[0] == "show_map"){
					cleanup_gui();
					if(tempArray[1] != null){
						map_button.label = "World Map";
						map(tempArray[1]);						
					}else{						
						if(map_button.label == "Map"){
							map_button.label = "World Map";
							map();
						}else{
							world_map();
						}						
					}
					if(mini_map > 0){
						create_mini_map();
					}
				}else{
					trace("(FPALACE)Don't know what to do with this link:"+tempArray);
				}
			}catch(e:Error){
				trace("Player Error: " + e.getStackTrace());
			}finally{
				
			}
			
			if (player == null || player.location == null){
				Look_button.enabled = false;
				Inventory_button.enabled = false;
				appearance.enabled = false;
				map_button.enabled = false;
					
			}
			
			if(player != null && player.location != null && mini_map > 0 && tempArray[0] != "combat"){
				create_mini_map();
			}
		}
		
		public function cleanup_gui():void{
			var i:int = 0;
			map_button.label = "Map";
			for(i;i<numChildren;i++){
				if(getChildAt(i) is MovieClip){	
					removeChildAt(i);
					i--;
				}else if(getChildAt(i) is TextArea){
					var temp_s:TextArea = this.getChildAt(i) as TextArea;
					temp_s.visible = true;
					temp_s.enabled = true;
					var k:int = 0;
					for(k;k<temp_s.numChildren;k++){
						if(temp_s.getChildAt(k) is MovieClip){
							temp_s.removeChildAt(k);
							k--;
						}
					}
				}
			}
			this.stage.stageFocusRect = false;
			this.stage.focus = this;
		}
		
		public function new_player(argVars:Array = null):void{
			var sex_flag:int = 0;
			var char_name:String = "";
			var body_flag:int = 0;
			var eye_flag:int = 0;
			var hair_flag:int = 0;
			var age_flag:int = 0;
			
			var question_num_flag:int = -1;
			var question_answer_flag:int = -1;
			if(argVars != null){
				if(argVars[1] != null){ 
					sex_flag = argVars[1];
				}
				if(argVars[2] != null){
					if(argVars[2] == "placeholder"){
						char_name = input_text.text;
					}else{
						char_name = argVars[2];
					}
				}
				if(argVars[3] != null){
					body_flag = argVars[3];
				}
				if(argVars[4] != null){
					eye_flag = argVars[4];
				}
				if(argVars[5] != null){
					hair_flag = argVars[5];
				}
				if(argVars[6] != null){
					if(input_text.text != ""){
						if(argVars[6] == "placeholder"){
							age_flag = int(input_text.text);
						}else{
							age_flag = argVars[6];
						}
					}
				}
				
				if(argVars[7] != null)question_num_flag = argVars[7];
				
				if(argVars[8] != null)question_answer_flag = argVars[8];
			}
			
			input_text.visible = false;
			input_text.enabled = false;
			input_text.restrict = null;
			input_text.maxChars = 0;
			
			Look_button.enabled = false;
			Inventory_button.enabled = false;
			appearance.enabled = false;
			status.enabled = false;
			skill_button.enabled = false;
			map_button.enabled = false;
			wait_button.enabled = false;
			save_button.enabled = false;
			
			var last_choice_id:int = 0;
			
			//set the previous questions answers in the array of fate
			if(question_num_flag >= 0 && question_num_flag < array_of_fate.length){
				var unneeded_stat_id:int = -1;
				last_choice_id = question_answer_flag;
				if(question_answer_flag == array_of_fate[question_num_flag][0]){
					unneeded_stat_id = array_of_fate[question_num_flag][1];
				}else{
					unneeded_stat_id = array_of_fate[question_num_flag][0];
				}
				var i:int = 0;
				for(i;i<array_of_fate.length;i++){
					if(i == question_num_flag){
						continue;						
					}else{
						if(array_of_fate[i][0] == question_answer_flag || array_of_fate[i][1] == question_answer_flag){
							if(array_of_fate[i][3] == -1 && array_of_fate[question_num_flag][3] == -1){
								array_of_fate[i][3] = 0;
							}
							if(array_of_fate[i][3] == -2 && array_of_fate[question_num_flag][3] == -2){
								array_of_fate[i][3] = 0;
							}
						}
						if( array_of_fate[i][0] == unneeded_stat_id || array_of_fate[i][1] == unneeded_stat_id){
							if(array_of_fate[i][3] == -2 && array_of_fate[question_num_flag][3] == -2){
								array_of_fate[i][3] = -3;
							}
							if(array_of_fate[i][3] == -1 && array_of_fate[question_num_flag][3] == -1){
								array_of_fate[i][3] = -2;
							}
							if(array_of_fate[i][3] == 0 && array_of_fate[question_num_flag][3] == 0){
								array_of_fate[i][3] = -3;
							}						 
						}
					}
				}
				
				array_of_fate[question_num_flag][3] = question_answer_flag;
			}
			
			if (world == null){
				world = new World();
				world_gen = true;
				world_gen_progressbar.visible = true;
				world_gen_progressbar.enabled = true;
				world = FPalace_content.new_world(world, world_gen_progressbar);				
			}

			if (sex_flag == 0){
				output = "Today, while walking on your way home, you notice a familiar empty lot occupied by what appears to be a covered wooden caravan cart, not unlike those you've heard of gypsies using in days gone by. Out front, a large, garishly painted sign proclaims the strange carts intentions:\n\n"
				+"<i>Fortunes told!</i>\n"
				+"<b>Today Only</b>\n"
				+"<b><i>FREE!</i></b>\n\n"
				+ "Looking around, none of the other passersby seem to notice the out of place cart, and a sense of foreboding come over you. Curiosity wins, and you creep up to the cart, risking a peek in....\n\n"
				+ "\"Who's there!\" A decrepit and gasping female voice echos as soon as soon as your eyes fall on the deteriorating old gypsy, her robes a mish-mash of colour that assaults your eyes, and the glassy stare coming from her un-nerving you.\n\n"
				+ "\"A customer! Come in!\" the woman cries as you begin to shy from the doorstep. The desperation in her voice has you a few steps in the cramped space of the cart before you realize what's happening. \"Sit sit!\" she says, coughing and gesturing vaguely across the scarred wooden table she sits at.\n\n"
				+ "You're barely in place before the gypsy begins apologizing about the state of affairs around the cart. You sit awkwardly as her pale gaze jumps about the small space, until finally it falls on you."
				+ "\"I'm sorry to ask...\" she says \"... but even I'm not what I used to be.\" The comment is punctuated by a coughing fit, before she continues. \"Silent as you are, I'm afraid I have to know before we start... are you a man, or a woman?\"\n\n"
				+"What sex would you like to be? <font color='#0000FF'><a href=\"event:new_player,1\">Male</a> <a href=\"event:new_player,2\">Female</a></font>";
								
				return;
			}
			
			if(char_name == ""){
				if(world_gen){
				   world = FPalace_content.new_world(world, world_gen_progressbar);
				}
				input_text.text = "Player";
				input_text.restrict = "a-zA-Z '";
				input_text.setStyle("textFormat", textfield_text_format);
				input_text.height = textfield_text_format.size + 10;
				text_field.htmlText = "\"And your name?\" the old gypsy asks, a distinct lack of surprise at your answer to the last question. Thinking over it for a few moments, you decide to tell the gypsy your name is ";
				input_text.x = text_field.x + 10;//text_field.textField.textWidth;
				input_text.y = text_field.y + text_field.textField.textHeight + input_text.height/2;
				input_text.addEventListener(KeyboardEvent.KEY_UP, done_key_press);
				var m:Main = this;
				function done_key_press(e:KeyboardEvent):void{
					if(e.keyCode == combat_confirm_keycode){
						var new_e:TextEvent = new TextEvent(TextEvent.LINK, false, false, "new_player,"+sex_flag+",placeholder");								
						m.linkHandler(new_e);
						input_text.removeEventListener(KeyboardEvent.KEY_UP, done_key_press);
					}
				}
				text_field.htmlText = "";
				output = "\"And your name?\" the old gypsy asks, a distinct lack of surprise at your answer to the last question. Thinking over it for a few moments, you decide to tell the gypsy your name is \n\n\n <font color='#0000FF'><a href=\"event:new_player,"+sex_flag+",placeholder\">Done</a></font>";
				input_text.visible = true;
				input_text.enabled = true;
				
				return;
			}
			
			if (body_flag == 0){
				if(world_gen){
				   world = FPalace_content.new_world(world, world_gen_progressbar);
				}
				output = "The old gypsy looks a little taken aback at your answer, and you hear her mumble under her breath about thinking otherwise. She raises her voice and begins to speak to you in earnest once again. \"Could you tell me a bit more?\"\n\n"
				+ "Not sure what she means, you sit gaping at the odd sight of the ancient woman until she <i>hrrmphs</i> and raises her boney hands towards you, wriggling fingers and saying \"I can find out for myself if you're going to give me the silent treatment....\"\n\n"
				+ "The screeching as your chair backs up stops her. \"Oh? Not interested?\" The grin on the gypsies face is mindnumbingly disturbing as drool steadily flows from a hanging lip. Before long you make the decision that it's time to leave, but the gypsy seems to sense your anxiety and begins to plead \"Don't go! Please! It was just a jest! A joke! Yes! You can forgive an old woman, yes?\" You get the sense that if she could move more easily, she would have been kissing your feet by the end, but instead she was bowing her head into the table. \"Please...\" she continue \"I only meant to ask what type of body you've ended up with.\" As if to drive the point home, she casually begins \"I'm blind you see...\" before trailing off.\n\n"
				+ "What body type do you have? <font color='#0000FF'><a href=\"event:new_player,"+sex_flag+","+char_name+",1\">Athletic</a> <a href=\"event:new_player,"+sex_flag+","+char_name+",2\">Chubby</a> <a href=\"event:new_player,"+sex_flag+","+char_name+",3\">Slim</a></font>";
				//Slim, Muscular, Chubby for both sexes... Ectomorphic, Mesomorphic, Endomorphic in reality
				
				return;
			}
			
			//race?
			//hair colour and length (eye colour?)
			if(eye_flag == 0){
				if(world_gen){
				   world = FPalace_content.new_world(world, world_gen_progressbar);
				}
				output = "The old gypsy looks a little taken aback at your answer, and you hear her mumble under her breath about thinking otherwise. She raises her voice and begins to speak to you in earnest once again. \"Could you tell me a bit more?\"\n\n"
				+ "What eye colour do you have? <font color='#0000FF'><a href=\"event:new_player,"+sex_flag+","+char_name+","+body_flag+",4\">Brown</a> <a href=\"event:new_player,"+sex_flag+","+char_name+","+body_flag+",8\">Green</a> <a href=\"event:new_player,"+sex_flag+","+char_name+","+body_flag+",14\">Blue</a></font>";
				
				return;
			}
			if(hair_flag == 0){
				if(world_gen){
				   world = FPalace_content.new_world(world, world_gen_progressbar);
				}
				output = "The old gypsy looks a little taken aback at your answer, and you hear her mumble under her breath about thinking otherwise. She raises her voice and begins to speak to you in earnest once again. \"Could you tell me a bit more?\"\n\n"
				+ "What hair colour do you have? <font color='#0000FF'><a href=\"event:new_player,"+sex_flag+","+char_name+","+body_flag+","+eye_flag+",2\">Black</a> <a href=\"event:new_player,"+sex_flag+","+char_name+","+body_flag+","+eye_flag+",5\">Brown</a> <a href=\"event:new_player,"+sex_flag+","+char_name+","+body_flag+","+eye_flag+",7\">Red</a> <a href=\"event:new_player,"+sex_flag+","+char_name+","+body_flag+","+eye_flag+",4\">Blonde</a></font>";
				
				return;
			}
			//age
			if(age_flag == 0){
				if(world_gen){
				   world = FPalace_content.new_world(world, world_gen_progressbar);
				}
				//Should really let the player enter their age... with a minimum check...
				text_field.htmlText = "The old gypsy looks a little taken aback at your answer, and you hear her mumble under her breath about thinking otherwise. She raises her voice and begins to speak to you in earnest once again. \"Could you tell me a bit more?\"\n\n"
				+ "How old are you?";
				input_text.text = "23";
				input_text.restrict = "0-9";
				input_text.maxChars = 2;
				input_text.x = text_field.x + 10;//text_field.textField.textWidth;
				input_text.y = text_field.y + text_field.textField.textHeight + input_text.height/2;
				input_text.addEventListener(KeyboardEvent.KEY_UP, done_age_press);
				m = this;
				function done_age_press(e:KeyboardEvent):void{
					if(e.keyCode == combat_confirm_keycode){
						var new_e:TextEvent = new TextEvent(TextEvent.LINK, false, false, "new_player,"+sex_flag+","+char_name+","+body_flag+","+eye_flag+","+hair_flag+",placeholder");								
						m.linkHandler(new_e);
						input_text.removeEventListener(KeyboardEvent.KEY_UP, done_age_press);
					}
				}
				text_field.htmlText = "";
				output = "The old gypsy looks a little taken aback at your answer, and you hear her mumble under her breath about thinking otherwise. She raises her voice and begins to speak to you in earnest once again. \"Could you tell me a bit more?\"\n\n"
				+ "How old are you?\n\n\n <font color='#0000FF'><a href=\"event:new_player,"+sex_flag+","+char_name+","+body_flag+","+eye_flag+","+hair_flag+",placeholder\">Done</a></font>";// <font color='#0000FF'><a href=\"event:new_player,"+sex_flag+","+char_name+","+body_flag+","+eye_flag+","+hair_flag+",18\">18</a> <a href=\"event:new_player,"+sex_flag+","+char_name+","+body_flag+","+eye_flag+","+hair_flag+",23\">23</a> <a href=\"event:new_player,"+sex_flag+","+char_name+","+body_flag+","+eye_flag+","+hair_flag+",28\">28</a> <a href=\"event:new_player,"+sex_flag+","+char_name+","+body_flag+","+eye_flag+","+hair_flag+",33\">33</a> <a href=\"event:new_player,"+sex_flag+","+char_name+","+body_flag+","+eye_flag+","+hair_flag+",38\">38</a></font>";
				
				input_text.visible = true;
				input_text.enabled = true;
				
				return;
			}
			
			//create the array_of_fate
			if(array_of_fate == null){
				output = "Joints straining with every motion, you can't help but find yourself waiting for a sickening snap as the ancient woman reaches into a pile of seemingly useless junk and extracts a small book, no larger than a deck of cards. She flips it open and stares with her useless milky white eyes for a moment before eight cards slip from its pages and land on the table between you. The strange gypsy seems almost surprised at the sound of the cards dropping, and <i>hrrmphs</i> again.\n\n" 
				+ "\"A bit special, are we?\" The woman says under her breath as she places the open book on the table, giving you a glimpse. You don't even recognize the alphabet of the letters before the gypsy suddenly slams it shut, and you can see a bruise already beginning to form in the palm of her hand from the force. A slight wince of pain crosses her face, and you can see her strain to pick up the cards.\n\n"
				+ "You do your best to read the expression on her face, but can't help but be confused by the sightless gaze directed at the cards. A solemn tone enters the gypsies voice as she places the cards face down in a pile and draws two of them face up between you.\n\n";
				
				array_of_fate = new Array();
				//Utima style questions to determine primary and secondary stats
				//Str - Dex =
				array_of_fate[0] = new Array();
				array_of_fate[0][0] = FPalace_helper.str_id;
				array_of_fate[0][1] = FPalace_helper.dex_id;
				array_of_fate[0][2] = "Question\n";
				array_of_fate[0][3] = -1;
				array_of_fate[0][4] = "Strength";
				array_of_fate[0][5] = "Dexterity";
				//Str - Con =
				array_of_fate[1] = new Array();
				array_of_fate[1][0] = FPalace_helper.str_id;
				array_of_fate[1][1] = FPalace_helper.con_id;
				array_of_fate[1][2] = "Question\n";
				array_of_fate[1][3] = -1;
				array_of_fate[1][4] = "Strength";
				array_of_fate[1][5] = "Constitution";
				//Str - Sex Appeal =
				array_of_fate[2] = new Array();
				array_of_fate[2][0] = FPalace_helper.str_id;
				array_of_fate[2][1] = FPalace_helper.sex_appeal_id;
				array_of_fate[2][2] = "Question\n";
				array_of_fate[2][3] = -1;
				array_of_fate[2][4] = "Strength";
				array_of_fate[2][5] = "Beauty";
				//Str - Will =
				array_of_fate[3] = new Array();
				array_of_fate[3][0] = FPalace_helper.str_id;
				array_of_fate[3][1] = FPalace_helper.will_id;
				array_of_fate[3][2] = "Question\n";
				array_of_fate[3][3] = -1;
				array_of_fate[3][4] = "Strength";
				array_of_fate[3][5] = "Willpower";
				//Str - Wis = 
				array_of_fate[4] = new Array();
				array_of_fate[4][0] = FPalace_helper.str_id;
				array_of_fate[4][1] = FPalace_helper.wis_id;
				array_of_fate[4][2] = "Question\n";
				array_of_fate[4][3] = -1;
				array_of_fate[4][4] = "Strength";
				array_of_fate[4][5] = "Wisdom";
				//Str - Int =
				array_of_fate[5] = new Array();
				array_of_fate[5][0] = FPalace_helper.str_id;
				array_of_fate[5][1] = FPalace_helper.int_id;
				array_of_fate[5][2] = "Question\n";
				array_of_fate[5][3] = -1;
				array_of_fate[5][4] = "Strength";
				array_of_fate[5][5] = "Intelligence";
				//Str - Cha =
				array_of_fate[6] = new Array();
				array_of_fate[6][0] = FPalace_helper.str_id;
				array_of_fate[6][1] = FPalace_helper.cha_id;
				array_of_fate[6][2] = "Question\n";
				array_of_fate[6][3] = -1;
				array_of_fate[6][4] = "Strength";
				array_of_fate[6][5] = "Charisma";
				//Dex - Con = 
				array_of_fate[7] = new Array();
				array_of_fate[7][0] = FPalace_helper.dex_id;
				array_of_fate[7][1] = FPalace_helper.con_id;
				array_of_fate[7][2] = "Question\n";
				array_of_fate[7][3] = -1;
				array_of_fate[7][4] = "Dexterity";
				array_of_fate[7][5] = "Constitution";
				//Dex - Sex Appeal = 
				array_of_fate[8] = new Array();
				array_of_fate[8][0] = FPalace_helper.dex_id;
				array_of_fate[8][1] = FPalace_helper.sex_appeal_id;
				array_of_fate[8][2] = "Question\n";
				array_of_fate[8][3] = -1;
				array_of_fate[8][4] = "Dexterity";
				array_of_fate[8][5] = "Beauty";
				//Dex - Will =
				array_of_fate[9] = new Array();
				array_of_fate[9][0] = FPalace_helper.dex_id;
				array_of_fate[9][1] = FPalace_helper.will_id;
				array_of_fate[9][2] = "Question\n";
				array_of_fate[9][3] = -1;
				array_of_fate[9][4] = "Dexterity";
				array_of_fate[9][5] = "Willpower";
				//Dex - Wis = 
				array_of_fate[10] = new Array();
				array_of_fate[10][0] = FPalace_helper.dex_id;
				array_of_fate[10][1] = FPalace_helper.wis_id;
				array_of_fate[10][2] = "Question\n";
				array_of_fate[10][3] = -1;
				array_of_fate[10][4] = "Dexterity";
				array_of_fate[10][5] = "Wisdom";
				//Dex - Int = 
				array_of_fate[11] = new Array();
				array_of_fate[11][0] = FPalace_helper.dex_id;
				array_of_fate[11][1] = FPalace_helper.int_id;
				array_of_fate[11][2] = "Question\n";
				array_of_fate[11][3] = -1;
				array_of_fate[11][4] = "Dexterity";
				array_of_fate[11][5] = "Intelligence";
				//Dex - Cha = 
				array_of_fate[12] = new Array();
				array_of_fate[12][0] = FPalace_helper.dex_id;
				array_of_fate[12][1] = FPalace_helper.cha_id;
				array_of_fate[12][2] = "Question\n";
				array_of_fate[12][3] = -1;
				array_of_fate[12][4] = "Dexterity";
				array_of_fate[12][5] = "Charisma";
				//Con - Sex Appeal = 
				array_of_fate[13] = new Array();
				array_of_fate[13][0] = FPalace_helper.con_id;
				array_of_fate[13][1] = FPalace_helper.sex_appeal_id;
				array_of_fate[13][2] = "Question\n";
				array_of_fate[13][3] = -1;
				array_of_fate[13][4] = "Constitution";
				array_of_fate[13][5] = "Beauty";
				//Con - Will = 
				array_of_fate[14] = new Array();
				array_of_fate[14][0] = FPalace_helper.con_id;
				array_of_fate[14][1] = FPalace_helper.will_id;
				array_of_fate[14][2] = "Question\n";
				array_of_fate[14][3] = -1;
				array_of_fate[14][4] = "Constitution";
				array_of_fate[14][5] = "Willpower";
				//Con - Wis = 
				array_of_fate[15] = new Array();
				array_of_fate[15][0] = FPalace_helper.con_id;
				array_of_fate[15][1] = FPalace_helper.wis_id;
				array_of_fate[15][2] = "Question\n";
				array_of_fate[15][3] = -1;
				array_of_fate[15][4] = "Constitution";
				array_of_fate[15][5] = "Wisdom";
				//Con - Int = 
				array_of_fate[16] = new Array();
				array_of_fate[16][0] = FPalace_helper.con_id;
				array_of_fate[16][1] = FPalace_helper.int_id;
				array_of_fate[16][2] = "Question\n";
				array_of_fate[16][3] = -1;
				array_of_fate[16][4] = "Constitution";
				array_of_fate[16][5] = "Intelligence";
				//Con - Cha = 
				array_of_fate[17] = new Array();
				array_of_fate[17][0] = FPalace_helper.con_id;
				array_of_fate[17][1] = FPalace_helper.cha_id;
				array_of_fate[17][2] = "Question\n";
				array_of_fate[17][3] = -1;
				array_of_fate[17][4] = "Constitution";
				array_of_fate[17][5] = "Charisma";
				//Sex Appeal - Will = 
				array_of_fate[18] = new Array();
				array_of_fate[18][0] = FPalace_helper.sex_appeal_id;
				array_of_fate[18][1] = FPalace_helper.will_id;
				array_of_fate[18][2] = "Question\n";
				array_of_fate[18][3] = -1;
				array_of_fate[18][4] = "Beauty";
				array_of_fate[18][5] = "Willpower";
				//Sex Appeal - Wis = 
				array_of_fate[19] = new Array();
				array_of_fate[19][0] = FPalace_helper.sex_appeal_id;
				array_of_fate[19][1] = FPalace_helper.wis_id;
				array_of_fate[19][2] = "Question\n";
				array_of_fate[19][3] = -1;
				array_of_fate[19][4] = "Beauty";
				array_of_fate[19][5] = "Wisdom";
				//Sex Appeal - Int = 
				array_of_fate[20] = new Array();
				array_of_fate[20][0] = FPalace_helper.sex_appeal_id;
				array_of_fate[20][1] = FPalace_helper.int_id;
				array_of_fate[20][2] = "Question\n";
				array_of_fate[20][3] = -1;
				array_of_fate[20][4] = "Beauty";
				array_of_fate[20][5] = "Intelligence";
				//Sex Appeal - Cha = 
				array_of_fate[21] = new Array();
				array_of_fate[21][0] = FPalace_helper.sex_appeal_id;
				array_of_fate[21][1] = FPalace_helper.cha_id;
				array_of_fate[21][2] = "Question\n";
				array_of_fate[21][3] = -1;
				array_of_fate[21][4] = "Beauty";
				array_of_fate[21][5] = "Charisma";
				//Will - Wis = 
				array_of_fate[22] = new Array();
				array_of_fate[22][0] = FPalace_helper.will_id;
				array_of_fate[22][1] = FPalace_helper.wis_id;
				array_of_fate[22][2] = "Question\n";
				array_of_fate[22][3] = -1;
				array_of_fate[22][4] = "Willpower";
				array_of_fate[22][5] = "Wisdom";
				//Will - Int = 
				array_of_fate[23] = new Array();
				array_of_fate[23][0] = FPalace_helper.will_id;
				array_of_fate[23][1] = FPalace_helper.int_id;
				array_of_fate[23][2] = "Question\n";
				array_of_fate[23][3] = -1;
				array_of_fate[23][4] = "Willpower";
				array_of_fate[23][5] = "Intelligence";
				//Will - Cha = 
				array_of_fate[24] = new Array();
				array_of_fate[24][0] = FPalace_helper.will_id;
				array_of_fate[24][1] = FPalace_helper.cha_id;
				array_of_fate[24][2] = "Question\n";
				array_of_fate[24][3] = -1;
				array_of_fate[24][4] = "Willpower";
				array_of_fate[24][5] = "Charisma";
				//Wis - Int = 
				array_of_fate[25] = new Array();
				array_of_fate[25][0] = FPalace_helper.wis_id;
				array_of_fate[25][1] = FPalace_helper.int_id;
				array_of_fate[25][2] = "Question\n";
				array_of_fate[25][3] = -1;
				array_of_fate[25][4] = "Wisdom";
				array_of_fate[25][5] = "Intelligence";
				//Wis - Cha = 
				array_of_fate[26] = new Array();
				array_of_fate[26][0] = FPalace_helper.wis_id;
				array_of_fate[26][1] = FPalace_helper.cha_id;
				array_of_fate[26][2] = "Question\n";
				array_of_fate[26][3] = -1;
				array_of_fate[26][4] = "Wisdom";
				array_of_fate[26][5] = "Charisma";
				//Int - Cha = 
				array_of_fate[27] = new Array();
				array_of_fate[27][0] = FPalace_helper.int_id;
				array_of_fate[27][1] = FPalace_helper.cha_id;
				array_of_fate[27][2] = "Question\n";
				array_of_fate[27][3] = -1;
				array_of_fate[27][4] = "Intelligence";
				array_of_fate[27][5] = "Charisma";
			}else{
				output = "The gypsy listens to your answer, and almost immediately returns the cards to the short deck before giving it a shuffle and drawing two more cards.\n\n";
				
			}
			
			//determine which question to ask;
			var question_num:int = Math.round(Math.random()*(array_of_fate.length-1));//random starting question...
			var num_checked:int = 0;
			
			while(array_of_fate[question_num][3] != -1){//asked, or superfluous question
				if(num_checked >= array_of_fate.length){
					num_checked = -1;
					break;
				}
				num_checked++;
				question_num++;
				if(question_num >= array_of_fate.length)question_num = 0;
			}
			
			if(num_checked == -1){
				question_num = Math.round(Math.random()*(array_of_fate.length-1));//random starting question...
				num_checked = 0;
				while(array_of_fate[question_num][3] != -2){
					if(num_checked >= array_of_fate.length){
						num_checked = -1;
						break;
					}
					num_checked++;
					question_num++;
					if(question_num >= array_of_fate.length)question_num = 0;
				}
				
				if(num_checked == -1){
					question_num = Math.round(Math.random()*(array_of_fate.length-1));//random starting question...
					num_checked = 0;
					while(array_of_fate[question_num][3] != 0){
						if(num_checked >= array_of_fate.length){
							num_checked = -1;
							break;
						}
						num_checked++;
						question_num++;
						if(question_num >= array_of_fate.length)question_num = 0;
					}
				}
				
			}
			
			//ask the questions
			if(num_checked != -1){
				output += array_of_fate[question_num][2] + "<font color='#0000FF'><a href=\"event:new_player,"+sex_flag+","+char_name+","+body_flag+","+eye_flag+","+hair_flag+","+age_flag+","+question_num+","+array_of_fate[question_num][0]+"\">"+array_of_fate[question_num][4]+"</a></font> or <font color='#0000FF'><a href=\"event:new_player,"+sex_flag+","+char_name+","+body_flag+","+eye_flag+","+hair_flag+","+age_flag+","+question_num+","+array_of_fate[question_num][1]+"\">"+array_of_fate[question_num][5]+"</a></font>";
				if(world_gen){
					world = FPalace_content.new_world(world, world_gen_progressbar);
				}
				return;
			}
			world.set_settings([mini_map,textfield_text_format.size,combat_text_format.size,quickload_keycode,quicksave_keycode,
				appearance_keycode,map_keycode,inventory_keycode,status_keycode,look_keycode,wait_keycode,ne_keycode,n_keycode,nw_keycode,
				e_keycode,w_keycode,se_keycode,s_keycode,sw_keycode,combat_confirm_keycode,combat_up_keycode,combat_down_keycode,combat_right_keycode,combat_left_keycode]);
			
			world_gen = false;
			world_gen_progressbar.visible = false;
			world_gen_progressbar.enabled = false;
			Look_button.enabled = true;
			Inventory_button.enabled = true;
			appearance.enabled = true;
			status.enabled = true;
			skill_button.enabled = true;
			map_button.enabled = true;
			save_button.enabled = true;
			wait_button.enabled = true;
			save_button.enabled = true;
			newgame_button.label = "Journal";
			
			player = null;
			player = new Character(char_name);

			var race:Race = FPalace_races.race_human();
			//var race:Race = FPalace_races.race_goo();
			
			player.new_body_part(FPalace_helper.new_hair(race,1/*hair length*/,hair_flag));
			player.new_body_part(FPalace_helper.new_head(race));
			player.new_body_part(FPalace_helper.new_eyes(race,eye_flag-9.9));
			player.new_body_part(FPalace_helper.new_torso(race));
			player.new_body_part(FPalace_helper.new_left_arms(race));
			player.new_body_part(FPalace_helper.new_left_hands(race));
			player.new_body_part(FPalace_helper.new_right_arms(race));
			player.new_body_part(FPalace_helper.new_right_hands(race));
			player.new_body_part(FPalace_helper.new_hips(race));
			player.new_body_part(FPalace_helper.new_left_legs(race));
			player.new_body_part(FPalace_helper.new_left_feet(race));
			player.new_body_part(FPalace_helper.new_right_legs(race));
			player.new_body_part(FPalace_helper.new_right_feet(race));

			if (sex_flag == 1){
				player.new_body_part(FPalace_helper.new_penis(race));
				player.new_body_part(FPalace_helper.new_balls(race));
				
				if(body_flag == 1){
					
				}else if(body_flag == 2){
					player.apply_affect_by_id(FPalace_helper.waist_id,8);
					player.apply_affect_by_id(FPalace_helper.hips_id,4);
				}else if(body_flag == 3){
					player.apply_affect_by_id(FPalace_helper.bust_id,-4);
					player.apply_affect_by_id(FPalace_helper.hips_id,-4);
				}
			}

			if (sex_flag == 2){
				player.new_body_part(FPalace_helper.new_breasts(race));
				player.new_body_part(FPalace_helper.new_vagina(race));
				player.new_body_part(FPalace_helper.new_clit(race));
				
				if(body_flag == 1){
					
				}else if(body_flag == 2){
					player.apply_affect_by_id(FPalace_helper.bust_id,4);
					player.apply_affect_by_id(FPalace_helper.waist_id,8);
					player.apply_affect_by_id(FPalace_helper.hips_id,4);
					player.apply_affect_by_id(FPalace_helper.breast_size_id,3);
					player.apply_affect_by_id(FPalace_helper.milk_volume_id,40);
					
				}else if(body_flag == 3){
					player.apply_affect_by_id(FPalace_helper.bust_id,-4);
					player.apply_affect_by_id(FPalace_helper.hips_id,-4);
					player.apply_affect_by_id(FPalace_helper.breast_size_id,-2);
					player.apply_affect_by_id(FPalace_helper.milk_volume_id,-40);
				}
			}
			
			i = 0;
			for(i;i<array_of_fate.length;i++){
				if(array_of_fate[i][3] > 0){
					player.apply_affect_by_id(array_of_fate[i][3],1,0,null,Body.change_stats_total);
				}
			}
			array_of_fate = null;
			
			player.apply_affect_by_id(FPalace_helper.str_id,-1,0,null,Body.change_stats_total);
			player.apply_affect_by_id(FPalace_helper.dex_id,-1,0,null,Body.change_stats_total);
			player.apply_affect_by_id(FPalace_helper.con_id,-1,0,null,Body.change_stats_total);
			player.apply_affect_by_id(FPalace_helper.sex_appeal_id,-1,0,null,Body.change_stats_total);
			player.apply_affect_by_id(FPalace_helper.int_id,-1,0,null,Body.change_stats_total);
			player.apply_affect_by_id(FPalace_helper.wis_id,-1,0,null,Body.change_stats_total);
			player.apply_affect_by_id(FPalace_helper.will_id,-1,0,null,Body.change_stats_total);
			player.apply_affect_by_id(FPalace_helper.cha_id,-1,0,null,Body.change_stats_total);
						
			if(age_flag != 23){
				player.apply_affect_by_id(FPalace_helper.age_id,age_flag-23,0,null,Body.change_stats_total);
			}
			player.personality.determine_orient(player.sex);
			
			//grasslands/sex_appeal = 0
			//forest/wisdom = 1
			//desert/willpower = 2
			//mountains/strength = 3
			//volcano/intelligence = 4
			//snow plains/charisma = 5
			//shrublands/dexterity = 6
			//savanna/constitution = 7
			
			if(last_choice_id == FPalace_helper.sex_appeal_id){
				player.new_location(world.get_starting_room(0),true);
			}else if(last_choice_id == FPalace_helper.wis_id){
				player.new_location(world.get_starting_room(1),true);
			}else if(last_choice_id == FPalace_helper.will_id){
				player.new_location(world.get_starting_room(2),true);
			}else if(last_choice_id == FPalace_helper.str_id){
				player.new_location(world.get_starting_room(3),true);
			}else if(last_choice_id == FPalace_helper.int_id){
				player.new_location(world.get_starting_room(4),true);
			}else if(last_choice_id == FPalace_helper.dex_id){
				player.new_location(world.get_starting_room(6),true);
			}else if(last_choice_id == FPalace_helper.cha_id){
				player.new_location(world.get_starting_room(5),true);
			}else if(last_choice_id == FPalace_helper.con_id){
				player.new_location(world.get_starting_room(7),true);
			}else{
				player.new_location(world.get_starting_room(Math.round(Math.random()*7)),true);
			}			
			
			player.location.player_found();
									
			//player.apply_affect_by_id(FPalace_helper.max_hp_id,90,0,null,Body.change_stats_total);
			//player.apply_affect_by_id(FPalace_helper.str_id,20,0,null,Body.change_stats_total);
			//player.apply_affect_by_id(FPalace_helper.lust_id,30,0,null,Body.change_stats_total);
			//player.apply_affect_by_id(FPalace_helper.dex_id,20,0,null,Body.change_stats_total);
			
			
			/*
			player.set_character_class(FPalace_classes.cclass_martial_artist());
			player.set_xp(400000);
			player.set_character_class(FPalace_classes.cclass_barbarian());
			player.set_xp(400000);
			player.set_character_class(FPalace_classes.cclass_sword_dancer());
			player.set_xp(400000);
			player.set_character_class(FPalace_classes.cclass_spellsword());
			player.set_xp(400000);
			player.set_character_class(FPalace_classes.cclass_viking());
			player.set_xp(400000);
			player.set_character_class(FPalace_classes.cclass_gladiator());
			player.set_xp(400000);
			player.set_character_class(FPalace_classes.cclass_warrior());
			player.set_xp(400000);
			player.set_character_class(FPalace_classes.cclass_dragoon());
			player.set_xp(400000);
			player.set_character_class(FPalace_classes.cclass_pirate());
			player.set_xp(400000);
			player.set_character_class(FPalace_classes.cclass_con_artist());
			player.set_xp(400000);
			player.set_character_class(FPalace_classes.cclass_spellthief());
			player.set_xp(400000);
			player.set_character_class(FPalace_classes.cclass_ranger());
			player.set_xp(400000);
			player.set_character_class(FPalace_classes.cclass_ninja());
			player.set_xp(400000);
			player.set_character_class(FPalace_classes.cclass_thief());
			player.set_xp(400000);
			player.set_character_class(FPalace_classes.cclass_fighter());
			player.set_xp(400000);
			player.set_character_class(FPalace_classes.cclass_soldier());
			player.set_xp(400000);
			player.set_character_class(FPalace_classes.cclass_mercenary());
			player.set_xp(400000);
			player.set_character_class(FPalace_classes.cclass_geomancer());
			player.set_xp(400000);
			player.set_character_class(FPalace_classes.cclass_paladin());
			player.set_xp(400000);
			player.set_character_class(FPalace_classes.cclass_grappler());
			player.set_xp(400000);
			player.set_character_class(FPalace_classes.cclass_knight());
			player.set_xp(400000);			
			player.set_character_class(FPalace_classes.cclass_dominatrix());
			player.set_xp(400000);
			player.set_character_class(FPalace_classes.cclass_sexmagus());
			player.set_xp(400000);
			player.set_character_class(FPalace_classes.cclass_fertility_nun());
			player.set_xp(400000);
			player.set_character_class(FPalace_classes.cclass_warmage());
			player.set_xp(400000);
			player.set_character_class(FPalace_classes.cclass_chronomancer());
			player.set_xp(400000);
			player.set_character_class(FPalace_classes.cclass_necromancer());
			player.set_xp(400000);
			player.set_character_class(FPalace_classes.cclass_summoner());
			player.set_xp(400000);
			player.set_character_class(FPalace_classes.cclass_sorcerer());
			player.set_xp(400000);
			player.set_character_class(FPalace_classes.cclass_wizard());
			player.set_xp(400000);
			player.set_character_class(FPalace_classes.cclass_witch());
			player.set_xp(400000);
			player.set_character_class(FPalace_classes.cclass_crusader());
			player.set_xp(400000);
			player.set_character_class(FPalace_classes.cclass_druid());
			player.set_xp(400000);
			player.set_character_class(FPalace_classes.cclass_medic());
			player.set_xp(400000);
			player.set_character_class(FPalace_classes.cclass_oracle());
			player.set_xp(400000);
			player.set_character_class(FPalace_classes.cclass_cleric());
			player.set_xp(400000);
			player.set_character_class(FPalace_classes.cclass_monk());
			player.set_xp(400000);
			player.set_character_class(FPalace_classes.cclass_prophet());
			player.set_xp(400000);
			player.set_character_class(FPalace_classes.cclass_duelist());
			player.set_xp(400000);		
			player.set_character_class(FPalace_classes.cclass_assassin());
			player.set_xp(400000);		
			player.set_character_class(FPalace_classes.cclass_scholar());
			player.set_xp(400000);		
			player.set_character_class(FPalace_classes.cclass_gambler());
			player.set_xp(400000);		
			player.set_character_class(FPalace_classes.cclass_bibliomancer());
			player.set_xp(400000);		
			player.set_character_class(FPalace_classes.cclass_occultist());
			player.set_xp(400000);		
			player.set_character_class(FPalace_classes.cclass_archeologist());
			player.set_xp(400000);		
			player.set_character_class(FPalace_classes.cclass_swashbuckler());
			player.set_xp(400000);		
			player.set_character_class(FPalace_classes.cclass_bard());
			player.set_xp(400000);		
			player.set_character_class(FPalace_classes.cclass_lord());
			player.set_xp(400000);		
			player.set_character_class(FPalace_classes.cclass_diplomat());
			player.set_xp(400000);		
			player.set_character_class(FPalace_classes.cclass_beastmaster());
			player.set_xp(400000);		
			player.set_character_class(FPalace_classes.cclass_missionary());
			player.set_xp(400000);		
			player.set_character_class(FPalace_classes.cclass_spy());
			player.set_xp(400000);		
			player.set_character_class(FPalace_classes.cclass_gene_splice());
			player.set_xp(400000);
			player.set_character_class(FPalace_classes.cclass_fleshstealer());
			player.set_xp(400000);
			player.set_character_class(FPalace_classes.cclass_stripper());
			player.set_xp(400000);
			player.set_character_class(FPalace_classes.cclass_alchemist());
			player.set_xp(400000);			
			*/			
			player.set_character_class(FPalace_classes.cclass_adventurer());
			
			player.skills.set_skill_value(player, FPalace_skills.adventure_id, 1);
			player.skills.set_skill_value(player, FPalace_skills.fight_id, 1);
			player.skills.set_skill_value(player, FPalace_skills.knowledge_id, 1);
			player.skills.set_skill_value(player, FPalace_skills.people_id, 1);
			
			//player.skills.set_skill_value(player, FPalace_skills.item_effects_id, 5);	
			
			//player.personality.add_recipe(FPalace_items.white_blouse());
			
			player.set_xp(9);
			
			//player.personality.set_job(FPalace_classes.job_prostitute(),player);
						
			var main_quest:Quest = new Quest();
			main_quest.set_name("Getting Home");
			main_quest.new_objective("Figure out where you are",Quest.talk_action,null);
			main_quest.add_conversation_topic(FPalace_topics.topic_help(main_quest),0);
			
			main_quest.new_objective("Find Century City",Quest.area_action,[10/*Century City Area ID*/]);
			
			main_quest.new_objective("Learn about the Lost",Quest.talk_action,null);
			
			player.personality.new_objective(main_quest, player);
			
			player.set_busy();
			player.tick();
			
			player.reset_stats();
			player.body.check_state(player);
			
			//player.char_sprite_id = FPalace_helper.animated_test_img;
			
			var item:Item;			
			//item = FPalace_items.horny_chastity_belt();
			//item = FPalace_items.Tent();
			//item = FPalace_items.Stallion_Stout();
			//item = FPalace_items.bovine_milk_jug();
			//item = FPalace_items.caudata_egg();
			//item = FPalace_items.baby_berry();
			//item = FPalace_items.iceberg_lettuce();
			//item = FPalace_items.pleni_chili();
			//item = FPalace_items.baggy_bluejeans();
			//item = FPalace_items.futa_cola();
			//item = FPalace_items.hermpire_ring();
			//item = FPalace_items.be_cock_ring();
			//item = FPalace_items.manyuu_blade();
			//item = FPalace_items.naughty_pictures();
			//item = FPalace_items.bottled_abortion();
			//item = FPalace_items.pregnaid();
			//item = FPalace_items.bronze_shortsword_recipe();
			//item = FPalace_items.strong_grip();
			//item = FPalace_items.maternity_bra();
			//item = FPalace_items.reduction_salve();
			//item = FPalace_items.lactaid();
			//item = FPalace_items.mighty_whities();
			//item = FPalace_items.habit();
			//item = FPalace_items.bronze_gauntlets();
			//item = FPalace_items.goggles();
			//item = FPalace_items.spandex_suit();
			//item = FPalace_items.whip();
			//item = FPalace_items.training_bra();
			//item = FPalace_items.jutting_jockstrap();
			//item = FPalace_items.queens_cock_ring();
			//item = FPalace_items.prosperous_one_piece();
			//item = FPalace_items.rapunzels_ribbon();
			//item = FPalace_items.booty_thong();			
			//item = FPalace_items.girdle_masculin_feminin();
			//item = FPalace_items.Spam_PLength();
			//item = FPalace_items.Fem_BreastSize();
			//item = FPalace_items.maidens_wand();
			//item = FPalace_items.weight_loss_pills();
			//item = FPalace_items.mushrooms()
			//item = FPalace_items.catnip();
			//item = FPalace_items.textiles();
			//item = FPalace_items.Prothg_wine();
			//item = FPalace_items.fancy_pee_cap();
			//item = FPalace_items.bronze_salet();
			//item = FPalace_items.knife();
			/*
			item = new Item("Test");
			item.set_dropped_description("a test item sits lazily on the ground here");
			item.set_inventory_description("test");
			item.set_use_description("</n> smashes the test.");
			item.set_image_id(FPalace_helper.unknown_img);
			item.set_identify_difficulty(2);
			item.add_effect(FPalace_helper.cum_volume_id, -1000);
			item.set_value(10);
			*/
			//player.add_to_possessions(item);
			
			//var temp_npc:Character;
			//temp_npc = FPalace_npcs.FPalace_Librarian().gen_char();
			//temp_npc = FPalace_npcs.female_elf().gen_char();
			//temp_npc = FPalace_npcs.cat_girl().gen_char();
			//temp_npc = FPalace_npcs.futa_high_Female().gen_char();
			//temp_npc = FPalace_npcs.futa_high_Male().gen_char();
			//temp_npc = FPalace_npcs.Amazonian_Isle_Amazon().gen_char();
			//temp_npc = FPalace_npcs.spider_girl().gen_char();
			//temp_npc = FPalace_npcs.goo_girl().gen_char();
			//temp_npc = FPalace_npcs.FPalace_Artist_Linty();
			//temp_npc = FPalace_npcs.goo_slime().gen_char();
			//temp_npc = FPalace_npcs.century_city_brian();
			//temp_npc = FPalace_npcs.century_city_anna();
			//temp_npc = FPalace_npcs.century_city_zoe();
			//temp_npc = FPalace_npcs.century_city_catherine();
			
			//temp_npc.personality.new_relationship(player,100);
			//player.personality.new_relationship(temp_npc,100);
			//temp_npc.new_location(player.location,true);
			/*
			player.party = new Party();
			player.party.add_member(player);
			player.party.add_member(temp_npc);
			*/
						
			output = "\"Well...\" the gypsy begins, a look of concern upon her face, \"Here is your fortune.\" She pauses again, lowering her voice, and forcing you to lean in to hear. \n\n"
			+ "\"You will lead an interesting life....\" The look of pain that crosses the old womans age distorted face confuses you at first, but it changes and morphs rapidly into a strange seething anger. \"OUT!\" The yell nearly knocks you from your chair, as you find yourself jerking backward.\n\n"
			+"\"I can't have someone like you here! OUT!\" The gypsy yells again, and you are slathered in spittle and drool as it leaps from her mouth. Your welcome clearly over-stayed, you acquiesce to the womans demands, quickly shuffling out of the crowded cart. It cost nothing, but you still can't help but feel cheated by the strange experience as you walk home.\n\n"
			+"The strange experience sticks with you through the rest of the day, and as you find yourself falling asleep the gypsies fortune weighs on your mind. A strange nightmare filled sleep envelopes you, the terrible gypsies strange demeanor and gestures amplified and made more monstrous by recollection, until you find yourself leaping from sleep and back to reality, only to find yourself no longer where you fell asleep, the searing light of the sun beating upon your freshly opened eyes. \n\nYou're not quite sure what's going on. ";
			//look_flag = true;
			
			create_mini_map();
			
			trace("(MAIN)play started");			
		}
		
		public function create_legend_mark(s:String = null):void{
			if(player.location != null && player.location.area != null){
				if(s == null){
					Look_button.enabled = false;
					Inventory_button.enabled = false;
					appearance.enabled = false;
					status.enabled = false;
					skill_button.enabled = false;
					map_button.enabled = false;
					wait_button.enabled = false;
					save_button.enabled = false;
					input_text.text = "Custom";
					input_text.restrict = "a-zA-Z '";
					input_text.maxChars = 0;
					input_text.x = text_field.x + 10;//text_field.textField.textWidth;
					input_text.y = text_field.y + input_text.height;
					input_text.addEventListener(KeyboardEvent.KEY_UP, done_legend_press);
					function done_legend_press(e:KeyboardEvent):void{
						if(e.keyCode == combat_confirm_keycode){
							var new_e:TextEvent = new TextEvent(TextEvent.LINK, false, false, "new_legend_mark,-1");								
							linkHandler(new_e);
							input_text.removeEventListener(KeyboardEvent.KEY_UP, done_legend_press);
						}
					}
					input_text.visible = true;
					input_text.enabled = true;
					output = "Insert Custom Label:\n\n\n<font color='#0000FF'><a href=\"event:new_legend_mark,-1\">Done</a></font>";
				}else{
					if(s == "-1") s = input_text.text;
					input_text.visible = false;
					input_text.enabled = false;
					Look_button.enabled = true;
					Inventory_button.enabled = true;
					appearance.enabled = true;
					status.enabled = true;
					skill_button.enabled = true;
					map_button.enabled = true;
					wait_button.enabled = true;
					save_button.enabled = true;
					output = player.location.area.create_legend_mark(player,s);
				}
			}
		}
		
		public function remove_legend_mark():void{
			if(player.location != null && player.location.area != null){				
				output = player.location.area.remove_legend_mark(player);								
			}
		}
		
		public function show_journal():void{
			var ret:String = "";
			var i:int = 0;
			for(i;i<player.personality.objectives.length;i++){
				ret += player.personality.objectives[i].get_objectives(player) + "\n";
			}
			
			output = ret;
		}

		public function open(i:String):void{
			output = player.open(int(i));
		}

		public function inspect(i:String, k:String):void{
			output = player.inspect(int(i),int(k));
		}

		public function go_to_new_room(i:String):void{
			//output = "";
			move_to_id = int(i);
			world_tick();
		}

		public function look(i:int = -1,j:int = 0):void{
			output = player.look(i,j);
			if(i != -1){
				var temp_char:Character = player.location.get_content(i) as Character;
				var temp_clip:MovieClip = new MovieClip();
				temp_clip.addChild(temp_char.draw_self(714,440, player,true));
				this.addChild(temp_clip);
			}
		}

		public function inventory(i:int = 0):void{
			//want to include the character.draw_self
			var temp_clip:MovieClip = new MovieClip();
			if(player.party == null){			
				output = player.inventory();
				temp_clip.addChild(player.draw_self(714,440, null,true));
				this.addChild(temp_clip);
			}else{
				var s:String = "";
				if(i+1<player.party.members.length){
					s += "<font color='#0000FF'><a href=\"event:inventory,"+(i+1)+"\">&gt;&gt;</a></font>\n";
				}
				
				s+= player.party.members[i].inventory() + "\n";
				temp_clip.addChild(player.party.members[i].draw_self(714,440,player,true));
				this.addChild(temp_clip);
				
				if(i>0){
					s += "<font color='#0000FF'><a href=\"event:inventory,"+(i-1)+"\">&lt;&lt;</a></font>";
				}
				output = s;
			}
		}

		public function pick_up(i:String):void{
			output = player.pick_up(int(i));
		}

		public function loot(i:String, k:String):void{
			output = player.loot(int(i),int(k));
		}

		public function self_appearance(i:int = 0):void{
			//want to include the character.draw_self
			var temp_clip:MovieClip = new MovieClip();
			if(player.party == null){			
				output = player.appearance(1);
				temp_clip.addChild(player.draw_self(714,440, null,true));
				this.addChild(temp_clip);
			}else{
				var s:String = "";
				if(i+1<player.party.members.length){
					s += "<font color='#0000FF'><a href=\"event:appearance,"+(i+1)+"\">&gt;&gt;</a></font>\n";
				}
				
				s+= player.party.members[i].appearance(1) + "\n";
				temp_clip.addChild(player.party.members[i].draw_self(714,440,player,true));
				this.addChild(temp_clip);
				
				if(i>0){
					s += "<font color='#0000FF'><a href=\"event:appearance,"+(i-1)+"\">&lt;&lt;</a></font>";
				}
				
				output = s;
			}
		}

		public function action(i:String, k:String, j:String = null):void{
			output = player.fire_action(int(i), int(k), j);
			world_tick();
		}

		public function challenge(i:String, k:String, j:String, l:String = null, m:Array = null):void{
			var s:String = "";
			if(player == null) return;
			if(player.location == null){
				death();
				return;
			}
			var start_locat:Room = player.location;
			s = player.fire_challenge(int(i), int(k), int(j), l, m) + "\n";
			
			if (s.toUpperCase().indexOf("<A HREF") > 0){
				save_button.enabled = false;
				appearance.enabled = false;
				status.enabled = false;
				skill_button.enabled = false;
				newgame_button.enabled = false;
				Inventory_button.enabled = false;
				map_button.enabled = false;
				Look_button.enabled = false;
				wait_button.enabled = false;
			}else{
				if(player.location != start_locat){
					look_flag = true;
				}
				save_button.enabled = true;
				appearance.enabled = true;
				status.enabled = true;
				skill_button.enabled = true;
				newgame_button.enabled = true;
				Inventory_button.enabled = true;
				map_button.enabled = true;
				Look_button.enabled = true;
				wait_button.enabled = true;
				world_tick();
			}
			
			output = s;
		}
		
		public function combat(i:String, k:String, j:String, l:String = null, m:Array = null):void{
			//disable and make the existing gui invisible
			var count:int = 0;
			for(count;count<this.numChildren;count++){
				var temp_s:Object = this.getChildAt(count);
				temp_s.visible = false;
				temp_s.enabled = false;
			}
			
			//make the combat_gui visible
			if(int(j) >= 0){
				var temp_char:Character = player.location.get_content(int(j)) as Character;
				if(temp_char != null && temp_char.busy <= 1)temp_char.set_busy();
			}
			var combat_mc:MovieClip = null;
			try{
				combat_mc = Main_gui.combat_gui(player, int(i),int(k),int(j), this, l, m);
			}catch(e:Error){
				trace("Combat Error: " + e.getStackTrace());
			}finally{
				
			}
			
			var re_enable:Boolean = false;
			if(combat_mc != null){
				this.addChild(combat_mc);
			}else{
				re_enable = true;
			}			
			
			if(player.location != null){
				if(player.location.cm != null){
					if(player.location.cm.get_init(player) == player.location.cm.current_int && int(k) == -1 && int(j) == -1){
						world_tick(1);
					}
				}
			}
			
			//need to check if combat is active for the player/player party
			if(player.location != null){
				if(player.location.cm != null){
					if (player.location.cm.active_combat()){
						save_button.enabled = false;
						appearance.enabled = false;
						status.enabled = false;
						skill_button.enabled = false;
						newgame_button.enabled = false;
						Inventory_button.enabled = false;
						map_button.enabled = false;
						Look_button.enabled = false;
						wait_button.enabled = false;
					}else{
						re_enable = true;
					}
				}else{
					re_enable = true;
				}
			}else{
				re_enable = true;
			}
			
			if(re_enable){
				reenable_gui();
			}
			
		}
		
		public function reenable_gui():void{
			var count:int = 0;
			for(count;count<this.numChildren;count++){
				var temp_s:Object = this.getChildAt(count);
				if( ! (temp_s is ProgressBar)){
					temp_s.visible = true;
					temp_s.enabled = true;
				}
			}
			input_text.visible = false;
			input_text.enabled = false;
		}
		
		public function death():void{
			save_button.enabled = false;
			appearance.enabled = false;
			status.enabled = false;
			skill_button.enabled = false;
			Inventory_button.enabled = false;
			map_button.enabled = false;
			Look_button.enabled = false;
			wait_button.enabled = false;
			input_text.visible = false;
			input_text.enabled = false;
			newgame_button.enabled = true;
			newgame_button.label = "New Game";
			output = "You have died.";
		}
		
		public function create_mini_map(skill_char:int = -1):void{
			if(player != null && player.location != null && player.location.area != null){
				if(mini_map == 1){
					this.addChild(Main_gui.make_minimap(player,this));
				}else if(mini_map == 2){
					this.addChild(Main_gui.make_minimap(player,this,2));
				}
				if(status.enabled){
					if(skill_char == -1){
						this.addChild(Main_gui.make_skillbar(player,this));
					}else{
						this.addChild(Main_gui.make_skillbar(player.party.members[skill_char],this));
					}
				}
			}
		}
		
		public function world_map():void{
			if (player.location.area != null)
			{
				text_field.visible = false;
				this.addChildAt(Main_gui.make_map(world.get_map(player.location.area), this), 0);
				//see cleanup function in the actual display object for how this is removed
			}
			else
			{
				output = "";
			}
		}

		public function map(i:String = null):void{
			if(i != null){
				text_field.visible = false;
				this.addChildAt(Main_gui.make_map(player.get_area_map(int(i)), this), 0);
			}else if(player.location.area != null){
				text_field.visible = false;
				this.addChildAt(Main_gui.make_map(player.get_area_map(), this), 0);
				//see cleanup function in the actual display object for how this is removed
			}else{
				output = "";
			}
		}

		public function equip(i:String,k:String, j:String = null, l:String = null):void{
			if(player.party == null){
				output = player.equip(player.possessions[int(i)], int(j));
			}else{
				if(player.party.members[int(k)] != player)player.set_busy();
				output = player.party.members[int(k)].equip(player.party.members[int(k)].possessions[int(i)], int(j), int(l));
			}
			world_tick();
		}
		
		public function use_item(i:String, k:String = null, j:String = null, l:String = null, num_to_move:String = null):void{	
			var item_image_id:int = -1;
			var temp_clip:MovieClip;
			if(player.party == null){
				//draw the item image...
				item_image_id = player.possessions[int(i)].get_image_id();				
				if(k != null){
					if(num_to_move != null){
						output = player.use_item(int(i), int(k),-1,int(num_to_move));
					}else{
						output = player.use_item(int(i), int(k));
					}
				}else{
					
					output = player.use_item(int(i));
				}
				output = player.sanitize(output,player);
			}else{
				//draw the item image...
				item_image_id = player.party.members[int(j)].possessions[int(i)].get_image_id();
				
				if(k!= null){
					if(player.party.members[int(j)] != player)player.set_busy();
					if(l == null){
						if(num_to_move != null){
							output = player.party.members[int(j)].use_item(int(i), int(k), -1, int(num_to_move));
						}else{
							output = player.party.members[int(j)].use_item(int(i), int(k));
						}
					}else{
						if(num_to_move != null){
							output = player.party.members[int(j)].use_item(int(i), int(k), int(l),int(num_to_move));
						}else{
							output = player.party.members[int(j)].use_item(int(i), int(k), int(l));
						}
					}
				}else{
					output = player.party.members[int(j)].use_item(int(i));
				}
				output = player.party.members[int(j)].sanitize(output, player);
			}
			
			if(item_image_id >= 0){
				temp_clip = new MovieClip();
				temp_clip.addChild(FPalace_helper.get_image_by_id(item_image_id));
				temp_clip.scaleX = 100/temp_clip.width;
				temp_clip.scaleY = 100/temp_clip.height;
				temp_clip.x = 663.45;
				temp_clip.y = 426.45;
				this.addChild(temp_clip);
			}
			
			world_tick();
		}

		public function unequip(i:String,k:String):void{
			world_tick();
			if(player.party == null){
				output = player.unequip(player.get_equip_by_count(int(i)));
			}else{
				if(player.party.members[int(k)] != player)player.set_busy();
				output = player.party.members[int(k)].unequip(player.party.members[int(k)].get_equip_by_count(int(i)));
			}
		}		
		
		public function hold(i:String,k:String, j:String = null, l:String = null):void{	
			world_tick();
			if(player.party == null){
				output = player.hold(player.possessions[int(i)], int(j), int(l));
			}else{
				if(player.party.members[int(k)] != player)player.set_busy();
				output = player.party.members[int(k)].hold(player.party.members[int(k)].possessions[int(i)], int(j), int(l));
			}
		}

		public function unhold(i:String,k:String):void{
			if(player.party == null){
				output = player.unhold(player.body.parts[int(i)].hold);
			}else{
				if(player.party.members[int(k)] != player)player.set_busy();
				output = player.party.members[int(k)].unhold(player.party.members[int(k)].body.parts[int(i)].hold);
			}
			world_tick();
		}
		
		public function alchemy(i:String,j:String):void{	
			output = player.alchemy(i,j);
			world_tick();
		}
		
		public function enchant(i:String,j:String):void{
			output = player.enchant(i,j);
			world_tick();
		}
		
		public function sewing(i:String,j:String):void{
			output = player.sewing(i,j);
			world_tick();
		}
		
		public function dismantling(i:String):void{			
			output = player.dismantle(i);
			world_tick();
		}
		
		public function crafting(i:String):void{			
			output = player.craft(i);
			world_tick();
		}
		
		public function alchemy_gui(i:String, j:String):void{
			if (player.possessions[int(i)] != null && player.possessions[int(j)] != null){
				text_field.visible = false;
				var temp_mv:MovieClip = Main_gui.alchemy_minigame(player, i, j, this);
				if(temp_mv != null)this.addChildAt(temp_mv, 0);
				//see cleanup function in the actual display object for how this is removed
				Look_button.enabled = false;
				Inventory_button.enabled = false;
				appearance.enabled = false;
				status.enabled = false;
				skill_button.enabled = false;
				map_button.enabled = false;
				save_button.enabled = false;
				wait_button.enabled = false;
				save_button.enabled = false;
				newgame_button.enabled = false;
				options_button.enabled = false;
			}else{
				output = "";
			}
		}
		
		public function quickmove(room_id:int, area_id:int):void{
			var distance:int;
			var ret:String = "";
			if(area_id == player.location.area.world.get_area_id(player.location.area)){
				var start_loc:Array = player.location.area.find_room(player.location);
				var end_loc:Array = player.location.area.find_room(player.location.area.room_list[room_id]);
				distance = Math.round(Math.sqrt(Math.pow(start_loc[0] - end_loc[0], 2) + Math.pow(start_loc[1] - end_loc[1], 2) + Math.pow(start_loc[2] - end_loc[2], 2)));
				player.set_busy(distance*player.location.area.move_time_mod);				
				
				ret = player.new_location(player.location.area.room_list[room_id]);
			}else{
				distance = world.get_distance(area_id, player.location.area.world.get_area_id(player.location.area));
				player.set_busy(distance*50);
				ret = player.new_location(player.location.area.world.areas[area_id].room_list[room_id]);
			}
			world_tick();
			output = ret;
			look_flag = true;
		}
		
		public function talk(i:String, j:String, k:String, l:String = null, m:Array = null):void{
			var temp_char:Character = player.location.get_content(int(i)) as Character;
			if(temp_char != null){
				if(m != null){
					output = temp_char.talk(player, int(j), int(k), int(l), m);
				}else if(l != null){
					output = temp_char.talk(player, int(j), int(k), int(l));
				}else{
					output = temp_char.talk(player, int(j), int(k));
				}
				output = temp_char.sanitize(player.sanitize(output,player),player);
				var temp_clip:MovieClip = new MovieClip();
				if(temp_char.location == player.location)temp_clip.addChild(temp_char.draw_34self(714,440,player));
				temp_clip.addChild(player.draw_34self(174,440,player,true));
				this.addChildAt(temp_clip,this.getChildIndex(text_field));				
			}
			world_tick();
		}
		
		public function buy(i:int, k:int = -1,num:int = 1,show_desc:int = -1):void{
			output = player.buy(i,k,num,show_desc);
			world_tick();
		}
		
		public function sell(i:int, k:int = -1,num:int = 1):void{
			output = player.sell(i,k,num);
			world_tick();
		}
		
		private function onEnterFrame(e:Event):void{
			//some actions (looking at the combat manager here) may cause a higher busy count then desired...
			if(player != null){
				if(player.location != null && player.location.get_background_img() != background_img_id){
					this.graphics.clear();
					background_img_id = player.location.get_background_img();
					if(background_img_id >= 0){
						var temp:Bitmap = FPalace_helper.get_image_by_id(background_img_id);
						var matrix:Matrix = new Matrix(); 
     					matrix.scale(800/temp.width, 600/temp.height);
						this.graphics.beginBitmapFill(temp.bitmapData,matrix);
					}else{
						this.graphics.beginFill(Main_gui.combat_bg_colour);
					}
					this.graphics.drawRect(0,0,800,600);
					this.graphics.endFill();
				}
				var start_busy:int = player.busy;
				if(player.busy > 0 && world_gen_progressbar.value < 100){
					try{
						player.tick();
						if(player.location != null && player.location.area != null)world.tick(player.location.area, player);
					}catch(err:Error){
						trace("World Error: " + err.getStackTrace());
					}finally{
						
					}
					if(player.location != null)output += player.location.get_last_tick();
					var in_combat:Boolean = false;
					if(player.party == null){
						if (player.location != null && player.location.cm != null && player.location.cm.active_combat() && player.location.cm.get_init(player) > -1 && player.get_combat_status()){
							in_combat = true;										
						}
					}else{
						in_combat = player.party.in_combat();
					}
					
					if(player.busy < start_busy){
						world_gen_progressbar.value += world_gen_progressbar.minimum;
						world_gen_progressbar.setProgress(world_gen_progressbar.value, 100);
						if(world_gen_progressbar.value >= 99.99999999){
							if(wait_button.label == "Stop waiting"){
								wait_button.enabled = Look_button.enabled;
								wait_button.label = "Wait";
							}
							if(!in_combat){
								Look_button.enabled = true;
								Inventory_button.enabled = true;
								appearance.enabled = true;
								status.enabled = true;
								skill_button.enabled = true;
								map_button.enabled = true;
								wait_button.enabled = true;
								newgame_button.enabled = true;
								save_button.enabled = true;
								load_button.enabled = true;
								options_button.enabled = true;
								text_field.enabled = true;
								if(player.party == null){
									output = player.sanitize(player.get_challenge_output(), player) + output;
								}else{
									output = player.party.get_party_character_output(player) + output;
								}
							}else{
								//look_flag = true;
							}
							world_gen_progressbar.visible = false;
							world_gen_progressbar.enabled = false;
						}						
					}else{
						if(!in_combat){
							if(player.party == null){
								output = player.sanitize(player.get_challenge_output(), player) + output;
							}else{
								output = player.party.get_party_character_output(player) + output;
							}
							if(player.previous_action_output != ""){
								output += player.previous_action_output;
								player.previous_action_output = "";
								look_flag = false;
							}
							Look_button.enabled = true;
							Inventory_button.enabled = true;
							appearance.enabled = true;
							status.enabled = true;
							skill_button.enabled = true;
							map_button.enabled = true;
							wait_button.enabled = true;
							newgame_button.enabled = true;
							save_button.enabled = true;
							load_button.enabled = true;
							options_button.enabled = true;
						}else{
							look_flag = true;
						}
						if(wait_button.label == "Stop waiting"){
							wait_button.enabled = Look_button.enabled;
							wait_button.label = "Wait";
						}
						player.busy = 0;
						world_gen_progressbar.value = 100;
						world_gen_progressbar.visible = false;
						world_gen_progressbar.enabled = false;
						text_field.enabled = true;
						cleanup_gui();
						create_mini_map();
					}
				}else{
					var ret_string:String = output;
					output = "";
					
					if(player.location == null){
						if(player.party == null){
							text_field.htmlText = replace_html(capitalize(player.sanitize(player.get_challenge_output() + ret_string,player)));
						}else{
							text_field.htmlText = replace_html(capitalize(player.party.get_party_character_output(player) + ret_string));
						}
						player = null;
						Look_button.enabled = false;
						newgame_button.enabled = false;
						Inventory_button.enabled = false;
						appearance.enabled = false;
						status.enabled = false;
						skill_button.enabled = false;
						map_button.enabled = false;
						if(wait_button.label != "Wait")wait_button.label = "Wait";
						wait_button.enabled = false;
						//movieClip_1.enabled = false;
						save_button.enabled = false;
						return;
					}
					
					if(look_flag){
						look_flag = false;
						ret_string += player.look(-1,0);
						if(player.busy > start_busy){//pretty sure you just got attacked...
							Look_button.enabled = false;
							newgame_button.enabled = false;
							Inventory_button.enabled = false;
							appearance.enabled = false;
							status.enabled = false;
							skill_button.enabled = false;
							map_button.enabled = false;
							if(wait_button.label == "Wait")wait_button.enabled = false;
							//movieClip_1.enabled = false;
							save_button.enabled = false;
						}
					}
					
					if(player.previous_action_output != ""){
						ret_string += player.previous_action_output;
						trace("(Main)Got previous action_output here");
						player.previous_action_output = "";	
					}
					
					if(move_to_id >= 0){
						var start_loc:Room = player.location;
						try{
							output += player.go_to_new_location(move_to_id,1,1);
						}catch(err:Error){
							trace("Player move Error:" + err.getStackTrace())
						}finally{
							
						}
						move_to_id = -1;
						
						if(start_loc != player.location){
							if(mini_map > 0){
								cleanup_gui();
								create_mini_map();
							}
							look_flag = true;
						}
						world_tick();
					}
					
					if(ret_string != ""){
						text_field.htmlText = replace_html(capitalize(ret_string));
					}
					
					if(text_field.enabled == false && player.busy == 0){
						//trace("(Main)Uhh, things are a little... messed up");
					}
					
				}
			}else{
				if(output != null && output != ""){
					text_field.htmlText = replace_html(capitalize(output));
					output = "";
				}
			}
			
			var i:int = 0;
			var curr_height:Number = text_field.textHeight;
			for(i;i<text_field.numChildren;i++){
				if(text_field.getChildAt(i) is MovieClip){
					if(text_field.getChildAt(i).y == 0 && text_field.getChildAt(i).name == "null"){
						text_field.getChildAt(i).y = curr_height + 10;
						text_field.getChildAt(i).name = "1";
						curr_height += text_field.getChildAt(i).height + 10;
					}else{
						if(int(text_field.getChildAt(i).name) != Math.round(text_field.verticalScrollBar.scrollPosition)){
							text_field.getChildAt(i).y -= (int(textfield_text_format.size)+3) * text_field.verticalScrollBar.lineScrollSize * (Math.round(text_field.verticalScrollBar.scrollPosition) - int(text_field.getChildAt(i).name));
							text_field.getChildAt(i).name = String(Math.round(text_field.verticalScrollBar.scrollPosition));
						}
					}
				}
			}
			while(text_field.textHeight < curr_height)text_field.htmlText += "\n";
		}
		
		public function replace_html(s:String):String{
			var ret:String = s;
			while(ret.indexOf("<img")>=0){
				var img_string:String = ret.substr(ret.indexOf("<img"), ret.indexOf("/>",ret.indexOf("<img")) - ret.indexOf("<img") + 2);
				var img_id:String = img_string.substr(img_string.indexOf("id=")+3, img_string.indexOf("/>") - (img_string.indexOf("id=")+3));
				var temp_clip:MovieClip = new MovieClip();
				temp_clip.addChild(FPalace_helper.get_image_by_id(int(img_id)));
				
				//need to make the text_fields scroll bar impact the image
				//work is done in onEnterFrame. Depends on clip names
				temp_clip.name = "null";
				
				//need to make parts of the image that extend past the text_field barriers are invisible.
				var mask_sprite:Sprite = new Sprite();
				mask_sprite.graphics.beginFill(Main_gui.combat_bg_colour);
				mask_sprite.graphics.drawRect(text_field.x,text_field.y, text_field.width, text_field.height);
				mask_sprite.graphics.endFill();
				temp_clip.mask = mask_sprite;
				
				if(temp_clip.width > (text_field.width - text_field.verticalScrollBar.width)){
					temp_clip.scaleY = (text_field.width - text_field.verticalScrollBar.width)/temp_clip.width;
					temp_clip.scaleX = (text_field.width - text_field.verticalScrollBar.width)/temp_clip.width;
				}
				
				text_field.addChild(temp_clip);
				
				ret = ret.replace(img_string,"");
			}
			text_field.htmlText = "&nbsp;";
			var nbsp_width:Number = text_field.textWidth;
			while(ret.indexOf("<table>")>=0){
				ret = ret.replace("<table>","");
				
				var rows:Array = new Array();
				var row_count:int = 0;
				var max_column:int = 2;
				while(ret.indexOf("<tr>")>=0&&ret.indexOf("<tr>")<ret.indexOf("</table>")){
					var column_count:int = 0;
					while(ret.indexOf("<tc>")>=0 && ret.indexOf("<tc>")<ret.indexOf("</tr>")){
						  if(rows[row_count] == null)rows[row_count] = new Array();
						  rows[row_count][column_count] = ret.substr(ret.indexOf("<tc>")+4, ret.indexOf("</tc>") - (ret.indexOf("<tc>")+4));
						  ret = ret.replace("<tc>",":q!");
						  ret = ret.replace("</tc>","");
						  column_count++;
					}
					if(max_column<column_count)max_column = column_count;
					
					column_count = 0;
					var target_width:Number = (text_field.width - 100)/max_column;
					for(column_count;column_count<rows[row_count].length;column_count++){
						var origin_text:String = rows[row_count][column_count];
						text_field.htmlText = rows[row_count][column_count];
						var guess_count:int = Math.floor((target_width - text_field.textWidth)/nbsp_width);
						var space_count:int = 0;
						for(space_count;space_count<guess_count;space_count++){
							rows[row_count][column_count] = rows[row_count][column_count] + "&nbsp;";
						}
						
						//should be replacing the value found in the column with the new value...
						ret = ret.replace(":q!"+origin_text,rows[row_count][column_count]);
						
					}
					
					ret = ret.replace("<tr>","");
					ret = ret.replace("</tr>","\n");
					row_count++;
				}
				
				ret = ret.replace("</table>","");
			}
			
			return ret;
		}
		
		public static function capitalize(s:String):String{
			var ret:String = s;
			
			var myPattern:RegExp = /(\. [a-z])|(\n[a-z])|(! [a-z])|(: [a-z])/g;  
			ret = ret.replace(myPattern, Uppercase);
			
			function Uppercase():String {
				return arguments[0].toUpperCase();
			}
			
			myPattern = /([a-z])/i;
			var ret_start:String = ret.substr(0,1);
			if(ret_start.search(myPattern) >= 0){
				ret = ret_start.toUpperCase() + ret.substr(1,ret.length);
			}
			
			return ret;
		}
		
		public static function get_time(t:int):String{
			var ret:String = "";
			
			if(t >= t1_year){
				if(t/t1_year >= 2){
					ret += Math.round(t/t1_year) + " years";
				}else{
					ret += "a year";
				}
			}else if(t >= t1_month){
				if(t/t1_month >= 2){
					ret += Math.round(t/t1_month) + " months";
				}else{
					ret += "a month";
				}
			}else if(t >= t1_week){
				if(t/t1_week >= 2){
					ret += Math.round(t/t1_week) + " weeks";
				}else{
					ret += "a week";
				}
			}else if(t >= t1_day){
				if(t/t1_day >= 2){
					ret += Math.round(t/t1_day) + " days";
				}else{
					ret += "a day";
				}
			}else if(t >= t1_hour){
				if(t/t1_hour >= 2){
					ret += Math.round(t/t1_hour) + " hours";
				}else{
					ret += "a hour";
				}
			}else if(t >= t30_min){
				ret += "a half hour";
			}else if(t >= t1_min){
				if(t > 1){
					ret += "a couple of minutes"
				}else{
					ret += "a minute";
				}
			}
			
			
			return ret;
		}
		
		public function world_tick(fake_tick:int = 0):void{
			
			if(player != null && world != null){
				
				
				var mySound:Sound = new Sound(); 
				mySound.addEventListener(SampleDataEvent.SAMPLE_DATA, sineWaveGenerator); 
				
				function sineWaveGenerator(event:SampleDataEvent):void{
					var latency:Number = 0;
					if(sound_music_channel != null)latency = ((event.position/44.1) - sound_music_channel.position);
					trace(latency);
					var times_through:int = event.position / 8192;//this times 172.5 gives how many miliseconds have passed
					var curr_time:Number = times_through * 172.5;
					
					var bpm:int = 120;
					
					var quarter_note:Number = (1/bpm) * 60 * 1000;
					
					for ( var c:int=0; c<  8192; c++ ) {
						//see http://www.phy.mtu.edu/~suits/notefreqs.html for note frequencies
						
						//note every 1024 is something greater than 208 beats per minute
						//max note length 8192, and still in excess of 208 beats per minute
							//can use c + event.position to keep longer track... I think... confirmed, but no way to loop... setting event.position buggers things up royally
								//times_through can be used to loop
								
						/*if(c < 1024){
							event.data.writeFloat(Math.sin(  440 * (Number(c+event.position) * Math.PI * 2 /44100.0  )   ));//440Hz = tuning A
							event.data.writeFloat(Math.sin(  440 * (Number(c+event.position) * Math.PI * 2 /44100.0  )   ));
						}else if(c < 2048){
							event.data.writeFloat(Math.sin(  493.88 * (Number(c+event.position) * Math.PI * 2 /44100.0  )   ));//B
							event.data.writeFloat(Math.sin(  493.88 * (Number(c+event.position) * Math.PI * 2 /44100.0  )   ));
						}else if(c < 3072){
							event.data.writeFloat(Math.sin(  523.25 * (Number(c+event.position) * Math.PI * 2 /44100.0  )   ));//C
							event.data.writeFloat(Math.sin(  523.25 * (Number(c+event.position) * Math.PI * 2 /44100.0  )   ));
						}else if(c < 4096){
							event.data.writeFloat(Math.sin(  587.33 * (Number(c+event.position) * Math.PI * 2 /44100.0  )   ));//D
							event.data.writeFloat(Math.sin(  587.33 * (Number(c+event.position) * Math.PI * 2 /44100.0  )   ));
						}else if(c < 5120){
							event.data.writeFloat(Math.sin(  659.26 * (Number(c+event.position) * Math.PI * 2 /44100.0  )   ));//E
							event.data.writeFloat(Math.sin(  659.26 * (Number(c+event.position) * Math.PI * 2 /44100.0  )   ));
						}else if(c < 6144){
							event.data.writeFloat(Math.sin(  261.63 * (Number(c+event.position) * Math.PI * 2 /44100.0  )   ));//Middle C
							event.data.writeFloat(Math.sin(  261.63 * (Number(c+event.position) * Math.PI * 2 /44100.0  )   ));
						}else if(c < 7168){
							event.data.writeFloat(Math.sin(  246.94 * (Number(c+event.position) * Math.PI * 2 /44100.0  )   ));//B
							event.data.writeFloat(Math.sin(  246.94 * (Number(c+event.position) * Math.PI * 2 /44100.0  )   ));
						}else{
							event.data.writeFloat(Math.sin(  329.63 * (Number(c+event.position) * Math.PI * 2 /44100.0  )   ));//E
							event.data.writeFloat(Math.sin(  329.63 * (Number(c+event.position) * Math.PI * 2 /44100.0  )   ));
						}*/
						
						
						if(curr_time < quarter_note){
							event.data.writeFloat(resonant_freq((Number(c+event.position)),440,0,0));
							event.data.writeFloat(resonant_freq((Number(c+event.position)),440,0,0));
							
						}else if(curr_time < quarter_note*2){
							event.data.writeFloat(resonant_freq((Number(c+event.position)),440,0,0));
							event.data.writeFloat(resonant_freq((Number(c+event.position)),440,0,0));
						}else if(curr_time < quarter_note*3){
							event.data.writeFloat(resonant_freq((Number(c+event.position)),440,0,0));
							event.data.writeFloat(resonant_freq((Number(c+event.position)),440,0,0));							
						}else if(curr_time < quarter_note*4){
							event.data.writeFloat(resonant_freq((Number(c+event.position)),440,0,0));
							event.data.writeFloat(resonant_freq((Number(c+event.position)),440,0,0));	
						}else{
							event.data.writeFloat(resonant_freq((Number(c+event.position)),440,0,0));
							event.data.writeFloat(resonant_freq((Number(c+event.position)),440,0,0));	
						}}
				}
				
				if(sound_music_channel != null)sound_music_channel.stop();
				//sound_music_channel = mySound.play(); //off... hopefully temporarily
				var intervalIndentifier:uint = setTimeout(stop_sound, 4000 /* milliseconds */);
				
				
				function stop_sound():void{
					if(sound_music_channel != null) sound_music_channel.stop();
				}
								
				if(fake_tick > 0)player.busy = fake_tick;
				
				if(player.busy > 0){
					//setting this to < 100 is what gets onEnterFrame to kick off the world movement
					world_gen_progressbar.value = 0;
					world_gen_progressbar.minimum = 100/player.busy;
					world_gen_progressbar.setProgress(world_gen_progressbar.value, 100);
					world_gen_progressbar.visible = true;
					world_gen_progressbar.enabled = true;
					
					Look_button.enabled = false;
					newgame_button.enabled = false;
					Inventory_button.enabled = false;
					appearance.enabled = false;
					status.enabled = false;
					skill_button.enabled = false;
					map_button.enabled = false;
					if(wait_button.label == "Wait")wait_button.enabled = false;
					//movieClip_1.enabled = false;
					save_button.enabled = false;
					//load_button.enabled = false;
					//options_button.enabled = false;
					//text_field.enabled = false;
				}
			}
		}
		
		private function resonant_freq(time:Number, base_freq:Number, freq_up:int, freq_down:int):Number{
			var ret:Number = 0
			//base_freq = 1/base_freq;
			ret = Math.sin(base_freq * time/ Math.PI / 4)
			
			var i:int = 0;
			for(i;i<freq_up;i++){
				ret += Math.sin((base_freq*(i+1)) * time/ Math.PI / 4)
			}
			
			i = 0;
			for(i;i<freq_down;i++){
				ret += Math.sin((base_freq/(i+1)) * time/ Math.PI / 4)
			}
			
			ret = ret / (1 + freq_up + freq_down);
			
			return ret;
		}
		
		public function stat(i:int = 0, j:int = -1):void{
			var s:String = "";
			var char:Character = null;
			
			if(player != null){
				if(player.party == null){
					char = player;
				}else{
					char = player.party.members[i];
					if(i+1<player.party.members.length){
						s += "<font color='#0000FF'><a href=\"event:status,"+(i+1)+"\">&gt;&gt;</a></font>\n";
					}
				}
			}
			
			s += char.statistics(player, j);
			
			if(player != null){
				if (player.party != null){
					if(i>0){
						s += "\n<font color='#0000FF'><a href=\"event:status,"+(i-1)+"\">&lt;&lt;</a></font>";
					}
				}
			}
			//want to include the character.draw_self
			var temp_clip:MovieClip = new MovieClip();
			temp_clip.addChild(char.draw_self(714,440, player,true));
			this.addChild(temp_clip);
			
			output = s;
		}
		
		public function show_actions_by_type(char_id:int = 0, action_type:String = ""):void{
			var s:String = "";
			var char:Character = player;
			
			if(char != null && char.party != null){
				char = player.location.get_content(char_id) as Character;
			}
			
			s += char.get_overworld_actions_by_type(action_type, player);
			
			output = s;
		}
		
		public function show_cclass_history(i:int = 0):void{
			if(player.location != null){
				if(player.location.get_content(i) is Character){
					output = (player.location.get_content(i) as Character).get_class_history();
				}
			}
		}
		
		public function show_skills(i:int = 0, j:int = -1, show_children_of:Array = null):void{
			var s:String = "";
			var k:int = 0;
			
			var char:Character;
			
			if(player.party == null){
				char = player;
			}else{
				char = player.party.members[i];
				if(i+1<player.party.members.length && j == -1){
					s += "<font color='#0000FF'><a href=\"event:show_skills,"+(i+1)+"\">&gt;&gt;</a></font>\n";
				}
			}
			
			if(j == -1){
				s += char.skills.show_all_skills(char, show_children_of);
			}else{
				s += char.sanitize(char.increase_skill_by_id(j), player);
				if(show_children_of != null){
					s += "\n<font color='#0000FF'><a href=\"event:show_skills,"+i+",-1,"+show_children_of.slice(3, show_children_of.length)+"\">back</a></font>";
				}else{
					s += "\n<font color='#0000FF'><a href=\"event:show_skills,"+i+"\">back</a></font>";
				}
			}
			
			if (player.party != null && j == -1){
				if(i>0){
					s += "\n<font color='#0000FF'><a href=\"event:show_skills,"+(i-1)+"\">&lt;&lt;</a></font>";
				}
			}

			output = s;
		}
		
		public function stop_waiting():void{
			if(player.party == null){
				player.busy = 1;
			}else{
				var i:int = 0;
				var member_list:Array = player.party.get_members();
				for(i;i<member_list.length;i++){
					member_list[i].busy = 1;
				}
			}
			world_gen_progressbar.setProgress(100, 100);
		}
		
		public function wait(i:int = -1):void{
			if(i == -1){
				var ret_string:String = "How long do you want to wait for?";
				ret_string += "\n<font color='#0000FF'><a href=\"event:wait,"+t6_sec+"\">1 tick</a></font>";
				ret_string += "\n<font color='#0000FF'><a href=\"event:wait,"+t1_min+"\">1 min</a></font>";
				ret_string += "\n<font color='#0000FF'><a href=\"event:wait,"+t10_min+"\">10 min</a></font>";
				ret_string += "\n<font color='#0000FF'><a href=\"event:wait,"+t30_min+"\">30 min</a></font>";
				ret_string += "\n<font color='#0000FF'><a href=\"event:wait,"+t1_hour+"\">1 hour</a></font>";
				ret_string += "\n<font color='#0000FF'><a href=\"event:wait,"+t1_hour*3+"\">3 hours</a></font>";
				ret_string += "\n<font color='#0000FF'><a href=\"event:wait,"+t1_hour*6+"\">6 hours</a></font>";
				ret_string += "\n<font color='#0000FF'><a href=\"event:wait,"+t1_hour*12+"\">12 hours</a></font>";
				ret_string += "\n<font color='#0000FF'><a href=\"event:wait,"+t1_day+"\">1 day</a></font>";
				//ret_string += "\n<font color='#0000FF'><a href=\"event:wait,"+t1_week+"\">1 week</a></font>";
				//ret_string += "\n<font color='#0000FF'><a href=\"event:wait,"+t1_month+"\">1 month</a></font>";
				//ret_string += "\n<font color='#0000FF'><a href=\"event:wait,"+t1_month*3+"\">3 months</a></font>";
				//ret_string += "\n<font color='#0000FF'><a href=\"event:wait,"+t1_month*6+"\">6 months</a></font>";
				//ret_string += "\n<font color='#0000FF'><a href=\"event:wait,"+t1_year+"\">1 year</a></font>";
				output = ret_string;
				return;
			}
			
			var wait_string:String = "around";
			
			if(i == t1_min){
				wait_string = "for a minute";
			}else if(i == t10_min){
				wait_string = "for 10 minutes";
			}else if(i == t30_min){
				wait_string = "for half an hour";
			}else if(i == t1_hour){
				wait_string = "for an hour";
			}
			
			player.set_busy(i);
			wait_button.label = "Stop waiting";
			
			world_tick();
			output = "You wait " + wait_string + "\n";
			look_flag = true;
			
		}
		
		public function options(mini_map_status:int = -1, textfield_size:int = -1, combattext_size:int = -1, keybind_to_change:int = -1):void{
			input_text.visible = false;
			input_text.enabled = false;
			var ret:String = "";
			
			if(keybind_to_change >= 0){
				if(keybind_to_change == 0){
					quickload_keycode = -1;
				}else if(keybind_to_change == 1){
					quicksave_keycode = -1;
				}else if(keybind_to_change == 2){
					appearance_keycode = -1;
				}else if(keybind_to_change == 3){
					map_keycode = -1;
				}else if(keybind_to_change == 4){
					inventory_keycode = -1;
				}else if(keybind_to_change == 5){
					status_keycode = -1;
				}else if(keybind_to_change == 6){
					look_keycode = -1;
				}else if(keybind_to_change == 7){
					n_keycode = -1;
				}else if(keybind_to_change == 8){
					ne_keycode = -1;
				}else if(keybind_to_change == 9){
					e_keycode = -1;
				}else if(keybind_to_change == 10){
					se_keycode = -1;
				}else if(keybind_to_change == 11){
					s_keycode = -1;
				}else if(keybind_to_change == 12){
					sw_keycode = -1;
				}else if(keybind_to_change == 13){
					w_keycode = -1;
				}else if(keybind_to_change == 14){
					nw_keycode = -1;
				}else if(keybind_to_change == 15){
					combat_confirm_keycode = -1;
				}else if(keybind_to_change == 16){
					combat_up_keycode = -1;
				}else if(keybind_to_change == 17){
					combat_left_keycode = -1;
				}else if(keybind_to_change == 18){
					combat_down_keycode = -1;
				}else if(keybind_to_change == 19){
					combat_right_keycode = -1;
				}else if(keybind_to_change == 20){
					wait_keycode = -1;
				}
				
				ret += "Press new key";
				output = ret;
				return;
			}
			
			if(mini_map_status > -1){
				if(mini_map_status == 0){
					mini_map = 0;
				}else if(mini_map_status == 1){
					mini_map = 1;
				}else if(mini_map_status == 2){
					mini_map = 2;
				}
				
				ret += "options set!\n\n";
			}
			
			if(textfield_size > -1){
				if(textfield_size == 0){
					textfield_text_format.size = 8;
				}else if(textfield_size == 1){
					textfield_text_format.size = 10;
				}else if(textfield_size == 2){
					textfield_text_format.size = 11;
				}else if(textfield_size == 4){
					textfield_text_format.size = 13;
				}else if(textfield_size == 5){
					textfield_text_format.size = 14;
				}else if(textfield_size == 6){
					textfield_text_format.size = 16;
				}else{
					textfield_text_format.size = 12;
				}
				ret += "options set!\n\n";
			}
			
			if(combattext_size > -1){
				ret += "options set!\n\n";
				if(combattext_size == 0){
					combat_text_format.size = 12;
				}else if(combattext_size == 1){
					combat_text_format.size = 16;
				}else if(combattext_size == 2){
					combat_text_format.size = 18;
				}else if(combattext_size == 4){
					combat_text_format.size = 22;
				}else if(combattext_size == 5){
					combat_text_format.size = 24;
				}else if(combattext_size == 6){
					combat_text_format.size = 28;
				}else{
					combat_text_format.size = 20;
				}
			}
			
			//Text Sizes
			if(textfield_text_format.size == 8){
				ret += "text size: <b>smallest</b> <a href=\"event:options,-1,1\">smaller</a> <a href=\"event:options,-1,2\">small</a> <a href=\"event:options,-1,3\">normal</a> <a href=\"event:options,-1,4\">large</a> <a href=\"event:options,-1,5\">larger</a> <a href=\"event:options,-1,6\">largest</a>\n";
			}else if(textfield_text_format.size == 10){
				ret += "text size: <a href=\"event:options,-1,0\">smallest</a> <b>smaller</b> <a href=\"event:options,-1,2\">small</a> <a href=\"event:options,-1,3\">normal</a> <a href=\"event:options,-1,4\">large</a> <a href=\"event:options,-1,5\">larger</a> <a href=\"event:options,-1,6\">largest</a>\n";
			}else if(textfield_text_format.size == 11){
				ret += "text size: <a href=\"event:options,-1,0\">smallest</a> <a href=\"event:options,-1,1\">smaller</a> <b>small</b> <a href=\"event:options,-1,3\">normal</a> <a href=\"event:options,-1,4\">large</a> <a href=\"event:options,-1,5\">larger</a> <a href=\"event:options,-1,6\">largest</a>\n";
			}else if(textfield_text_format.size == 12){
				ret += "text size: <a href=\"event:options,-1,0\">smallest</a> <a href=\"event:options,-1,1\">smaller</a> <a href=\"event:options,-1,2\">small</a> <b>normal</b> <a href=\"event:options,-1,4\">large</a> <a href=\"event:options,-1,5\">larger</a> <a href=\"event:options,-1,6\">largest</a>\n";
			}else if(textfield_text_format.size == 13){
				ret += "text size: <a href=\"event:options,-1,0\">smallest</a> <a href=\"event:options,-1,1\">smaller</a> <a href=\"event:options,-1,2\">small</a> <a href=\"event:options,-1,3\">normal</a> <b>large</b> <a href=\"event:options,-1,5\">larger</a> <a href=\"event:options,-1,6\">largest</a>\n";
			}else if(textfield_text_format.size == 14){
				ret += "text size: <a href=\"event:options,-1,0\">smallest</a> <a href=\"event:options,-1,1\">smaller</a> <a href=\"event:options,-1,2\">small</a> <a href=\"event:options,-1,3\">normal</a> <a href=\"event:options,-1,4\">large</a> <b>larger</b> <a href=\"event:options,-1,6\">largest</a>\n";
			}else{
				ret += "text size: <a href=\"event:options,-1,0\">smallest</a> <a href=\"event:options,-1,1\">smaller</a> <a href=\"event:options,-1,2\">small</a> <a href=\"event:options,-1,3\">normal</a> <a href=\"event:options,-1,4\">large</a> <a href=\"event:options,-1,5\">larger</a> <b>largest</b>\n";
			}
			
			if(combat_text_format.size == 12){
				ret += "combat text size: <b>smallest</b> <a href=\"event:options,-1,-1,1\">smaller</a> <a href=\"event:options,-1,-1,2\">small</a> <a href=\"event:options,-1,-1,3\">normal</a> <a href=\"event:options,-1,-1,4\">large</a> <a href=\"event:options,-1,-1,5\">larger</a> <a href=\"event:options,-1,-1,6\">largest</a>\n";
			}else if(combat_text_format.size == 16){
				ret += "combat text size: <a href=\"event:options,-1,-1,0\">smallest</a> <b>smaller</b> <a href=\"event:options,-1,-1,2\">small</a> <a href=\"event:options,-1,-1,3\">normal</a> <a href=\"event:options,-1,-1,4\">large</a> <a href=\"event:options,-1,-1,5\">larger</a> <a href=\"event:options,-1,-1,6\">largest</a>\n";
			}else if(combat_text_format.size == 18){
				ret += "combat text size: <a href=\"event:options,-1,-1,0\">smallest</a> <a href=\"event:options,-1,-1,1\">smaller</a> <b>small</b> <a href=\"event:options,-1,-1,3\">normal</a> <a href=\"event:options,-1,-1,4\">large</a> <a href=\"event:options,-1,-1,5\">larger</a> <a href=\"event:options,-1,-1,6\">largest</a>\n";
			}else if(combat_text_format.size == 20){
				ret += "combat text size: <a href=\"event:options,-1,-1,0\">smallest</a> <a href=\"event:options,-1,-1,1\">smaller</a> <a href=\"event:options,-1,-1,2\">small</a> <b>normal</b> <a href=\"event:options,-1,-1,4\">large</a> <a href=\"event:options,-1,-1,5\">larger</a> <a href=\"event:options,-1,-1,6\">largest</a>\n";
			}else if(combat_text_format.size == 22){
				ret += "combat text size: <a href=\"event:options,-1,-1,0\">smallest</a> <a href=\"event:options,-1,-1,1\">smaller</a> <a href=\"event:options,-1,-1,2\">small</a> <a href=\"event:options,-1,-1,3\">normal</a> <b>large</b> <a href=\"event:options,-1,-1,5\">larger</a> <a href=\"event:options,-1,-1,6\">largest</a>\n";
			}else if(combat_text_format.size == 24){
				ret += "combat text size: <a href=\"event:options,-1,-1,0\">smallest</a> <a href=\"event:options,-1,-1,1\">smaller</a> <a href=\"event:options,-1,-1,2\">small</a> <a href=\"event:options,-1,-1,3\">normal</a> <a href=\"event:options,-1,-1,4\">large</a> <b>larger</b> <a href=\"event:options,-1,-1,6\">largest</a>\n";
			}else{
				ret += "combat text size: <a href=\"event:options,-1,-1,0\">smallest</a> <a href=\"event:options,-1,-1,1\">smaller</a> <a href=\"event:options,-1,-1,2\">small</a> <a href=\"event:options,-1,-1,3\">normal</a> <a href=\"event:options,-1,-1,4\">large</a> <a href=\"event:options,-1,-1,5\">larger</a> <b>largest</b>\n";
			}
			
			//volume control
			//ret += "volume: " +  "\n";
			
			//mini-map on/off
			if(mini_map <= 0){
				ret += "mini-map: <b>off</b>  <a href=\"event:options,1\">small</a>  <a href=\"event:options,2\">large</a>" +  "\n";
			}else if(mini_map == 1){
				ret += "mini-map: <a href=\"event:options,0\">off</a>  <b>small</b>  <a href=\"event:options,2\">large</a>" +  "\n";
			}else{
				ret += "mini-map: <a href=\"event:options,0\">off</a>   <a href=\"event:options,1\">small</a>  <b>large</b>" +  "\n";
			}
			
			//screen resolution
			//ret += "screen resolution: 640x480  <b>800x600</b>  1024*768" +  "\n";
			
			//Keybindings
			var keyDict:Dictionary = getKeyboardDict();
			ret += "\nKeybinds:\n";
			ret += "quickload: <font color='#0000FF'><a href=\"event:options,-1,-1,-1,0\">" + keyDict[quickload_keycode] + "</a></font>\n";
			ret += "quicksave: <font color='#0000FF'><a href=\"event:options,-1,-1,-1,1\">" + keyDict[quicksave_keycode] + "</a></font>\n";
			ret += "appearance: <font color='#0000FF'><a href=\"event:options,-1,-1,-1,2\">" + keyDict[appearance_keycode] + "</a></font>\n";
			ret += "map: <font color='#0000FF'><a href=\"event:options,-1,-1,-1,3\">" + keyDict[map_keycode] + "</a></font>\n";
			ret += "inventory: <font color='#0000FF'><a href=\"event:options,-1,-1,-1,4\">" + keyDict[inventory_keycode] + "</a></font>\n";
			ret += "status: <font color='#0000FF'><a href=\"event:options,-1,-1,-1,5\">" + keyDict[status_keycode] + "</a></font>\n";
			ret += "look: <font color='#0000FF'><a href=\"event:options,-1,-1,-1,6\">" + keyDict[look_keycode] + "</a></font>\n";
			ret += "wait: <font color='#0000FF'><a href=\"event:options,-1,-1,-1,20\">" + keyDict[wait_keycode] + "</a></font>\n";
			ret += "move north: <font color='#0000FF'><a href=\"event:options,-1,-1,-1,7\">" + keyDict[n_keycode] + "</a></font>\n";
			ret += "move north-east: <font color='#0000FF'><a href=\"event:options,-1,-1,-1,8\">" + keyDict[ne_keycode] + "</a></font>\n";
			ret += "move east: <font color='#0000FF'><a href=\"event:options,-1,-1,-1,9\">" + keyDict[e_keycode] + "</a></font>\n";
			ret += "move south-east: <font color='#0000FF'><a href=\"event:options,-1,-1,-1,10\">" + keyDict[se_keycode] + "</a></font>\n";
			ret += "move south: <font color='#0000FF'><a href=\"event:options,-1,-1,-1,11\">" + keyDict[s_keycode] + "</a></font>\n";
			ret += "move south-west: <font color='#0000FF'><a href=\"event:options,-1,-1,-1,12\">" + keyDict[sw_keycode] + "</a></font>\n";
			ret += "move west: <font color='#0000FF'><a href=\"event:options,-1,-1,-1,13\">" + keyDict[w_keycode] + "</a></font>\n";
			ret += "move north-west: <font color='#0000FF'><a href=\"event:options,-1,-1,-1,14\">" + keyDict[nw_keycode] + "</a></font>\n";
			ret += "combat confirm: <font color='#0000FF'><a href=\"event:options,-1,-1,-1,15\">" + keyDict[combat_confirm_keycode] + "</a></font>\n";
			ret += "combat up: <font color='#0000FF'><a href=\"event:options,-1,-1,-1,16\">" + keyDict[combat_up_keycode] + "</a></font>\n";
			ret += "combat left: <font color='#0000FF'><a href=\"event:options,-1,-1,-1,17\">" + keyDict[combat_left_keycode] + "</a></font>\n";
			ret += "combat down: <font color='#0000FF'><a href=\"event:options,-1,-1,-1,18\">" + keyDict[combat_down_keycode] + "</a></font>\n";
			ret += "combat right: <font color='#0000FF'><a href=\"event:options,-1,-1,-1,19\">" + keyDict[combat_right_keycode] + "</a></font>\n";
			
			output = ret;
		}
		
		public static function getKeyboardDict():Dictionary {
			var keyDescription:XML = describeType(Keyboard);
			var keyNames:XMLList = keyDescription..constant.@name;
		
			var keyboardDict:Dictionary = new Dictionary();
		
			var len:int = keyNames.length();
			for(var i:int = 0; i < len; i++) {
				keyboardDict[Keyboard[keyNames[i]]] = keyNames[i];
			}
		
			return keyboardDict;
		}
		
		public function save_game(i:int = -1):void{
			output = "";
			var temp_str:String = "";
			var saveDataObject:File;
			var fileStreamObject:FileStream = new FileStream();
			var saveFileName:String = "FPalace0.sol";
			var count:int = 0;
			if(i == -1){//display any existing save games, and the option to 'create a new save'
				temp_str += "<font color='#0000FF'><a href=\"event:save_game,-2\">Create New Save Game</a></font>\n\n";
				try{
					while(File.applicationStorageDirectory.resolvePath(saveFileName).exists){
						saveDataObject = File.applicationStorageDirectory.resolvePath(saveFileName);  
						/*
						fileStreamObject.open(saveDataObject, FileMode.READ);
						var temp_byte:ByteArray = new ByteArray();
						while(fileStreamObject.bytesAvailable > 0){
							fileStreamObject.readBytes(temp_byte,temp_byte.position,fileStreamObject.bytesAvailable);
						}
						temp_byte.position = 0;
						temp_byte.inflate();
						var temp_char:Character = temp_byte.readObject();
						temp_str += "<font color='#0000FF'><a href=\"event:save_game,"+count+"\">"+ (count+1) + ": " + temp_char.get_name() + "</a></font> - " + saveDataObject.modificationDate.toLocaleString() + "\n\tlevel " + temp_char.get_lvl() + " " + temp_char.get_current_class().get_name() + "\n\n";
						fileStreamObject.close();
						*/
						temp_str += "<font color='#0000FF'><a href=\"event:save_game,"+count+"\">"+ (count+1) + ": " + saveDataObject.modificationDate.toLocaleString() + "</a></font>\n\n";
						count++;
						saveFileName = "FPalace"+count+".sol";					
						
					}				
					output = temp_str;
				}catch(e:Error){
					output = "Error listing save games: " + e.getStackTrace();
				}
				return;
			}
			
			if(i == -2){//create a new save game
				while(File.applicationStorageDirectory.resolvePath(saveFileName).exists){
					saveFileName = "FPalace"+count+".sol";
					count++;
				}
			}
			
			if(i>= 0){//save over a game
				if(i>0){
					saveFileName = "FPalace"+i+".sol";
				}
			}
			
			var compress_byte:ByteArray = new ByteArray();
			world.set_settings([mini_map,textfield_text_format.size,combat_text_format.size,quickload_keycode,quicksave_keycode,
				appearance_keycode,map_keycode,inventory_keycode,status_keycode,look_keycode,wait_keycode,ne_keycode,n_keycode,nw_keycode,
				e_keycode,w_keycode,se_keycode,s_keycode,sw_keycode,combat_confirm_keycode,combat_up_keycode,combat_down_keycode,combat_right_keycode,combat_left_keycode]);
			
			try{
				compress_byte.writeObject(player);
				compress_byte.deflate();
				
				saveDataObject = File.applicationStorageDirectory.resolvePath(saveFileName);
				if(saveDataObject.exists){
					trace("(Main.save_game)Should probably delete this file before saving... oh well. ");
				}
				saveDataObject.addEventListener(Event.COMPLETE, fileSaved);
				saveDataObject.save(compress_byte);
			}catch(e:Error){
				output = "Error saving: " + e.getStackTrace();
			}
			function fileSaved(event:Event):void 
			{ 
				output = "Game saved!";
				event.target.removeEventListener(Event.COMPLETE, fileSaved);
			}
			
		}
		
		public function load_game(i:int = -1):void{
			output = "";
			var temp_str:String = "";
			var count:int = 0;
			var saveDataObject:File;
			var fileStreamObject:FileStream = new FileStream();
			var loadFileName:String = "FPalace0.sol";			
			input_text.visible = false;
			input_text.enabled = false;			
			
			function fileSelected(event:Event):void {
				event.target.removeEventListener(Event.SELECT, fileSelected);
				event.target.addEventListener(Event.COMPLETE, loaded);
				try{
					event.target.load();
				}catch(e:Error){
					output = "Error loading: " + e.getStackTrace();
				}
			}
			
			function loaded(event:Event):void { 
				trace("(MAIN)reseting player...");
				world = new World();
				player = new Character();
				
				var temp_byte:ByteArray;
				temp_byte = event.target.data;
				temp_byte.position = 0;
				temp_byte.inflate();
				player = temp_byte.readObject();
				world = player.location.area.world;
				
				if(world == null || player == null || player.location == null){
					output = "Load game failed!";
					world = null;
					player = null;
				}else{					
					mini_map = world.settings[0];
					textfield_text_format.size = world.settings[1];
					combat_text_format.size = world.settings[2];
					
					quickload_keycode = world.settings[3];
					quicksave_keycode = world.settings[4];
					appearance_keycode = world.settings[5];
					map_keycode = world.settings[6];
					inventory_keycode = world.settings[7];
					status_keycode = world.settings[8];
					look_keycode = world.settings[9];
					wait_keycode = world.settings[10];
					ne_keycode = world.settings[11];
					n_keycode = world.settings[12];
					nw_keycode = world.settings[13];
					e_keycode = world.settings[14];
					w_keycode = world.settings[15];
					se_keycode = world.settings[16];
					s_keycode = world.settings[17];
					sw_keycode = world.settings[18];
					
					combat_confirm_keycode = world.settings[19];
					combat_up_keycode = world.settings[20];
					combat_down_keycode = world.settings[21];
					combat_right_keycode = world.settings[22];
					combat_left_keycode = world.settings[23];
					
					look_flag = true;
					Look_button.enabled = true;
					Inventory_button.enabled = true;
					appearance.enabled = true;
					status.enabled = true;
					skill_button.enabled = true;
					map_button.enabled = true;
					save_button.enabled = true;
					wait_button.enabled = true;
					newgame_button.label = "Journal";
					if(mini_map > 0){
						create_mini_map();
					}
					output = "Game loaded successfully\n";					
				}	
				event.target.removeEventListener(Event.COMPLETE, loaded);
			}
			
			if(i == -1){//display any existing save games, and the option to 'load from file'
				temp_str += "<font color='#0000FF'><a href=\"event:load_game,-2\">Load from file</a></font>\n\n";
				try{
					while(File.applicationStorageDirectory.resolvePath(loadFileName).exists){
						saveDataObject = File.applicationStorageDirectory.resolvePath(loadFileName);  
						/*
						fileStreamObject.open(saveDataObject, FileMode.READ);
						var temp_byte:ByteArray = new ByteArray();
						while(fileStreamObject.bytesAvailable > 0){
							fileStreamObject.readBytes(temp_byte,temp_byte.position,fileStreamObject.bytesAvailable);
						}
						temp_byte.position = 0;
						temp_byte.inflate();
						var temp_char:Character = temp_byte.readObject();
						temp_str += "<font color='#0000FF'><a href=\"event:load_game,"+count+"\">"+ (count+1) + ": " + temp_char.get_name() + "</a></font> - " + saveDataObject.modificationDate.toLocaleString() + "\n\tlevel " + temp_char.get_lvl() + " " + temp_char.get_current_class().get_name() + "\n\n";
						fileStreamObject.close();
						*/
						temp_str += "<font color='#0000FF'><a href=\"event:load_game,"+count+"\">"+ (count+1) + ": " + saveDataObject.modificationDate.toLocaleString() + "</a></font>\n\n";
						count++;
						loadFileName = "FPalace"+count+".sol";					
					}
				}catch(e:Error){
					output = "Error listing saves: " + e.getStackTrace();
				}
				output = temp_str;				
			}else if(i == -2){
				saveDataObject = File.applicationStorageDirectory;
				saveDataObject.addEventListener(Event.SELECT, fileSelected);
				saveDataObject.browseForOpen("Load Save");				
			}else if(i >= 0){//load the selected saved game
				loadFileName = "FPalace"+i+".sol";
				try{
					saveDataObject = File.applicationStorageDirectory.resolvePath(loadFileName);
					saveDataObject.addEventListener(Event.COMPLETE, loaded); 				
					saveDataObject.load();				
				}catch(e:Error){
					output = "Error loading: " + e.getStackTrace();
				}
			}			
		}
	}

}