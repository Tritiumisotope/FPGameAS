package  {
	import flash.display.Bitmap;
	
	public class FPalace_helper{
		//source folders
        public static const BGfldr:str = "images\BG\";
		//fiddlng with images...
		public static const unknown_img:int = 0;
		
		public static const test_img:int = 99;
		//public static const linty_1_img:int = 2;
		
		//Background images
		public static const background_test_img:int = 1;
		
		//Character images
			//human
			public static const human_head_1_img:int = 2;
			public static const human_eyes_1_img:int = 3;
			public static const human_torso_1_img:int = 4;
			public static const human_hips_1_img:int = 5;
			public static const human_breasts_1_img:int = 6;
			public static const human_balls_1_img:int = 7;
			public static const human_penis_1_img:int = 8;
			public static const human_hair_1_img:int = 0;//9
			public static const human_arm_1_img:int = 10;
			public static const human_hand_1_img:int = 11;
			public static const human_vag_1_img:int = 0;//12
			public static const human_leg_1_img:int = 13;
			public static const human_foot_1_img:int = 14;
			public static const human_clit_1_img:int = 0;//15
			
			//goo
			public static const goo_head_1_img:int = 2;//16
			public static const goo_eyes_1_img:int = 3;//17
			public static const goo_torso_1_img:int = 4;//18
			public static const goo_hips_1_img:int = 5;//19
			public static const goo_breasts_1_img:int = 6;//20
			public static const goo_balls_1_img:int = 7;//21
			public static const goo_penis_1_img:int = 8;//22
			public static const goo_arm_1_img:int = 10;//23
			public static const goo_hand_1_img:int = 11;//24
			public static const goo_vag_1_img:int = 0;//25
			public static const goo_leg_1_img:int = 13;//26
			public static const goo_foot_1_img:int = 14;//27
			public static const goo_clit_1_img:int = 0;//28
			
			public static const goo_char_img:int = 29;
			
			//anthro_rabbit
			public static const rabbit_head_1_img:int = 2;//30
			public static const rabbit_eyes_1_img:int = 3;//31
			public static const rabbit_torso_1_img:int = 4;//32
			public static const rabbit_hips_1_img:int = 5;//33
			public static const rabbit_breasts_1_img:int = 6;//34
			public static const rabbit_balls_1_img:int = 7;//35
			public static const rabbit_penis_1_img:int = 8;//36
			public static const rabbit_hair_1_img:int = 0;//37
			public static const rabbit_arm_1_img:int = 10;//38
			public static const rabbit_hand_1_img:int = 11;//39
			public static const rabbit_vag_1_img:int = 0;//40
			public static const rabbit_leg_1_img:int = 13;//41
			public static const rabbit_foot_1_img:int = 14;//42
			public static const rabbit_clit_1_img:int = 0;//43
			public static const rabbit_tail_1_img:int = 0;//44
			
			//elf
			public static const elf_head_1_img:int = 2;//45
			public static const elf_eyes_1_img:int = 3;//46
			public static const elf_torso_1_img:int = 4;//47
			public static const elf_hips_1_img:int = 5;//48
			public static const elf_breasts_1_img:int = 6;//49
			public static const elf_balls_1_img:int = 7;//50
			public static const elf_penis_1_img:int = 8;//51
			public static const elf_hair_1_img:int = 0;//52
			public static const elf_arm_1_img:int = 10;//53
			public static const elf_hand_1_img:int = 11;//54
			public static const elf_vag_1_img:int = 0;//55
			public static const elf_leg_1_img:int = 13;//56
			public static const elf_foot_1_img:int = 14;//57
			public static const elf_clit_1_img:int = 0;//58
			
			//dwarf
			public static const dwarf_head_1_img:int = 2;//59
			public static const dwarf_eyes_1_img:int = 3;//60
			public static const dwarf_torso_1_img:int = 4;//61
			public static const dwarf_hips_1_img:int = 5;//62
			public static const dwarf_breasts_1_img:int = 6;//63
			public static const dwarf_balls_1_img:int = 7;//64
			public static const dwarf_penis_1_img:int = 8;//65
			public static const dwarf_hair_1_img:int = 0;//66
			public static const dwarf_arm_1_img:int = 10;//67
			public static const dwarf_hand_1_img:int = 11;//68
			public static const dwarf_vag_1_img:int = 0;//69
			public static const dwarf_leg_1_img:int = 13;//70
			public static const dwarf_foot_1_img:int = 14;//71
			public static const dwarf_clit_1_img:int = 0;//72
			
			//goblin
			public static const goblin_head_1_img:int = 2;//59
			public static const goblin_eyes_1_img:int = 3;//60
			public static const goblin_torso_1_img:int = 4;//61
			public static const goblin_hips_1_img:int = 5;//62
			public static const goblin_breasts_1_img:int = 6;//63
			public static const goblin_balls_1_img:int = 7;//64
			public static const goblin_penis_1_img:int = 8;//65
			public static const goblin_hair_1_img:int = 0;//66
			public static const goblin_arm_1_img:int = 10;//67
			public static const goblin_hand_1_img:int = 11;//68
			public static const goblin_vag_1_img:int = 0;//69
			public static const goblin_leg_1_img:int = 13;//70
			public static const goblin_foot_1_img:int = 14;//71
			public static const goblin_clit_1_img:int = 0;//72
			
			//anthro_feline
			public static const feline_head_1_img:int = 2;//73
			public static const feline_eyes_1_img:int = 3;//74
			public static const feline_torso_1_img:int = 4;//75
			public static const feline_hips_1_img:int = 5;//76
			public static const feline_breasts_1_img:int = 6;//77
			public static const feline_balls_1_img:int = 7;//78
			public static const feline_penis_1_img:int = 8;//79
			public static const feline_hair_1_img:int = 0;//80
			public static const feline_arm_1_img:int = 10;//81
			public static const feline_hand_1_img:int = 11;//82
			public static const feline_vag_1_img:int = 0;//83
			public static const feline_leg_1_img:int = 13;//84
			public static const feline_foot_1_img:int = 14;//85
			public static const feline_clit_1_img:int = 0;//86
			public static const feline_tail_1_img:int = 0;//87
			
			//anthro_lizard
			public static const lizard_head_1_img:int = 2;//88
			public static const lizard_eyes_1_img:int = 3;//89
			public static const lizard_torso_1_img:int = 4;//90
			public static const lizard_hips_1_img:int = 5;//91
			public static const lizard_breasts_1_img:int = 6;//92
			public static const lizard_balls_1_img:int = 7;//93
			public static const lizard_penis_1_img:int = 8;//94
			public static const lizard_hair_1_img:int = 0;//95
			public static const lizard_arm_1_img:int = 10;//96
			public static const lizard_hand_1_img:int = 11;//97
			public static const lizard_vag_1_img:int = 0;//98
			public static const lizard_leg_1_img:int = 13;//99
			public static const lizard_foot_1_img:int = 14;//100
			public static const lizard_clit_1_img:int = 0;//101
			public static const lizard_tail_1_img:int = 0;//102
			
			//anthro_fish
			public static const fish_head_1_img:int = 2;//103
			public static const fish_eyes_1_img:int = 3;//104
			public static const fish_torso_1_img:int = 4;//105
			public static const fish_hips_1_img:int = 5;//106
			public static const fish_breasts_1_img:int = 6;//107
			public static const fish_balls_1_img:int = 7;//108
			public static const fish_penis_1_img:int = 8;//109
			public static const fish_hair_1_img:int = 0;//110
			public static const fish_arm_1_img:int = 10;//111
			public static const fish_hand_1_img:int = 11;//112
			public static const fish_vag_1_img:int = 0;//113
			public static const fish_leg_1_img:int = 13;//114
			public static const fish_foot_1_img:int = 14;//115
			public static const fish_clit_1_img:int = 0;//116
			public static const fish_tail_1_img:int = 0;//117
			
			//anthro_bovine
			public static const bovine_head_1_img:int = 2;//118
			public static const bovine_eyes_1_img:int = 3;//119
			public static const bovine_torso_1_img:int = 4;//120
			public static const bovine_hips_1_img:int = 5;//121
			public static const bovine_breasts_1_img:int = 6;//122
			public static const bovine_balls_1_img:int = 7;//123
			public static const bovine_penis_1_img:int = 8;//124
			public static const bovine_hair_1_img:int = 0;//125
			public static const bovine_arm_1_img:int = 10;//126
			public static const bovine_hand_1_img:int = 11;//127
			public static const bovine_vag_1_img:int = 0;//128
			public static const bovine_leg_1_img:int = 13;//129
			public static const bovine_foot_1_img:int = 14;//130
			public static const bovine_clit_1_img:int = 0;//131
			public static const bovine_tail_1_img:int = 0;//132
			public static const bovine_udder_1_img:int = 0;//133
			public static const bovine_horns_1_img:int = 0;//134
			
			//anthro_equine
			public static const equine_head_1_img:int = 2;//135
			public static const equine_eyes_1_img:int = 3;//136
			public static const equine_torso_1_img:int = 4;//137
			public static const equine_hips_1_img:int = 5;//138
			public static const equine_breasts_1_img:int = 6;//139
			public static const equine_balls_1_img:int = 7;//140
			public static const equine_penis_1_img:int = 8;//141
			public static const equine_hair_1_img:int = 0;//142
			public static const equine_arm_1_img:int = 10;//143
			public static const equine_hand_1_img:int = 11;//144
			public static const equine_vag_1_img:int = 0;//145
			public static const equine_leg_1_img:int = 13;//146
			public static const equine_foot_1_img:int = 14;//147
			public static const equine_clit_1_img:int = 0;//148
			public static const equine_tail_1_img:int = 0;//149
			
			//anthro_spider
			public static const spider_head_1_img:int = 2;//150
			public static const spider_eyes_1_img:int = 3;//151
			public static const spider_torso_1_img:int = 4;//152
			public static const spider_hips_1_img:int = 5;//153
			public static const spider_breasts_1_img:int = 6;//154
			public static const spider_balls_1_img:int = 7;//155
			public static const spider_penis_1_img:int = 8;//156
			public static const spider_hair_1_img:int = 0;//157
			public static const spider_arm_1_img:int = 10;//158
			public static const spider_hand_1_img:int = 11;//159
			public static const spider_vag_1_img:int = 0;//160
			public static const spider_leg_1_img:int = 13;//161
			public static const spider_foot_1_img:int = 14;//162
			public static const spider_clit_1_img:int = 0;//163
			public static const spider_thorax_1_img:int = 0;//164
			public static const spider_abdomen_1_img:int = 0;//165
			
			//anthro_bee
			public static const bee_head_1_img:int = 2;//166
			public static const bee_eyes_1_img:int = 3;//167
			public static const bee_torso_1_img:int = 4;//168
			public static const bee_hips_1_img:int = 5;//169
			public static const bee_breasts_1_img:int = 6;//170
			public static const bee_balls_1_img:int = 7;//171
			public static const bee_penis_1_img:int = 8;//172
			public static const bee_hair_1_img:int = 0;//173
			public static const bee_arm_1_img:int = 10;//174
			public static const bee_hand_1_img:int = 11;//175
			public static const bee_vag_1_img:int = 0;//176
			public static const bee_leg_1_img:int = 13;//177
			public static const bee_foot_1_img:int = 14;//178
			public static const bee_clit_1_img:int = 0;//179
			public static const bee_thorax_1_img:int = 0;//180
			public static const bee_abdomen_1_img:int = 0;//181
			public static const bee_wing_1_img:int = 0;//182
			
			//anthro_donkey
			public static const equidae_head_1_img:int = 2;//183
			public static const equidae_eyes_1_img:int = 3;//184
			public static const equidae_torso_1_img:int = 4;//185
			public static const equidae_hips_1_img:int = 5;//186
			public static const equidae_breasts_1_img:int = 6;//187
			public static const equidae_balls_1_img:int = 7;//188
			public static const equidae_penis_1_img:int = 8;//189
			public static const equidae_hair_1_img:int = 0;//190
			public static const equidae_arm_1_img:int = 10;//191
			public static const equidae_hand_1_img:int = 11;//192
			public static const equidae_vag_1_img:int = 0;//193
			public static const equidae_leg_1_img:int = 13;//194
			public static const equidae_foot_1_img:int = 14;//195
			public static const equidae_clit_1_img:int = 0;//196
			public static const equidae_tail_1_img:int = 0;//197			
			
			//anthro_canine
			public static const canine_head_1_img:int = 2;//198
			public static const canine_eyes_1_img:int = 3;//199
			public static const canine_torso_1_img:int = 4;//200
			public static const canine_hips_1_img:int = 5;//201
			public static const canine_breasts_1_img:int = 6;//202
			public static const canine_balls_1_img:int = 7;//203
			public static const canine_penis_1_img:int = 8;//204
			public static const canine_hair_1_img:int = 0;//205
			public static const canine_arm_1_img:int = 10;//206
			public static const canine_hand_1_img:int = 11;//207
			public static const canine_vag_1_img:int = 0;//208
			public static const canine_leg_1_img:int = 13;//209
			public static const canine_foot_1_img:int = 14;//210
			public static const canine_clit_1_img:int = 0;//211
			public static const canine_tail_1_img:int = 0;//212
			
			//anthro_mouse
			public static const mouse_head_1_img:int = 2;//213
			public static const mouse_eyes_1_img:int = 3;//214
			public static const mouse_torso_1_img:int = 4;//215
			public static const mouse_hips_1_img:int = 5;//216
			public static const mouse_breasts_1_img:int = 6;//217
			public static const mouse_balls_1_img:int = 7;//218
			public static const mouse_penis_1_img:int = 8;//219
			public static const mouse_hair_1_img:int = 0;//220
			public static const mouse_arm_1_img:int = 10;//221
			public static const mouse_hand_1_img:int = 11;//222
			public static const mouse_vag_1_img:int = 0;//223
			public static const mouse_leg_1_img:int = 13;//224
			public static const mouse_foot_1_img:int = 14;//225
			public static const mouse_clit_1_img:int = 0;//226
			public static const mouse_tail_1_img:int = 0;//227
			
			//anthro_frog
			public static const frog_head_1_img:int = 2;//228
			public static const frog_eyes_1_img:int = 3;//229
			public static const frog_torso_1_img:int = 4;//230
			public static const frog_hips_1_img:int = 5;//231
			public static const frog_breasts_1_img:int = 6;//232
			public static const frog_balls_1_img:int = 7;//233
			public static const frog_penis_1_img:int = 8;//234
			public static const frog_hair_1_img:int = 0;//235
			public static const frog_arm_1_img:int = 10;//236
			public static const frog_hand_1_img:int = 11;//237
			public static const frog_vag_1_img:int = 0;//238
			public static const frog_leg_1_img:int = 13;//239
			public static const frog_foot_1_img:int = 14;//240
			public static const frog_clit_1_img:int = 0;//241
			
			//angel
			public static const angel_wing_1_img:int = 0;//242
			
			//demon
			public static const demon_wing_1_img:int = 0;//243
			public static const demon_tail_1_img:int = 0;//244
			
			//anthro_deer
			public static const cervine_head_1_img:int = 2;//245
			public static const cervine_eyes_1_img:int = 3;//246
			public static const cervine_torso_1_img:int = 4;//247
			public static const cervine_hips_1_img:int = 5;//248
			public static const cervine_breasts_1_img:int = 6;//249
			public static const cervine_balls_1_img:int = 7;//250
			public static const cervine_penis_1_img:int = 8;//251
			public static const cervine_hair_1_img:int = 0;//252
			public static const cervine_arm_1_img:int = 10;//253
			public static const cervine_hand_1_img:int = 11;//254
			public static const cervine_vag_1_img:int = 0;//255
			public static const cervine_leg_1_img:int = 13;//256
			public static const cervine_foot_1_img:int = 14;//257
			public static const cervine_clit_1_img:int = 0;//258
			public static const cervine_tail_1_img:int = 0;//259
			public static const cervine_horns_1_img:int = 0;//260
			
			//sex_snake
		
		//GUI images
		public static const Button_disabledSkin_img:int = 185;
		public static const Button_downSkin_img:int = 186;
		public static const Button_emphasizedSkin_img:int = 187;
		public static const Button_overSkin_img:int = 188;
		public static const Button_selectedDisabledSkin_img:int = 189;
		public static const Button_selectedDownSkin_img:int = 190;
		public static const Button_selectedOverSkin_img:int = 191;
		public static const Button_selectedUpSkin_img:int = 192;
		public static const Button_upSkin_img:int = 193;
		
		public static const ProgressBar_barSkin_img:int = 194;
		public static const ProgressBar_indeterminateSkin_img:int = 195;
		public static const ProgressBar_trackSkin_img:int = 196;
		
		public static const TextArea_disabledSkin_img:int = 197;
		public static const TextArea_upSkin_img:int = 198;
		
		public static const ScrollArrowDown_disabledSkin_img:int = 201;
		public static const ScrollArrowDown_downSkin_img:int = 202;
		public static const ScrollArrowDown_overSkin_img:int = 203;
		public static const ScrollArrowDown_upSkin_img:int = 204;
		public static const ScrollArrowUp_disabledSkin_img:int = 205;
		public static const ScrollArrowUp_downSkin_img:int = 206;
		public static const ScrollArrowUp_overSkin_img:int = 207;
		public static const ScrollArrowUp_upSkin_img:int = 208;
		public static const ScrollBar_thumbIcon_img:int = 209;
		public static const ScrollThumb_downSkin_img:int = 210;
		public static const ScrollThumb_overSkin_img:int = 211;
		public static const ScrollThumb_upSkin_img:int = 212;
		public static const ScrollTrack_skin_img:int = 213;
		
		public static const TextInput_disabledSkin_img:int = 199;
		public static const TextInput_upSkin_img:int = 200;
		
		
		
		// 3/4 view images...
		public static const view34_test_img:int = 183;
		
		//item images
		public static const futa_cola_1_img:int = 184;
		
		//images to embed
		[Embed (source="unknown.gif")]
    	public static const unknown:Class;
		
		
		[Embed (source="Button_disabledSkin.png")]
		public static const Button_disabledSkin:Class;
		[Embed (source="Button_downSkin.png")]
		public static const Button_downSkin:Class;
		[Embed (source="Button_emphasizedSkin.png")]
		public static const Button_emphasizedSkin:Class;
		[Embed (source="Button_overSkin.png")]
		public static const Button_overSkin:Class;
		[Embed (source="Button_selectedDisabledSkin.png")]
		public static const Button_selectedDisabledSkin:Class;
		[Embed (source="Button_selectedDownSkin.png")]
		public static const Button_selectedDownSkin:Class;
		[Embed (source="Button_selectedOverSkin.png")]
		public static const Button_selectedOverSkin:Class;
		[Embed (source="Button_selectedUpSkin.png")]
		public static const Button_selectedUpSkin:Class;
		[Embed (source="Button_upSkin.png")]
		public static const Button_upSkin:Class;
		
		[Embed (source="ProgressBar_barSkin.png")]
		public static const ProgressBar_barSkin:Class;
		[Embed (source="ProgressBar_indeterminateSkin.png")]
		public static const ProgressBar_indeterminateSkin:Class;
		[Embed (source="ProgressBar_trackSkin.png")]
		public static const ProgressBar_trackSkin:Class;
		
		[Embed (source="TextArea_disabledSkin.png")]
		public static const TextArea_disabledSkin:Class;
		[Embed (source="TextArea_upSkin.png")]
		public static const TextArea_upSkin:Class;
		
		[Embed (source="ScrollArrowDown_disabledSkin.png")]
		public static const ScrollArrowDown_disabledSkin:Class;
		[Embed (source="ScrollArrowDown_downSkin.png")]
		public static const ScrollArrowDown_downSkin:Class;
		[Embed (source="ScrollArrowDown_overSkin.png")]
		public static const ScrollArrowDown_overSkin:Class;
		[Embed (source="ScrollArrowDown_upSkin.png")]
		public static const ScrollArrowDown_upSkin:Class;
		[Embed (source="ScrollArrowUp_disabledSkin.png")]
		public static const ScrollArrowUp_disabledSkin:Class;
		[Embed (source="ScrollArrowUp_downSkin.png")]
		public static const ScrollArrowUp_downSkin:Class;
		[Embed (source="ScrollArrowUp_overSkin.png")]
		public static const ScrollArrowUp_overSkin:Class;
		[Embed (source="ScrollArrowUp_upSkin.png")]
		public static const ScrollArrowUp_upSkin:Class;
		[Embed (source="ScrollBar_thumbIcon.png")]
		public static const ScrollBar_thumbIcon:Class;
		[Embed (source="ScrollThumb_downSkin.png")]
		public static const ScrollThumb_downSkin:Class;
		[Embed (source="ScrollThumb_overSkin.png")]
		public static const ScrollThumb_overSkin:Class;
		[Embed (source="ScrollThumb_upSkin.png")]
		public static const ScrollThumb_upSkin:Class;
		[Embed (source="ScrollTrack_skin.png")]
		public static const ScrollTrack_skin:Class;
		
		[Embed (source="TextInput_disabledSkin.png")]
		public static const TextInput_disabledSkin:Class;
		[Embed (source="TextInput_upSkin.png")]
		public static const TextInput_upSkin:Class;
		
		
		[Embed (source="linty_namiAndRobin.gif" )]
    	public static const image_1:Class;
		
		[Embed (source=BGfldr+"462062941.jpg" )]
		public static const background_test:Class;
		
		[Embed (source="human_head_1.gif" )]
    	public static const human_head_1:Class;
		[Embed (source="human_eyes_1.jpg" )]
    	public static const human_eyes_1:Class;
		[Embed (source="human_torso_1.gif" )]
    	public static const human_torso_1:Class;
		[Embed (source="human_hips_1.gif" )]
    	public static const human_hips_1:Class;
		[Embed (source="human_leg_1.gif" )]
    	public static const human_leg_1:Class;
		[Embed (source="human_foot_1.gif" )]
    	public static const human_foot_1:Class;
		[Embed (source="human_arm_1.gif" )]
    	public static const human_arm_1:Class;
		[Embed (source="human_hand_1.gif" )]
    	public static const human_hand_1:Class;
		[Embed (source="human_breasts_1.gif" )]
		public static const human_breasts_1:Class;
		[Embed (source="human_balls_1.gif" )]
		public static const human_balls_1:Class;
		[Embed (source="human_penis_1.gif" )]
		public static const human_penis_1:Class;
		
		[Embed (source="slime_1.gif" )]
		public static const goo_char_1:Class;
		
		[Embed (source="futa_cola_1.gif" )]
		public static const futa_cola_1:Class;
		
		[Embed (source="34_test.gif" )]
		public static const view34_test:Class;
		
		
		
		
		
		
		//public static var relations_affect_id:int = -999;
		//Default stat id's - ordering of these can be important, as is the case with items applying effects
		public static const str_id:int = 1;
		public static const dex_id:int = 2;
		public static const con_id:int = 3;
		public static const sex_appeal_id:int = 4;
		public static const int_id:int = 5;
		public static const wis_id:int = 6;
		public static const will_id:int = 7;
		public static const cha_id:int = 8;
		public static const max_hp_id:int = 9;
		public static const lust_id:int = 10;
		public static const curr_hp_id:int = 11;
		public static const max_lust_id:int = 12;
		public static const penis_length_id:int = 13;
		public static const penis_girth_id:int = 14;
		public static const breast_size_id:int = 15;
		public static const nipple_size_id:int = 16;
		public static const balls_size_id:int = 17;
		public static const bust_id:int = 18;
		public static const waist_id:int = 19;
		public static const hips_id:int = 20;
		public static const cum_volume_id:int = 21;
		public static const anal_width_id:int = 22;
		public static const anal_depth_id:int = 23;
		public static const vaginal_width_id:int = 24;
		public static const vaginal_depth_id:int = 25;
		public static const milk_volume_id:int = 26;
		public static const min_lust_id:int = 27;
		public static const age_id:int = 28;
		public static const semen_fertility_id:int = 29;
		public static const egg_fertility_id:int = 30;
		public static const bloat_id:int = 31;
		public static const height_id:int = 32;
		public static const clit_length:int = 33;
		public static const biomass_consumed:int = 34;
		public static const curr_mp_id:int = 35;
		public static const max_mp_id:int = 36;
		public static const curr_fatigue_id:int = 37;
		public static const max_fatigue_id:int = 38;
		public static const erection_ratio_id:int = 39;
		public static const weight_id:int = 40;
		public static const max_weight_id:int = 41;
		public static const hair_length_id:int = 42;
		public static const hair_colour_id:int = 43;
		public static const eye_colour_id:int = 44;
		public static const skin_colour_id:int = 45;
		public static const goo_colour_id:int = 46;
		public static const fur_colour_id:int = 47;
		public static const scale_colour_id:int = 48;
		
		//Default body_part id's
		public static const horn_slot:int = 1;
		public static const hair_slot:int = 2;
		public static const head_slot:int = 3;
		public static const eyes_slot:int = 4;
		public static const torso_slot:int = 5;
		public static const wings_slot:int = 6;
		public static const breasts_slot:int = 7;
		public static const nipples_slot:int = 8;
		public static const arms_slot:int = 9;
		public static const hands_slot:int = 10;
		public static const hips_slot:int = 11;
		public static const barrel_slot:int = 12;
		public static const thighs_slot:int = 13;
		public static const udder_slot:int = 14;
		public static const vag_slot:int = 15;
		public static const clit_slot:int = 16;
		public static const balls_slot:int = 17;
		public static const cock_slot:int = 18;
		public static const thorax_slot:int = 19;
		public static const abdomen_slot:int = 20;
		public static const legs_slot:int = 21;
		public static const feet_slot:int = 22;
		public static const tail_slot:int = 23;		
				
		private static var herm_sex:Sex;
		private static var futa_sex:Sex;
		private static var shemale_sex:Sex;
		private static var male_sex:Sex;
		private static var female_sex:Sex;
		private static var female_eunuch_sex:Sex;
		private static var male_eunuch_sex:Sex;
		private static var androgynous_sex:Sex;
		
		private static var sin_mob:Mob;
			private static var goo_empress_mob:Mob;
			private static var amazon_mob:Mob;
		private static var humility_mob:Mob;
		private static var kindness_mob:Mob;
		private static var patience_mob:Mob;
		private static var diligence_mob:Mob;
			private static var freedom_farm_mob:Mob;
		private static var charity_mob:Mob;			
		private static var temperance_mob:Mob;
		private static var chastity_mob:Mob;
		private static var heaven_mob:Mob;
		private static var hell_mob:Mob;
		
		private static var monster_mob:Mob;	
			
		private static var stat_names:Array;
		private static var damage_types:Array;
		private static var images:Array;
		
		public function FPalace_helper() {
			// constructor code
		}
		
		public static function get_image_by_id(image_id:int):Bitmap{
			var ret:Bitmap = null;
			if(images == null){
				images = new Array();
				images[unknown_img] = unknown;
				
				images[test_img] = image_1;
				//images[linty_1_img] = linty_1;
				
				images[background_test_img] = background_test;
				
				images[human_head_1_img] = human_head_1;
				images[human_eyes_1_img] = human_eyes_1;
				images[human_torso_1_img] = human_torso_1;
				images[human_hips_1_img] = human_hips_1;
				images[human_breasts_1_img] = human_breasts_1;
				images[human_balls_1_img] = human_balls_1;
				images[human_penis_1_img] = human_penis_1;
				images[human_leg_1_img] = human_leg_1;
				images[human_foot_1_img] = human_foot_1;
				images[human_arm_1_img] = human_arm_1;
				images[human_hand_1_img] = human_hand_1;
				
				images[goo_char_img] = goo_char_1;
				
				images[futa_cola_1_img] = futa_cola_1;
				images[view34_test_img] = view34_test;
				
				images[Button_disabledSkin_img] = Button_disabledSkin;
				images[Button_downSkin_img] = Button_downSkin;
				images[Button_emphasizedSkin_img] = Button_emphasizedSkin;
				images[Button_overSkin_img] = Button_overSkin;
				images[Button_selectedDisabledSkin_img] = Button_selectedDisabledSkin;
				images[Button_selectedDownSkin_img] = Button_selectedDownSkin;
				images[Button_selectedOverSkin_img] = Button_selectedOverSkin;
				images[Button_selectedUpSkin_img] = Button_selectedUpSkin;
				images[Button_upSkin_img] = Button_upSkin;
				
				images[ProgressBar_barSkin_img] = ProgressBar_barSkin;
				images[ProgressBar_indeterminateSkin_img] = ProgressBar_indeterminateSkin;
				images[ProgressBar_trackSkin_img] = ProgressBar_trackSkin;
				
				images[TextArea_disabledSkin_img] = TextArea_disabledSkin;
				images[TextArea_upSkin_img] = TextArea_upSkin;
				
				images[ScrollArrowDown_disabledSkin_img] = ScrollArrowDown_disabledSkin;
				images[ScrollArrowDown_downSkin_img] = ScrollArrowDown_downSkin;
				images[ScrollArrowDown_overSkin_img] = ScrollArrowDown_overSkin;
				images[ScrollArrowDown_upSkin_img] = ScrollArrowDown_upSkin;
				images[ScrollArrowUp_disabledSkin_img] = ScrollArrowUp_disabledSkin;
				images[ScrollArrowUp_downSkin_img] = ScrollArrowUp_downSkin;
				images[ScrollArrowUp_overSkin_img] = ScrollArrowUp_overSkin;
				images[ScrollArrowUp_upSkin_img] = ScrollArrowUp_upSkin;
				images[ScrollBar_thumbIcon_img] = ScrollBar_thumbIcon;
				images[ScrollThumb_downSkin_img] = ScrollThumb_downSkin;
				images[ScrollThumb_overSkin_img] = ScrollThumb_overSkin;
				images[ScrollThumb_upSkin_img] = ScrollThumb_upSkin;
				images[ScrollTrack_skin_img] = ScrollTrack_skin;
				
				images[TextInput_disabledSkin_img] = TextInput_disabledSkin;
				images[TextInput_upSkin_img] = TextInput_upSkin;
			}
			if(images[image_id] != null){
				ret = new images[image_id] as Bitmap;
			}else{
				ret = new unknown as Bitmap;
			}
			
			return ret;
		}
		
		public static function get_stat_by_id(stat_id:int):Stat{
			var ret:Stat = null;
			if(stat_names == null){
				get_stat_name_by_id(stat_id);
			}
			
			if(stat_names[stat_id] != null) ret = stat_names[stat_id];
			
			return ret;
		}
		
		public static function get_type_by_id(type_id:int):Damage_type{
			var ret:Damage_type = null;
			if(damage_types == null){
				get_stat_name_by_id(type_id);
			}
			
			if(damage_types[type_id] != null) ret = damage_types[type_id];
			
			return ret;
		}
		
		public static function get_type_name_by_id(type_id:int):String{
			var ret:String = "?";
			if(damage_types == null){
				damage_types = new Array();
				damage_types[0] = lust_damage_type();
				damage_types[1] = bludg_damage_type();
				damage_types[2] = pierce_damage_type();
				damage_types[3] = slash_damage_type();
				damage_types[4] = earth_damage_type();
				damage_types[5] = air_damage_type();
				damage_types[6] = water_damage_type();
				damage_types[7] = acid_damage_type();
				damage_types[8] = fire_damage_type();
				damage_types[9] = lit_damage_type();
			}
			
			if(damage_types[type_id] != null) ret = damage_types[type_id].get_name();
			
			return ret;
		}
		
		public static function get_empress_mob():Mob{
			if(goo_empress_mob == null){
				goo_empress_mob = new Mob();
				//likes: Sin
				goo_empress_mob.new_ally(get_sin_mob());
				goo_empress_mob.new_ally(get_amazon_mob());
				//Dislikes: ?
				
				goo_empress_mob.new_ideal(trait_semen_production());
				goo_empress_mob.new_ideal(trait_milk_production());
				
				
			}
			return goo_empress_mob;
		}
		
		public static function get_monster_mob():Mob{
			if(monster_mob == null){
				monster_mob = new Mob();
				
				monster_mob.new_enemy(get_sin_mob());
				monster_mob.new_enemy(get_amazon_mob());
				monster_mob.new_enemy(get_humility_mob());
				monster_mob.new_enemy(get_kindness_mob());
				monster_mob.new_enemy(get_patience_mob());
				monster_mob.new_enemy(get_diligence_mob());
				monster_mob.new_enemy(get_charity_mob());
				monster_mob.new_enemy(get_temperance_mob());
				monster_mob.new_enemy(get_chastity_mob());
				monster_mob.new_enemy(get_heaven_mob());
				monster_mob.new_enemy(monster_mob);
			}
			return monster_mob;
		}
		
		public static function get_freedom_farm_mob():Mob{
			if(freedom_farm_mob == null){
				freedom_farm_mob = new Mob();
				
				freedom_farm_mob.new_ally(get_diligence_mob());
				
			}
			return freedom_farm_mob;
		}
		
		public static function get_amazon_mob():Mob{
			if(amazon_mob == null){
				amazon_mob = new Mob();
				//likes: Sin
				amazon_mob.new_ally(get_sin_mob());
				amazon_mob.new_ally(get_empress_mob());
				//Dislikes: ?
				
				
				amazon_mob.new_topic(FPalace_topics.fresh_meat());				
			}
			return amazon_mob;
		}
		
		public static function get_sin_mob():Mob{
			if(sin_mob == null){
				sin_mob = new Mob();
				//likes: Patience, Temperance
				sin_mob.new_ally(get_patience_mob());
				sin_mob.new_ally(get_temperance_mob());
				//Dislikes: Chastity
				sin_mob.new_enemy(get_chastity_mob());
				
				sin_mob.new_ideal(trait_high_beauty());
				
				
			}
			return sin_mob;
		}
		
		public static function get_humility_mob():Mob{
			if(humility_mob == null){
				humility_mob = new Mob();
				//likes: Dilligence, Temperance
				humility_mob.new_ally(get_diligence_mob());
				humility_mob.new_ally(get_temperance_mob());
				//Dislikes: Humility
				humility_mob.new_enemy(humility_mob);
				
				humility_mob.new_ideal(trait_high_willpower());
				humility_mob.new_ideal(trait_beauty_loss());
				
				
			}
			return humility_mob;
		}
		
		public static function get_kindness_mob():Mob{
			if(kindness_mob == null){
				kindness_mob = new Mob();
				//likes: Chastity, Charity
				kindness_mob.new_ally(get_chastity_mob());
				kindness_mob.new_ally(get_charity_mob());
				//dislikes: Patience
				kindness_mob.new_enemy(get_patience_mob());
				
				kindness_mob.new_ideal(trait_high_strength());
				
				
			}
			return kindness_mob;
		}
		
		public static function get_patience_mob():Mob{
			if(patience_mob == null){
				patience_mob = new Mob();
				//likes: Sin, Charity
				patience_mob.new_ally(get_sin_mob());
				patience_mob.new_ally(get_charity_mob());
				//dislikes: Diligence
				patience_mob.new_enemy(get_diligence_mob());
				
				patience_mob.new_ideal(trait_high_wisdom());
				
				
			}
			return patience_mob;
		}
		
		public static function get_diligence_mob():Mob{
			if(diligence_mob == null){
				diligence_mob = new Mob();
				//likes: Humility, Chastity
				diligence_mob.new_ally(get_humility_mob());
				diligence_mob.new_ally(get_chastity_mob());
				//dislikes: Charity
				diligence_mob.new_enemy(get_charity_mob());
				
				diligence_mob.new_ideal(trait_high_intelligence());
				
				
			}
			return diligence_mob;
		}
		
		public static function get_charity_mob():Mob{
			if(charity_mob == null){
				charity_mob = new Mob();
				//likes: Kindness, Patience
				charity_mob.new_ally(get_kindness_mob());
				charity_mob.new_ally(get_patience_mob());
				//dislikes: Temperance
				charity_mob.new_enemy(get_temperance_mob());
				
				charity_mob.new_ideal(trait_high_dexterity());
				
				
			}
			return charity_mob;
		}
		
		public static function get_temperance_mob():Mob{
			if(temperance_mob == null){
				temperance_mob = new Mob();
				//likes: Humility, Sin
				temperance_mob.new_ally(get_humility_mob());
				temperance_mob.new_ally(get_sin_mob());
				//dislikes: Kindness
				temperance_mob.new_enemy(get_kindness_mob());
				
				temperance_mob.new_ideal(trait_high_constitution());
				
				
			}
			return temperance_mob;
		}
		
		public static function get_chastity_mob():Mob{
			if(chastity_mob == null){
				chastity_mob = new Mob();
				//likes: Diligence, Kindness
				chastity_mob.new_ally(get_diligence_mob());
				chastity_mob.new_ally(get_kindness_mob());
				//dislikes: Sin
				chastity_mob.new_enemy(get_sin_mob());
				
				chastity_mob.new_ideal(trait_high_charisma());
				
				//Should add a dislike for lust increases/decreases that is equal to or greater then the normal character like of lust changes
			}
			return chastity_mob;
		}
		
		public static function get_heaven_mob():Mob{
			if(heaven_mob == null){
				heaven_mob = new Mob();
				
				heaven_mob.new_enemy(get_hell_mob());
			}
			
			return heaven_mob;
		}
		
		public static function get_hell_mob():Mob{
			if(hell_mob == null){
				hell_mob = new Mob();
				
				hell_mob.new_enemy(get_heaven_mob());
			}
			
			return hell_mob;
		}
		
		
		public static function get_stat_name_by_id(stat_id:int):String{
			var ret:String = "?";
			if(stat_names == null){
				stat_names = new Array();
				stat_names[str_id] = stat_strength();
				stat_names[dex_id] = stat_dexterity();
				stat_names[con_id] = stat_constitution();
				stat_names[sex_appeal_id] = stat_sex_appeal();
				stat_names[int_id] = stat_intelligence();
				stat_names[wis_id] = stat_wisdom();
				stat_names[will_id] = stat_willpower();
				stat_names[cha_id] = stat_charisma();
				stat_names[max_hp_id] = stat_max_hp();
				stat_names[lust_id] = stat_lust();
				stat_names[curr_hp_id] = stat_curr_hp();
				stat_names[max_lust_id] = stat_max_lust();
				stat_names[penis_length_id] = stat_penis_length();
				stat_names[penis_girth_id] = stat_penis_girth();
				stat_names[breast_size_id] = stat_breast_size();
				stat_names[nipple_size_id] = stat_nipple_length();
				stat_names[balls_size_id] = stat_ball_size();
				stat_names[bust_id] = stat_bust();
				stat_names[waist_id] = stat_waist();
				stat_names[hips_id] = stat_hips();
				stat_names[cum_volume_id] = stat_cum_volume();
				stat_names[anal_width_id] = stat_anal_width();
				stat_names[anal_depth_id] = stat_anal_depth();
				stat_names[vaginal_width_id] = stat_vaginal_width();
				stat_names[vaginal_depth_id] = stat_vaginal_depth();
				stat_names[milk_volume_id] = stat_milk_volume();
				stat_names[min_lust_id] = stat_min_lust();
				stat_names[age_id] = stat_age();
				stat_names[semen_fertility_id] = stat_semen_fertility();
				stat_names[egg_fertility_id] = stat_womb_fertility();
				stat_names[bloat_id] = stat_bloat();
				stat_names[height_id] = stat_height();
				stat_names[clit_length] = stat_clit_length();
				stat_names[biomass_consumed] = stat_biomass_consumed();
				stat_names[curr_mp_id] = stat_curr_mp();
				stat_names[max_mp_id] = stat_max_mp();
				stat_names[curr_fatigue_id] = stat_curr_fatigue();
				stat_names[max_fatigue_id] = stat_max_fatigue();
				stat_names[erection_ratio_id] = stat_erection_ratio();
				stat_names[weight_id] = stat_weight();
				stat_names[max_weight_id] = stat_max_weight();
				stat_names[hair_length_id] = stat_hair_length();
				stat_names[hair_colour_id] = stat_hair_colour();
				stat_names[eye_colour_id] = stat_eye_colour();
				stat_names[skin_colour_id] = stat_skin_colour();
				stat_names[goo_colour_id] = stat_goo_colour();
				stat_names[fur_colour_id] = stat_fur_colour();
				stat_names[scale_colour_id] = stat_scale_colour();
			}
			
			if(stat_names[stat_id] != null) ret = stat_names[stat_id].get_name();
			
			return ret;
		}
		
		public static function new_head(r:Race):Body_part{
			var p:Body_part = new Body_part();
				p.set_name("head");
				p.set_part_id(FPalace_helper.head_slot);
				p.add_description("</pronoun> is a </r>");
				
				p.new_connect_slot(torso_slot);
				p.new_connect_slot(thorax_slot);
				p.new_connect_slot(barrel_slot);
				p.new_connect_slot(horn_slot);
				p.new_connect_slot(hair_slot);
				p.new_connect_slot(eyes_slot);
				p.set_display_direction(Body_part.display_top);
				p.set_display_length_stat(FPalace_helper.height_id);
				
				p.set_display_width_stat(FPalace_helper.height_id);
				p.set_display_width_mod(0.64)
				
				p.set_crit_part();
				p.new_stat(FPalace_helper.max_hp_id, FPalace_helper.stat_max_hp(),1);
				p.new_stat(FPalace_helper.curr_hp_id, FPalace_helper.stat_curr_hp(), 1);
				p.new_stat(FPalace_helper.max_fatigue_id, FPalace_helper.stat_max_fatigue(),1);
				p.new_stat(FPalace_helper.curr_fatigue_id, FPalace_helper.stat_curr_fatigue(), 1);
				p.new_stat(FPalace_helper.max_lust_id, FPalace_helper.stat_max_lust(), 50);
				p.new_stat(FPalace_helper.lust_id, FPalace_helper.stat_lust(), 0);
				p.new_stat(FPalace_helper.sex_appeal_id, FPalace_helper.stat_sex_appeal(), 1);
				p.new_stat(FPalace_helper.wis_id, FPalace_helper.stat_wisdom(), 5);
				p.new_stat(FPalace_helper.will_id, FPalace_helper.stat_willpower(), 5);
				p.new_stat(FPalace_helper.int_id, FPalace_helper.stat_intelligence(), 5);
				p.new_stat(FPalace_helper.max_mp_id, FPalace_helper.stat_max_mp(),1);
				p.new_stat(FPalace_helper.curr_mp_id, FPalace_helper.stat_curr_mp(), 1);
				p.new_stat(FPalace_helper.cha_id, FPalace_helper.stat_charisma(), 5);
				
				p.new_stat(FPalace_helper.height_id, FPalace_helper.stat_height(), 10);
				
				var a:Action = new Action();
				a.set_name("Talk down");
				a.set_attack_flag(Action.attack_type_single_target, "Skills");
				a.set_attack_description("Attempt to talk an opponent out of fighting you. ");
				a.set_requirement(FPalace_helper.curr_mp_id,1);
				var challenge:Challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.people_id);
				challenge.set_defense_stat(FPalace_skills.concentration_id);
				challenge.set_variability(20);
				challenge.set_text("Talk down");
				var consequence:Consequence = new Consequence();
				consequence.amt_by_roll_flag();
				consequence.add_consequence(-Character.relations_affect_id,Consequence.amt_from_roll_const, "</n2> tries to talk </n> out of fighting, and provides a persuasive argument. ",0);
				consequence.add_consequence(Character.relations_affect_id,1, "",0,0,0,-1,true);
				consequence.add_consequence(Character.relations_affect_id,Consequence.amt_from_roll_const, "</n2> tries to talk </n> down, but only seems to anger </objnoun> more. ",-1);
				consequence.add_consequence(Character.relations_affect_id,-1, "",-1,0,0,-1,true);
				
				a.add_challenge(challenge,consequence);
								
			p.new_attack(a);
				
			p.set_race(r);
			return p;
		}
		
		public static function new_hair(r:Race, s1:int = 1, s2:Number = 5.9):Body_part{
			var p:Body_part = new Body_part();
				p.set_name("hair");
				p.set_part_id(FPalace_helper.hair_slot);
				p.add_description("</noun> </bpn> is </r>");
				
				p.new_connect_slot(head_slot);
				p.set_display_direction(Body_part.display_back);
				//p.set_display_length_stat(FPalace_helper.height_id);
				
				p.new_stat(hair_length_id, stat_hair_length(), s1);
				
				var ps:Body_part_state = new Body_part_state();
					ps.new_ratio_stat(FPalace_helper.hair_length_id);
					ps.new_ratio_stat(FPalace_helper.height_id);
					ps.new_comparison("<=", 0.005, 1, "", "and is only evident as stuble. " );
					ps.new_comparison("<=", 0.02, 1, "", "and is cut short and uniform. " );
					ps.new_comparison("<=", 0.05, 1, "", "and falls to </noun> ears. " );
					ps.new_comparison("<=", 0.1, 1, "", "and is shoulder length. " );
					ps.new_comparison("<=", 0.2, 1, "", "and falls past </noun> shoulders. " );
					ps.new_comparison("<", 0.4, 1, "", "and falls to midback. ");
					ps.new_comparison(">=", 0.4, 1, "", "and trails down to </noun> backside. ");
					
				p.set_part_state(ps);
				
				p.new_stat(hair_colour_id, stat_hair_colour(), s2);
				
				p.new_stat(FPalace_helper.sex_appeal_id, FPalace_helper.stat_sex_appeal(), 1);
				
				
			p.set_race(r);
			return p;
		}
		
		public static function new_eyes(r:Race, s1:int = 0):Body_part{
			var p:Body_part = new Body_part();
				p.set_name("eyes");
				p.set_part_id(FPalace_helper.eyes_slot);
				p.add_description("</noun> </bpn> are </r>");
				
				p.new_connect_slot(head_slot);
				p.set_display_direction(Body_part.display_front);
				//p.set_display_length_stat(FPalace_helper.height_id);
				
				p.set_display_length_stat(FPalace_helper.height_id);
				p.set_display_length_mod(0.15);
				
				p.set_display_width_stat(FPalace_helper.height_id);
				p.set_display_width_mod(0.44);
				
				p.new_stat(eye_colour_id, stat_eye_colour(), s1);
				
				p.new_stat(FPalace_helper.sex_appeal_id, FPalace_helper.stat_sex_appeal(), 1);
				
			p.set_race(r);
			return p;
		}
		
		public static function new_left_arms(r:Race):Body_part{
			var p:Body_part = new Body_part();
				p.set_name("left arm");
				p.set_pair_name("arms");
				p.set_part_id(FPalace_helper.arms_slot);
				p.add_description("</noun> </bpn> is </r>");
				p.add_pair_description("</noun> </bpn> are </r>");
				
				p.new_connect_slot(torso_slot);
				p.new_connect_slot(thorax_slot);
				p.new_connect_slot(hands_slot);
				
				p.set_display_direction(Body_part.display_left);
				p.set_display_length_stat(FPalace_helper.height_id);
				
				p.set_display_width_stat(FPalace_helper.str_id);
				p.set_display_width_mod(2);
				
				var a:Action = new Action();
				a.set_name("Defend");
				a.set_attack_flag(Action.attack_type_self_target);
				a.set_attack_description("Defend yourself from a single attack. ");
				var challenge:Challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.blocking_id);
				challenge.set_defense_stat(-1, 0);
				challenge.set_variability(0);
				challenge.set_text("Defend");
				var consequence:Consequence = new Consequence();
				consequence.set_change_skills();
				
					var tf:Tick_Effect = new Tick_Effect();
					tf.set_end_tick(1);
					var c2:Consequence = new Consequence();
					c2.set_change_skills();
					c2.add_consequence(FPalace_skills.blocking_id,-10, "</n> stops blocking. ", 0);
					
					tf.set_end_consequence(c2);
					
				consequence.add_consequence(FPalace_skills.blocking_id,10, "</n2> defends </objnoun>self. ",0,0,0,-1, false, tf);
				
				a.add_challenge(challenge,consequence);
				
				p.new_attack(a);
				
				p.new_stat(FPalace_helper.max_hp_id, FPalace_helper.stat_max_hp(),1);
				p.new_stat(FPalace_helper.curr_hp_id, FPalace_helper.stat_curr_hp(), 1);
				p.new_stat(FPalace_helper.max_fatigue_id, FPalace_helper.stat_max_fatigue(),1);
				p.new_stat(FPalace_helper.curr_fatigue_id, FPalace_helper.stat_curr_fatigue(), 1);
				p.new_stat(FPalace_helper.sex_appeal_id, FPalace_helper.stat_sex_appeal(), 0.5);
				p.new_stat(FPalace_helper.str_id, FPalace_helper.stat_strength(), 1);
				p.new_stat(FPalace_helper.dex_id, FPalace_helper.stat_dexterity(), 1);
				p.new_stat(FPalace_helper.con_id, FPalace_helper.stat_constitution(), 1);
				p.new_stat(FPalace_helper.height_id, FPalace_helper.stat_height(), 17);
				
			p.set_race(r);
			return p;
		}
		
		public static function new_right_arms(r:Race):Body_part{
			var p:Body_part = new Body_part();
				p.set_name("right arm");
				p.set_pair_name("arms");
				p.set_part_id(FPalace_helper.arms_slot);
				p.add_description("</noun> </bpn> is </r>");
				p.add_pair_description("</noun> </bpn> are </r>");
				
				p.new_connect_slot(torso_slot);
				p.new_connect_slot(thorax_slot);
				p.new_connect_slot(hands_slot);
				
				p.set_display_direction(Body_part.display_right);
				p.set_display_length_stat(FPalace_helper.height_id);
				
				p.set_display_width_stat(FPalace_helper.str_id);
				p.set_display_width_mod(2);
				
				p.set_mirror_display();
				
				var a:Action = new Action();
				a.set_name("Defend");
				a.set_attack_flag(Action.attack_type_self_target);
				a.set_attack_description("Defend yourself from a single attack. ");
				var challenge:Challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.blocking_id);
				challenge.set_defense_stat(-1, 0);
				challenge.set_variability(0);
				challenge.set_text("Defend");
				var consequence:Consequence = new Consequence();
				consequence.set_change_skills();
				
					var tf:Tick_Effect = new Tick_Effect();
					tf.set_end_tick(1);
					var c2:Consequence = new Consequence();
					c2.set_change_skills();
					c2.add_consequence(FPalace_skills.blocking_id,-10, "</n> stops blocking. ", 0);
					
					tf.set_end_consequence(c2);
					
				consequence.add_consequence(FPalace_skills.blocking_id,10, "</n2> defends </objnoun>self. ",0,0,0,-1, false, tf);
				
				a.add_challenge(challenge,consequence);
				
				p.new_attack(a);
				
				p.new_stat(FPalace_helper.max_hp_id, FPalace_helper.stat_max_hp(),1);
				p.new_stat(FPalace_helper.curr_hp_id, FPalace_helper.stat_curr_hp(), 1);
				p.new_stat(FPalace_helper.max_fatigue_id, FPalace_helper.stat_max_fatigue(),1);
				p.new_stat(FPalace_helper.curr_fatigue_id, FPalace_helper.stat_curr_fatigue(), 1);
				p.new_stat(FPalace_helper.sex_appeal_id, FPalace_helper.stat_sex_appeal(), 0.5);
				p.new_stat(FPalace_helper.str_id, FPalace_helper.stat_strength(), 1);
				p.new_stat(FPalace_helper.dex_id, FPalace_helper.stat_dexterity(), 1);
				p.new_stat(FPalace_helper.con_id, FPalace_helper.stat_constitution(), 1);
				p.new_stat(FPalace_helper.height_id, FPalace_helper.stat_height(), 17);
				
			p.set_race(r);
			return p;
		}
		
		public static function new_left_hands(r:Race):Body_part{
			var p:Body_part = new Body_part();
				p.set_name("left hand");
				p.set_pair_name("hands");
				p.set_part_id(FPalace_helper.hands_slot);
				p.add_description("</noun> </bpn> is </r>");
				p.add_pair_description("</noun> </bpn> are </r>");
				p.set_num_hold_slots(1);
				
				p.new_connect_slot(arms_slot);
				
				p.set_display_direction(Body_part.display_bottom);
				p.set_display_length_stat(FPalace_helper.height_id);
				
				p.set_display_width_stat(FPalace_helper.str_id);
				p.set_display_width_mod(2);
				
				var inter_chal:Challenge = new Challenge(true);
				inter_chal.set_attack_stat(FPalace_skills.concentration_id);
				inter_chal.set_defense_stat(-1,10);
				inter_chal.set_variability(10);
			
				var a:Action = new Action();
				a.set_name("Attack");
				a.set_attack_flag();
				a.set_attack_description("Strike out at a single foe. ");
				a.set_attack_order(0);
				a.set_fire_weapon_challenge();
				//dodge
				var challenge:Challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.striking_id);
				challenge.set_defense_stat(FPalace_skills.dodging_id);
				challenge.set_variability(10);
				challenge.set_text("Attack");
				var consequence:Consequence = new Consequence();
				consequence.set_damage_type(FPalace_helper.bludg_damage_type().get_id());
				consequence.add_consequence(FPalace_helper.curr_hp_id,-1, "</n2> lashes out and strikes </n> successfully, ",0,1,0,1);
				consequence.set_interupt_chal(inter_chal);
				consequence.add_consequence(0,0, "</n2> misses. ",-1);
				
				a.add_challenge(challenge,consequence);
				
				//parry
				challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.striking_id);
				challenge.set_defense_stat(FPalace_skills.parrying_id);
				challenge.set_variability(10);
				challenge.set_text("");
				consequence = new Consequence();
				consequence.set_damage_type(FPalace_helper.bludg_damage_type().get_id());
				consequence.add_consequence(FPalace_helper.curr_hp_id,-1, "",0,1,0,2);
				consequence.set_interupt_chal(inter_chal);
				consequence.add_consequence(0,0, "</n> manages to parry the blow however! ",-1);
				
				a.add_challenge(challenge,consequence);
				//block
				challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.striking_id);
				challenge.set_defense_stat(FPalace_skills.blocking_id);
				challenge.set_variability(10);
				challenge.set_text("");
				consequence = new Consequence();
				consequence.set_damage_type(FPalace_helper.bludg_damage_type().get_id());
				consequence.set_max_damage(5);
				consequence.add_consequence(FPalace_helper.curr_hp_id,Consequence.amt_from_roll_const, "and lands a clean hit upon </n>. ",0);
				consequence.set_interupt_chal(inter_chal);
				
					var tf:Tick_Effect = new Tick_Effect();
					tf.set_status_id(Tick_Effect.prone_status);
					tf.set_end_tick(4);
					var c2:Consequence = new Consequence();
					c2.add_consequence(FPalace_helper.dex_id,1, "</n> recovers </noun> feet. ", 0);
					
					tf.set_end_consequence(c2);
					
					c2 = new Consequence();
					c2.add_consequence(FPalace_helper.dex_id,-1, "</n> struggles to keep </noun> feet. ", 0);
					tf.set_tick_consequence(1, c2);
					
				consequence.add_consequence(FPalace_helper.curr_hp_id,0, "</n2> manages to unbalance </n>. ",5,0,0,-1, false, tf);
				consequence.add_consequence(FPalace_helper.curr_hp_id,-1, "</n> blocks most of the blow. ",-1);
				consequence.amt_by_roll_flag();
				
				a.add_challenge(challenge,consequence);
				
				p.new_attack(a);
				
				a = new Action();
				a.set_name("Use Item");
				a.set_attack_flag(Action.attack_type_self_target);
				a.set_attack_description("Use an item on yourself. ");
				challenge = new Challenge(true);
				challenge.set_attack_stat(-1,1);
				challenge.set_defense_stat(-1,0);
				challenge.set_variability(0);
				challenge.set_text("Use Item");
				
				var dconsequence:Dynamic_Consequence = new Dynamic_Consequence();
				dconsequence.set_consequence_list("", Dynamic_Consequence.list_inventory, Dynamic_Consequence.list_useitem);
				dconsequence.add_consequence(0,0,"", 0);
				
				a.add_challenge(challenge,dconsequence);
				
				p.new_attack(a);
				
				p.new_stat(FPalace_helper.max_hp_id, FPalace_helper.stat_max_hp(),1);
				p.new_stat(FPalace_helper.curr_hp_id, FPalace_helper.stat_curr_hp(), 1);
				p.new_stat(FPalace_helper.max_fatigue_id, FPalace_helper.stat_max_fatigue(),1);
				p.new_stat(FPalace_helper.curr_fatigue_id, FPalace_helper.stat_curr_fatigue(), 1);
				p.new_stat(FPalace_helper.sex_appeal_id, FPalace_helper.stat_sex_appeal(), 0.5);
				p.new_stat(FPalace_helper.str_id, FPalace_helper.stat_strength(), 1);
				p.new_stat(FPalace_helper.dex_id, FPalace_helper.stat_dexterity(), 1);
				p.new_stat(FPalace_helper.con_id, FPalace_helper.stat_constitution(), 1);
				p.new_stat(FPalace_helper.height_id, FPalace_helper.stat_height(), 7);
				
			p.set_race(r);
			return p;
		}
		
		public static function new_right_hands(r:Race):Body_part{
			var p:Body_part = new Body_part();
				p.set_name("right hand");
				p.set_pair_name("hands");
				p.set_part_id(FPalace_helper.hands_slot);
				p.add_description("</noun> </bpn> is </r>");
				p.add_pair_description("</noun> </bpn> are </r>");
				p.set_num_hold_slots(1);
				
				p.new_connect_slot(arms_slot);
				
				p.set_display_direction(Body_part.display_bottom);
				p.set_display_length_stat(FPalace_helper.height_id);
				
				p.set_display_width_stat(FPalace_helper.str_id);
				p.set_display_width_mod(2);
				
				p.set_mirror_display();
				
				var inter_chal:Challenge = new Challenge(true);
				inter_chal.set_attack_stat(FPalace_skills.concentration_id);
				inter_chal.set_defense_stat(-1,10);
				inter_chal.set_variability(10);
			
				var a:Action = new Action();
				a.set_name("Attack");
				a.set_attack_flag();
				a.set_attack_description("Strike out at a single foe. ");
				a.set_attack_order(0);
				a.set_fire_weapon_challenge();
				//dodge
				var challenge:Challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.striking_id);
				challenge.set_defense_stat(FPalace_skills.dodging_id);
				challenge.set_variability(10);
				challenge.set_text("Attack");
				var consequence:Consequence = new Consequence();
				consequence.set_damage_type(FPalace_helper.bludg_damage_type().get_id());
				consequence.add_consequence(FPalace_helper.curr_hp_id,-1, "</n2> lashes out and strikes </n> successfully, ",0,1,0,1);
				consequence.set_interupt_chal(inter_chal);
				consequence.add_consequence(0,0, "</n2> misses. ",-1);
				
				a.add_challenge(challenge,consequence);
				
				//parry
				challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.striking_id);
				challenge.set_defense_stat(FPalace_skills.parrying_id);
				challenge.set_variability(10);
				challenge.set_text("");
				consequence = new Consequence();
				consequence.set_damage_type(FPalace_helper.bludg_damage_type().get_id());
				consequence.add_consequence(FPalace_helper.curr_hp_id,-1, "",0,1,0,2);
				consequence.set_interupt_chal(inter_chal);
				consequence.add_consequence(0,0, "</n> manages to parry the blow however! ",-1);
				
				a.add_challenge(challenge,consequence);
				//block
				challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.striking_id);
				challenge.set_defense_stat(FPalace_skills.blocking_id);
				challenge.set_variability(10);
				challenge.set_text("");
				consequence = new Consequence();
				consequence.set_damage_type(FPalace_helper.bludg_damage_type().get_id());
				consequence.set_max_damage(5);
				consequence.add_consequence(FPalace_helper.curr_hp_id,Consequence.amt_from_roll_const, "and lands a clean hit upon </n>. ",0);
				consequence.set_interupt_chal(inter_chal);
				
					var tf:Tick_Effect = new Tick_Effect();
					tf.set_status_id(Tick_Effect.prone_status);
					tf.set_end_tick(4);
					var c2:Consequence = new Consequence();
					c2.add_consequence(FPalace_helper.dex_id,1, "</n> recovers </noun> feet. ", 0);
					
					tf.set_end_consequence(c2);
					
					c2 = new Consequence();
					c2.add_consequence(FPalace_helper.dex_id,-1, "</n> struggles to keep </noun> feet. ", 0);
					tf.set_tick_consequence(1, c2);
					
				consequence.add_consequence(FPalace_helper.curr_hp_id,0, "</n2> manages to unbalance </n>. ",5,0,0,-1, false, tf);
				consequence.add_consequence(FPalace_helper.curr_hp_id,-1, "but </n> blocks most of the blow. ",-1);
				consequence.amt_by_roll_flag();
				
				a.add_challenge(challenge,consequence);
				
				p.new_attack(a);
				
				a = new Action();
				a.set_name("Use Item");
				a.set_attack_flag(Action.attack_type_self_target);
				a.set_attack_description("Use an item on yourself. ");
				challenge = new Challenge(true);
				challenge.set_attack_stat(-1,1);
				challenge.set_defense_stat(-1,0);
				challenge.set_variability(0);
				challenge.set_text("Use Item");
				
				var dconsequence:Dynamic_Consequence = new Dynamic_Consequence();
				dconsequence.set_consequence_list("", Dynamic_Consequence.list_inventory, Dynamic_Consequence.list_useitem);
				dconsequence.add_consequence(0,0,"", 0);
				
				a.add_challenge(challenge,dconsequence);
				
				p.new_attack(a);
				
				p.new_stat(FPalace_helper.max_hp_id, FPalace_helper.stat_max_hp(),1);
				p.new_stat(FPalace_helper.curr_hp_id, FPalace_helper.stat_curr_hp(), 1);
				p.new_stat(FPalace_helper.max_fatigue_id, FPalace_helper.stat_max_fatigue(),1);
				p.new_stat(FPalace_helper.curr_fatigue_id, FPalace_helper.stat_curr_fatigue(), 1);
				p.new_stat(FPalace_helper.sex_appeal_id, FPalace_helper.stat_sex_appeal(), 0.5);
				p.new_stat(FPalace_helper.str_id, FPalace_helper.stat_strength(), 1);
				p.new_stat(FPalace_helper.dex_id, FPalace_helper.stat_dexterity(), 1);
				p.new_stat(FPalace_helper.con_id, FPalace_helper.stat_constitution(), 1);
				p.new_stat(FPalace_helper.height_id, FPalace_helper.stat_height(), 7);
				
			p.set_race(r);
			return p;
		}
		
		public static function new_left_feet(r:Race):Body_part{
			var p:Body_part = new Body_part();
				p.set_name("left foot");
				p.set_pair_name("feet");
				p.set_part_id(FPalace_helper.feet_slot);
				p.add_description("</noun> </bpn> is </r>");
				p.add_pair_description("</noun> </bpn> are </r>");
				
				p.new_connect_slot(legs_slot);
				
				p.set_display_direction(Body_part.display_bottom);
				
				p.set_display_length_stat(FPalace_helper.height_id);
				
				var a:Action = new Action();
				a.set_name("Run Away!");
				a.set_attack_flag(Action.attack_type_all_enemy_target_single_conseq);//should target all enemies
				a.set_attack_description("Run from combat to the nearest exit. ");
				var challenge:Challenge = new Challenge();
				
				challenge.set_attack_stat(FPalace_helper.dex_id);
				challenge.set_defense_stat(FPalace_helper.dex_id);
				challenge.set_variability(6);
				challenge.set_text("Run Away!");
				var rconsequence:Room_Consequence = new Room_Consequence();
				rconsequence.add_consequence(0,0, "</n2> runs away from </n>! ",0);
				rconsequence.add_consequence(0,0, "</n2> tries to run away, but </n> stops </objnoun2>. ",-1);
				rconsequence.add_room_effect();
				a.add_challenge(challenge,rconsequence);
				p.new_attack(a);
				
				p.new_stat(FPalace_helper.max_hp_id, FPalace_helper.stat_max_hp(),1);
				p.new_stat(FPalace_helper.curr_hp_id, FPalace_helper.stat_curr_hp(), 1);
				p.new_stat(FPalace_helper.max_fatigue_id, FPalace_helper.stat_max_fatigue(),1);
				p.new_stat(FPalace_helper.curr_fatigue_id, FPalace_helper.stat_curr_fatigue(), 1);
				p.new_stat(FPalace_helper.sex_appeal_id, FPalace_helper.stat_sex_appeal(), 0.5);
				
				p.new_stat(FPalace_helper.height_id, FPalace_helper.stat_height(), 6);
				p.new_stat(FPalace_helper.str_id, FPalace_helper.stat_strength(), 1);
				p.new_stat(FPalace_helper.dex_id, FPalace_helper.stat_dexterity(), 1);
				p.new_stat(FPalace_helper.con_id, FPalace_helper.stat_constitution(), 1);
				
			p.set_race(r);
			return p;
		}
		
		public static function new_right_feet(r:Race):Body_part{
			var p:Body_part = new Body_part();
				p.set_name("right foot");
				p.set_pair_name("feet");
				p.set_part_id(FPalace_helper.feet_slot);
				p.add_description("</noun> </bpn> is </r>");
				p.add_pair_description("</noun> </bpn> are </r>");
				
				p.new_connect_slot(legs_slot);
				
				p.set_display_direction(Body_part.display_bottom);
				
				p.set_display_length_stat(FPalace_helper.height_id);
				
				p.set_mirror_display();
				
				var a:Action = new Action();
				a.set_name("Run Away!");
				a.set_attack_flag(Action.attack_type_all_enemy_target_single_conseq);//should target all enemies
				a.set_attack_description("Run from combat to the nearest exit. ");
				var challenge:Challenge = new Challenge();
				
				challenge.set_attack_stat(FPalace_helper.dex_id);
				challenge.set_defense_stat(FPalace_helper.dex_id);
				challenge.set_variability(6);
				challenge.set_text("Run Away!");
				var rconsequence:Room_Consequence = new Room_Consequence();
				rconsequence.add_consequence(0,0, "</n2> runs away from </n>! ",0);
				rconsequence.add_consequence(0,0, "</n2> tries to run away, but </n> stops </objnoun2>. ",-1);
				rconsequence.add_room_effect();
				a.add_challenge(challenge,rconsequence);
				p.new_attack(a);
				
				p.new_stat(FPalace_helper.max_hp_id, FPalace_helper.stat_max_hp(),1);
				p.new_stat(FPalace_helper.curr_hp_id, FPalace_helper.stat_curr_hp(), 1);
				p.new_stat(FPalace_helper.max_fatigue_id, FPalace_helper.stat_max_fatigue(),1);
				p.new_stat(FPalace_helper.curr_fatigue_id, FPalace_helper.stat_curr_fatigue(), 1);
				p.new_stat(FPalace_helper.sex_appeal_id, FPalace_helper.stat_sex_appeal(), 0.5);
				
				p.new_stat(FPalace_helper.height_id, FPalace_helper.stat_height(), 6);
				p.new_stat(FPalace_helper.str_id, FPalace_helper.stat_strength(), 1);
				p.new_stat(FPalace_helper.dex_id, FPalace_helper.stat_dexterity(), 1);
				p.new_stat(FPalace_helper.con_id, FPalace_helper.stat_constitution(), 1);
				
			p.set_race(r);
			return p;
		}
				
		public static function new_horns(r:Race):Body_part{
			var p:Body_part = new Body_part();
				p.set_name("horns");
				p.set_part_id(FPalace_helper.horn_slot);
				p.add_description("</noun> </bpn> are </r>");
				
				p.new_connect_slot(head_slot);
				
				p.set_display_direction(Body_part.display_front);
				
				//p.set_display_length_stat(FPalace_helper.height_id);
				
				p.new_stat(FPalace_helper.max_hp_id, FPalace_helper.stat_max_hp(),1);
				p.new_stat(FPalace_helper.curr_hp_id, FPalace_helper.stat_curr_hp(), 1);
				p.new_stat(FPalace_helper.sex_appeal_id, FPalace_helper.stat_sex_appeal(), 1);
				
				//Should have a "gore" attack
				var a:Action = new Action();
				a.set_name("Gore");
				a.set_attack_flag(Action.attack_type_single_target, "Skills")
				a.set_attack_description("Strike out at a single foe with your horns. ");
				a.set_requirement(FPalace_helper.curr_fatigue_id,1);
				var challenge:Challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.melee_id);
				challenge.set_defense_stat(FPalace_skills.dodging_id);
				challenge.set_variability(10);
				challenge.set_text("Gore");
				var consequence:Consequence = new Consequence();
				var inter_chal:Challenge = new Challenge(true);
					inter_chal.set_attack_stat(FPalace_skills.concentration_id);
					inter_chal.set_defense_stat(-1,4);
					inter_chal.set_variability(10);
				
				consequence.set_damage_type(FPalace_helper.pierce_damage_type().get_id());
				consequence.set_interupt_chal(inter_chal);
				consequence.set_max_damage(10);
				consequence.add_consequence(FPalace_helper.curr_hp_id,Consequence.amt_from_roll_const, "</n2> charges into </n> with </noun2> horns. ",0);
				consequence.add_consequence(0,0, "</n2> charges forward aimlessly. ",-1);
				consequence.amt_by_roll_flag();
				
				a.add_challenge(challenge,consequence);
				
				p.new_attack(a);
				
			p.set_race(r);
			return p;
		}
		
		
		public static function new_udder(r:Race):Body_part{
			var p:Body_part = new Body_part();
				p.set_name("udder");
				p.set_part_id(FPalace_helper.udder_slot);
				p.add_description("</noun> </bpn> is </r>");
				
				p.new_connect_slot(hips_slot);
				
				p.new_stat(FPalace_helper.max_hp_id, FPalace_helper.stat_max_hp(),1);
				p.new_stat(FPalace_helper.curr_hp_id, FPalace_helper.stat_curr_hp(), 1);
				p.new_stat(FPalace_helper.max_fatigue_id, FPalace_helper.stat_max_fatigue(),1);
				p.new_stat(FPalace_helper.curr_fatigue_id, FPalace_helper.stat_curr_fatigue(), 1);
				p.new_stat(FPalace_helper.sex_appeal_id, FPalace_helper.stat_sex_appeal(), 1);
				p.new_stat(FPalace_helper.milk_volume_id, FPalace_helper.stat_milk_volume(), 500);
				
				p.set_display_direction(Body_part.display_front);
				
				p.set_display_length_stat(FPalace_helper.breast_size_id);
				p.set_display_length_mod(1);
				
				p.set_display_width_stat(FPalace_helper.breast_size_id);
				p.set_display_width_mod(1);
				
				
			p.set_race(r);
			return p;
		}
		
		public static function new_tail(r:Race):Body_part{
			var p:Body_part = new Body_part();
				p.set_name("tail");
				p.set_part_id(FPalace_helper.tail_slot);
				p.add_description("</noun> </bpn> is </r>");
				
				p.new_connect_slot(hips_slot);
				
				p.set_display_direction(Body_part.display_back);
				
				p.set_display_length_stat(FPalace_helper.height_id);
				
				p.new_stat(FPalace_helper.max_hp_id, FPalace_helper.stat_max_hp(),1);
				p.new_stat(FPalace_helper.curr_hp_id, FPalace_helper.stat_curr_hp(), 1);
				p.new_stat(FPalace_helper.max_fatigue_id, FPalace_helper.stat_max_fatigue(),1);
				p.new_stat(FPalace_helper.curr_fatigue_id, FPalace_helper.stat_curr_fatigue(), 1);
				p.new_stat(FPalace_helper.sex_appeal_id, FPalace_helper.stat_sex_appeal(), 1);
				p.new_stat(FPalace_helper.dex_id, FPalace_helper.stat_dexterity(), 1);
				p.new_stat(FPalace_helper.height_id, FPalace_helper.stat_height(), 24);
				
				
				
			p.set_race(r);
			return p;
		}
		
		public static function new_left_legs(r:Race):Body_part{
			var p:Body_part = new Body_part();
				p.set_name("left leg");
				p.set_pair_name("legs");
				p.set_part_id(FPalace_helper.legs_slot);
				p.add_description("</noun> </bpn> is </r>");
				p.add_pair_description("</noun> </bpn> are </r>");
				
				p.new_connect_slot(hips_slot);
				p.new_connect_slot(barrel_slot);
				p.new_connect_slot(thighs_slot);
				p.new_connect_slot(abdomen_slot);
				p.new_connect_slot(feet_slot);
				
				p.set_display_direction(Body_part.display_bottom_left);
				
				p.set_display_length_stat(FPalace_helper.height_id);
				
				p.set_display_width_stat(FPalace_helper.hips_id);
				p.set_display_width_mod(0.14);
				
				p.new_stat(FPalace_helper.max_hp_id, FPalace_helper.stat_max_hp(),1);
				p.new_stat(FPalace_helper.curr_hp_id, FPalace_helper.stat_curr_hp(), 1);
				p.new_stat(FPalace_helper.max_fatigue_id, FPalace_helper.stat_max_fatigue(),1);
				p.new_stat(FPalace_helper.curr_fatigue_id, FPalace_helper.stat_curr_fatigue(), 1);
				p.new_stat(FPalace_helper.sex_appeal_id, FPalace_helper.stat_sex_appeal(), 0.5);
				p.new_stat(FPalace_helper.str_id, FPalace_helper.stat_strength(), 1);
				p.new_stat(FPalace_helper.dex_id, FPalace_helper.stat_dexterity(), 1);
				p.new_stat(FPalace_helper.con_id, FPalace_helper.stat_constitution(), 1);
				p.new_stat(FPalace_helper.height_id, FPalace_helper.stat_height(), 27);
				
				/*var a:Action = new Action();
				a.set_name("Knee");
				a.set_attack_flag(Action.attack_type_single_target, "Skills");
				a.set_requirement(FPalace_helper.curr_fatigue_id,1);
				var challenge:Challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.striking_id);
				challenge.set_defense_stat(FPalace_skills.dodging_id);
				challenge.set_variability(10);
				challenge.set_text("Knee");
				var consequence:Consequence = new Consequence();
				var inter_chal:Challenge = new Challenge(true);
					inter_chal.set_attack_stat(FPalace_skills.concentration_id);
					inter_chal.set_defense_stat(-1,4);
					inter_chal.set_variability(10);
				
				consequence.set_interupt_chal(inter_chal);
				consequence.add_consequence(FPalace_helper.curr_hp_id,-3, "</n2> knees </n>. ",0);
				consequence.add_consequence(FPalace_helper.curr_hp_id,-0.5, "</n2> crushes </n>s balls. ",0,0,0,-1, false, null, FPalace_helper.balls_slot);//need this to target specific part id...
				consequence.add_consequence(0,0, "</n2> misses as </pronoun2> lashes out with a leg. ",-1);
				
				a.add_challenge(challenge,consequence);
				
				p.new_attack(a);*/
				
			p.set_race(r);
			return p;
		}
		
		public static function new_right_legs(r:Race):Body_part{
			var p:Body_part = new Body_part();
				p.set_name("right leg");
				p.set_pair_name("legs");
				p.set_part_id(FPalace_helper.legs_slot);
				p.add_description("</noun> </bpn> is </r>");
				p.add_pair_description("</noun> </bpn> are </r>");
				
				p.new_connect_slot(hips_slot);
				p.new_connect_slot(barrel_slot);
				p.new_connect_slot(thighs_slot);
				p.new_connect_slot(abdomen_slot);
				p.new_connect_slot(feet_slot);
				
				p.set_display_direction(Body_part.display_bottom_right);
				
				p.set_display_length_stat(FPalace_helper.height_id);
				
				p.set_display_width_stat(FPalace_helper.hips_id);
				p.set_display_width_mod(0.14);
				
				p.set_mirror_display();
				
				p.new_stat(FPalace_helper.max_hp_id, FPalace_helper.stat_max_hp(),1);
				p.new_stat(FPalace_helper.curr_hp_id, FPalace_helper.stat_curr_hp(), 1);
				p.new_stat(FPalace_helper.max_fatigue_id, FPalace_helper.stat_max_fatigue(),1);
				p.new_stat(FPalace_helper.curr_fatigue_id, FPalace_helper.stat_curr_fatigue(), 1);
				p.new_stat(FPalace_helper.sex_appeal_id, FPalace_helper.stat_sex_appeal(), 0.5);
				p.new_stat(FPalace_helper.str_id, FPalace_helper.stat_strength(), 1);
				p.new_stat(FPalace_helper.dex_id, FPalace_helper.stat_dexterity(), 1);
				p.new_stat(FPalace_helper.con_id, FPalace_helper.stat_constitution(), 1);
				p.new_stat(FPalace_helper.height_id, FPalace_helper.stat_height(), 27);
				
				
				/*var a:Action = new Action();
				a.set_name("Knee");
				a.set_attack_flag(Action.attack_type_single_target, "Skills")
				a.set_requirement(FPalace_helper.curr_fatigue_id,1);
				var challenge:Challenge = new Challenge(true);
				challenge.set_attack_stat(FPalace_skills.striking_id);
				challenge.set_defense_stat(FPalace_skills.dodging_id);
				challenge.set_variability(10);
				challenge.set_text("Knee");
				var consequence:Consequence = new Consequence();
				var inter_chal:Challenge = new Challenge(true);
					inter_chal.set_attack_stat(FPalace_skills.concentration_id);
					inter_chal.set_defense_stat(-1,4);
					inter_chal.set_variability(10);
				
				consequence.set_interupt_chal(inter_chal);
				consequence.add_consequence(FPalace_helper.curr_hp_id,-3, "</n2> knees </n>. ",0);
				consequence.add_consequence(FPalace_helper.curr_hp_id,-0.5, "</n2> crushes </n>s balls. ",0,0,0,-1, false, null, FPalace_helper.balls_slot);//need this to target specific part id...
				consequence.add_consequence(0,0, "</n2> misses as </pronoun2> lashes out with a leg. ",-1);
				
				a.add_challenge(challenge,consequence);
				
				p.new_attack(a);*/
				
				
			p.set_race(r);
			return p;
		}
		
		public static function new_torso(r:Race,s1:int = 30, s2:int = 26):Body_part{
			var p:Body_part = new Body_part();
				p.set_name("torso");
				p.set_part_id(FPalace_helper.torso_slot);
				p.add_description("</noun> </bpn> is </r>");
				
				p.new_connect_slot(head_slot);
				p.new_connect_slot(arms_slot);
				p.new_connect_slot(arms_slot);
				p.new_connect_slot(hips_slot);
				p.new_connect_slot(barrel_slot);
				p.new_connect_slot(breasts_slot);
				p.new_connect_slot(wings_slot);
				
				p.set_display_direction(Body_part.display_bottom_back);
				
				p.set_display_length_stat(FPalace_helper.height_id);
				p.set_display_width_stat(FPalace_helper.bust_id);
				p.set_display_width_mod(0.3);
				
				p.set_display_width2_stat(FPalace_helper.waist_id);
				p.set_display_width2_mod(0.3);
				
				p.new_stat(bust_id, stat_bust(), s1);
				
				p.new_stat(waist_id, stat_waist(), s2);
				
				
				
				//there's alot to be done with this still... like only showing the description at certains times! blarg! - DONE!
				p.new_stat(bloat_id, stat_bloat());
				
				p.new_stat(FPalace_helper.max_hp_id, FPalace_helper.stat_max_hp(),1);
				p.new_stat(FPalace_helper.curr_hp_id, FPalace_helper.stat_curr_hp(), 1);
				p.new_stat(FPalace_helper.max_fatigue_id, FPalace_helper.stat_max_fatigue(),1);
				p.new_stat(FPalace_helper.curr_fatigue_id, FPalace_helper.stat_curr_fatigue(), 1);
				p.set_crit_part();
				p.new_stat(FPalace_helper.sex_appeal_id, FPalace_helper.stat_sex_appeal(), 0.5);
				p.new_stat(FPalace_helper.str_id, FPalace_helper.stat_strength(), 1);
				p.new_stat(FPalace_helper.dex_id, FPalace_helper.stat_dexterity(), 1);
				p.new_stat(FPalace_helper.con_id, FPalace_helper.stat_constitution(), 1);
				p.new_stat(FPalace_helper.wis_id, FPalace_helper.stat_wisdom(), 5);
				p.new_stat(FPalace_helper.will_id, FPalace_helper.stat_willpower(), 5);
				p.new_stat(FPalace_helper.int_id, FPalace_helper.stat_intelligence(), 5);
				p.new_stat(FPalace_helper.max_mp_id, FPalace_helper.stat_max_mp(),1);
				p.new_stat(FPalace_helper.curr_mp_id, FPalace_helper.stat_curr_mp(), 1);
				p.new_stat(FPalace_helper.cha_id, FPalace_helper.stat_charisma(), 5);
				
				p.new_stat(FPalace_helper.height_id, FPalace_helper.stat_height(), 10);
				
			p.set_race(r);
			return p;
		}
		
		public static function new_barrel(r:Race,s1:int = 30, s2:int = 26):Body_part{//
			var p:Body_part = new Body_part();
				p.set_name("barrel");
				p.set_part_id(FPalace_helper.barrel_slot);
				p.add_description("</noun> </bpn> is </r>");
				
				p.new_connect_slot(head_slot);
				p.new_connect_slot(torso_slot);
				p.new_connect_slot(barrel_slot);
				p.new_connect_slot(thighs_slot);
				p.new_connect_slot(legs_slot);
				p.new_connect_slot(legs_slot);
				p.new_connect_slot(breasts_slot);
				p.new_connect_slot(wings_slot);
				
				p.set_display_direction(Body_part.display_bottom_back);
				
				p.set_display_length_stat(FPalace_helper.height_id);
				p.set_display_width_stat(FPalace_helper.bust_id);
				p.set_display_width_mod(0.3);
				
				p.new_stat(bust_id, stat_bust(), s1);
				
				p.new_stat(waist_id, stat_waist(), s2);
				//there's alot to be done with this still... like only showing the description at certains times! blarg! - DONE!
				p.new_stat(bloat_id, stat_bloat());
				
				p.new_stat(FPalace_helper.max_hp_id, FPalace_helper.stat_max_hp(),1);
				p.new_stat(FPalace_helper.curr_hp_id, FPalace_helper.stat_curr_hp(), 1);
				p.new_stat(FPalace_helper.max_fatigue_id, FPalace_helper.stat_max_fatigue(),1);
				p.new_stat(FPalace_helper.curr_fatigue_id, FPalace_helper.stat_curr_fatigue(), 1);
				p.set_crit_part();
				p.new_stat(FPalace_helper.sex_appeal_id, FPalace_helper.stat_sex_appeal(), 0.5);
				p.new_stat(FPalace_helper.str_id, FPalace_helper.stat_strength(), 1);
				p.new_stat(FPalace_helper.dex_id, FPalace_helper.stat_dexterity(), 1);
				p.new_stat(FPalace_helper.con_id, FPalace_helper.stat_constitution(), 1);
				p.new_stat(FPalace_helper.wis_id, FPalace_helper.stat_wisdom(), 5);
				p.new_stat(FPalace_helper.will_id, FPalace_helper.stat_willpower(), 5);
				p.new_stat(FPalace_helper.int_id, FPalace_helper.stat_intelligence(), 5);
				p.new_stat(FPalace_helper.max_mp_id, FPalace_helper.stat_max_mp(),1);
				p.new_stat(FPalace_helper.curr_mp_id, FPalace_helper.stat_curr_mp(), 1);
				p.new_stat(FPalace_helper.cha_id, FPalace_helper.stat_charisma(), 5);
				
				p.new_stat(FPalace_helper.height_id, FPalace_helper.stat_height(), 10);
				
			p.set_race(r);
			return p;
		}
		
		public static function new_wings(r:Race):Body_part{
			var p:Body_part = new Body_part();
				p.set_name("wings");
				p.set_part_id(FPalace_helper.wings_slot);
				p.add_description("</noun> </bpn> are </r>");
				
				p.new_connect_slot(torso_slot);
				p.new_connect_slot(thorax_slot);
								
				p.set_display_direction(Body_part.display_back);
				
				//p.set_display_length_stat(FPalace_helper.height_id);
				
				p.new_stat(FPalace_helper.max_hp_id, FPalace_helper.stat_max_hp(),5);
				p.new_stat(FPalace_helper.curr_hp_id, FPalace_helper.stat_curr_hp(), 5);
				p.new_stat(FPalace_helper.max_fatigue_id, FPalace_helper.stat_max_fatigue(),3);
				p.new_stat(FPalace_helper.curr_fatigue_id, FPalace_helper.stat_curr_fatigue(), 3);
				p.new_stat(FPalace_helper.sex_appeal_id, FPalace_helper.stat_sex_appeal(), 0.5);
				p.new_stat(FPalace_helper.str_id, FPalace_helper.stat_strength(), 1);
				p.new_stat(FPalace_helper.dex_id, FPalace_helper.stat_dexterity(), 1);
				p.new_stat(FPalace_helper.con_id, FPalace_helper.stat_constitution(), 1);
				
			p.set_race(r);
			return p;
		}
		
		public static function new_abdomen(r:Race,s1:int = 30, s2:int = 26):Body_part{
			var p:Body_part = new Body_part();
				p.set_name("abdomen");
				p.set_part_id(FPalace_helper.abdomen_slot);
				p.add_description("</noun> </bpn> is </r>");
				
				p.new_connect_slot(thorax_slot);
				
				p.new_connect_slot(legs_slot);
				p.new_connect_slot(legs_slot);
				p.new_connect_slot(legs_slot);
				p.new_connect_slot(legs_slot);
				p.new_connect_slot(legs_slot);
				p.new_connect_slot(legs_slot);
				p.new_connect_slot(legs_slot);
				p.new_connect_slot(legs_slot);
				
				p.new_connect_slot(tail_slot);
				
				p.new_connect_slot(cock_slot);
				p.new_connect_slot(balls_slot);
				p.new_connect_slot(vag_slot);
				p.new_connect_slot(clit_slot);
				
				//p.set_display_direction(Body_part.display_up_back);
				
				//p.set_display_length_stat(FPalace_helper.height_id);
				
				var s:Stat = new Stat(waist_id);
				s.set_min(-2);
				s.new_description("</noun> abdomen is </"+waist_id+"> inches around. ");
				s.new_increase_description( "</n>s abdomen bulges outward. ");
				s.new_descrease_description("</n>s abdomen seems to contract. ");
				
				p.new_stat(waist_id, s, s2);
				
				
				
				p.new_stat(bloat_id, stat_bloat());
				
				p.new_stat(FPalace_helper.max_hp_id, FPalace_helper.stat_max_hp(),5);
				p.new_stat(FPalace_helper.curr_hp_id, FPalace_helper.stat_curr_hp(), 5);
				p.new_stat(FPalace_helper.max_fatigue_id, FPalace_helper.stat_max_fatigue(),3);
				p.new_stat(FPalace_helper.curr_fatigue_id, FPalace_helper.stat_curr_fatigue(), 3);
				p.new_stat(FPalace_helper.sex_appeal_id, FPalace_helper.stat_sex_appeal(), 0.5);
				p.new_stat(FPalace_helper.str_id, FPalace_helper.stat_strength(), 1);
				p.new_stat(FPalace_helper.dex_id, FPalace_helper.stat_dexterity(), 1);
				p.new_stat(FPalace_helper.con_id, FPalace_helper.stat_constitution(), 1);
				p.new_stat(FPalace_helper.max_mp_id, FPalace_helper.stat_max_mp(),1);
				p.new_stat(FPalace_helper.curr_mp_id, FPalace_helper.stat_curr_mp(), 1);
				
				p.new_stat(FPalace_helper.height_id, FPalace_helper.stat_height(), 11);
				
			p.set_race(r);
			return p;
		}
		
		public static function new_thorax(r:Race,s1:int = 30, s2:int = 26):Body_part{
			var p:Body_part = new Body_part();
				p.set_name("thorax");
				p.set_part_id(FPalace_helper.thorax_slot);
				p.add_description("</noun> </bpn> is </r>");
				
				p.new_connect_slot(head_slot);
				p.new_connect_slot(hips_slot);
				p.new_connect_slot(abdomen_slot);
				p.new_connect_slot(arms_slot);
				p.new_connect_slot(arms_slot);
				p.new_connect_slot(wings_slot);
				
				p.set_display_direction(Body_part.display_bottom_back);
				
				//p.set_display_length_stat(FPalace_helper.height_id);
				
				var s:Stat = new Stat(bust_id);
				s.set_min(-2);
				s.new_description("</noun> thorax is </"+bust_id+"> inches around and ");
				s.new_increase_description( "</n>s thorax bulges outward. ");
				s.new_descrease_description("</n>s thorax seems to contract. ");
				
				p.new_stat(bust_id, s, s1);
				
				p.new_stat(bloat_id, stat_bloat());
				
				p.new_stat(FPalace_helper.max_hp_id, FPalace_helper.stat_max_hp(),3);
				p.new_stat(FPalace_helper.curr_hp_id, FPalace_helper.stat_curr_hp(), 3);
				p.new_stat(FPalace_helper.max_fatigue_id, FPalace_helper.stat_max_fatigue(),3);
				p.new_stat(FPalace_helper.curr_fatigue_id, FPalace_helper.stat_curr_fatigue(), 3);
				p.new_stat(FPalace_helper.sex_appeal_id, FPalace_helper.stat_sex_appeal(), 0.5);
				p.new_stat(FPalace_helper.str_id, FPalace_helper.stat_strength(), 1);
				p.new_stat(FPalace_helper.dex_id, FPalace_helper.stat_dexterity(), 1);
				p.new_stat(FPalace_helper.con_id, FPalace_helper.stat_constitution(), 1);
				p.new_stat(FPalace_helper.wis_id, FPalace_helper.stat_wisdom(), 1);
				p.new_stat(FPalace_helper.will_id, FPalace_helper.stat_willpower(), 1);
				p.new_stat(FPalace_helper.int_id, FPalace_helper.stat_intelligence(), 1);
				p.new_stat(FPalace_helper.max_mp_id, FPalace_helper.stat_max_mp(),1);
				p.new_stat(FPalace_helper.curr_mp_id, FPalace_helper.stat_curr_mp(), 1);
				p.new_stat(FPalace_helper.cha_id, FPalace_helper.stat_charisma(), 1);
				
				p.new_stat(FPalace_helper.height_id, FPalace_helper.stat_height(), 11);
				
			p.set_race(r);
			return p;
		}
		
		public static function new_hips(r:Race,s1:int = 30, s2:int = 3, s3:int = 6):Body_part{
			var p:Body_part = new Body_part();
				p.set_name("hips");
				p.set_part_id(FPalace_helper.hips_slot);
				p.add_description("");
				
				p.new_connect_slot(torso_slot);
				p.new_connect_slot(thorax_slot);
				p.new_connect_slot(udder_slot);
				p.new_connect_slot(legs_slot);
				p.new_connect_slot(legs_slot);
				p.new_connect_slot(vag_slot);
				p.new_connect_slot(clit_slot);
				p.new_connect_slot(balls_slot);
				p.new_connect_slot(cock_slot);
				p.new_connect_slot(tail_slot);
				
				p.set_display_direction(Body_part.display_bottom_back);
				
				p.set_display_length_stat(FPalace_helper.height_id);
				
				p.set_display_width_stat(FPalace_helper.waist_id);
				p.set_display_width_mod(0.3);
				
				p.set_display_width2_stat(FPalace_helper.hips_id);
				p.set_display_width2_mod(0.3);
				
				p.new_stat(hips_id, stat_hips(),s1);
				p.new_stat(anal_width_id, stat_anal_width(),s2);
				p.new_stat(anal_depth_id, stat_anal_depth(),s3);
				
				p.new_stat(FPalace_helper.max_hp_id, FPalace_helper.stat_max_hp(),1);
				p.new_stat(FPalace_helper.curr_hp_id, FPalace_helper.stat_curr_hp(), 1);
				p.new_stat(FPalace_helper.max_fatigue_id, FPalace_helper.stat_max_fatigue(),1);
				p.new_stat(FPalace_helper.curr_fatigue_id, FPalace_helper.stat_curr_fatigue(), 1);
				p.set_crit_part();
				p.new_stat(FPalace_helper.sex_appeal_id, FPalace_helper.stat_sex_appeal(), 0.5);
				
				p.new_stat(FPalace_helper.str_id, FPalace_helper.stat_strength(), 1);
				p.new_stat(FPalace_helper.dex_id, FPalace_helper.stat_dexterity(), 1);
				p.new_stat(FPalace_helper.con_id, FPalace_helper.stat_constitution(), 1);
				
				p.new_stat(FPalace_helper.height_id, FPalace_helper.stat_height(), 13);
				
					var ps:Body_part_state = new Body_part_state();
					ps.new_ratio_stat(FPalace_helper.hips_id);
					ps.new_ratio_stat(FPalace_helper.waist_id);
					ps.set_stat_effected(0);
					ps.new_comparison(">=", 1.5,1,"", "</n>s ass protrudes from </noun> hips, every slight motion sending a torrent of ripples across it. ");
					ps.new_comparison(">=", 1.3,1,"", "</n>s ass jiggles softly as </pronoun> moves. ");
					ps.new_comparison("<", 1.3,1,"");
					
			p.set_part_state(ps);
				
			p.set_race(r);
			return p;
		}
		
		public static function new_thighs(r:Race,s1:int = 30, s2:int = 3, s3:int = 6):Body_part{
			var p:Body_part = new Body_part();
				p.set_name("thighs");
				p.set_part_id(FPalace_helper.thighs_slot);
				p.add_description("");
				
				p.new_connect_slot(barrel_slot);
				p.new_connect_slot(udder_slot);
				p.new_connect_slot(legs_slot);
				p.new_connect_slot(legs_slot);
				p.new_connect_slot(vag_slot);
				p.new_connect_slot(clit_slot);
				p.new_connect_slot(balls_slot);
				p.new_connect_slot(cock_slot);
				p.new_connect_slot(tail_slot);
				
				p.set_display_direction(Body_part.display_back);
				
				p.set_display_length_stat(FPalace_helper.height_id);
				
				p.set_display_width_stat(FPalace_helper.hips_id);
				p.set_display_width_mod(0.3);
				
				p.new_stat(hips_id, stat_hips(),s1);
				p.new_stat(anal_width_id, stat_anal_width(),s2);
				p.new_stat(anal_depth_id, stat_anal_depth(),s3);
				
				p.new_stat(FPalace_helper.max_hp_id, FPalace_helper.stat_max_hp(),1);
				p.new_stat(FPalace_helper.curr_hp_id, FPalace_helper.stat_curr_hp(), 1);
				p.new_stat(FPalace_helper.max_fatigue_id, FPalace_helper.stat_max_fatigue(),1);
				p.new_stat(FPalace_helper.curr_fatigue_id, FPalace_helper.stat_curr_fatigue(), 1);
				p.set_crit_part();
				p.new_stat(FPalace_helper.sex_appeal_id, FPalace_helper.stat_sex_appeal(), 0.5);
				
				p.new_stat(FPalace_helper.str_id, FPalace_helper.stat_strength(), 1);
				p.new_stat(FPalace_helper.dex_id, FPalace_helper.stat_dexterity(), 1);
				p.new_stat(FPalace_helper.con_id, FPalace_helper.stat_constitution(), 1);
				
				p.new_stat(FPalace_helper.height_id, FPalace_helper.stat_height(), 10);
				
					var ps:Body_part_state = new Body_part_state();
					ps.new_ratio_stat(FPalace_helper.hips_id);
					ps.new_ratio_stat(FPalace_helper.waist_id);
					ps.set_stat_effected(0);
					ps.new_comparison(">=", 1.5,1,"", "</n>s ass protrudes from </noun> hips, every slight motion sending a torrent of ripples across it. ");
					ps.new_comparison(">=", 1.3,1,"", "</n>s ass jiggles softly as </pronoun> moves. ");
					ps.new_comparison("<", 1.3,1,"");
					
			p.set_part_state(ps);
				
			p.set_race(r);
			return p;
		}
		
		public static function new_breasts(r:Race,s1:int = 1, s2:int = 1, s3:int = 70):Body_part{
			var p:Body_part = new Body_part();
				p.set_name("breasts");
				p.set_part_id(breasts_slot);
				p.add_description("</noun> </bpn> are </r>");
				
				p.new_connect_slot(torso_slot);
				
				p.new_stat(breast_size_id, stat_breast_size(),s1);
				//p.set_part_id(nipples_slot); --probably need to break these into a seperate body_part, but we'll see - nipple rings, once we get into items
				
				p.new_stat(nipple_size_id, stat_nipple_length(),s2);
				
				p.new_stat(milk_volume_id, stat_milk_volume(),s3);
				
				p.set_display_direction(Body_part.display_mid_top);
				
				p.set_display_length_stat(FPalace_helper.breast_size_id);
				p.set_display_length_mod(2);
				
				p.set_display_width_stat(FPalace_helper.bust_id);
				p.set_display_width_mod(0.3);
				
				p.set_display_width2_stat(FPalace_helper.breast_size_id);
				p.set_display_width2_mod(4);
				
				var ps:Body_part_state = new Body_part_state();
					ps.new_ratio_stat(FPalace_helper.lust_id);
					ps.new_ratio_stat(FPalace_helper.max_lust_id);
					ps.set_stat_effected(nipple_size_id);
					ps.new_comparison(">=", 0.6,1.2,"</n>s nipples pierce out from </noun> breasts. ", "</n>s nipples look painfully erect. ");
					ps.new_comparison(">=", 0.4,1.0,"</n>s nipples begin to show themselves. ", "</n>s nipples stand erect. ");
					ps.new_comparison("<=", 0.1,0.1,"");
					
				p.new_stat(FPalace_helper.max_hp_id, FPalace_helper.stat_max_hp(),1);
				p.new_stat(FPalace_helper.curr_hp_id, FPalace_helper.stat_curr_hp(), 1);
				p.new_stat(FPalace_helper.max_fatigue_id, FPalace_helper.stat_max_fatigue(),1);
				p.new_stat(FPalace_helper.curr_fatigue_id, FPalace_helper.stat_curr_fatigue(), 1);
				p.new_stat(FPalace_helper.sex_appeal_id, FPalace_helper.stat_sex_appeal(), 1);
				p.new_stat(FPalace_helper.min_lust_id, FPalace_helper.stat_min_lust(), 0);
				p.new_stat(FPalace_helper.max_lust_id, FPalace_helper.stat_max_lust(), 50);
				p.new_stat(FPalace_helper.lust_id, FPalace_helper.stat_lust(), 0);
			
			p.set_part_state(ps);
			
			p.set_race(r);
			
			var a:Action = new Action();
				a.set_name("Flash");
				a.set_attack_flag(Action.attack_type_single_target, "Sex");
				a.set_attack_description("Flash your breasts at a single foe. ");
				var challenge:Challenge = new Challenge();
				
				challenge.set_attack_stat(FPalace_helper.sex_appeal_id);
				challenge.set_defense_stat(FPalace_helper.wis_id);
				challenge.set_variability(10);
				challenge.set_text("Flash");
				var consequence:Consequence = new Consequence();
				consequence.set_damage_type(FPalace_helper.lust_damage_type().get_id());
				consequence.set_max_damage(20);
				var inter_chal:Challenge = new Challenge(true);
					inter_chal.set_attack_stat(FPalace_skills.concentration_id);
					inter_chal.set_defense_stat(-1,0);
					inter_chal.set_variability(10);
				
				consequence.set_interupt_chal(inter_chal);
				consequence.add_consequence(-FPalace_helper.lust_id,Consequence.amt_from_roll_const, "</n2> attempts to distract </n>, flashing </noun2> breasts. ",0);
				consequence.add_consequence(FPalace_helper.wis_id,-1, "</n>s eyes are glued to </n2>s chest. ",5,1,1);
				consequence.add_consequence(0,0, "</n> ignores </n2>s exposed breasts! ",-1);
				consequence.amt_by_roll_flag();
				a.add_challenge(challenge,consequence);
				
				p.new_attack(a);
			
			
			
			return p;
		}
		
		public static function new_vagina(r:Race,s1:int = 3, s2:int = 7, s3:Number = 0.5):Body_part{
			var p:Body_part = new Body_part();
				p.set_name("vulva");
				p.set_part_id(vag_slot);
				p.set_get_pregnant();
				p.add_description("</noun> </bpn> is </r>");
				
				p.new_connect_slot(hips_slot);
				p.new_connect_slot(thighs_slot);
				
				p.new_stat(FPalace_helper.max_hp_id, FPalace_helper.stat_max_hp(),1);
				p.new_stat(FPalace_helper.curr_hp_id, FPalace_helper.stat_curr_hp(), 1);
				p.new_stat(FPalace_helper.max_fatigue_id, FPalace_helper.stat_max_fatigue(),1);
				p.new_stat(FPalace_helper.curr_fatigue_id, FPalace_helper.stat_curr_fatigue(), 1);
				p.new_stat(FPalace_helper.sex_appeal_id, FPalace_helper.stat_sex_appeal(), 1);
				p.new_stat(FPalace_helper.min_lust_id, FPalace_helper.stat_min_lust(), 0);
				p.new_stat(FPalace_helper.max_lust_id, FPalace_helper.stat_max_lust(), 50);
				p.new_stat(FPalace_helper.lust_id, FPalace_helper.stat_lust(), 0);
				
				p.new_stat(vaginal_width_id, stat_vaginal_width(),s1);
				
				p.new_stat(vaginal_depth_id, stat_vaginal_depth(),s2);
				
				p.set_display_direction(Body_part.display_bottom_back);
								
				p.set_display_length_mod(0.25);
				
				p.set_display_width_stat(FPalace_helper.vaginal_width_id);
				
				//this should probably be effected by a part_state based on "time of the month" (aka, number of ticks)
				p.new_stat(egg_fertility_id, stat_womb_fertility(),s3);
				
				var a:Action = new Action();
				a.set_name("Entice");
				a.set_attack_flag(Action.attack_type_single_target, "Sex");
				a.set_attack_description("Entice a single enemy with your groin. ");
				var challenge:Challenge = new Challenge();
				
				challenge.set_attack_stat(FPalace_helper.sex_appeal_id);
				challenge.set_defense_stat(FPalace_helper.wis_id);
				challenge.set_variability(10);
				challenge.set_text("Entice");
				var consequence:Consequence = new Consequence();
				consequence.set_damage_type(FPalace_helper.lust_damage_type().get_id());
				consequence.set_max_damage(20);
				var inter_chal:Challenge = new Challenge(true);
					inter_chal.set_attack_stat(FPalace_skills.concentration_id);
					inter_chal.set_defense_stat(-1,0);
					inter_chal.set_variability(10);
				
				consequence.set_interupt_chal(inter_chal);
				consequence.add_consequence(-FPalace_helper.lust_id,Consequence.amt_from_roll_const, "</n2> attempts to entice </n>, spreading </noun2> legs wide and gently feeling </noun2> own genitalia. ",0);
				consequence.add_consequence(FPalace_helper.wis_id,-1, "</n2> manages to unbalance </n>, as </pronoun> oggles </n2>s form. ",5,1,1);
				consequence.add_consequence(0,0, "</n> ignores </n2>! ",-1);
				consequence.amt_by_roll_flag();
				a.add_challenge(challenge,consequence);
				
				p.new_attack(a);
				
				
				
				
				
			var ps:Body_part_state = new Body_part_state();
				ps.new_ratio_stat(FPalace_helper.lust_id);
				ps.new_ratio_stat(FPalace_helper.max_lust_id);
				ps.set_stat_effected(vaginal_width_id);
				ps.set_stat_effected(vaginal_depth_id);
				ps.new_comparison(">=", 0.7,1.2,"</n>s folds are visibly leaking. ", "</n>s inner thighs are completely covered in juices. ");
				ps.new_comparison(">=", 0.5,1,"</n>s vagina opens its petal like lips. ");
				ps.new_comparison("v", 0.5,0.8,"</n>s slit shuts tight. ");
				
				var tf:Tick_Effect = new Tick_Effect();
					var c2:Consequence = new Consequence();
					c2.add_consequence(FPalace_helper.dex_id,-1, "</n> struggles to keep </noun> feet as </noun> groin cramps up. ", 0);
					var tf2:Tick_Effect = new Tick_Effect();
						var c3:Consequence = new Consequence();
						c3.add_consequence(FPalace_helper.dex_id,1, "</n> feels more dexterous as </pronoun> recovers from cramps. ", 0);
						c3.add_consequence(FPalace_helper.str_id,1, "</n> feels stronger as </pronoun> recovers from cramps. ", 0);
						var tf3:Tick_Effect = new Tick_Effect();
							var c4:Consequence = new Consequence();
							c4.add_consequence(FPalace_helper.min_lust_id,-5, "</n> recovers from </noun> randy state. ", 0);
							tf3.set_end_tick(Main.t1_week);
							tf3.set_end_consequence(c4);
						c3.add_consequence(FPalace_helper.min_lust_id,5, "</n> feels horny as </pronoun> recovers from cramps. ", 0, 0, 0, -1, false, tf3);
						tf2.set_end_tick(Main.t1_week);
						tf2.set_end_consequence(c3);
					c2.add_consequence(FPalace_helper.str_id,-1, "</n> feels weak thanks to cramps. ", 0, 0, 0, -1, false, tf2);
					tf.set_tick_consequence(Main.t1_month, c2);
										
				p.add_upkeep(tf);
						
			
			p.set_race(r);
			p.set_part_state(ps);
			
			a = new Action();
			
			a.set_name("Envelope");
			a.set_attack_flag(Action.attack_type_single_target, "Sex");
			a.set_attack_description("Force an opponent to have sex with you. ");
			a.set_requirement(FPalace_helper.lust_id,25);
			a.set_requirement(FPalace_helper.curr_fatigue_id,1);
			a.set_delayed_trigger();
			challenge = new Challenge(true);
			
			challenge.set_attack_stat(FPalace_skills.grappling_id);
			challenge.set_defense_stat(FPalace_skills.dodging_id);
			challenge.set_variability(20);
			challenge.set_text("Envelope");
			consequence = new Consequence();
			consequence.set_damage_type(FPalace_helper.lust_damage_type().get_id());
			consequence.add_consequence(FPalace_helper.lust_id,10, "</n2> jumps upon </n> and pins </objnoun>. </n> moans out in pleasure as </n2> explores </noun> body. ",0,0,0,1);
				//and now begins the madness... first choice: top half or bottom half
				var challenge1:Challenge = new Challenge();
				challenge1.set_attack_stat(-1,1);//challenge1.set_attack_stat(-1,0);
				challenge1.set_defense_stat(-1,0);
				challenge1.set_variability(00);//challenge1.set_variability(20);
				challenge1.set_text("");
				var consequence1:Consequence = new Consequence();
				
					//top half! facial... if breasts are present, try to pull off the top
					consequence1.set_damage_type(FPalace_helper.lust_damage_type().get_id());
					//consequence1.add_consequence(FPalace_helper.lust_id,/*25*/1, "</n2> aggressively starts fondling </n>s chest, enticing </objnoun>. ",0,0,0,2);
					consequence1.add_consequence(FPalace_helper.lust_id,/*25*/1, "</c2>\n</c4>",0);
						//check if breasts present
						var challenge2:Challenge = new Challenge();
						challenge2.set_attack_stat(-1,1);
						challenge2.set_defense_stat(FPalace_helper.breast_size_id);
						challenge2.set_variability(0);
						challenge2.set_text("Chest");
						var consequence2:Consequence = new Consequence();
							//no titties... facesit...
							consequence2.set_damage_type(FPalace_helper.lust_damage_type().get_id());
							consequence2.add_consequence(FPalace_helper.lust_id,25, "</n2> forces </noun2> groin into </n>s face. </n> can't help but enjoy the view. ",0,0,0,9);
								var challenge9:Challenge = new Challenge();
								challenge9.set_attack_stat(FPalace_helper.lust_id);
								challenge9.set_defense_stat(-1,40);
								challenge9.set_variability(0);
								challenge9.set_text("");
								var consequence9:Consequence = new Consequence();
									//attacker is super-aroused and leaking
									consequence9.set_damage_type(FPalace_helper.lust_damage_type().get_id());
									consequence9.add_consequence(FPalace_helper.lust_id,25, "</n2>s juices flood into </n>s mouth, suffocating </objnoun> with the smell of sex. ",0,0,0,10);
										var challenge10:Challenge = new Challenge();
										challenge10.set_attack_stat(FPalace_helper.lust_id);
										challenge10.set_defense_stat(-1,50);
										challenge10.set_variability(0);
										challenge10.set_text("");
										var consequence10:Consequence = new Consequence();
										//attacker is ready to climax herself
										consequence10.set_damage_type(FPalace_helper.lust_damage_type().get_id());
										consequence10.add_consequence(FPalace_helper.lust_id,40, "</n2> climaxes, forcing </n>s face even deeper into </noun2> cunt. ",0,0,0,-1);
										consequence10.add_consequence(FPalace_helper.lust_id,-50, "\n",0,0,0,-1, true);
										//attacker isn't quite there yet....
										consequence10.add_consequence(FPalace_helper.lust_id,25, "",-1,0,0,-1);
										consequence10.add_consequence(FPalace_helper.lust_id,25, "\n</n2> nearly crushes </n>s face as </pronoun2> appreciates the feeling of </n>s sucking for air. ",-1,0,0,1, true);
									//attacker isn't particularly aroused... start from scratch
									consequence9.add_consequence(FPalace_helper.lust_id,25, "The smell of </n2>s folds have </n>s eyes rolling into </noun> head. ",-1,0,0,-1);
									consequence9.add_consequence(FPalace_helper.lust_id,15, "\n",-1,0,0,2,true);
							//titties! attempt to disrobe breasts
							consequence2.add_consequence(FPalace_helper.lust_id,10, "</n2>s hands dive for </n>s chest, and begin to grope and dig! ",-1,0,0,3);
							var challenge3:Challenge = new Challenge();
							challenge3.set_attack_stat(-1,0);
							challenge3.set_defense_stat(-1,0);
							challenge3.set_defense_equip_slot_check(FPalace_helper.breasts_slot);
							challenge3.set_variability(0);
							challenge3.set_text("");
							var consequence3:Consequence = new Consequence();
								//clothing found! 
								consequence3.set_damage_type(FPalace_helper.lust_damage_type().get_id());
								consequence3.add_consequence(FPalace_helper.lust_id,0, "</n2> pulls at </n>s attempt to cover </noun> breasts. ",-1,0,0,8);
								var challenge8:Challenge = new Challenge(true);
								challenge8.set_attack_stat(FPalace_skills.grappling_id);
								challenge8.set_defense_stat(FPalace_skills.grappling_id);
								challenge8.set_variability(10);
								challenge8.set_text("");
								var consequence8:Consequence = new Consequence();
									consequence8.set_damage_type(FPalace_helper.lust_damage_type().get_id());
									consequence8.add_disrobe(FPalace_helper.breasts_slot);
									//disrobe success! titties!
									consequence8.add_consequence(FPalace_helper.lust_id,10, "</n2> rips </n>s coverings and begins to attack </noun> breasts in earnest! </n> moans out from the deep massage. ",0,0,0,3);
									//disrobe failure! horniness increases past even where it was before!
									//need some way for this to effect other character... - flip target flag!
									consequence8.add_consequence(FPalace_helper.lust_id,25, "</n2> is knocked back as </n> defends </noun> mounds. </n2> is just turned on by </noun2> targets persistance. ",-1,0,0,-1,true);
									
								//no clothing! Titties!
								consequence3.add_consequence(FPalace_helper.lust_id,10, "</n2> begins to massage </n>s breasts and tweek </noun> nipples! </n> moans out from the sensations. ",0,0,0,11);
								var challenge11:Challenge = new Challenge();
										challenge11.set_attack_stat(FPalace_helper.breast_size_id);
										challenge11.set_defense_stat(-1,1);
										challenge11.set_variability(0);
										challenge11.set_text("");
										var consequence11:Consequence = new Consequence();
										//attacker has breasts! titty bump!
										consequence11.set_damage_type(FPalace_helper.lust_damage_type().get_id());
										consequence11.add_consequence(FPalace_helper.lust_id,25, "</n2> begins to press </noun2> own breasts against </n>s fleshy mounds. ",0,0,0,12);
											var challenge12:Challenge = new Challenge();
											challenge12.set_attack_stat(FPalace_helper.lust_id);
											challenge12.set_defense_stat(-1,40);
											challenge12.set_variability(15);
											challenge12.set_text("");
											var consequence12:Consequence = new Consequence();
											//attacker can keep going! Head to pussy
											consequence12.set_damage_type(FPalace_helper.lust_damage_type().get_id());
											consequence12.add_consequence(FPalace_helper.lust_id,25, "</n2> aggressively starts exploring </n>s groin with </noun2> fingers, enticing </n>. ",0,0,0,4);
											//attacker is done! facesit for climax
											consequence12.add_consequence(FPalace_helper.lust_id,10, "</n2> bites </noun2> lip, alongside </n>s, dragging it upward before letting go. </n> blinks from the pain and opens </noun> eyes to find </n2>s pussy in </noun> face. ",-1,0,0,9,true);
										//attack has no breasts. Play with tits, then move to cunt
										consequence11.add_consequence(FPalace_helper.lust_id,10, "</n2> begins to suck on a nipple and smiles as </n> lets out a moan. It isn't long before </n2> begins kissing </n> aggressively. ",-1,0,0,4);
					//bottom half!
					//consequence1.add_consequence(FPalace_helper.lust_id,25, "</n2> aggressively starts exploring </n>s groin with </noun2> fingers, enticing </n>. ",-1,0,0,4);
						//check for clothes
						var challenge4:Challenge = new Challenge();
						challenge4.set_attack_stat(-1,0);
						challenge4.set_defense_stat(-1,0);
						challenge4.set_defense_equip_slot_check(FPalace_helper.hips_slot);
						challenge4.set_variability(0);
						challenge4.set_text("Groin");
						var consequence4:Consequence = new Consequence();
							//defenders groin not covered
							consequence4.set_damage_type(FPalace_helper.lust_damage_type().get_id());
							consequence4.add_consequence(FPalace_helper.lust_id,10, "</n2> traces a line around </n>s bare groins exploringly. ",0,0,0,5);
							var challenge5:Challenge = new Challenge();
							challenge5.set_attack_stat(-1,0);
							challenge5.set_defense_stat(FPalace_helper.penis_length_id);
							challenge5.set_variability(0);
							challenge5.set_text("");
							var consequence5:Consequence = new Consequence();
								//defender has male genitals - time to envelope
								consequence5.set_damage_type(FPalace_helper.lust_damage_type().get_id());
								consequence5.add_consequence(FPalace_helper.lust_id,25, "As </noun2> fingers fall on </n>s manhood, </n2> quickly begins to stroke it to life. ",-1,0,0,6);
									var challenge6:Challenge = new Challenge();
									challenge6.set_attack_stat(FPalace_helper.vaginal_width_id,-1, Body.get_stat_max);
									challenge6.set_defense_stat(FPalace_helper.penis_girth_id,-1, Body.get_stat_min);
									challenge6.set_variability(0);
									challenge6.set_text("");
									var consequence6:Consequence = new Consequence();
									//attackers pussy can't take the girth! STRETCH or move on! 
									consequence6.set_damage_type(FPalace_helper.lust_damage_type().get_id());
									consequence6.add_consequence(FPalace_helper.lust_id,25, "It isn't long before </n2> begins to lead </n>s cock towards </noun2> pussy, though its massive girth is being an obstacle. ",-1,0,0,13);
										//Stretch that cunt
										var challenge13:Challenge = new Challenge();
										challenge13.set_attack_stat(FPalace_helper.vaginal_width_id,-1, Body.get_stat_max);
										challenge13.set_defense_stat(FPalace_helper.penis_girth_id,-1, Body.get_stat_min);
										challenge13.set_variability(0);
										challenge13.set_text("");
										var consequence13:Consequence = new Consequence();
										
											//Can now take the girth... move on to real sex.
											consequence13.set_damage_type(FPalace_helper.lust_damage_type().get_id());
											consequence13.add_consequence(FPalace_helper.lust_id,40, "</n> grunts as </noun> dick is enveloped by </n2>s waiting pussy. ",0,0,0,14);
											
											//try and stretch
											consequence13.add_consequence(FPalace_helper.vaginal_width_id,0.5, "</n2> pounds </noun2> cunt uselessly against the head of </n>s massive cock. ",-1,0,0,13, true);
											consequence13.add_consequence(FPalace_helper.curr_hp_id,-1, "",-1,0,0,-1, true);
											consequence13.add_consequence(FPalace_helper.lust_id,20, "\n",-1,0,0,-1);
											//give up if it's more than 2 inches bigger
											consequence13.add_consequence(FPalace_helper.lust_id,25, "Realizing the futility of </noun2> task, </n2> gives up, disgruntled. ",-2,0,0,-1, true);
											
									//can take the girth. Check how much length we can take
									consequence6.add_consequence(FPalace_helper.lust_id,40, "It isn't long before </n2> begins to lead </n>s cock towards </noun2> pussy, which quickly begins to envelope the grunting </n>s manhood. ",-1,0,0,14);
										var challenge14:Challenge = new Challenge();
										challenge14.set_attack_stat(FPalace_helper.vaginal_depth_id,-1, Body.get_stat_max);
										challenge14.set_defense_stat(FPalace_helper.penis_length_id,-1, Body.get_stat_min);
										challenge14.set_variability(0);
										challenge14.set_text("");
										var consequence14:Consequence = new Consequence();
										
											//Can now take the entire cock... try for an impregnate....
											consequence14.set_damage_type(FPalace_helper.lust_damage_type().get_id());
											consequence14.add_consequence(FPalace_helper.lust_id,40, "The two begin to find a rhythm, groin to groin, </n2> taking all of </n>s length. ",0,0,0,15);
											
											//Bumping the cervix... can still try for an impregnate
											consequence14.add_consequence(FPalace_helper.lust_id,30, "</n2> rams </objnoun2>self down on </n>s cock and yelps out in pain as it crashes into </noun2> cervix. ",-1,0,0,-1);
											consequence14.add_consequence(FPalace_helper.lust_id,15, "",-1,0,0,15, true);
												
												var challenge15:Challenge = new Challenge();
												challenge15.set_attack_stat(FPalace_helper.lust_id);
												challenge15.set_defense_stat(-1,50);
												challenge15.set_variability(0);
												challenge15.set_text("");
												var consequence15:Consequence = new Consequence();
													consequence15.set_damage_type(FPalace_helper.lust_damage_type().get_id());
													consequence15.set_impregnate(2);
													//Attacker is ready to climax...
													consequence15.add_consequence(FPalace_helper.lust_id,50, "</n2> lets out a moan as </noun2> body clenches and jerks from orgasm. </n> can't help but loose a load. ",0,0,0,-1);
													consequence15.add_consequence(FPalace_helper.lust_id,-50, "\n",0,0,0,-1,true);
													
													//Not ready for own climax! Keep going!
													consequence15.add_consequence(FPalace_helper.lust_id,15, "</n> grunts as </pronoun> finds a load of spunk being extracted from </objnoun>. </n2> doesn't look particularly satisfied. ",-1,0,0,-1);
													consequence15.add_consequence(FPalace_helper.lust_id,15, "\n",-1,0,0,14, true);
								//defender has no dick... check for a pussy, and some lesbian action
								consequence5.add_consequence(FPalace_helper.lust_id,15, "</n2>s fingers continue to wander around </n>s groin enticingly. ",0,0,0,7);
								var challenge7:Challenge = new Challenge();
								challenge7.set_attack_stat(-1,0);
								challenge7.set_defense_stat(FPalace_helper.vaginal_depth_id);
								challenge7.set_variability(0);
								challenge7.set_text("");
								var consequence7:Consequence = new Consequence();
									//has a cunt... time to scissor... 
									consequence7.set_damage_type(FPalace_helper.lust_damage_type().get_id());
									consequence7.add_consequence(FPalace_helper.lust_id,50, "Finally, </n2> plunges a finger into </n>s waiting pussy. The soft moan let out by </n> makes </n2> *tsk* before maneauvering </noun2> own lips into place. ",-1,0,0,16);
										var challenge16:Challenge = new Challenge();
										challenge16.set_attack_stat(FPalace_helper.lust_id);
										challenge16.set_defense_stat(-1, 50);
										challenge16.set_variability(0);
										challenge16.set_text("");
										var consequence16:Consequence = new Consequence();
											//Attacker is ready to climax
											consequence16.set_damage_type(FPalace_helper.lust_damage_type().get_id());
											consequence16.add_consequence(FPalace_helper.lust_id,50, "</n2> screams out as </pronoun2> climaxes, bringing </n> along for the ride. ",0,0,0,-1);
											consequence16.add_consequence(FPalace_helper.lust_id,-50, "\n",0,0,0,-1,true);
											//Not ready yet... keep going....
											consequence16.add_consequence(FPalace_helper.lust_id,25, "A moan and a grunt escape the entwined pair. ",-1,0,0,-1);
											consequence16.add_consequence(FPalace_helper.lust_id,25, "\n",-1,0,0,16,true);
									//no genitals!? head to the top...
									consequence7.add_consequence(FPalace_helper.lust_id,15, "Quickly bored by the lack of genitals on </n>, </n2> moves up the anotomy. ",0,0,0,2);
							//defender is wearing something! Try and take it off!
							consequence4.add_consequence(FPalace_helper.lust_id,10, "</n2> begins to struggle with </n>s converings. ",-1,0,0,17,true);
								var challenge17:Challenge = new Challenge();
								challenge17.set_attack_stat(FPalace_helper.str_id);
								challenge17.set_defense_stat(FPalace_helper.str_id);
								challenge17.set_variability(10);
								challenge17.set_text("");
								var consequence17:Consequence = new Consequence();
									consequence17.set_damage_type(FPalace_helper.lust_damage_type().get_id());
									consequence17.add_disrobe(FPalace_helper.hips_slot);
									//disrobe successfull! Try the bottom again!
									consequence17.add_consequence(FPalace_helper.lust_id,20, "</n2> manages to rip away at </n>s clothing. ",0,0,0,4);
									//no disrobe! attacker successfully faught off!
									consequence17.add_consequence(FPalace_helper.lust_id,20, "</n2> is knocked back as </n> defends </noun> groin. </n2> is just turned on by </noun2> targets persistance. ",-1,0,0,-1,true);
							
							
							
			consequence.add_consequence(0,0, "</n2> leaps towards </n>, but </pronoun> deftly step out of the way! ",-1);
						
			a.add_challenge(challenge,consequence);
			a.add_challenge(challenge1,consequence1);
			a.add_challenge(challenge2,consequence2);
			a.add_challenge(challenge3,consequence3);
			a.add_challenge(challenge4,consequence4);
			a.add_challenge(challenge5,consequence5);
			a.add_challenge(challenge6,consequence6);
			a.add_challenge(challenge7,consequence7);
			a.add_challenge(challenge8,consequence8);
			a.add_challenge(challenge9,consequence9);
			a.add_challenge(challenge10,consequence10);
			a.add_challenge(challenge11,consequence11);
			a.add_challenge(challenge12,consequence12);
			a.add_challenge(challenge13,consequence13);
			a.add_challenge(challenge14,consequence14);
			a.add_challenge(challenge15,consequence15);
			a.add_challenge(challenge16,consequence16);
			a.add_challenge(challenge17,consequence17);
			
			p.new_attack(a);
			
			//i still have quite a bit in the way of chaining together consequences here
			a = new Action();
			a.set_name("Masturbate");
			a.set_personal();
			a.set_attack_flag(-1, "Skills");
			a.set_dialogue("</n> tries to find a secluded area to </c0>. ");
			a.set_requirement(FPalace_helper.lust_id,25);
			a.set_status_change(" is masturbating here");
			var c:Challenge = new Challenge();
			c.set_attack_stat(FPalace_helper.lust_id);
			//how to set a static defense stat
			c.set_defense_stat(-1,25);
			c.set_variability(0);
			c.set_text("masturbate");
			//this is something i want to have a few possible chains for, depending on the characters current endowments
			var cons:Consequence = new Consequence();
			consequence.set_damage_type(FPalace_helper.lust_damage_type().get_id());
			cons.amt_by_roll_flag();
			cons.add_consequence(FPalace_helper.lust_id,Consequence.amt_from_roll_const, "</n> manages to find a nice spot, and masturbate furiously. </pronoun> appears a little relieved. ",0);
			cons.add_consequence(FPalace_helper.lust_id,26, "</n> manages to find a nice spot, and masturbate furiously. </pronoun> toils for naught, and just end up even more pent up than before. ",-1);

			a.add_challenge(c,cons);
			
			p.new_action(a);

			return p;
		}
			
		public static function new_clit(r:Race, s1:int = 1):Body_part{
			var p:Body_part = new Body_part();
				p.set_name("clitoris");
				p.set_part_id(clit_slot);
				p.add_description("</noun> </bpn> is </r>");
				
				p.new_connect_slot(hips_slot);
				p.new_connect_slot(thighs_slot);
				
				p.new_stat(FPalace_helper.max_hp_id, FPalace_helper.stat_max_hp(),1);
				p.new_stat(FPalace_helper.curr_hp_id, FPalace_helper.stat_curr_hp(), 1);
				p.new_stat(FPalace_helper.max_fatigue_id, FPalace_helper.stat_max_fatigue(),1);
				p.new_stat(FPalace_helper.curr_fatigue_id, FPalace_helper.stat_curr_fatigue(), 1);
				p.new_stat(FPalace_helper.sex_appeal_id, FPalace_helper.stat_sex_appeal(), 1);
				p.new_stat(FPalace_helper.min_lust_id, FPalace_helper.stat_min_lust(), 0);
				p.new_stat(FPalace_helper.max_lust_id, FPalace_helper.stat_max_lust(), 50);
				p.new_stat(FPalace_helper.lust_id, FPalace_helper.stat_lust(), 0);
				
				p.new_stat(clit_length, stat_clit_length(),s1);
				
				p.set_display_length_stat(FPalace_helper.clit_length);
				
				p.set_display_direction(Body_part.display_bottom_back);
				
			var ps:Body_part_state = new Body_part_state();
				ps.new_ratio_stat(FPalace_helper.lust_id);
				ps.new_ratio_stat(FPalace_helper.max_lust_id);
				ps.set_stat_effected(clit_length);
				ps.new_comparison(">=", 0.4,1,"</n>s clit bulges out from beneath it's hood. ", "</n>s clit is proudly on display. ");
				ps.new_comparison("v", 0.4,0.1,"</n>s clit once again hides away. ");
				
				
							
			
			p.set_race(r);
			p.set_part_state(ps);
			return p;
		}
		
		public static function new_penis(r:Race,s1:Number = 6, s2:Number = 2, s3:Number = 3):Body_part{
			var p:Body_part = new Body_part();
			p.set_name("penis");
			p.set_part_id(cock_slot);
			p.add_description("</noun> </bpn> is </r>");
			
			p.new_connect_slot(hips_slot);
			p.new_connect_slot(abdomen_slot);
			p.new_connect_slot(thighs_slot);
			
			p.set_display_direction(Body_part.display_bottom);
			
			p.set_display_length_stat(FPalace_helper.penis_length_id);
			
			p.set_display_width_stat(FPalace_helper.penis_girth_id);
			p.set_display_width_mod(0.5);
			
			p.new_stat(penis_length_id, stat_penis_length(),s1);
			
			p.new_stat(penis_girth_id, stat_penis_girth(),s2);
			p.new_stat(cum_volume_id, stat_cum_volume(),s3);
			
			
			var ps:Body_part_state = new Body_part_state();
				ps.new_ratio_stat(FPalace_helper.lust_id);
				ps.new_ratio_stat(25, true);
				ps.set_stat_effected(penis_length_id);
				ps.set_stat_effected(penis_girth_id);
				ps.new_comparison(">=", FPalace_helper.erection_ratio_id,1,"</n>s penis comes to attention, standing fully erect. ", ", and ocassionally throbs, it's erect shaft coursing with blood. ", true);
				ps.new_comparison("<=", 0,FPalace_helper.erection_ratio_id,"</n>s penis falls completely flaccid. ", ", and is hanging flaccidly over </noun> groin. ", false, true);
				ps.new_comparison("^", FPalace_helper.erection_ratio_id,-1,"</n> shows some stirings in </noun> groin. ", ", it pulses occasionally as it hangs over </noun> groin. ", true);
				ps.new_comparison("v", FPalace_helper.erection_ratio_id,-1,"</n>s groin visibly begins to lose blood, </noun> penis falling flaccid. ", ", it pulses occasionally as it hangs over </noun> groin. ",true);
			
			
			p.set_part_state(ps);
			
			var a:Action = new Action();
			a.set_name("Rape");
			a.set_attack_flag(Action.attack_type_single_target, "Sex");
			a.set_attack_description("Force an opponent to have sex with you. ");
			a.set_requirement(FPalace_helper.lust_id,25);
			a.set_requirement(FPalace_helper.curr_fatigue_id,1);
			a.set_delayed_trigger()
			var challenge:Challenge = new Challenge(true);
			
			challenge.set_attack_stat(FPalace_skills.grappling_id);
			challenge.set_defense_stat(FPalace_skills.dodging_id);
			challenge.set_variability(20);
			challenge.set_text("Rape");
			var consequence:Consequence = new Consequence();
			consequence.set_damage_type(FPalace_helper.lust_damage_type().get_id());
			consequence.add_consequence(FPalace_helper.lust_id,10, "</n2> jumps upon </n> and pins </objnoun>. </n> moans out in pleasure as </n2> explores </noun> body. ",0,0,0,1);
				//and now begins the madness... first choice: top half or bottom half
				var challenge1:Challenge = new Challenge();
				challenge1.set_attack_stat(-1,1);//challenge1.set_attack_stat(-1,0);
				challenge1.set_defense_stat(-1,0);
				challenge1.set_variability(0);//challenge1.set_variability(20);
				challenge1.set_text("");
				var consequence1:Consequence = new Consequence();				
					//top half! facial... if breasts are present, try to pull off the top
					consequence1.set_damage_type(FPalace_helper.lust_damage_type().get_id());
					//consequence1.add_consequence(FPalace_helper.lust_id,10, "</n2> aggressively starts fondling </n>s chest, enticing </objnoun>. ",0,0,0,2);
					consequence1.add_consequence(FPalace_helper.lust_id,0, "</c2>\n</c4>",0);
						//check if breasts present
						var challenge2:Challenge = new Challenge();
						challenge2.set_attack_stat(-1,1);
						challenge2.set_defense_stat(FPalace_helper.breast_size_id);
						challenge2.set_variability(0);
						challenge2.set_text("Chest");
						var consequence2:Consequence = new Consequence();
							//no titties... blowjob...
							consequence2.set_damage_type(FPalace_helper.lust_damage_type().get_id());
							consequence2.add_consequence(FPalace_helper.lust_id,25, "</n2> forces </noun2> groin into </n>s face. </n> can't help but enjoy the view. ",0,0,0,9);
								var challenge9:Challenge = new Challenge();
								challenge9.set_attack_stat(FPalace_helper.lust_id);
								challenge9.set_defense_stat(-1,50);
								challenge9.set_variability(0);
								challenge9.set_text("");
								var consequence9:Consequence = new Consequence();
									//attacker is aroused! BJ! 
									consequence9.set_damage_type(FPalace_helper.lust_damage_type().get_id());
									consequence9.add_consequence(FPalace_helper.lust_id,50, "</n2> thrusts </noun2> cock at </n>s mouth, greadily pouring </noun2> waiting inches into </n>s agape mouth. ",0,0,0,-1);
									consequence9.add_consequence(FPalace_helper.lust_id,20, "\n",0,0,0,10,true);
										var challenge10:Challenge = new Challenge();
										challenge10.set_attack_stat(FPalace_helper.cum_volume_id);
										challenge10.set_defense_stat(-1,1);
										challenge10.set_variability(0);
										challenge10.set_text("");
										var consequence10:Consequence = new Consequence();
										//attacker has cum! Change consequence depending on how much!
										//need some way to have a "cum effect" so cum can cause effect when consumed (breast growth, etc...)
										//maybe part actions... body_parts can have an action associated with them.
										//I've put some more thought into this, and I'm thinking it makes more sense to have stats have actions(mostly because there are 
										//more of them, and it will be easier to distinguish between impregnation and consumption)
										//call would be something like this
										//consequence10.trigger_stat_action(cum_volume_id);
										//this could replace the impregnate to some extent(assuming I can figure out how to split out consuming semen from impregnation, as the part is the same)
										consequence10.set_damage_type(FPalace_helper.lust_damage_type().get_id());
										consequence10.set_consume(FPalace_helper.cum_volume_id);
										consequence10.add_consequence(FPalace_helper.lust_id,50, "</n2> begins to launch a load of semen down </n>s throat, a look of relief crossing </noun2> face. ",0,0,0,-1);
										consequence10.add_consequence(FPalace_helper.lust_id,-50, "\n",0,0,0,-1,true);
										//attack has no cum!? Still need a climax!
										consequence10.add_consequence(FPalace_helper.lust_id,50, "</n2> bucks and jerks as </pronoun2> climaxes. ",-1,0,0,-1);
										consequence10.add_consequence(FPalace_helper.lust_id,-50, "\n",-1,0,0,-1,true);
									//attack is not aroused! Smother and try again!
									consequence9.add_consequence(FPalace_helper.lust_id,25, "Not quite hard yet, </n2> coaxes a lick from </n>. ",-1,0,0,-1);
									consequence9.add_consequence(FPalace_helper.lust_id,25, "\n",-1,0,0,9,true);
	
							//titties! attempt to disrobe breasts
							consequence2.add_consequence(FPalace_helper.lust_id,10, "</n2>s hands dive for </n>s chest, and begin to grope and dig! ",-1,0,0,3);
							var challenge3:Challenge = new Challenge();
							challenge3.set_attack_stat(-1,0);
							challenge3.set_defense_stat(-1,0);
							challenge3.set_defense_equip_slot_check(FPalace_helper.breasts_slot);
							challenge3.set_variability(0);
							challenge3.set_text("");
							var consequence3:Consequence = new Consequence();
								//clothing found! 
								consequence3.set_damage_type(FPalace_helper.lust_damage_type().get_id());
								consequence3.add_consequence(FPalace_helper.lust_id,10, "</n2> pulls at </n>s attempt to cover </noun> breasts. ",-1,0,0,8);
								var challenge8:Challenge = new Challenge(true);
								challenge8.set_attack_stat(FPalace_skills.grappling_id);
								challenge8.set_defense_stat(FPalace_skills.grappling_id);
								challenge8.set_variability(10);
								challenge8.set_text("");
								var consequence8:Consequence = new Consequence();
									consequence8.set_damage_type(FPalace_helper.lust_damage_type().get_id());
									consequence8.add_disrobe(FPalace_helper.breasts_slot);
									//disrobe success! titties!
									consequence8.add_consequence(FPalace_helper.lust_id,25, "</n2> rips </n>s coverings and begins to attack </noun> breasts in earnest! </n> moans out from the deep massage. ",0,0,0,11);
									//disrobe failure! horniness increases past even where it was before!
									//need some way for this to effect other character... - flip target flag!
									consequence8.add_consequence(FPalace_helper.lust_id,25, "</n2> is knocked back as </n> defends </noun> mounds. </n2> is just turned on by </noun2> targets persistance. ",-1,0,0,-1,true);
									
								//no clothing! Titties!
								consequence3.add_consequence(FPalace_helper.lust_id,25, "</n2> begins to massage </n>s breasts and tweek </noun> nipples! </n> moans out from the sensations. ",0,0,0,11);
								var challenge11:Challenge = new Challenge();
										challenge11.set_attack_stat(FPalace_helper.lust_id);
										challenge11.set_defense_stat(-1,50);
										challenge11.set_variability(0);
										challenge11.set_text("");
										var consequence11:Consequence = new Consequence();
										//attacker is aroused! titty job!
										consequence11.set_damage_type(FPalace_helper.lust_damage_type().get_id());
										consequence11.add_consequence(FPalace_helper.lust_id,40, "</n2> begins to shove </noun2> cock between </n>s fleshy mounds. ",0,0,0,12);
											var challenge12:Challenge = new Challenge();
											challenge12.set_attack_stat(FPalace_helper.lust_id);
											challenge12.set_defense_stat(-1,100);
											challenge12.set_variability(15);
											challenge12.set_text("");
											var consequence12:Consequence = new Consequence();
											//attacker can keep going! Head to BJ!
											consequence12.set_damage_type(FPalace_helper.lust_damage_type().get_id());
											consequence12.add_consequence(FPalace_helper.lust_id,50, "</n2> blows </noun2> load all over </n>s face and tits. Unsatisfied </pronoun2> begins to eye </n>s cum smeered face. ",0,0,0,-1);
											consequence12.add_consequence(FPalace_helper.lust_id,-50, "\n",0,0,0,9,true);
											//attacker is done! stop the madness!
											consequence12.add_consequence(FPalace_helper.lust_id,50, "</n2> blows </noun2> load all over </n>s face and tits, leaving </objnoun2> spent for the moment. ",-1,0,0,-1);
											consequence12.add_consequence(FPalace_helper.lust_id,-50, "\n",-1,0,0,-1,true);
										//attack is not aroused. Play with tits and try again
										consequence11.add_consequence(FPalace_helper.lust_id,25, "</n2> takes a moment to stroke </objnoun2>self to erection. ",-1,0,0,-1);
										consequence11.add_consequence(FPalace_helper.lust_id,25, "\n",-1,0,0,11,true);
					//bottom half!
					//consequence1.add_consequence(FPalace_helper.lust_id,25, "</n2> aggressively starts exploring </n>s groin with </noun2> fingers, enticing </n>. ",-1,0,0,4);
						//disrobe attempt
						var challenge4:Challenge = new Challenge();
						challenge4.set_attack_stat(-1,0);
						challenge4.set_defense_stat(-1,0);
						challenge4.set_defense_equip_slot_check(FPalace_helper.hips_slot);
						challenge4.set_variability(0);
						challenge4.set_text("Groin");
						var consequence4:Consequence = new Consequence();
							//disrobe success or not covered
							consequence4.set_damage_type(FPalace_helper.lust_damage_type().get_id());
							consequence4.add_consequence(FPalace_helper.lust_id,25, "</n2> whips out </noun2> dick and quickly takes up position over </n>. ",0,0,0,5);
							var challenge5:Challenge = new Challenge();
							challenge5.set_attack_stat(FPalace_helper.lust_id);
							challenge5.set_defense_stat(-1,50);
							challenge5.set_variability(0);
							challenge5.set_text("");
							var consequence5:Consequence = new Consequence();
								//character is fully aroused
								consequence5.set_damage_type(FPalace_helper.lust_damage_type().get_id());
								consequence5.add_consequence(FPalace_helper.lust_id,50, "</n2> begins to rub </noun2> penis against </n>s groin. ",0,0,0,6);
									var challenge6:Challenge = new Challenge();
									challenge6.set_attack_stat(-1,0);
									challenge6.set_defense_stat(FPalace_helper.vaginal_depth_id,-1);
									challenge6.set_variability(0);
									challenge6.set_text("");
									var consequence6:Consequence = new Consequence();
									//fuck pussy if present
									consequence6.set_damage_type(FPalace_helper.lust_damage_type().get_id());
									consequence6.add_consequence(FPalace_helper.lust_id,50, "Finally, </n2> begins to penetrate </n>. ",-1,0,0,13);
										//check to see if dick fits...
										var challenge13:Challenge = new Challenge();
										challenge13.set_attack_stat(FPalace_helper.penis_girth_id,-1, Body.get_stat_min);
										challenge13.set_defense_stat(FPalace_helper.vaginal_width_id,-1, Body.get_stat_max);
										challenge13.set_variability(0);
										challenge13.set_text("");
										var consequence13:Consequence = new Consequence();
												consequence13.set_damage_type(FPalace_helper.lust_damage_type().get_id());
												consequence13.add_consequence(FPalace_helper.lust_id,50, "Plunging to work, </n2> furiously begins to pump </noun2> ass. ",0,0,0,14);
												var challenge14:Challenge = new Challenge();
												challenge14.set_attack_stat(FPalace_helper.cum_volume_id);
												challenge14.set_defense_stat(-1,1);
												challenge14.set_variability(0);
												challenge14.set_text("");
												var consequence14:Consequence = new Consequence();
												consequence14.set_damage_type(FPalace_helper.lust_damage_type().get_id());
												consequence14.set_impregnate();
												consequence14.add_consequence(FPalace_helper.lust_id,50, "</n2> begins to launch a load of semen into </n>, an *O* visible on </noun2> face. ",0,0,0,-1);
												consequence14.add_consequence(FPalace_helper.lust_id,-50, "\n",0,0,0,-1,true);
												//attack has no cum!? Still need a climax!
												consequence14.add_consequence(FPalace_helper.lust_id,50, "</n2> bucks and jerks as </pronoun2> climaxes. ",-1,0,0,-1);
												consequence14.add_consequence(FPalace_helper.lust_id,-50, "\n",-1,0,0,-1,true);
											//dick too big... go for blowjob
											consequence13.add_consequence(FPalace_helper.lust_id,50, "Despite </noun> attempts, </n2>s dick isn't going to fit. ",-1,0,0,-1);
											consequence13.add_consequence(FPalace_helper.vaginal_width_id,0.5, "\n",-1,0,0,2);
									//fuck ass
									consequence6.add_consequence(FPalace_helper.lust_id,25, "Finding nothing else, </n2> leads </noun2> cock towards </n>s ass. ",0,0,0,7);
										var challenge7:Challenge = new Challenge();
										challenge7.set_attack_stat(FPalace_helper.penis_girth_id,-1, Body.get_stat_min);
										challenge7.set_defense_stat(FPalace_helper.anal_width_id,-1, Body.get_stat_max);
										challenge7.set_variability(0);
										challenge7.set_text("");
										var consequence7:Consequence = new Consequence();
											//pump 'er full
											consequence7.set_damage_type(FPalace_helper.lust_damage_type().get_id());
											consequence7.add_consequence(FPalace_helper.lust_id,50, "</n2> penetrates </n>, and it isn't long before </pronoun2> begins pounding </n>s asshole. ",0,0,0,15);
												var challenge15:Challenge = new Challenge();
												challenge15.set_attack_stat(FPalace_helper.cum_volume_id);
												challenge15.set_defense_stat(-1,1);
												challenge15.set_variability(0);
												challenge15.set_text("");
												var consequence15:Consequence = new Consequence();
												consequence15.set_damage_type(FPalace_helper.lust_damage_type().get_id());
												consequence15.add_consequence(FPalace_helper.lust_id,50, "</n2> begins to launch a load of semen into </n>, an *O* visible on </noun2> face. ",0,0,0,-1);
												consequence15.add_consequence(FPalace_helper.lust_id,-50, "\n",0,0,0,-1,true);
												//attack has no cum!? Still need a climax!
												consequence15.add_consequence(FPalace_helper.lust_id,50, "</n2> bucks and jerks as </pronoun2> climaxes. ",-1,0,0,-1);
												consequence15.add_consequence(FPalace_helper.lust_id,-50, "\n",-1,0,0,-1,true);
											
											//dick too big... try mouth...
											consequence7.add_consequence(FPalace_helper.lust_id,50, "</n2> pounds and pounds but </pronoun2> just isn't going to fit. ",-1,0,0,-1);
											consequence7.add_consequence(FPalace_helper.anal_width_id,0.5, "\n",-1,0,0,2);
								//character is not aroused...
								consequence5.add_consequence(FPalace_helper.lust_id,25, "</n2> take a moment to stroke </objnoun2>self to arrousal. ",-1,0,0,-1);
								consequence5.add_consequence(FPalace_helper.lust_id,25, "\n",-1,0,0,5,true);
								
						//character is wearing clothing!
						consequence4.add_consequence(FPalace_helper.lust_id,25, "</n2> pulls and tugs on </n>s clothing. ",-1,0,0,16,true);
							var challenge16:Challenge = new Challenge(true);
							challenge16.set_attack_stat(FPalace_skills.grappling_id);
							challenge16.set_defense_stat(FPalace_skills.grappling_id);
							challenge16.set_variability(10);
							challenge16.set_text("");
							var consequence16:Consequence = new Consequence();
								consequence16.set_damage_type(FPalace_helper.lust_damage_type().get_id());
								consequence16.add_disrobe(FPalace_helper.hips_slot);
								//disrobe success! groin!
								consequence16.add_consequence(FPalace_helper.lust_id,25, "</n2> rips </n>s coverings and begins to attack </noun> groin in earnest! ",0,0,0,4);
								//disrobe failure! horniness increases past even where it was before!
								consequence16.add_consequence(FPalace_helper.lust_id,25, "</n2> is knocked back as </n> defends </noun> crotch. </n2> is just turned on by </noun2> targets persistance. ",-1,0,0,-1,true);
								
							
			consequence.add_consequence(0,0, "</n2> leaps towards </n>, but </pronoun> deftly step out of the way! ",-1);
						
			a.add_challenge(challenge,consequence);
			a.add_challenge(challenge1,consequence1);
			a.add_challenge(challenge2,consequence2);
			a.add_challenge(challenge3,consequence3);
			a.add_challenge(challenge4,consequence4);
			a.add_challenge(challenge5,consequence5);
			a.add_challenge(challenge6,consequence6);
			a.add_challenge(challenge7,consequence7);
			a.add_challenge(challenge8,consequence8);
			a.add_challenge(challenge9,consequence9);
			a.add_challenge(challenge10,consequence10);
			a.add_challenge(challenge11,consequence11);
			a.add_challenge(challenge12,consequence12);
			a.add_challenge(challenge13,consequence13);
			a.add_challenge(challenge14,consequence14);
			a.add_challenge(challenge15,consequence15);
			a.add_challenge(challenge16,consequence16);
			
			
			p.new_attack(a);
			
			a = new Action();
				a.set_name("Thrust");
				a.set_attack_flag(Action.attack_type_single_target, "Sex");
				a.set_attack_description("Thrust your genitals at a single opponent. ");
				challenge = new Challenge();
				
				challenge.set_attack_stat(FPalace_helper.sex_appeal_id);
				challenge.set_defense_stat(FPalace_helper.wis_id);
				challenge.set_variability(10);
				challenge.set_text("Thrust");
				consequence = new Consequence();
				consequence.set_damage_type(FPalace_helper.lust_damage_type().get_id());
				consequence.set_max_damage(20);
				var inter_chal:Challenge = new Challenge(true);
					inter_chal.set_attack_stat(FPalace_skills.concentration_id);
					inter_chal.set_defense_stat(-1,0);
					inter_chal.set_variability(10);
				
				consequence.set_interupt_chal(inter_chal);
				consequence.add_consequence(-FPalace_helper.lust_id,Consequence.amt_from_roll_const, "</n2> thrusts </noun2> hips towards </n>, </noun2> wang waggling. ",0);
				consequence.add_consequence(FPalace_helper.wis_id,-1, "</n2>s pendulous swing catches </n>s attention, distracting </objnoun>. ",5,1,1);
				consequence.add_consequence(0,0, "</n> looks away from </n2>s swinging junk! ",-1);
				consequence.amt_by_roll_flag();
				a.add_challenge(challenge,consequence);
				
				p.new_attack(a);
			
			//i still have quite a bit in the way of chaining together consequences here
			a = new Action();
			a.set_name("Jerk off");
			a.set_personal();
			a.set_dialogue("</n> tries to find a secluded area to </c0>. ");
			a.set_requirement(FPalace_helper.lust_id,25);
			a.set_status_change(" is masturbating here");
			a.set_attack_flag(-1, "Skills");
			var c:Challenge = new Challenge();
			c.set_room_challenge(Challenge.content_count);
			c.set_defense_stat(-1,2);
			c.set_variability(0);
			c.set_text("masturbate");
			var cons:Consequence = new Consequence();
			cons.add_consequence(FPalace_helper.lust_id,0, "There are people about. ",0,0,0,2);//folks about, gotta check to see if we're embarrassed or not
			cons.add_consequence(FPalace_helper.lust_id,0, "",-1,0,0,1);//nobodies around. Go right for it
			
			a.add_challenge(c,cons);
			
			c = new Challenge();//1
			c.set_attack_stat(FPalace_helper.lust_id);
			c.set_defense_stat(-1,0);
			c.set_variability(0);
			c.set_text("");
			//this is something i want to have a few possible chains for, depending on the characters current endowments
			cons = new Consequence();
			cons.set_extract(FPalace_helper.cum_volume_id);
			cons.amt_by_roll_flag();
			cons.add_consequence(FPalace_helper.lust_id,Consequence.amt_from_roll_const, "</n> manages to find a nice spot, and masturbates furiously. A smile develops on </noun> lips as a </sd"+FPalace_helper.cum_volume_id+"> of cum spews from </noun> throbbing erection. </pronoun> appears a little relieved. ",0);
			cons.add_consequence(FPalace_helper.lust_id,50, "</n> manages to find a nice spot, and masturbate furiously. </pronoun> toils for naught, and just end up even more pent up than before. ",-1);

			a.add_challenge(c,cons);
			
			c = new Challenge();//2
			c.set_attack_stat(FPalace_helper.wis_id);
			c.set_defense_stat(-1,10);
			c.set_variability(10);
			c.set_text("");
			cons = new Consequence();
			cons.add_consequence(FPalace_helper.lust_id,0,"</n> decides </pronoun> doesn't mind an audience. ",0,0,0,1);//don't care there are people around
			cons.add_consequence(FPalace_helper.lust_id,0,"</n>s cheeks turn a deep shade of red. ",-1,0,0,3);//I care there are people around

			a.add_challenge(c,cons);
			
			c = new Challenge();//3
			c.set_attack_stat(FPalace_helper.curr_mp_id);
			c.set_defense_stat(-1,3);
			c.set_variability(0);
			c.set_text("");
			cons = new Consequence();
			cons.set_damage_type(FPalace_helper.lust_damage_type().get_id());
			cons.add_consequence(FPalace_helper.curr_mp_id,-3, "Finally, </pronoun> decides to masturbate despite the people. ",0,0,0,1);//doing it despite the fact I care
			cons.add_consequence(FPalace_helper.lust_id,40, "</n> decides to wait for a less crowded situation. ",-1);//Chickening out

			a.add_challenge(c,cons);

			p.new_action(a);
			
			p.new_stat(FPalace_helper.max_hp_id, FPalace_helper.stat_max_hp(),1);
			p.new_stat(FPalace_helper.curr_hp_id, FPalace_helper.stat_curr_hp(), 1);
			p.new_stat(FPalace_helper.max_fatigue_id, FPalace_helper.stat_max_fatigue(),1);
			p.new_stat(FPalace_helper.curr_fatigue_id, FPalace_helper.stat_curr_fatigue(), 1);
			p.new_stat(FPalace_helper.sex_appeal_id, FPalace_helper.stat_sex_appeal(), 1);
			p.new_stat(FPalace_helper.min_lust_id, FPalace_helper.stat_min_lust(), 0);
			p.new_stat(FPalace_helper.max_lust_id, FPalace_helper.stat_max_lust(), 50);
			p.new_stat(FPalace_helper.lust_id, FPalace_helper.stat_lust(), 0);
			p.new_stat(FPalace_helper.erection_ratio_id, FPalace_helper.stat_erection_ratio(), 0.7);
			
			
			p.set_race(r);
			return p
		}
		
		public static function new_balls(r:Race,s1:Number = 1.5, s2:int = 1, s3:Number = 0.05):Body_part{
			var p:Body_part = new Body_part();
			p.set_name("balls");
			p.set_part_id(balls_slot);
			p.add_description("</noun> </bpn> are </r>");
			
			p.new_connect_slot(hips_slot);
			p.new_connect_slot(thighs_slot);
			p.new_connect_slot(abdomen_slot);
			
			p.set_display_direction(Body_part.display_bottom);
			
			p.set_display_length_stat(FPalace_helper.balls_size_id);
			p.set_display_length_mod(0.75);
			
			p.set_display_width_stat(FPalace_helper.hips_id);
			p.set_display_width_mod(0.1);
			
			p.set_display_width2_stat(FPalace_helper.balls_size_id);
			p.set_display_width2_mod(1.5);
						
			p.new_stat(cum_volume_id, stat_cum_volume(),s2);
			
			p.new_stat(balls_size_id, stat_ball_size(),s1);
				
			
			p.new_stat(semen_fertility_id, stat_semen_fertility(),s3);
				
			p.new_stat(FPalace_helper.max_hp_id, FPalace_helper.stat_max_hp(),1);
				p.new_stat(FPalace_helper.curr_hp_id, FPalace_helper.stat_curr_hp(), 1);
				p.new_stat(FPalace_helper.max_fatigue_id, FPalace_helper.stat_max_fatigue(),1);
				p.new_stat(FPalace_helper.curr_fatigue_id, FPalace_helper.stat_curr_fatigue(), 1);
			p.new_stat(FPalace_helper.sex_appeal_id, FPalace_helper.stat_sex_appeal(), 1);
			p.new_stat(FPalace_helper.min_lust_id, FPalace_helper.stat_min_lust(), 0);
			p.new_stat(FPalace_helper.max_lust_id, FPalace_helper.stat_max_lust(), 50);
			p.new_stat(FPalace_helper.lust_id, FPalace_helper.stat_lust(), 0);
			
			p.set_race(r);
			return p;
		}
		
		public static function new_cocksnake_head(r:Race):Body_part{
			var p:Body_part = new Body_part();
				p.set_name("reptilian head");
				p.set_part_id(FPalace_helper.head_slot);
				p.add_description("</noun> </bpn> bears a striking resemblance to the human penis. ");
				
				p.new_connect_slot(hips_slot);
				p.new_connect_slot(eyes_slot);
				
				p.set_display_direction(Body_part.display_top_back);
				
				p.set_display_length_stat(FPalace_helper.height_id);
				
				var a:Action = new Action();
				a.set_name("Bite");
				a.set_attack_flag();
				a.set_attack_description("Bite a single opponent with your teeth. ");
				a.set_fire_weapon_challenge();
				var challenge:Challenge = new Challenge();
				challenge.set_attack_stat(FPalace_helper.str_id);
				challenge.set_defense_stat(FPalace_helper.dex_id);
				challenge.set_variability(10);
				challenge.set_text("Bite");
				var consequence:Consequence = new Consequence();
				consequence.set_damage_type(FPalace_helper.lust_damage_type().get_id());
				consequence.set_max_damage(15);
				var inter_chal:Challenge = new Challenge(true);
					inter_chal.set_attack_stat(FPalace_skills.concentration_id);
					inter_chal.set_defense_stat(-1,4);
					inter_chal.set_variability(10);
				
				consequence.set_interupt_chal(inter_chal);
				consequence.add_consequence(FPalace_helper.curr_hp_id,-1, "</n2> lashes out with its mouth wide open, biting </n>. ",0);
				consequence.add_consequence(FPalace_helper.lust_id,1, "",0);
				consequence.add_consequence(FPalace_helper.penis_length_id,1, "",0);
				consequence.add_consequence(FPalace_helper.penis_girth_id,0.3, "",0);
				consequence.add_consequence(FPalace_helper.cum_volume_id,1.2, "",0);
				consequence.add_consequence(FPalace_helper.balls_size_id,0.2, "",0);
				consequence.add_consequence(0,0, "</n2> misses. ",-1);
								
				a.add_challenge(challenge,consequence);
				
				p.new_attack(a);
				
				//"rape" to use against anyone with a vagina
				p.set_crit_part();
				p.new_stat(FPalace_helper.max_hp_id, FPalace_helper.stat_max_hp(), 5);
				p.new_stat(FPalace_helper.max_fatigue_id, FPalace_helper.stat_max_fatigue(),5);
				p.new_stat(FPalace_helper.curr_fatigue_id, FPalace_helper.stat_curr_fatigue(), 5);
				p.new_stat(FPalace_helper.sex_appeal_id, FPalace_helper.stat_sex_appeal(), 1);
				p.new_stat(FPalace_helper.min_lust_id, FPalace_helper.stat_min_lust(), 0);
				p.new_stat(FPalace_helper.max_lust_id, FPalace_helper.stat_max_lust(), 50);
				p.new_stat(FPalace_helper.str_id, FPalace_helper.stat_strength(), 5);
				p.new_stat(FPalace_helper.dex_id, FPalace_helper.stat_dexterity(), 5);
				p.new_stat(FPalace_helper.con_id, FPalace_helper.stat_constitution(), 5);
				p.new_stat(FPalace_helper.wis_id, FPalace_helper.stat_wisdom(), 5);
				p.new_stat(FPalace_helper.will_id, FPalace_helper.stat_willpower(), 5);
				p.new_stat(FPalace_helper.int_id, FPalace_helper.stat_intelligence(), 5);
				p.new_stat(FPalace_helper.max_mp_id, FPalace_helper.stat_max_mp(),1);
				p.new_stat(FPalace_helper.curr_mp_id, FPalace_helper.stat_curr_mp(), 1);
				p.new_stat(FPalace_helper.cha_id, FPalace_helper.stat_charisma(), 5);
				p.new_stat(FPalace_helper.curr_hp_id, FPalace_helper.stat_curr_hp(), 5);
				p.new_stat(FPalace_helper.lust_id, FPalace_helper.stat_lust(), 0);
				p.new_stat(FPalace_helper.height_id, FPalace_helper.stat_height(), 3);
				
				
				
			p.set_race(r);
			return p;
		}
		
		public static function new_vagsnake_head(r:Race):Body_part{
			var p:Body_part = new Body_part();
				p.set_name("reptilian head");
				p.set_part_id(FPalace_helper.head_slot);
				p.add_description("</noun> </bpn> bears a striking resemblance to the human vulva, the folds and odd nub on </noun> bright and oily pink face. ");
				
				p.new_connect_slot(hips_slot);
				p.new_connect_slot(eyes_slot);
				
				p.set_display_direction(Body_part.display_top_back);
				
				p.set_display_length_stat(FPalace_helper.height_id);
				
				var a:Action = new Action();
				a.set_name("Bite");
				a.set_attack_flag();
				a.set_attack_description("Bite a single opponent with your teeth. ");
				a.set_fire_weapon_challenge();
				var challenge:Challenge = new Challenge();
				challenge.set_attack_stat(FPalace_helper.str_id);
				challenge.set_defense_stat(FPalace_helper.dex_id);
				challenge.set_variability(10);
				challenge.set_text("Bite");
				var consequence:Consequence = new Consequence();
				consequence.set_damage_type(FPalace_helper.lust_damage_type().get_id());
				consequence.set_max_damage(15);
				var inter_chal:Challenge = new Challenge(true);
					inter_chal.set_attack_stat(FPalace_skills.concentration_id);
					inter_chal.set_defense_stat(-1,4);
					inter_chal.set_variability(10);
				
				consequence.set_interupt_chal(inter_chal);
				consequence.add_consequence(FPalace_helper.curr_hp_id,-1, "</n2> lashes out with its mouth wide open, biting </n>. ",0);
				consequence.add_consequence(FPalace_helper.lust_id,1, "",0);
				consequence.add_consequence(FPalace_helper.vaginal_depth_id,0.3, "",0);
				consequence.add_consequence(FPalace_helper.vaginal_width_id,0.1, "",0);
				consequence.add_consequence(FPalace_helper.milk_volume_id,5, "",0);
				consequence.add_consequence(FPalace_helper.breast_size_id,0.5, "",0);
				consequence.add_consequence(0,0, "</n2> misses. ",-1);
								
				a.add_challenge(challenge,consequence);
				
				p.new_attack(a);
				
				//"rape" to use against anyone with a penis
				p.set_crit_part();
				p.new_stat(FPalace_helper.max_hp_id, FPalace_helper.stat_max_hp(), 5);
				p.new_stat(FPalace_helper.max_fatigue_id, FPalace_helper.stat_max_fatigue(),5);
				p.new_stat(FPalace_helper.curr_fatigue_id, FPalace_helper.stat_curr_fatigue(), 5);
				p.new_stat(FPalace_helper.sex_appeal_id, FPalace_helper.stat_sex_appeal(), 1);
				p.new_stat(FPalace_helper.min_lust_id, FPalace_helper.stat_min_lust(), 0);
				p.new_stat(FPalace_helper.max_lust_id, FPalace_helper.stat_max_lust(), 50);
				p.new_stat(FPalace_helper.str_id, FPalace_helper.stat_strength(), 5);
				p.new_stat(FPalace_helper.dex_id, FPalace_helper.stat_dexterity(), 5);
				p.new_stat(FPalace_helper.con_id, FPalace_helper.stat_constitution(), 5);
				p.new_stat(FPalace_helper.wis_id, FPalace_helper.stat_wisdom(), 5);
				p.new_stat(FPalace_helper.will_id, FPalace_helper.stat_willpower(), 5);
				p.new_stat(FPalace_helper.int_id, FPalace_helper.stat_intelligence(), 5);
				p.new_stat(FPalace_helper.max_mp_id, FPalace_helper.stat_max_mp(),1);
				p.new_stat(FPalace_helper.curr_mp_id, FPalace_helper.stat_curr_mp(), 1);
				p.new_stat(FPalace_helper.cha_id, FPalace_helper.stat_charisma(), 5);
				p.new_stat(FPalace_helper.curr_hp_id, FPalace_helper.stat_curr_hp(), 5);
				p.new_stat(FPalace_helper.lust_id, FPalace_helper.stat_lust(), 0);
				p.new_stat(FPalace_helper.height_id, FPalace_helper.stat_height(), 5);
				
				
			p.set_race(r);
			return p;
		}
		
		public static function new_sexsnake_body(r:Race):Body_part{
			var p:Body_part = new Body_part();
				p.set_name("body");
				p.set_part_id(FPalace_helper.hips_slot);
				p.add_description("</noun> </bpn> is about arm length and covered in scales that flash as </pronoun> moves. ");
				
				p.new_connect_slot(head_slot);
				p.new_connect_slot(torso_slot);
				p.new_connect_slot(vag_slot);
				p.new_connect_slot(cock_slot);
				p.new_connect_slot(balls_slot);
				p.new_connect_slot(clit_slot);
				
				
				p.set_display_direction(Body_part.display_bottom);
				
				p.set_display_length_stat(FPalace_helper.height_id);
				
				var a:Action = new Action();
				a.set_name("Thrash");
				a.set_attack_flag();
				a.set_attack_description("Strike a single opponent with your body. ");
				a.set_fire_weapon_challenge();
				var challenge:Challenge = new Challenge();
				challenge.set_attack_stat(FPalace_helper.str_id);
				challenge.set_defense_stat(FPalace_helper.dex_id);
				challenge.set_variability(10);
				challenge.set_text("Thrash");
				var consequence:Consequence = new Consequence();
				consequence.set_damage_type(FPalace_helper.bludg_damage_type().get_id());
				consequence.set_max_damage(15);
				var inter_chal:Challenge = new Challenge(true);
					inter_chal.set_attack_stat(FPalace_skills.concentration_id);
					inter_chal.set_defense_stat(-1,4);
					inter_chal.set_variability(10);
				
				consequence.set_interupt_chal(inter_chal);
				consequence.add_consequence(FPalace_helper.curr_hp_id,-3, "</n2> lashes out with </noun2> body and strikes </n> successfully. ",0);
				consequence.add_consequence(0,0, "</n2> misses. ",-1);
								
				a.add_challenge(challenge,consequence);
				
				p.new_attack(a);
				p.set_crit_part();
				p.new_stat(FPalace_helper.max_hp_id, FPalace_helper.stat_max_hp(), 5);
				p.new_stat(FPalace_helper.max_fatigue_id, FPalace_helper.stat_max_fatigue(),5);
				p.new_stat(FPalace_helper.curr_fatigue_id, FPalace_helper.stat_curr_fatigue(), 5);
				p.new_stat(FPalace_helper.sex_appeal_id, FPalace_helper.stat_sex_appeal(), 1);
				p.new_stat(FPalace_helper.min_lust_id, FPalace_helper.stat_min_lust(), 0);
				p.new_stat(FPalace_helper.max_lust_id, FPalace_helper.stat_max_lust(), 50);
				p.new_stat(FPalace_helper.str_id, FPalace_helper.stat_strength(), 5);
				p.new_stat(FPalace_helper.dex_id, FPalace_helper.stat_dexterity(), 5);
				p.new_stat(FPalace_helper.con_id, FPalace_helper.stat_constitution(), 5);
				p.new_stat(FPalace_helper.wis_id, FPalace_helper.stat_wisdom(), 5);
				p.new_stat(FPalace_helper.will_id, FPalace_helper.stat_willpower(), 5);
				p.new_stat(FPalace_helper.int_id, FPalace_helper.stat_intelligence(), 5);
				p.new_stat(FPalace_helper.max_mp_id, FPalace_helper.stat_max_mp(),1);
				p.new_stat(FPalace_helper.curr_mp_id, FPalace_helper.stat_curr_mp(), 1);
				p.new_stat(FPalace_helper.cha_id, FPalace_helper.stat_charisma(), 5);
				p.new_stat(FPalace_helper.curr_hp_id, FPalace_helper.stat_curr_hp(), 5);
				p.new_stat(FPalace_helper.lust_id, FPalace_helper.stat_lust(), 0);
				p.new_stat(FPalace_helper.height_id, FPalace_helper.stat_height(), 11);
				
			p.set_race(r);
			return p;
		}
		
		public static function new_goo_head(r:Race):Body_part{
			var p:Body_part = new Body_part();
				p.set_name("head");
				p.set_part_id(FPalace_helper.head_slot);
				p.add_description("</pronoun> is a </r>");
				p.set_crit_part();
								
				p.new_connect_slot(torso_slot);
				p.new_connect_slot(horn_slot);
				p.new_connect_slot(hair_slot);
				p.new_connect_slot(eyes_slot);
				p.set_display_direction(Body_part.display_top);
				p.set_display_length_stat(FPalace_helper.height_id);
				
				p.set_display_width_stat(FPalace_helper.height_id);
				p.set_display_width_mod(0.64)
				
				p.new_stat(FPalace_helper.max_hp_id, FPalace_helper.stat_max_hp(), 4);
				p.new_stat(FPalace_helper.max_fatigue_id, FPalace_helper.stat_max_fatigue(),4);
				p.new_stat(FPalace_helper.curr_fatigue_id, FPalace_helper.stat_curr_fatigue(), 4);
				p.new_stat(FPalace_helper.sex_appeal_id, FPalace_helper.stat_sex_appeal(), 1);
				p.new_stat(FPalace_helper.min_lust_id, FPalace_helper.stat_min_lust(), 0);
				p.new_stat(FPalace_helper.max_lust_id, FPalace_helper.stat_max_lust(), 25);
				p.new_stat(FPalace_helper.str_id, FPalace_helper.stat_strength(), 1);
				p.new_stat(FPalace_helper.dex_id, FPalace_helper.stat_dexterity(), 1);
				p.new_stat(FPalace_helper.con_id, FPalace_helper.stat_constitution(), 1);
				p.new_stat(FPalace_helper.wis_id, FPalace_helper.stat_wisdom(), 1);
				p.new_stat(FPalace_helper.will_id, FPalace_helper.stat_willpower(), 1);
				p.new_stat(FPalace_helper.int_id, FPalace_helper.stat_intelligence(), 1);
				p.new_stat(FPalace_helper.max_mp_id, FPalace_helper.stat_max_mp(),1);
				p.new_stat(FPalace_helper.curr_mp_id, FPalace_helper.stat_curr_mp(), 1);
				p.new_stat(FPalace_helper.cha_id, FPalace_helper.stat_charisma(), 1);
				p.new_stat(FPalace_helper.curr_hp_id, FPalace_helper.stat_curr_hp(), 1);
				p.new_stat(FPalace_helper.lust_id, FPalace_helper.stat_lust(), 0);
				p.new_stat(FPalace_helper.height_id, FPalace_helper.stat_height(), 11);
				
			p.set_race(r);
			return p;
		}
		
		public static function sex_male():Sex{
			if(male_sex == null){
				var sex:Sex = new Sex();
				sex.set_default_orient([FPalace_helper.trait_has_vagina(),FPalace_helper.trait_has_breasts(),FPalace_helper.trait_high_fertility()],[]);
				sex.add_damage_weakness(FPalace_helper.lust_damage_type().get_id());
				sex.set_name("male");
				sex.new_age_name(0,"boy");
				sex.new_age_name(13,"teenage boy");
				sex.new_age_name(18,"young man");
				sex.new_age_name(22,"man");
				sex.new_age_name(40,"old man");
				sex.set_bonus(FPalace_helper.int_id,1);
				sex.set_bonus(FPalace_helper.str_id,2);
				sex.set_bonus(bust_id,2);
				sex.set_bonus(waist_id,6);
				sex.set_bonus(hips_id,2);
				sex.set_bonus(FPalace_helper.height_id,10);
				sex.set_pronoun("he");
				//"him"
				sex.set_noun("his");
				//"himself"
				sex.set_objnoun("him");
				
				//most stats max out by 18. str, dex, con, sex_appeal starting to fade around 45
				sex.new_age_stat(FPalace_helper.str_id, 		[0,0.1,0.1,0.15,0.05,0.02,0.01,0.01,0.02,0.02,0.02,0.05,0.05,0.1,0.1,0.05,0.02,0.01,0.01,0.01,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-0.01]);//,-0.01,-0.01,-0.01,-0.01,-0.01,-0.01,-0.01,-0.01,-0.01,-0.01,-0.02,-0.02,-0.02,-0.02,-0.02,-0.02,-0.02,-0.02,-0.02,-0.02,-0.05,-0.05,-0.05,-0.05,-0.05,-0.05,-0.05,-0.05,-0.05,-0.05,-0.1,-0.1,-0.1,-0.1,-0.1,-0.1,-0.1,-0.1,-0.1,-0.1,-0.5,-0.5,-0.5,-0.5,-0.5]);
				sex.new_age_stat(FPalace_helper.dex_id, 		[0,0.1,0.1,0.15,0.05,0.02,0.01,0.01,0.02,0.02,0.02,0.05,0.05,0.1,0.1,0.05,0.02,0.01,0.01,0.01,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-0.01]);//,-0.01,-0.01,-0.01,-0.01,-0.01,-0.01,-0.01,-0.01,-0.01,-0.01,-0.02,-0.02,-0.02,-0.02,-0.02,-0.02,-0.02,-0.02,-0.02,-0.02,-0.05,-0.05,-0.05,-0.05,-0.05,-0.05,-0.05,-0.05,-0.05,-0.05,-0.1,-0.1,-0.1,-0.1,-0.1,-0.1,-0.1,-0.1,-0.1,-0.1,-0.5,-0.5,-0.5,-0.5,-0.5]);
				sex.new_age_stat(FPalace_helper.con_id,			[0,0.1,0.1,0.15,0.05,0.02,0.01,0.01,0.02,0.02,0.02,0.05,0.05,0.1,0.1,0.05,0.02,0.01,0.01,0.01,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-0.01]);//,-0.01,-0.01,-0.01,-0.01,-0.01,-0.01,-0.01,-0.01,-0.01,-0.01,-0.02,-0.02,-0.02,-0.02,-0.02,-0.02,-0.02,-0.02,-0.02,-0.02,-0.05,-0.05,-0.05,-0.05,-0.05,-0.05,-0.05,-0.05,-0.05,-0.05,-0.1,-0.1,-0.1,-0.1,-0.1,-0.1,-0.1,-0.1,-0.1,-0.1,-0.5,-0.5,-0.5,-0.5,-0.5]);
				sex.new_age_stat(FPalace_helper.wis_id, 		[0,0.1,0.1,0.15,0.05,0.02,0.01,0.01,0.02,0.02,0.02,0.05,0.05,0.1,0.1,0.05,0.02,0.01,0.01,0.01,0]);
				sex.new_age_stat(FPalace_helper.int_id, 		[0,0.1,0.1,0.15,0.05,0.02,0.01,0.01,0.02,0.02,0.02,0.05,0.05,0.1,0.1,0.05,0.02,0.01,0.01,0.01,0]);
				sex.new_age_stat(FPalace_helper.cha_id, 		[0,0.1,0.1,0.15,0.05,0.02,0.01,0.01,0.02,0.02,0.02,0.05,0.05,0.1,0.1,0.05,0.02,0.01,0.01,0.01,0]);
				sex.new_age_stat(FPalace_helper.sex_appeal_id, 	[0,-0.1,-0.1,-0.15,-0.05,-0.02,-0.01,-0.01,-0.02,-0.02,-0.02,0.05,0.05,0.1,0.1,0.05,0.02,0.01,0.01,0.01,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-0.01]);//,-0.01,-0.01,-0.01,-0.01,-0.01,-0.01,-0.01,-0.01,-0.01,-0.01,-0.02,-0.02,-0.02,-0.02,-0.02,-0.02,-0.02,-0.02,-0.02,-0.02,-0.05,-0.05,-0.05,-0.05,-0.05,-0.05,-0.05,-0.05,-0.05,-0.05,-0.1,-0.1,-0.1,-0.1,-0.1,-0.1,-0.1,-0.1,-0.1,-0.1,-0.5,-0.5,-0.5,-0.5,-0.5]);
				sex.new_age_stat(FPalace_helper.max_hp_id,		[0,0.1,0.1,0.15,0.05,0.02,0.01,0.01,0.02,0.02,0.02,0.05,0.05,0.1,0.1,0.05,0.02,0.01,0.01,0.01,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-0.01]);
				sex.new_age_stat(FPalace_helper.min_lust_id, 	[0,0.1,0.1,0.15,0.05,0.02,0.01,0.01,0.02,0.02,0.02,0.05,0.05,0.1,0.1,0.05,0.02,0.01,0.01,0.01,0]);
				sex.new_age_stat(FPalace_helper.max_lust_id, 	[0,0.1,0.1,0.15,0.05,0.02,0.01,0.01,0.02,0.02,0.02,0.05,0.05,0.1,0.1,0.05,0.02,0.01,0.01,0.01,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-0.01]);
				sex.new_age_stat(bust_id, 						[0,0.5,0.1,0.15,0.05,0.02,0.01,0.01,0.02,0.02,0.02,0.05,0.05,0.1,0.1,0.05,0.02,0.01,0.01,0.01,0]);
				sex.new_age_stat(waist_id, 						[0,0.5,0.1,0.15,0.05,0.02,0.01,0.01,0.02,0.02,0.02,0.05,0.05,0.1,0.1,0.05,0.02,0.01,0.01,0.01,0]);
				sex.new_age_stat(hips_id, 						[0,0.5,0.1,0.15,0.05,0.02,0.01,0.01,0.02,0.02,0.02,0.05,0.05,0.1,0.1,0.05,0.02,0.01,0.01,0.01,0]);
				sex.new_age_stat(FPalace_helper.height_id, 		[0,0.5,0.1,0.15,0.05,0.02,0.01,0.01,0.02,0.02,0.02,0.05,0.05,0.1,0.1,0.05,0.02,0.01,0.01,0.01,0]);
				sex.new_age_stat(anal_width_id, 				[0,0.1,0.1,0.15,0.05,0.02,0.01,0.01,0.02,0.02,0.02,0.05,0.05,0.1,0.1,0.05,0.02,0.01,0.01,0.01,0]);
				sex.new_age_stat(anal_depth_id, 				[0,0.1,0.1,0.15,0.05,0.02,0.01,0.01,0.02,0.02,0.02,0.05,0.05,0.1,0.1,0.05,0.02,0.01,0.01,0.01,0]);
				
				sex.new_age_stat(penis_length_id, 				[0,0.1,0.1,0.15,0.05,0.02,0.01,0.01,0.02,0.02,0.02,0.05,0.05,0.1,0.1,0.05,0.02,0.01,0.01,0.01,0]);
				sex.new_age_stat(penis_girth_id, 				[0,0.1,0.1,0.15,0.05,0.02,0.01,0.01,0.02,0.02,0.02,0.05,0.05,0.1,0.1,0.05,0.02,0.01,0.01,0.01,0]);
				sex.new_age_stat(balls_size_id, 				[0,0.1,0.1,0.15,0.05,0.02,0.01,0.01,0.02,0.02,0.02,0.05,0.05,0.1,0.1,0.05,0.02,0.01,0.01,0.01,0]);
				sex.new_age_stat(cum_volume_id, 				[0,0.1,0.1,0.15,0.05,0.02,0.01,0.01,0.02,0.02,0.02,0.05,0.05,0.1,0.1,0.05,0.02,0.01,0.01,0.01,0]);
				sex.new_age_stat(semen_fertility_id, 			[0,0.1,0.1,0.15,0.05,0.02,0.01,0.01,0.02,0.02,0.02,0.05,0.05,0.1,0.1,0.05,0.02,0.01,0.01,0.01,0]);
				
				sex.new_topic(FPalace_topics.flirt());
				sex.new_topic(FPalace_topics.blow_job());
				sex.new_topic(FPalace_topics.sex());
				male_sex = sex;
			}
			return male_sex;
		}
		
		public static function sex_female():Sex{
			if(female_sex == null){
				var sex:Sex = new Sex();
				sex.set_default_orient([FPalace_helper.trait_has_penis(), FPalace_helper.trait_has_gold(), FPalace_helper.trait_is_taller()],[]);
				sex.add_damage_resistance(FPalace_helper.lust_damage_type().get_id());
				sex.set_name("female");
				sex.new_age_name(0,"girl");
				sex.new_age_name(13,"teenage girl");
				sex.new_age_name(18,"young woman");
				sex.new_age_name(22,"woman");
				sex.new_age_name(40,"old woman");
				sex.set_bonus(FPalace_helper.con_id,1);
				sex.set_bonus(FPalace_helper.wis_id,2);
				sex.set_bonus(FPalace_helper.hair_length_id,12);
				sex.set_pronoun("she");
				sex.set_noun("her");
				sex.set_objnoun("her");
				
				//most stats max out by 18
				//beauty and fertility should start to fade around 30(done), with str, dex, and con starting to fade around 45
				sex.new_age_stat(FPalace_helper.str_id, 		[0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-0.01]);
				sex.new_age_stat(FPalace_helper.dex_id, 		[0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-0.01]);
				sex.new_age_stat(FPalace_helper.con_id, 		[0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-0.01]);
				sex.new_age_stat(FPalace_helper.wis_id, 		[0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0]);
				sex.new_age_stat(FPalace_helper.int_id, 		[0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0]);
				sex.new_age_stat(FPalace_helper.cha_id, 		[0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0]);
				sex.new_age_stat(FPalace_helper.sex_appeal_id, 	[0,-0.1,-0.1,-0.1,-0.05,-0.05,-0.05,-0.1,-0.1,-0.05,-0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0,0,0,0,0,0,0,0,0,-0.01,-0.02,-0.03,-0.05,-0.03,-0.02,-0.01]);
				sex.new_age_stat(FPalace_helper.max_hp_id, 		[0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-0.01]);
				sex.new_age_stat(FPalace_helper.max_lust_id, 	[0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-0.01]);
				sex.new_age_stat(bust_id, 						[0,0.5,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0]);
				sex.new_age_stat(waist_id, 						[0,0.5,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0]);
				sex.new_age_stat(hips_id, 						[0,0.5,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0]);
				sex.new_age_stat(FPalace_helper.height_id, 		[0,0.5,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0]);
				sex.new_age_stat(anal_width_id, 				[0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0]);
				sex.new_age_stat(anal_depth_id, 				[0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0]);
				
				sex.new_age_stat(breast_size_id, 				[0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.5,0.02,0.01,0.01,0.01,0,0,0,0,0]);
				sex.new_age_stat(nipple_size_id, 				[0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0]);
				sex.new_age_stat(vaginal_width_id, 				[0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0]);
				sex.new_age_stat(vaginal_depth_id, 				[0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0]);
				sex.new_age_stat(milk_volume_id, 				[0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0]);
				sex.new_age_stat(egg_fertility_id, 				[0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0,0,0,0,0,0,-0.01,-0.01,-0.01,-0.01,-0.01,-0.01,-0.05,-0.05,-0.5,-0.6,-0.7,-0.8,-0.9,-0.99]);
				
				sex.new_topic(FPalace_topics.flirt());
				sex.new_topic(FPalace_topics.drink_breast_milk());
				sex.new_topic(FPalace_topics.cunnalingus());
				sex.new_topic(FPalace_topics.sex());
				female_sex = sex;
			}
			return female_sex;
		}
		
		public static function sex_herm():Sex{
			if(herm_sex == null){
				var sex:Sex = new Sex();
				sex.set_default_orient([FPalace_helper.trait_has_penis(),FPalace_helper.trait_has_vagina(),FPalace_helper.trait_has_breasts(),FPalace_helper.trait_high_fertility()],[]);
				sex.add_damage_weakness(FPalace_helper.lust_damage_type().get_id());
				sex.set_name("hermaphrodite");
				sex.new_age_name(0,"youth");
				sex.new_age_name(13,"teenager");
				sex.new_age_name(18,"young adult");
				sex.new_age_name(22,"adult");
				sex.new_age_name(40,"elder");
				sex.set_bonus(FPalace_helper.con_id,3);
				//no need to add a sex_appeal bonus... the extra parts do it
				sex.set_bonus(penis_length_id,7.4);
				sex.set_bonus(penis_girth_id,1.5);
				sex.set_bonus(balls_size_id,3.5);
				sex.set_bonus(breast_size_id,1);
				sex.set_bonus(milk_volume_id, 50);
				sex.set_bonus(cum_volume_id,50);
				sex.set_bonus(semen_fertility_id,0.3);
				sex.set_bonus(egg_fertility_id,0.3);
				sex.set_bonus(FPalace_helper.min_lust_id,10);
				sex.set_bonus(FPalace_helper.erection_ratio_id,0.1);
				sex.set_bonus(FPalace_helper.height_id,6);
				sex.set_bonus(FPalace_helper.hair_length_id,12);
				sex.set_pronoun("she");
				sex.set_noun("her");
				sex.set_objnoun("her");
				
				//most stats max out by 18... some then surge forward a second time around age 25 - Done! Though it's currently ending around 44... Decline in female fertility starts around 55 so decline in physical stats should begin around 70
				
				sex.new_age_stat(FPalace_helper.str_id, 		[0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0,0,0.01,0.02,0.04,0.05,0.04,0.02,0.01,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-0.01]);
				sex.new_age_stat(FPalace_helper.dex_id, 		[0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-0.01]);
				sex.new_age_stat(FPalace_helper.con_id, 		[0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0,0,0.01,0.01,0,0,0.01,0.01,0.01,0.02,0.01,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-0.01]);
				sex.new_age_stat(FPalace_helper.wis_id, 		[0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0]);
				sex.new_age_stat(FPalace_helper.int_id, 		[0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0]);
				sex.new_age_stat(FPalace_helper.cha_id, 		[0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0]);
				sex.new_age_stat(FPalace_helper.sex_appeal_id, 	[0,-0.1,-0.1,-0.1,-0.05,-0.05,-0.05,-0.1,-0.1,-0.05,-0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0   ,0   ,0   ,0   ,0   ,0.01,0.02,0.04,0.05,0.04,0.02,0.01,0   ,0   ,0   ,0   ,0   ,0,0,0,0,0,0,0,0,-0.01,-0.02,-0.04,-0.05,-0.04,-0.02,-0.01]);
				sex.new_age_stat(FPalace_helper.max_hp_id, 		[0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-0.01]);
				sex.new_age_stat(FPalace_helper.min_lust_id, 	[0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0.0,0.05,0.05,0.02,0.01,0.01,0.02,0.02,0.02,0.05,0.05,0.1 ,0.1 ,0.05,0.02,0.01,0.01,0.01,0,0,0,0,0,0,0,0,-0.01,-0.02,-0.04,-0.05,-0.04,-0.02,-0.01]);
				sex.new_age_stat(FPalace_helper.max_lust_id, 	[0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0,0,0.01,0.01,0,0,0.01,0.01,0.01,0.02,0.01,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-0.01]);
				sex.new_age_stat(bust_id, 						[0,0.5,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0,0,0.01,0.02,0.04,0.05,0.04,0.02,0.01,0,0,0,0,0]);
				sex.new_age_stat(waist_id, 						[0,0.5,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0,0,0.01,0.01,0,0,0.01,0.01,0.02,0.01,0,0,0,0,0,0,0,0,0]);
				sex.new_age_stat(hips_id, 						[0,0.5,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0,0,0.01,0.02,0.04,0.05,0.04,0.02,0.01,0,0,0,0,0]);
				sex.new_age_stat(anal_width_id, 				[0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0,0,0.01,0.01,0,0,0.01,0.01,0.01,0.02,0.01,0,0,0,0,0,0,0,0]);
				sex.new_age_stat(anal_depth_id, 				[0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0,0,0.01,0.01,0,0,0.01,0.01,0.01,0.02,0.01,0,0,0,0,0,0,0,0]);
				sex.new_age_stat(FPalace_helper.height_id, 		[0,0.5,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0,0,0.01,0.02,0.03,0.02,0.01,0,0,0,0,0]);
				
				sex.new_age_stat(balls_size_id, 				[0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0,0,0.04,0.03,0.02,0.01,0.01,0.02,0.02,0.02,0.03,0.02,0.02,0.02,0.01,0.01,0.01,0]);
				sex.new_age_stat(breast_size_id, 				[0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.5,0.02,0.01,0.01,0.01,0,0,0,0,0,0, 0.04,0.03,0.02,0.01,0.01,0.02,0.02,0.02,0.03,0.02,0.02,0.02,0.01,0.01,0.01,0]);
				
				sex.new_age_stat(nipple_size_id, 				[0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0,0,0.04,0.03,0.02,0.01,0.01,0.02,0.02,0.02,0.03,0.02,0.02,0.02,0.01,0.01,0.01,0]);
				sex.new_age_stat(vaginal_width_id, 				[0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0,0,0.01,0.01,0,0,0.01,0.01,0.01,0.02,0.01,0,0,0,0,0,0,0,0]);
				sex.new_age_stat(vaginal_depth_id, 				[0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0,0,0.01,0.01,0,0,0.01,0.01,0.01,0.02,0.01,0,0,0,0,0,0,0,0]);

				sex.new_age_stat(milk_volume_id, 				[0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0,0,0.04,0.03,0.02,0.01,0.01,0.02,0.02,0.02,0.03,0.02,0.02,0.02,0.01,0.01,0.01,0]);
				sex.new_age_stat(cum_volume_id, 				[0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0,0,0.04,0.03,0.02,0.01,0.01,0.02,0.02,0.02,0.03,0.02,0.02,0.02,0.01,0.01,0.01,0]);
				
				sex.new_age_stat(egg_fertility_id, 				[0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0,0,0.01,0.01,0.01,0.01,0.01,0.01,0.01,0.02,0.01,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-0.01,-0.025,-0.05,-0.1,-0.15,-0.2,-0.3,-0.4,-0.5,-0.6,-0.7,-0.8,-0.9,-0.99]);
				sex.new_age_stat(semen_fertility_id, 			[0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0,0,0.01,0.02,0.03,0.04,0.05,0.04,0.03,0.02,0.01,0]);
				
				sex.new_age_stat(penis_length_id,				[0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0,0,0.04,0.03,0.02,0.01,0.01,0.02,0.02,0.02,0.03,0.02,0.02,0.02,0.01,0.01,0.01,0]);
				sex.new_age_stat(penis_girth_id, 				[0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0,0,0.04,0.03,0.02,0.01,0.01,0.02,0.02,0.02,0.03,0.02,0.02,0.02,0.01,0.01,0.01,0]);
				
				sex.new_topic(FPalace_topics.flirt());
				sex.new_topic(FPalace_topics.blow_job());
				sex.new_topic(FPalace_topics.cunnalingus());
				sex.new_topic(FPalace_topics.drink_breast_milk());
				sex.new_topic(FPalace_topics.sex());
				
				herm_sex = sex;
			}
			
			return herm_sex;
		}
		
		//futanari - similar to herm, but no testicles, and no second puberty
		public static function sex_futa():Sex{
			if(futa_sex == null){
				var sex:Sex = new Sex();
				sex.set_default_orient([FPalace_helper.trait_has_penis(),FPalace_helper.trait_has_vagina(),FPalace_helper.trait_has_breasts(),FPalace_helper.trait_high_fertility()],[]);
				sex.set_name("futanari");
				sex.new_age_name(0,"youth");
				sex.new_age_name(13,"teenager");
				sex.new_age_name(18,"young adult");
				sex.new_age_name(22,"adult");
				sex.new_age_name(40,"elder");
				sex.set_bonus(penis_length_id,8);
				sex.set_bonus(penis_girth_id,2);
				sex.set_bonus(breast_size_id,2);
				sex.set_bonus(milk_volume_id, 100);
				sex.set_bonus(cum_volume_id,250);
				sex.set_bonus(FPalace_helper.min_lust_id,5);
				sex.set_bonus(FPalace_helper.erection_ratio_id,-0.4);
				sex.set_bonus(FPalace_helper.hair_length_id,12);
				sex.set_bonus(egg_fertility_id,0.1);
				sex.set_pronoun("she");
				sex.set_noun("her");
				sex.set_objnoun("her");
				
				//still working on this....
				sex.new_age_stat(FPalace_helper.str_id, [0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-0.01]);
				sex.new_age_stat(FPalace_helper.dex_id, [0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-0.01]);
				sex.new_age_stat(FPalace_helper.con_id, [0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-0.01]);
				sex.new_age_stat(FPalace_helper.wis_id, [0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0]);
				sex.new_age_stat(FPalace_helper.int_id, [0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0]);
				sex.new_age_stat(FPalace_helper.cha_id, [0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0]);
				sex.new_age_stat(FPalace_helper.max_hp_id, [0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-0.01]);
				sex.new_age_stat(FPalace_helper.max_lust_id, [0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-0.01]);
				sex.new_age_stat(FPalace_helper.sex_appeal_id, [0,-0.1,-0.1,-0.1,-0.05,-0.05,-0.05,-0.1,-0.1,-0.05,-0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0,0,0,0,0,0,0,0,0,-0.01,-0.02,-0.03,-0.05,-0.03,-0.02,-0.01]);
				sex.new_age_stat(breast_size_id, [0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.5,0.02,0.01,0.01,0.01,0,0,0,0,0]);
				sex.new_age_stat(penis_length_id,[0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0]);
				sex.new_age_stat(penis_girth_id, [0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0]);
				sex.new_age_stat(nipple_size_id, [0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0]);
				sex.new_age_stat(bust_id, [0,0.5,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0]);
				sex.new_age_stat(waist_id, [0,0.5,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0]);
				sex.new_age_stat(hips_id, [0,0.5,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0]);
				sex.new_age_stat(cum_volume_id, [0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0]);
				sex.new_age_stat(anal_width_id, [0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0]);
				sex.new_age_stat(anal_depth_id, [0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0]);
				sex.new_age_stat(vaginal_width_id, [0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0]);
				sex.new_age_stat(vaginal_depth_id, [0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0]);
				sex.new_age_stat(milk_volume_id, [0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0]);
				sex.new_age_stat(FPalace_helper.min_lust_id, [0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0]);
	
				sex.new_age_stat(egg_fertility_id, [0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0,0,0,0,0,0,0,0,0,-0.01,-0.025,-0.05,-0.1,-0.15,-0.2,-0.3,-0.4,-0.5,-0.6,-0.7,-0.8,-0.9,-0.99]);
				sex.new_age_stat(FPalace_helper.height_id, [0,0.5,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0]);
				
				sex.new_topic(FPalace_topics.flirt());
				sex.new_topic(FPalace_topics.blow_job());
				sex.new_topic(FPalace_topics.drink_breast_milk());
				sex.new_topic(FPalace_topics.cunnalingus());
				sex.new_topic(FPalace_topics.sex());
				futa_sex = sex;
			}
			
			return futa_sex;
		}
		
		//shemale - similar to herm, but no vagina, and no second puberty
		public static function sex_shemale():Sex{
			if(shemale_sex == null){
				var sex:Sex = new Sex();
				sex.set_default_orient([FPalace_helper.trait_has_penis(),FPalace_helper.trait_has_vagina(),FPalace_helper.trait_has_breasts(),FPalace_helper.trait_high_fertility()],[]);
				sex.add_damage_weakness(FPalace_helper.lust_damage_type().get_id());
				sex.set_name("shemale");
				sex.new_age_name(0,"youth");
				sex.new_age_name(13,"teenager");
				sex.new_age_name(18,"young adult");
				sex.new_age_name(22,"adult");
				sex.new_age_name(40,"elder");
				sex.set_bonus(penis_length_id,10);
				sex.set_bonus(penis_girth_id,3);
				sex.set_bonus(balls_size_id,2);
				sex.set_bonus(cum_volume_id,10);
				sex.set_bonus(breast_size_id,2);
				sex.set_bonus(milk_volume_id, 100);
				sex.set_bonus(FPalace_helper.height_id,14);
				sex.set_bonus(FPalace_helper.min_lust_id,2);
				sex.set_bonus(FPalace_helper.erection_ratio_id,0.2);
				sex.set_bonus(FPalace_helper.hair_length_id,5);
				sex.set_pronoun("she");
				sex.set_noun("her");
				sex.set_objnoun("her");
	
				
				//still working on this....
				sex.new_age_stat(FPalace_helper.str_id, [0,0.1,0.1,0.15,0.05,0.02,0.01,0.01,0.02,0.02,0.02,0.05,0.05,0.1,0.1,0.05,0.02,0.01,0.01,0.01,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-0.01]);
				sex.new_age_stat(FPalace_helper.dex_id, [0,0.1,0.1,0.15,0.05,0.02,0.01,0.01,0.02,0.02,0.02,0.05,0.05,0.1,0.1,0.05,0.02,0.01,0.01,0.01,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-0.01]);
				sex.new_age_stat(FPalace_helper.con_id, [0,0.1,0.1,0.15,0.05,0.02,0.01,0.01,0.02,0.02,0.02,0.05,0.05,0.1,0.1,0.05,0.02,0.01,0.01,0.01,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-0.01]);
				sex.new_age_stat(FPalace_helper.wis_id, [0,0.1,0.1,0.15,0.05,0.02,0.01,0.01,0.02,0.02,0.02,0.05,0.05,0.1,0.1,0.05,0.02,0.01,0.01,0.01,0]);
				sex.new_age_stat(FPalace_helper.int_id, [0,0.1,0.1,0.15,0.05,0.02,0.01,0.01,0.02,0.02,0.02,0.05,0.05,0.1,0.1,0.05,0.02,0.01,0.01,0.01,0]);
				sex.new_age_stat(FPalace_helper.cha_id, [0,0.1,0.1,0.15,0.05,0.02,0.01,0.01,0.02,0.02,0.02,0.05,0.05,0.1,0.1,0.05,0.02,0.01,0.01,0.01,0]);
				sex.new_age_stat(FPalace_helper.max_hp_id, [0,0.1,0.1,0.15,0.05,0.02,0.01,0.01,0.02,0.02,0.02,0.05,0.05,0.1,0.1,0.05,0.02,0.01,0.01,0.01,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-0.01]);
				sex.new_age_stat(FPalace_helper.max_lust_id, [0,0.1,0.1,0.15,0.05,0.02,0.01,0.01,0.02,0.02,0.02,0.05,0.05,0.1,0.1,0.05,0.02,0.01,0.01,0.01,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-0.01]);
				sex.new_age_stat(FPalace_helper.sex_appeal_id, [0,-0.1,-0.1,-0.15,-0.05,-0.02,-0.01,-0.01,-0.02,-0.02,-0.02,0.05,0.05,0.1,0.1,0.05,0.02,0.01,0.01,0.01,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-0.01]);
				sex.new_age_stat(breast_size_id, [0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.5,0.02,0.01,0.01,0.01,0,0,0,0,0]);
				sex.new_age_stat(penis_length_id,[0,0.1,0.1,0.15,0.05,0.02,0.01,0.01,0.02,0.02,0.02,0.05,0.05,0.1,0.1,0.05,0.02,0.01,0.01,0.01,0]);
				sex.new_age_stat(penis_girth_id, [0,0.1,0.1,0.15,0.05,0.02,0.01,0.01,0.02,0.02,0.02,0.05,0.05,0.1,0.1,0.05,0.02,0.01,0.01,0.01,0]);
				sex.new_age_stat(nipple_size_id, [0,0.1,0.1,0.15,0.05,0.02,0.01,0.01,0.02,0.02,0.02,0.05,0.05,0.1,0.1,0.05,0.02,0.01,0.01,0.01,0]);
				sex.new_age_stat(balls_size_id, [0,0.1,0.1,0.15,0.05,0.02,0.01,0.01,0.02,0.02,0.02,0.05,0.05,0.1,0.1,0.05,0.02,0.01,0.01,0.01,0]);
				sex.new_age_stat(bust_id, [0,0.5,0.1,0.15,0.05,0.02,0.01,0.01,0.02,0.02,0.02,0.05,0.05,0.1,0.1,0.05,0.02,0.01,0.01,0.01,0]);
				sex.new_age_stat(waist_id, [0,0.5,0.1,0.15,0.05,0.02,0.01,0.01,0.02,0.02,0.02,0.05,0.05,0.1,0.1,0.05,0.02,0.01,0.01,0.01,0]);
				sex.new_age_stat(hips_id, [0,0.5,0.1,0.15,0.05,0.02,0.01,0.01,0.02,0.02,0.02,0.05,0.05,0.1,0.1,0.05,0.02,0.01,0.01,0.01,0]);
				sex.new_age_stat(cum_volume_id, [0,0.1,0.1,0.15,0.05,0.02,0.01,0.01,0.02,0.02,0.02,0.05,0.05,0.1,0.1,0.05,0.02,0.01,0.01,0.01,0]);
				sex.new_age_stat(anal_width_id, [0,0.1,0.1,0.15,0.05,0.02,0.01,0.01,0.02,0.02,0.02,0.05,0.05,0.1,0.1,0.05,0.02,0.01,0.01,0.01,0]);
				sex.new_age_stat(anal_depth_id, [0,0.1,0.1,0.15,0.05,0.02,0.01,0.01,0.02,0.02,0.02,0.05,0.05,0.1,0.1,0.05,0.02,0.01,0.01,0.01,0]);
				sex.new_age_stat(milk_volume_id, [0,0.1,0.1,0.15,0.05,0.02,0.01,0.01,0.02,0.02,0.02,0.05,0.05,0.1,0.1,0.05,0.02,0.01,0.01,0.01,0]);
				sex.new_age_stat(FPalace_helper.min_lust_id, [0,0.1,0.1,0.15,0.05,0.02,0.01,0.01,0.02,0.02,0.02,0.05,0.05,0.1,0.1,0.05,0.02,0.01,0.01,0.01,0]);
				sex.new_age_stat(semen_fertility_id, [0,0.1,0.1,0.15,0.05,0.02,0.01,0.01,0.02,0.02,0.02,0.05,0.05,0.1,0.1,0.05,0.02,0.01,0.01,0.01,0]);
				sex.new_age_stat(FPalace_helper.height_id, [0,0.5,0.1,0.15,0.05,0.02,0.01,0.01,0.02,0.02,0.02,0.05,0.05,0.1,0.1,0.05,0.02,0.01,0.01,0.01,0]);
				
				sex.new_topic(FPalace_topics.flirt());
				sex.new_topic(FPalace_topics.blow_job());
				sex.new_topic(FPalace_topics.drink_breast_milk());
				sex.new_topic(FPalace_topics.sex());
				shemale_sex = sex;
			}
			return shemale_sex;
		}
		
		//androgynous/no sex
		public static function sex_androgynous():Sex{
			if(androgynous_sex == null){
				var sex:Sex = new Sex();
				sex.add_damage_resistance(FPalace_helper.lust_damage_type().get_id());
				sex.set_name("androgynous");
				sex.set_pronoun("it");
				sex.set_noun("its");
				sex.set_objnoun("it");
				androgynous_sex = sex;
			}
						
			return androgynous_sex;
		}
		
		public static function sex_male_eunuch():Sex{
			if(male_eunuch_sex == null){
				var sex:Sex = new Sex();
				sex.add_damage_resistance(FPalace_helper.lust_damage_type().get_id());
				sex.set_name("eunuch");
				sex.new_age_name(0,"boy");
				sex.new_age_name(13,"teenage boy");
				sex.new_age_name(18,"young man");
				sex.new_age_name(22,"man");
				sex.new_age_name(40,"old man");
				sex.set_bonus(FPalace_helper.int_id,2);
				sex.set_bonus(FPalace_helper.wis_id,2);
				sex.set_bonus(bust_id,2);
				sex.set_bonus(waist_id,6);
				sex.set_bonus(hips_id,2);
				sex.set_bonus(FPalace_helper.height_id,10);
				sex.set_pronoun("he");
				//"him"
				sex.set_noun("his");
				//"himself"
				sex.set_objnoun("him");
				
				sex.new_age_stat(FPalace_helper.str_id, [0,0.1,0.1,0.15,0.05,0.02,0.01,0.01,0.02,0.02,0.02,0.05,0.05,0.1,0.1,0.05,0.02,0.01,0.01,0.01,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-0.01]);
				sex.new_age_stat(FPalace_helper.dex_id, [0,0.1,0.1,0.15,0.05,0.02,0.01,0.01,0.02,0.02,0.02,0.05,0.05,0.1,0.1,0.05,0.02,0.01,0.01,0.01,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-0.01]);
				sex.new_age_stat(FPalace_helper.con_id, [0,0.1,0.1,0.15,0.05,0.02,0.01,0.01,0.02,0.02,0.02,0.05,0.05,0.1,0.1,0.05,0.02,0.01,0.01,0.01,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-0.01]);
				sex.new_age_stat(FPalace_helper.wis_id, [0,0.1,0.1,0.15,0.05,0.02,0.01,0.01,0.02,0.02,0.02,0.05,0.05,0.1,0.1,0.05,0.02,0.01,0.01,0.01,0]);
				sex.new_age_stat(FPalace_helper.int_id, [0,0.1,0.1,0.15,0.05,0.02,0.01,0.01,0.02,0.02,0.02,0.05,0.05,0.1,0.1,0.05,0.02,0.01,0.01,0.01,0]);
				sex.new_age_stat(FPalace_helper.cha_id, [0,0.1,0.1,0.15,0.05,0.02,0.01,0.01,0.02,0.02,0.02,0.05,0.05,0.1,0.1,0.05,0.02,0.01,0.01,0.01,0]);
				sex.new_age_stat(FPalace_helper.max_hp_id, [0,0.1,0.1,0.15,0.05,0.02,0.01,0.01,0.02,0.02,0.02,0.05,0.05,0.1,0.1,0.05,0.02,0.01,0.01,0.01,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-0.01]);
				sex.new_age_stat(FPalace_helper.max_lust_id, [0,0.1,0.1,0.15,0.05,0.02,0.01,0.01,0.02,0.02,0.02,0.05,0.05,0.1,0.1,0.05,0.02,0.01,0.01,0.01,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-0.01]);
				sex.new_age_stat(FPalace_helper.sex_appeal_id, [0,-0.1,-0.1,-0.15,-0.05,-0.02,-0.01,-0.01,-0.02,-0.02,-0.02,0.05,0.05,0.1,0.1,0.05,0.02,0.01,0.01,0.01,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-0.01]);
				sex.new_age_stat(penis_length_id, [0,0.1,0.1,0.15,0.05,0.02,0.01,0.01,0.02,0.02,0.02,0.05,0.05,0.1,0.1,0.05,0.02,0.01,0.01,0.01,0]);
				sex.new_age_stat(penis_girth_id, [0,0.1,0.1,0.15,0.05,0.02,0.01,0.01,0.02,0.02,0.02,0.05,0.05,0.1,0.1,0.05,0.02,0.01,0.01,0.01,0]);
				sex.new_age_stat(balls_size_id, [0,0.1,0.1,0.15,0.05,0.02,0.01,0.01,0.02,0.02,0.02,0.05,0.05,0.1,0.1,0.05,0.02,0.01,0.01,0.01,0]);
				sex.new_age_stat(bust_id, [0,0.5,0.1,0.15,0.05,0.02,0.01,0.01,0.02,0.02,0.02,0.05,0.05,0.1,0.1,0.05,0.02,0.01,0.01,0.01,0]);
				sex.new_age_stat(waist_id, [0,0.5,0.1,0.15,0.05,0.02,0.01,0.01,0.02,0.02,0.02,0.05,0.05,0.1,0.1,0.05,0.02,0.01,0.01,0.01,0]);
				sex.new_age_stat(hips_id, [0,0.5,0.1,0.15,0.05,0.02,0.01,0.01,0.02,0.02,0.02,0.05,0.05,0.1,0.1,0.05,0.02,0.01,0.01,0.01,0]);
				sex.new_age_stat(cum_volume_id, [0,0.1,0.1,0.15,0.05,0.02,0.01,0.01,0.02,0.02,0.02,0.05,0.05,0.1,0.1,0.05,0.02,0.01,0.01,0.01,0]);
				sex.new_age_stat(anal_width_id, [0,0.1,0.1,0.15,0.05,0.02,0.01,0.01,0.02,0.02,0.02,0.05,0.05,0.1,0.1,0.05,0.02,0.01,0.01,0.01,0]);
				sex.new_age_stat(anal_depth_id, [0,0.1,0.1,0.15,0.05,0.02,0.01,0.01,0.02,0.02,0.02,0.05,0.05,0.1,0.1,0.05,0.02,0.01,0.01,0.01,0]);
				sex.new_age_stat(FPalace_helper.min_lust_id, [0,0.1,0.1,0.15,0.05,0.02,0.01,0.01,0.02,0.02,0.02,0.05,0.05,0.1,0.1,0.05,0.02,0.01,0.01,0.01,0]);
				sex.new_age_stat(FPalace_helper.height_id, [0,0.5,0.1,0.15,0.05,0.02,0.01,0.01,0.02,0.02,0.02,0.05,0.05,0.1,0.1,0.05,0.02,0.01,0.01,0.01,0]);
				
				sex.new_topic(FPalace_topics.flirt());
				
				male_eunuch_sex = sex;
			}
			return male_eunuch_sex;
		}
		
		public static function sex_female_eunuch():Sex{
			if(female_eunuch_sex == null){
				var sex:Sex = new Sex();
				sex.add_damage_resistance(FPalace_helper.lust_damage_type().get_id());
				sex.set_name("eunuch");
				sex.new_age_name(0,"girl");
				sex.new_age_name(13,"teenage girl");
				sex.new_age_name(18,"young woman");
				sex.new_age_name(22,"woman");
				sex.new_age_name(40,"old woman");
				sex.set_bonus(FPalace_helper.int_id,2);
				sex.set_bonus(FPalace_helper.con_id,1);
				sex.set_bonus(FPalace_helper.wis_id,3);
				sex.set_bonus(FPalace_helper.hair_length_id,12);
				sex.set_pronoun("she");
				sex.set_noun("her");
				sex.set_objnoun("her");
				
				//growth should be stunted for a Eunuch... it isn't, but it should be
				sex.new_age_stat(FPalace_helper.str_id, [0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-0.01]);
				sex.new_age_stat(FPalace_helper.dex_id, [0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-0.01]);
				sex.new_age_stat(FPalace_helper.con_id, [0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-0.01]);
				sex.new_age_stat(FPalace_helper.wis_id, [0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0]);
				sex.new_age_stat(FPalace_helper.int_id, [0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0]);
				sex.new_age_stat(FPalace_helper.cha_id, [0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0]);
				sex.new_age_stat(FPalace_helper.max_hp_id, [0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-0.01]);
				sex.new_age_stat(FPalace_helper.max_lust_id, [0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-0.01]);
				sex.new_age_stat(FPalace_helper.sex_appeal_id, [0,-0.1,-0.1,-0.1,-0.05,-0.05,-0.05,-0.1,-0.1,-0.05,-0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0,0,0,0,0,0,0,0,0,-0.01,-0.02,-0.03,-0.05,-0.03,-0.02,-0.01]);
				sex.new_age_stat(breast_size_id, [0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.5,0.02,0.01,0.01,0.01,0,0,0,0,0]);
				sex.new_age_stat(nipple_size_id, [0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0]);
				sex.new_age_stat(bust_id, [0,0.5,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0]);
				sex.new_age_stat(waist_id, [0,0.5,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0]);
				sex.new_age_stat(hips_id, [0,0.5,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0]);
				sex.new_age_stat(anal_width_id, [0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0]);
				sex.new_age_stat(anal_depth_id, [0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0]);
				sex.new_age_stat(vaginal_width_id, [0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0]);
				sex.new_age_stat(vaginal_depth_id, [0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0]);
				sex.new_age_stat(milk_volume_id, [0,0.1,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0]);
				sex.new_age_stat(FPalace_helper.height_id, [0,0.5,0.1,0.1,0.05,0.05,0.05,0.1,0.1,0.05,0.02,0.05,0.02,0.02,0.04,0.02,0.01,0.01,0.01,0,0,0,0,0]);
				
				sex.new_topic(FPalace_topics.drink_breast_milk());
				sex.new_topic(FPalace_topics.flirt());
				
				female_eunuch_sex = sex;
			}
			return female_eunuch_sex;
		}
		
		public static function stat_eye_colour():Stat{
			var s:Stat = new Stat(eye_colour_id);
				s.set_min(-2);
				s.set_name("eye colour");
				s.new_description("and as dark as midnight. \n\n",0);
				s.new_description("and a dark yellow. \n\n",1);
				s.new_description("and an eye-catching yellow. \n\n",2);
				s.new_description("and a dull golden yellow. \n\n",3);
				s.new_description("and a dull brown. \n\n",4);
				s.new_description("and a hazel that sparkles brown and green. \n\n",5);
				s.new_description("and a light-brown that twinkle. \n\n",6);
				s.new_description("and a green with brown and yellow spots that flare in the light. \n\n",7);
				s.new_description("and a shimmering green. \n\n",8);
				s.new_description("and a green with silver flecks that shimmer. \n\n",9);
				s.new_description("and a blue gray with brown spots and golden flecks that sparkle. \n\n",10);
				s.new_description("and a childish grey. \n\n",11);
				s.new_description("and a grey blue reminiscent of a cloudy sky. \n\n",12);
				s.new_description("and a deep piercing blue. \n\n",13);
				s.new_description("and a sky coloured blue. \n\n",14);
				s.new_description("and a violet that glows with inner light. \n\n",15);
				s.new_description("and a purple that shimmers in the light. \n\n",16);
				s.new_description("and a blood red that reflects the light with menace. \n\n",17);
				s.new_description("and a red that glows with inner light. \n\n",18);
				s.new_description("and a light, sickly red. \n\n",19);
				s.new_description("and a stark white. \n\n",20);
				
				
				s.new_increase_description("</n>s eyes looks a different colour. ");
				s.new_descrease_description("</n>s eyes looks a different colour. ");
				
			return s;
		}
		
		public static function stat_hair_colour():Stat{
			var s:Stat = new Stat(hair_colour_id);
				s.set_min(-2);
				s.set_name("hair colour");
				s.new_description("stark white ",0);
				s.new_description("grey ",1);
				s.new_description("dark as midnight ",2);
				s.new_description("yellow ",3);
				s.new_description("golden yellow ",4);
				s.new_description("brown that shimmers in the light ",5);
				s.new_description("light red ",6);
				s.new_description("fiery red ",7);
				s.new_description("dark orange ",8);
				s.new_description("green ",9);
				s.new_description("blue ",10);
				s.new_description("violet ",11);
				s.new_description("purple ",12);
				
				s.new_short_description("stark white",0);
				s.new_short_description("grey",1);
				s.new_short_description("black",2);
				s.new_short_description("yellow",3);
				s.new_short_description("golden yellow",4);
				s.new_short_description("brown",5);
				s.new_short_description("light red",6);
				s.new_short_description("fiery red",7);
				s.new_short_description("dark orange",8);
				s.new_short_description("green",9);
				s.new_short_description("blue",10);
				s.new_short_description("violet",11);
				s.new_short_description("purple",12);
				
				//st.new_description("",0);
				s.new_increase_description("</n>s hair looks a different colour. ");
				s.new_descrease_description("</n>s hair looks a different colour. ");
				
			return s;
		}
		
		public static function stat_skin_colour():Stat{
			var s:Stat = new Stat(skin_colour_id);
				s.set_min(-2);
				s.set_max(-9);
				
				s.set_name("skin colour");
				s.new_short_description("pale",0);
				s.new_short_description("light",1);
				s.new_short_description("light brown",2);
				s.new_short_description("olive",3);
				s.new_short_description("green",4);//darn orcs and goblins ruining an actually used skin colour scale....
				s.new_short_description("brown",5);
				s.new_short_description("black",6);				
				
				//st.new_description("",0);
				s.new_increase_description("</n>s skin looks a different colour. ");
				s.new_descrease_description("</n>s skin looks a different colour. ");
				
			return s;
		}
		
		public static function stat_goo_colour():Stat{
			var s:Stat = new Stat(goo_colour_id);
				s.set_min(-2);
				s.set_max(-9);
				s.set_name("goo colour");
				
				s.new_short_description("red",0);
				s.new_short_description("orange",1);
				s.new_short_description("yellow",2);
				s.new_short_description("green",3);
				s.new_short_description("blue",4);
				s.new_short_description("indigo",5);
				s.new_short_description("violet",6);
				
				s.new_increase_description("</n>s goo looks a different colour. ");
				s.new_descrease_description("</n>s goo looks a different colour. ");
				
			return s;
		}
		
		public static function stat_fur_colour():Stat{
			var s:Stat = new Stat(fur_colour_id);
				s.set_min(-2);
				s.set_max(-11);
				s.set_name("fur colour");
				s.new_short_description("white",0);
				s.new_short_description("cream",1);
				s.new_short_description("yellow",2);
				s.new_short_description("gold",3);
				s.new_short_description("red",4);
				s.new_short_description("chocolate",5);
				s.new_short_description("brown",6);
				s.new_short_description("grey",7);
				s.new_short_description("black",8);
				
				//st.new_description("",0);
				s.new_increase_description("</n>s fur looks a different colour. ");
				s.new_descrease_description("</n>s fur looks a different colour. ");
				
			return s;
		}
		
		public static function stat_scale_colour():Stat{
			var s:Stat = new Stat(scale_colour_id);
				s.set_min(-2);
				s.set_max(-14);
				s.set_name("scale colour");
				s.new_short_description("white",0);
				s.new_short_description("pink",1);
				s.new_short_description("yellow",2);
				s.new_short_description("orange",3);
				s.new_short_description("red",4);
				s.new_short_description("brown",5);
				s.new_short_description("green",6);
				s.new_short_description("light blue",7);
				s.new_short_description("blue",8);				
				s.new_short_description("turquoise",9);
				s.new_short_description("purple",10);
				s.new_short_description("black",11);
				
				
				//st.new_description("",0);
				s.new_increase_description("</n>s scales look a different colour. ");
				s.new_descrease_description("</n>s scales look a different colour. ");
				
			return s;
		}
		
		public static function stat_hair_length():Stat{
			var s:Stat = new Stat(hair_length_id);
				s.set_min(-2);
				s.set_name("hair length");
				s.set_show_decimal(0);
				//s.new_description(", </"+hair_length_id+"> inch long and ");
				//s.new_description(", </"+hair_length_id+"> inches long and ", 2);
				s.new_increase_description( "</n>s hair grows longer. ");
				s.new_descrease_description("</n>s hair is shorter than before. ");
				
			return s;
		}
		
		public static function stat_clit_length():Stat{
			var s:Stat = new Stat(clit_length);
			s.set_min(-2);
				s.set_name("clit size");
				s.new_description("");
				s.new_increase_description("</n> clit stretchs and bulges. ");
				s.new_descrease_description("</n> clit shrinks. ");
				
			return s;
		}
		
		public static function stat_bloat():Stat{
			var s:Stat = new Stat(bloat_id);
			s.set_min(-2);
				s.set_name("bloat");
				s.new_description("</noun> stomach disdends </"+bloat_id+"> inches from </noun> waist. ",1);
				s.new_increase_description("</n>s stomach bulges outward. ");
				s.new_descrease_description("</n>s stomach seems to contract. ");
				
			return s;
		}
		
		public static function stat_womb_fertility():Stat{
			var s:Stat = new Stat(egg_fertility_id);
				s.set_name("womb fertility");
				s.new_description("");
				s.new_increase_description("</n> suddenly looks desperate to be pregnant. ");
				s.new_descrease_description("</n> appears less fertile. ");
				s.set_min(-2);
				s.set_alchemy_hundreds();
			return s;
		}
		
		
		public static function stat_semen_fertility():Stat{
			var s:Stat = new Stat(semen_fertility_id);
				s.set_name("semen fertility");
				s.new_description("");
				s.new_increase_description("</n> balls shift and groan. ");
				s.new_descrease_description("</n> seems less fertile. ");
				s.set_min(-2);
				s.set_alchemy_hundreds();
			return s;
		}
		
		public static function stat_vaginal_depth():Stat{
			var s:Stat = new Stat(vaginal_depth_id);
			s.set_min(-2);
				s.set_name("vaginal depth");
				s.new_description("");
				s.new_increase_description("</n>s vaginal canal has been stretched deeper. ");
				s.new_descrease_description("</n>s vag squeezes tighter, and </noun> innards seem less displaced. ");
				
				s.new_short_description("puny",0);
				s.new_short_description("average",5);
				s.new_short_description("large",8);
				s.new_short_description("huge",12);
				s.new_short_description("gargantuan",18);
				s.new_short_description("arm sized",24);
				s.new_short_description("leg sized",36);
				s.new_short_description("person sized",40);
			return s;
		}
		
		public static function stat_vaginal_width():Stat{
			var s:Stat = new Stat(vaginal_width_id);
			s.set_min(-2);
				s.set_name("vaginal width");
				s.new_description("");
				s.new_increase_description("</n>s vaginal canal has been stretched wider. ");
				s.new_descrease_description("</n>s vag squeezes tight. ");
				
				s.new_short_description("petite",0);
				s.new_short_description("cute",2);
				s.new_short_description("three finger wide",4);
				s.new_short_description("fist sized",5);
				s.new_short_description("arm sized",6);
				s.new_short_description("leg sized",10);
				s.new_short_description("person sized",20);
				
			return s;
		}
		
		public static function stat_anal_depth():Stat{
			var s:Stat = new Stat(anal_depth_id);
			s.set_min(-2);
				s.set_name("anal depth");
				s.new_description("");
				s.new_increase_description("</n>s asshole has been stretched deeper. ");
				s.new_descrease_description("</n>s ass squeezes tighter, and </noun> innards seem less displaced. ");
				
			return s;
		}
		
		public static function stat_anal_width():Stat{
			var s:Stat = new Stat(anal_width_id);
			s.set_min(-2);
				s.set_name("anal width");
				s.new_description("");
				s.new_increase_description("</n>s asshole has been stretched wider. ");
				s.new_descrease_description("</n>s ass squeezes tight. ");
				
			return s;
		}
		
		public static function stat_cum_volume():Stat{
			var s:Stat = new Stat(cum_volume_id);
			//s.set_min(-2);
				s.set_name("cum volume");
				s.new_description("");
				s.new_increase_description("</n> somehow seems a more prodigious producer. ");
				s.new_descrease_description("</n>s abdomen grumbles. ");
				s.set_stat_calculation(["s" + FPalace_helper.balls_size_id, "*", "s" + FPalace_helper.balls_size_id,"*", "s" + FPalace_helper.balls_size_id]);
				
				s.new_short_description("dram",0);
				s.new_short_description("teaspoon",5);
				s.new_short_description("tablespoon",15);
				s.new_short_description("ounce",29);
				s.new_short_description("gill",142);
				s.new_short_description("cup",284);
				s.new_short_description("pint",568);
				s.new_short_description("quart",1140);
				s.new_short_description("gallon",4550);
				s.new_short_description("multiple gallons",9000);
			return s;
		}
		
		public static function stat_hips():Stat{
			var s:Stat = new Stat(hips_id);
			s.set_min(-2);
				s.set_name("hips");
				s.new_description("\n\n</noun> </bpn> are </"+hips_id+"> inches around and </r>");
				s.new_increase_description("</n>s ass jiggles as it grows. ");
				s.new_descrease_description("</n>s ass seems to contract. ");
				
			return s;
		}
		
		public static function stat_waist():Stat{
			var s:Stat = new Stat(waist_id);
			s.set_min(-2);
				s.set_name("waist");
				s.new_description("</noun> waist is </"+waist_id+"> inches around. ");
				s.new_increase_description( "</n>s waist bulges outward. ");
				s.new_descrease_description("</n>s waist seems to contract. ");
				
			return s;
		}
		
		public static function stat_bust():Stat{
			var s:Stat = new Stat(bust_id);
			s.set_min(-2);
				s.set_name("bust");
				s.new_description("</noun> bust is </"+bust_id+"> inches around and ");
				s.new_increase_description( "</n>s upper body bulges outward. ");
				s.new_descrease_description("</n>s upper body seems to contract. ");
				
			return s;
		}
		
		public static function stat_ball_size():Stat{
			var s:Stat = new Stat(balls_size_id);
			s.set_min(-2);
			
			s.set_stat_calculation(["s" + FPalace_helper.max_mp_id, "/", 10.0]);
			s.set_name("ball size");
				s.new_description("They are a </sd"+balls_size_id+"> </"+balls_size_id+">-inches around. ");
				s.new_increase_description("</n>s balls swell. ");
				s.new_descrease_description("</n>s balls shrink, </noun> sack receding into </noun> crotch. ");
				
				s.new_short_description("golf-ball sized",1);
				s.new_short_description("average sized",2);
				s.new_short_description("large",3);
				s.new_short_description("fist-sized",5);
				s.new_short_description("grape-fruit sized",7);
				s.new_short_description("gargantuan",10);
				
			return s;
		}
		
		public static function stat_nipple_length():Stat{
			var s:Stat = new Stat(nipple_size_id);
			s.set_min(-2);
				s.set_name("nipple length");
				s.new_description("and are capped by </sd"+nipple_size_id+"> nipples. ");
				s.new_increase_description("</n>s nipples extend. ");
				s.new_descrease_description("</n>s nipples retract. ");
				
				s.new_short_description("nearly inverted",0);
				s.new_short_description("normal",1);
				s.new_short_description("thumb sized",2);
				s.new_short_description("large",3);
				s.new_short_description("huge",4);
				
			return s;
		}
		
		public static function stat_breast_size():Stat{
			var s:Stat = new Stat(breast_size_id);
				s.set_stat_calculation(["s" + FPalace_helper.max_mp_id, "/", 10.0]);
				s.set_name("breast size");
				s.set_min(-2);
				//s.new_description("They stick out from </noun> chest </"+breast_size_id+"> inches ");
				s.new_description("</noun> </sd"+breast_size_id+"> breasts are barely noticable ");
				s.new_description("</noun> </sd"+breast_size_id+"> breasts sit high on </noun> chest ", 1);
				s.new_description("</noun> </sd"+breast_size_id+"> breasts are clearly weighing </noun> down ", 4);
				s.new_increase_description("</n>s breasts jiggle as they grow. ");
				s.new_descrease_description("</n>s breasts recede into </noun> chest. ");
				s.new_short_description("A-cup",0);
				s.new_short_description("B-cup",1);
				s.new_short_description("C-cup",2);
				s.new_short_description("D-cup",3);
				s.new_short_description("E-cup",4);
				s.new_short_description("F-cup",5);
				s.new_short_description("G-cup",6);
				s.new_short_description("H-cup",7);
				s.new_short_description("I-cup",8);
				s.new_short_description("J-cup",9);
				s.new_short_description("K-cup",10);
				s.new_short_description("L-cup",11);
				s.new_short_description("M-cup",12);
				s.new_short_description("N-cup",13);
				s.new_short_description("O-cup",14);
				s.new_short_description("P-cup",15);
				s.new_short_description("Q-cup",16);
				s.new_short_description("R-cup",17);
				s.new_short_description("S-cup",18);
				s.new_short_description("T-cup",19);
				s.new_short_description("U-cup",20);
				s.new_short_description("V-cup",21);
				s.new_short_description("W-cup",22);
				s.new_short_description("X-cup",23);
				s.new_short_description("Y-cup",24);
				s.new_short_description("Z-cup",25);
				s.new_short_description("large",26);
				s.new_short_description("ridiculously large",30);
				s.new_short_description("gargantuan",50);
				s.new_short_description("person-sized",70);
			return s;
		}
		
		public static function stat_penis_girth():Stat{
			var s:Stat = new Stat(penis_girth_id);
			s.set_name("penis girth");
				s.set_min(-2);
				s.new_description("and a </sd"+penis_girth_id+"> sized </"+penis_girth_id+">-inches thick");
				s.new_increase_description("</n>s cock bulges, thickening. ");
				s.new_descrease_description("</n>s penis seems slimmer. ");
				
				s.new_short_description("pencil",0);
				s.new_short_description("pinkie",1);
				s.new_short_description("finger",2);
				s.new_short_description("thumb",3);
				s.new_short_description("three fingers",4);
				s.new_short_description("fist",5);
				s.new_short_description("arm",6);
				s.new_short_description("leg",10);
				s.new_short_description("person",20);
			return s;
		}
		
		public static function stat_penis_length():Stat{
			var s:Stat = new Stat(penis_length_id);
				s.set_min(-2);
				s.set_name("penis length");
				s.new_description("It is a </sd"+penis_length_id+"> </"+penis_length_id+">-inches in length ");
				s.new_increase_description("</n>s penis waggles with renewed vigor as it lengthens. ");
				s.new_descrease_description("</n>s penis recedes into </noun> crotch, shrinking. ");
				
				s.new_short_description("puny",0);
				s.new_short_description("average",5);
				s.new_short_description("large",8);
				s.new_short_description("huge",12);
				s.new_short_description("gargantuan",18);
				s.new_short_description("arm sized",24);
				s.new_short_description("leg sized",36);
				s.new_short_description("person sized",40);
			return s;
		}
		
		public static function stat_age():Stat{
			var st:Stat = new Stat(FPalace_helper.age_id);
			st.set_min(-2);
			st.set_name("Age");
			st.set_show_decimal(0);
			st.new_description("</pronoun> is trying to hide </noun> age. ",35);
			st.new_description("</pronoun> has seen three decades. ",30);
			st.new_description("</pronoun> is heading into middle age. ",27);
			st.new_description("</pronoun> is 25. ",25);
			st.new_description("</pronoun> is 24. ",24);
			st.new_description("</pronoun> is an adult. ",23);
			st.new_description("</pronoun> is 22. ",22);
			st.new_description("</pronoun> is 21. ",21);
			st.new_description("</pronoun> is a young adult. ",18);
			st.new_description("</pronoun> is a teenager. ",13);
			st.new_description("</pronoun> is a pre-teen. ",9);
			st.new_description("</pronoun> is a child. ",7);
			st.new_description("</pronoun> is a young child. ",5);
			st.new_description("</pronoun> is just a toddler. ",2);
			st.new_description("</pronoun> is just an infant. ",0);
			st.new_increase_description("</n> appears older. ");
			st.new_descrease_description("</n> appears younger. ");
			st.set_age();
			return st;
		}
		
		public static function stat_sex_appeal():Stat{
			var st:Stat = new Stat(FPalace_helper.sex_appeal_id);
			st.set_name("Beauty");
			st.set_show_decimal(0);
			st.set_min(-2);
			st.new_description("");
			st.new_increase_description("</n> is somehow sexier. ");
			st.new_descrease_description("</n> is somehow less attractive than before. ");
			return st;
		}
		
		public static function stat_min_lust():Stat{
			var st:Stat = new Stat(FPalace_helper.min_lust_id);
			st.set_show_decimal(0);
			st.set_min(-2);
			st.set_name("Min Lust");
			st.new_description("");
			st.new_increase_description("</n> appears lustier, as though </noun> body has started producing more hormones. ");
			st.new_descrease_description("</n> looks a litte depressed suddenly. ");
			return st;
		}
		
		public static function stat_max_lust():Stat{
			var st:Stat = new Stat(FPalace_helper.max_lust_id);
			st.set_show_decimal(0);
			st.set_min(-2);
			st.set_name("Max Lust");
			st.new_description("");
			st.new_increase_description("");
			st.new_descrease_description("");
			return st;
		}
		
		public static function stat_strength():Stat{
			var st:Stat = new Stat(FPalace_helper.str_id);
			st.set_name("Strength");
			st.set_show_decimal(0);
			st.set_min(-2);
			st.new_description("");
			st.new_description("</noun> </bpn> are bulging with muscle. ",2);
			st.new_increase_description("</n> looks stronger. ");
			st.new_descrease_description("</n> looks weaker. ");
			return st;
		}
		
		public static function stat_dexterity():Stat{
			var st:Stat = new Stat(FPalace_helper.dex_id);
			st.set_name("Dexterity");
			st.set_show_decimal(0);
			st.set_min(-2);
			st.new_description("");
			st.new_increase_description("</n> looks more nimble. ");
			st.new_descrease_description("</n> looks awkward, and heavy. ");
			return st;
		}
		
		public static function stat_willpower():Stat{
			var st:Stat = new Stat(FPalace_helper.will_id);
			st.set_name("Willpower");
			st.set_show_decimal(0);
			st.set_min(-2);
			st.new_description("");
			st.new_increase_description("</n> looks more determined, and certain. ");
			st.new_descrease_description("</n> looks a little depressed. ");
			return st;
		}
		
		public static function stat_wisdom():Stat{
			var st:Stat = new Stat(FPalace_helper.wis_id);
			st.set_name("Wisdom");
			st.set_show_decimal(0);
			st.set_min(-2);
			st.new_description("");
			st.new_increase_description("</n> looks wiser, and more experienced. ");
			st.new_descrease_description("</n> looks ready to get in trouble. ");
			return st;
		}
		
		public static function stat_constitution():Stat{
			var st:Stat = new Stat(FPalace_helper.con_id);
			st.set_name("Constitution");
			st.set_show_decimal(0);
			st.set_min(-2);
			st.new_description("");
			st.new_increase_description("</n> looks tougher. ");
			st.new_descrease_description("</n> looks more vulnerable to the world around </objnoun>. ");
			
			st.add_combat_status_check("<=", -1, Stat.status_confired_dead);
			return st;
		}
		
		public static function stat_intelligence():Stat{
			var st:Stat = new Stat(FPalace_helper.int_id);
			st.set_name("Intelligence");
			st.set_show_decimal(0);
			st.set_min(-2);
			st.new_description("");
			st.new_increase_description("</n> looks more intelligent. ");
			st.new_descrease_description("</n> looks stupider. ");
			return st;
		}
		
		public static function stat_charisma():Stat{
			var st:Stat = new Stat(FPalace_helper.cha_id);
			st.set_name("Charisma");
			st.set_show_decimal(0);
			st.set_min(-2);
			st.new_description("");
			st.new_increase_description("</n> appears more charismatic. ");
			st.new_descrease_description("</n> is somehow more coarse, and rambunctious. ");
			return st;
		}
		
		public static function stat_curr_hp():Stat{
			var st:Stat = new Stat(FPalace_helper.curr_hp_id);
			st.set_name("Current HP");
			st.set_show_decimal(0);
			st.new_description("");
			st.set_max(FPalace_helper.max_hp_id);
			st.new_increase_description("");
			st.new_descrease_description("</n> looks very wounded. ",FPalace_helper.max_hp_id,"/", 0.01);
			st.new_descrease_description("</n> looks battered and bruised. ",FPalace_helper.max_hp_id,"/", 0.25);
			st.new_descrease_description("</n> looks a little shaken. ",FPalace_helper.max_hp_id,"/", 0.50);
			st.new_descrease_description("</n> looks to be in pretty good health. ",FPalace_helper.max_hp_id,"/", 0.75);
			
			
			st.add_combat_status_check("<=", -1, Stat.status_confired_dead);//negatives are static versus + 1... so this -1 is actually a 0, and a -2 would actually be a 1, -3 w/b 2, -4 w/b 3 etc etc
						
			return st;
		}
		
		public static function stat_max_hp():Stat{
			var st:Stat = new Stat(FPalace_helper.max_hp_id);
			st.set_name("Max HP");
			st.set_show_decimal(0);
			st.set_min(-2);
			st.new_description("");
			st.new_increase_description("");
			st.new_descrease_description("");
			st.set_always_calc();
			
			st.set_stat_calculation(["k" + FPalace_skills.toughness_id, "/", 15.0]);
			
			return st;
		}
		
		public static function stat_curr_fatigue():Stat{
			var st:Stat = new Stat(FPalace_helper.curr_fatigue_id);
			st.set_name("Current Fatigue");
			st.set_show_decimal(0);
			st.set_min(-2);
			st.new_description("");
			st.set_max(FPalace_helper.max_fatigue_id);
			st.new_increase_description("");
			st.new_descrease_description("</n> looks very tired. ",FPalace_helper.max_fatigue_id,"/", 0.01);
			st.new_descrease_description("</n> is huffing and puffing. ",FPalace_helper.max_fatigue_id,"/", 0.25);
			st.new_descrease_description("</n> looks a little tired. ",FPalace_helper.max_fatigue_id,"/", 0.50);
			st.new_descrease_description("</n> is moving around actively. ",FPalace_helper.max_fatigue_id,"/", 0.75);
			
			
			st.add_combat_status_check("<", -2, Stat.status_confired_incapacitated, "</n> collapses from exhaustion. ", true);
			//st.add_overworld_status_check("<", -2, Stat.status_confired_incapacitated, "</n> is too fatigued to do that! ", true);
			
			return st;
		}
		
		public static function stat_max_fatigue():Stat{
			var st:Stat = new Stat(FPalace_helper.max_fatigue_id);
			st.set_name("Max Fatigue");
			st.set_show_decimal(0);
			st.set_min(-2);
			st.new_description("");
			st.new_increase_description("");
			st.new_descrease_description("");
			st.set_always_calc();
			
			st.set_stat_calculation(["k" + FPalace_skills.fortitude_id, "/", 15.0]);
			
			st.add_combat_status_check("<=", -1, Stat.status_confired_incapacitated, "</n> collapses from exhaustion. ");
			
			return st;
		}
		
		public static function stat_curr_mp():Stat{
			var st:Stat = new Stat(FPalace_helper.curr_mp_id);
			st.set_name("Current MP");
			st.set_show_decimal(0);
			st.set_min(-2);
			st.new_description("");
			st.set_max(FPalace_helper.max_mp_id);
			st.new_increase_description("");			
			
			return st;
		}
		
		public static function stat_max_mp():Stat{
			var st:Stat = new Stat(FPalace_helper.max_mp_id);
			st.set_name("Max MP");
			st.set_show_decimal(0);
			st.set_min(-2);
			st.new_description("");
			st.new_increase_description("");
			st.new_descrease_description("");
			st.set_always_calc();
			
			st.set_stat_calculation(["k" + FPalace_skills.concentration_id, "/", 2.0]);
			
			st.add_combat_status_check("<=", -1, Stat.status_confired_dead);
			
			return st;
		}
		
		public static function stat_lust():Stat{
			var st:Stat = new Stat(FPalace_helper.lust_id);
			st.set_name("Lust");
			st.set_show_decimal(0);
			st.new_description("");
			st.set_min(FPalace_helper.min_lust_id);
			st.new_increase_description("");
			st.new_descrease_description("");
			
			st.add_combat_status_check(">=", FPalace_helper.max_lust_id, Stat.status_confired_incapacitated, "</n> is suddenly pre-ocupied with </noun> own body! ", true);
			
			st.add_overworld_status_check(">=", FPalace_helper.max_lust_id, Stat.status_confired_incapacitated, "</n> is too lusty to do that! ", true);
			
			return st;
		}
		
		public static function stat_height():Stat{
			var st:Stat = new Stat(FPalace_helper.height_id);
			st.set_name("Height");
			st.set_min(-2);
			st.set_always_show();
			var parts_to_show:Array = [head_slot, torso_slot, hips_slot, legs_slot, feet_slot, barrel_slot];
			st.set_stat_description_show(parts_to_show);//show this as a total in appearance instead of individually
			st.new_description("</pronoun> is only </"+FPalace_helper.height_id+"> inches tall. \n\n",0);
			st.new_description("</pronoun> is under 2' tall. ",12);
			st.new_description("</pronoun> is under 3' tall. ",24);
			st.new_description("</pronoun> is 3' tall. ",36);
			st.new_description("</pronoun> is 3'1\" tall. ",37);
			st.new_description("</pronoun> is 3'2\" tall. ",38);
			st.new_description("</pronoun> is 3'3\" tall. ",39);
			st.new_description("</pronoun> is 3'4\" tall. ",40);
			st.new_description("</pronoun> is 3'5\" tall. ",41);
			st.new_description("</pronoun> is 3'6\" tall. ",42);
			st.new_description("</pronoun> is 3'7\" tall. ",43);
			st.new_description("</pronoun> is 3'8\" tall. ",44);
			st.new_description("</pronoun> is 3'9\" tall. ",45);
			st.new_description("</pronoun> is 3'10\" tall. ",46);
			st.new_description("</pronoun> is 3'11\" tall. ",47);
			st.new_description("</pronoun> is 4' tall. ",48);
			st.new_description("</pronoun> is 4'1\" tall. ",49);
			st.new_description("</pronoun> is 4'2\" tall. ",50);
			st.new_description("</pronoun> is 4'3\" tall. ",51);
			st.new_description("</pronoun> is 4'4\" tall. ",52);
			st.new_description("</pronoun> is 4'5\" tall. ",53);
			st.new_description("</pronoun> is 4'6\" tall. ",54);
			st.new_description("</pronoun> is 4'7\" tall. ",55);
			st.new_description("</pronoun> is 4'8\" tall. ",56);
			st.new_description("</pronoun> is 4'9\" tall. ",57);
			st.new_description("</pronoun> is 4'10\" tall. ",58);
			st.new_description("</pronoun> is 4'11\" tall. ",59);
			st.new_description("</pronoun> is 5' tall. ",60);
			st.new_description("</pronoun> is 5'1\" tall. ",61);
			st.new_description("</pronoun> is 5'2\" tall. ",62);
			st.new_description("</pronoun> is 5'3\" tall. ",63);
			st.new_description("</pronoun> is 5'4\" tall. ",64);
			st.new_description("</pronoun> is 5'5\" tall. ",65);
			st.new_description("</pronoun> is 5'6\" tall. ",66);
			st.new_description("</pronoun> is 5'7\" tall. ",67);
			st.new_description("</pronoun> is 5'8\" tall. ",68);
			st.new_description("</pronoun> is 5'9\" tall. ",69);
			st.new_description("</pronoun> is 5'10\" tall. ",70);
			st.new_description("</pronoun> is 5'11\" tall. ",71);
			st.new_description("</pronoun> is 6' tall. ",72);
			st.new_description("</pronoun> is 6'1\" tall. ",73);
			st.new_description("</pronoun> is 6'2\" tall. ",74);
			st.new_description("</pronoun> is 6'3\" tall. ",75);
			st.new_description("</pronoun> is 6'4\" tall. ",76);
			st.new_description("</pronoun> is 6'5\" tall. ",77);
			st.new_description("</pronoun> is 6'6\" tall. ",78);
			st.new_description("</pronoun> is 6'7\" tall. ",79);
			st.new_description("</pronoun> is 6'8\" tall. ",80);
			st.new_description("</pronoun> is 6'9\" tall. ",81);
			st.new_description("</pronoun> is 6'10\" tall. ",82);
			st.new_description("</pronoun> is 6'11\" tall. ",83);
			st.new_description("</pronoun> is 7' tall. ",84);
			st.new_description("</pronoun> is 7'1\" tall. ",85);
			st.new_description("</pronoun> is 7'2\" tall. ",86);
			st.new_description("</pronoun> is 7'3\" tall. ",87);
			st.new_description("</pronoun> is 7'4\" tall. ",88);
			st.new_description("</pronoun> is 7'5\" tall. ",89);
			st.new_description("</pronoun> is 7'6\" tall. ",90);
			st.new_description("</pronoun> is 7'7\" tall. ",91);
			st.new_description("</pronoun> is 7'8\" tall. ",92);
			st.new_description("</pronoun> is 7'9\" tall. ",93);
			st.new_description("</pronoun> is 7'10\" tall. ",94);
			st.new_description("</pronoun> is 7'11\" tall. ",95);
			st.new_description("</pronoun> is 8' tall. ",96);
			st.new_description("</pronoun> is 8'1\" tall. ",97);
			st.new_description("</pronoun> is 8'2\" tall. ",98);
			st.new_description("</pronoun> is 8'3\" tall. ",99);
			st.new_description("</pronoun> is 8'4\" tall. ",100);
			st.new_description("</pronoun> is 8'5\" tall. ",101);
			st.new_description("</pronoun> is 8'6\" tall. ",102);
			st.new_description("</pronoun> is 8'7\" tall. ",103);
			st.new_description("</pronoun> is 8'8\" tall. ",104);
			st.new_description("</pronoun> is 8'9\" tall. ",105);
			st.new_description("</pronoun> is 8'10\" tall. ",106);
			st.new_description("</pronoun> is 8'11\" tall. ",107);
			st.new_description("</pronoun> is more than nine feet tall. ",108);
			st.new_description("</pronoun> is more than ten feet tall. ",120);
			st.new_description("</pronoun> is more than eleven feet tall. ",132);
			st.new_description("</pronoun> is more than twelve feet tall. ",144);
			//st.new_description("",0);
			st.new_increase_description("</n> looks taller. ");
			st.new_descrease_description("</n> looks shorter. ");
			
			//new_stat(FPalace_helper.height_id, st, 66);
			return st;
		}
		
		public static function stat_biomass_consumed():Stat{
			var st:Stat = new Stat(FPalace_helper.biomass_consumed);
			st.set_name("Internal floating fluid");
			st.set_min(-2);
			st.set_stat_description_show();
			st.new_description("",0);
			st.new_description("There is a bit of milky substance floating in </noun> goo. ",1);
			st.new_increase_description("</n> looks fuller. ");
			st.new_descrease_description("</n> looks like </pronoun> could use a good meal. ");
						
			return st;
		}
		
		public static function stat_erection_ratio():Stat{
			var st:Stat = new Stat(FPalace_helper.erection_ratio_id);
			st.set_name("Erection ratio");
			st.new_description("");
			st.set_min(-2);
			st.set_max(-3);
			st.set_alchemy_hundreds();
			st.new_increase_description("</n> looks like a shower. ");
			st.new_descrease_description("</n> looks like a grower. ");
						
			return st;
		}
		
		public static function stat_weight():Stat{//may need to do one for each separate part....
			var st:Stat = new Stat(FPalace_helper.weight_id);
			st.set_name("Weight");
			st.new_description("");
			st.new_increase_description("</n> looks heavier. ");
			st.new_descrease_description("</n> looks more fit. ");
			st.set_min(-2);
			st.set_rummage_inv();
			st.set_rummage_body();
			
			st.set_stat_calculation(["(", "s" + FPalace_helper.penis_girth_id, "*", "s" + FPalace_helper.penis_girth_id, "/", 12.5, "*", "s" + FPalace_helper.penis_length_id, "/", 3.0, ")", "+", 
				"(", "s" + FPalace_helper.breast_size_id, "*", "s" + FPalace_helper.breast_size_id, "*", "s" + FPalace_helper.breast_size_id, "/", 25.0,")", "+",
				"(", "s" + FPalace_helper.balls_size_id, "*", "s" + FPalace_helper.balls_size_id, "*", "s" + FPalace_helper.balls_size_id, "/", 248.0, ")", "+",
				"(","(","(", "s" + FPalace_helper.hips_id, "+","s" + FPalace_helper.bust_id, "+", "s" + FPalace_helper.waist_id, "/", 3.0, ")" , "*", "s" + FPalace_helper.height_id, ")" , "/", 32.0,")",  "+",
				"(", "s" + FPalace_helper.bloat_id, "*", "s" + FPalace_helper.bloat_id, "*", "s" + FPalace_helper.bloat_id, "/", 8.0,")", "+",
				"(", "s" + FPalace_helper.biomass_consumed, "/", 1000.0, ")"]);
			
			st.add_overworld_status_check(">=", FPalace_helper.max_weight_id, Stat.status_confired_incapacitated, "</n> is carrying to much to do that! ");
			st.add_combat_status_check(">=", FPalace_helper.max_weight_id, Stat.status_confired_incapacitated, "</n> collapses from the weight </pronoun> is carrying! ");
			
			return st;
		}
		
		public static function stat_max_weight():Stat{
			var st:Stat = new Stat(FPalace_helper.max_weight_id);
			st.set_name("Max Weight");
			st.new_description("");
			st.new_increase_description("</n> looks like </pronoun> can carry more. ");
			st.new_descrease_description("</n> looks physically weaker. ");
			
			st.set_stat_calculation(["(", "s" + FPalace_helper.str_id, "*", "s" + FPalace_helper.str_id, ")", "+", "s" + FPalace_helper.height_id]);
						
			return st;
		}
		
		public static function stat_milk_volume():Stat{
			//An actual breast feeding woman will produce a little over 10 times the default amount when being milked... the things you learn!
			var s:Stat = new Stat(milk_volume_id);
			//s.set_min(-2);
			s.set_name("Milk Production");
			s.new_description("");
			s.new_increase_description("</n> feels </noun> breasts swell with milk. ");
			s.new_descrease_description("</n>s breasts feel empty. ");
			s.set_stat_calculation(["s" + FPalace_helper.breast_size_id, "*", "s" + FPalace_helper.breast_size_id, "*", "s" + FPalace_helper.breast_size_id]);
			
			s.new_short_description("dram",0);
			s.new_short_description("teaspoon",5);
			s.new_short_description("tablespoon",15);
			s.new_short_description("ounce",29);
			s.new_short_description("gill",142);
			s.new_short_description("cup",284);
			s.new_short_description("pint",568);
			s.new_short_description("quart",1140);
			s.new_short_description("gallon",4550);
			s.new_short_description("multiple gallons",9000);
				
			return s;				
		}
		
		public static function trait_gold_gain():Trait{
			var t:Trait = new Trait();
			t.set_stat_trait(Character.gold_id);
			return t;
		}
		
		public static function trait_has_gold():Trait{
			var t:Trait = new Trait();
			t.set_stat_trait(Character.gold_id,-1);//has more money then I do
			return t;
		}
		
		public static function trait_is_taller():Trait{
			var t:Trait = new Trait();
			t.set_stat_trait(FPalace_helper.height_id,-1);
			return t;
		}
		
		public static function trait_hp_gain():Trait{
			var t:Trait = new Trait();
			t.set_stat_trait(FPalace_helper.curr_hp_id);
			return t;
		}
		
		public static function trait_max_hp_gain():Trait{
			var t:Trait = new Trait();
			t.set_stat_trait(FPalace_helper.max_hp_id);
			return t;
		}
		
		public static function trait_lust_gain():Trait{
			var t:Trait = new Trait();
			t.set_stat_trait(FPalace_helper.lust_id);
			t.set_attraction_check(Trait.attracted);
			return t;
		}
		
		public static function trait_lust_gain_by_unattractive():Trait{
			var t:Trait = new Trait();
			t.set_stat_trait(FPalace_helper.lust_id);
			t.set_attraction_check(Trait.disgusted);
			return t;
		}
		
		public static function trait_fatigue_gain():Trait{
			var t:Trait = new Trait();
			t.set_stat_trait(FPalace_helper.curr_fatigue_id);
			return t;
		}
		
		public static function trait_mp_gain():Trait{
			var t:Trait = new Trait();
			t.set_stat_trait(FPalace_helper.curr_mp_id);
			return t;
		}
		
		public static function trait_hp_loss():Trait{
			var t:Trait = new Trait();
			t.set_stat_trait(FPalace_helper.curr_hp_id, 0, false);
			t.set_trait_strength(6);
			return t;
		}
		
		public static function trait_lust_loss():Trait{
			var t:Trait = new Trait();
			t.set_stat_trait(FPalace_helper.lust_id, 0, false);
			t.set_attraction_check(Trait.attracted);
			return t;
		}
		
		public static function trait_lust_loss_by_unattractive():Trait{
			var t:Trait = new Trait();
			t.set_stat_trait(FPalace_helper.lust_id, 0, false);
			t.set_attraction_check(Trait.disgusted);
			return t;
		}
		
		public static function trait_beauty_loss():Trait{
			var t:Trait = new Trait();
			t.set_stat_trait(FPalace_helper.sex_appeal_id, 0, false);
			return t;
		}
		
		public static function trait_semen_production():Trait{
			var t:Trait = new Trait();
			t.set_stat_trait(FPalace_helper.cum_volume_id, 1);
			return t;
		}
		
		public static function trait_milk_production():Trait{
			var t:Trait = new Trait();
			t.set_stat_trait(FPalace_helper.milk_volume_id, 1);
			return t;
		}
		
		public static function trait_high_fertility():Trait{
			var t:Trait = new Trait();
			t.set_stat_trait(FPalace_helper.egg_fertility_id, 0.4);
			return t;
		}
		
		public static function trait_high_beauty():Trait{
			var t:Trait = new Trait();
			t.set_stat_trait(FPalace_helper.sex_appeal_id, 10);
			return t;
		}
		
		public static function trait_high_willpower():Trait{
			var t:Trait = new Trait();
			t.set_stat_trait(FPalace_helper.will_id, 10);
			return t;
		}
		
		public static function trait_high_strength():Trait{
			var t:Trait = new Trait();
			t.set_stat_trait(FPalace_helper.str_id, 10);
			return t;
		}
		
		public static function trait_high_wisdom():Trait{
			var t:Trait = new Trait();
			t.set_stat_trait(FPalace_helper.wis_id, 10);
			return t;
		}
		
		public static function trait_high_intelligence():Trait{
			var t:Trait = new Trait();
			t.set_stat_trait(FPalace_helper.int_id, 10);
			return t;
		}
		
		public static function trait_high_dexterity():Trait{
			var t:Trait = new Trait();
			t.set_stat_trait(FPalace_helper.dex_id, 10);
			return t;
		}
		
		public static function trait_high_constitution():Trait{
			var t:Trait = new Trait();
			t.set_stat_trait(FPalace_helper.con_id, 10);
			return t;
		}
		
		public static function trait_high_charisma():Trait{
			var t:Trait = new Trait();
			t.set_stat_trait(FPalace_helper.cha_id, 10);
			return t;
		}
		
		public static function trait_has_penis():Trait{
			var t:Trait = new Trait();
			t.set_trait_strength(2);
			t.set_part_id(cock_slot);
			return t;
		}
		
		public static function trait_has_vagina():Trait{
			var t:Trait = new Trait();
			t.set_trait_strength(2);
			t.set_part_id(vag_slot);
			return t;
		}
		
		public static function trait_has_breasts():Trait{
			var t:Trait = new Trait();
			t.set_part_id(breasts_slot);
			return t;
		}
		
		public static function trait_is_human():Trait{
			var t:Trait = new Trait();
			t.set_racial_trait(FPalace_races.race_human());
			return t;
		}
		
		public static function trait_is_goblin():Trait{
			var t:Trait = new Trait();
			t.set_racial_trait(FPalace_races.race_goblin());
			return t;
		}
		
		public static function trait_is_actino():Trait{
			var t:Trait = new Trait();
			t.set_racial_trait(FPalace_races.race_anthro_fish());
			return t;
		}
		
		public static function trait_is_equidae():Trait{
			var t:Trait = new Trait();
			t.set_racial_trait(FPalace_races.race_anthro_donkey());
			return t;
		}
		
		public static function trait_is_caudata():Trait{
			var t:Trait = new Trait();
			t.set_racial_trait(FPalace_races.race_anthro_lizard());
			return t;
		}
		
		public static function trait_is_goo():Trait{
			var t:Trait = new Trait();
			t.set_racial_trait(FPalace_races.race_goo());
			return t;
		}
		
		public static function trait_is_lagomorph():Trait{
			var t:Trait = new Trait();
			t.set_racial_trait(FPalace_races.race_anthro_rabbit());
			return t;
		}
		
		public static function trait_is_elf():Trait{
			var t:Trait = new Trait();
			t.set_racial_trait(FPalace_races.race_elf());
			return t;
		}
		
		public static function trait_is_dwarf():Trait{
			var t:Trait = new Trait();
			t.set_racial_trait(FPalace_races.race_dwarf());
			return t;
		}
		
		public static function trait_is_feline():Trait{
			var t:Trait = new Trait();
			t.set_racial_trait(FPalace_races.race_anthro_feline());
			return t;
		}
		
		public static function trait_is_bovine():Trait{
			var t:Trait = new Trait();
			t.set_racial_trait(FPalace_races.race_anthro_bovine());
			return t;
		}
		
		public static function trait_is_equine():Trait{
			var t:Trait = new Trait();
			t.set_racial_trait(FPalace_races.race_anthro_equine());
			return t;
		}
		
		public static function trait_is_apini():Trait{
			var t:Trait = new Trait();
			t.set_racial_trait(FPalace_races.race_anthro_bee());
			return t;
		}
				
		public static function trait_is_spider():Trait{
			var t:Trait = new Trait();
			t.set_racial_trait(FPalace_races.race_anthro_spider());
			return t;
		}
		
		public static function trait_is_sexsnake():Trait{
			var t:Trait = new Trait();
			t.set_racial_trait(FPalace_races.race_sexsnake());
			return t;
		}
		
		public static function lust_damage_type():Damage_type{
			var dt:Damage_type = new Damage_type();
			dt.set_type_id(0);
			dt.set_type_name("Lust");
			return dt;
		}
		
		public static function bludg_damage_type():Damage_type{
			var dt:Damage_type = new Damage_type();
			dt.set_type_id(1);
			dt.set_type_name("Bludgeoning");
			return dt;
		}
		
		public static function pierce_damage_type():Damage_type{
			var dt:Damage_type = new Damage_type();
			dt.set_type_id(2);
			dt.set_type_name("Piercing");
			return dt;
		}
		
		public static function slash_damage_type():Damage_type{
			var dt:Damage_type = new Damage_type();
			dt.set_type_id(3);
			dt.set_type_name("Slashing");
			return dt;
		}
		
		public static function earth_damage_type():Damage_type{
			var dt:Damage_type = new Damage_type();
			dt.set_type_id(4);
			dt.set_type_name("Earth");
			return dt;
		}
		
		public static function air_damage_type():Damage_type{
			var dt:Damage_type = new Damage_type();
			dt.set_type_id(5);
			dt.set_type_name("Air");
			return dt;
		}
		
		public static function water_damage_type():Damage_type{
			var dt:Damage_type = new Damage_type();
			dt.set_type_id(6);
			dt.set_type_name("Water");
			return dt;
		}
		
		public static function acid_damage_type():Damage_type{
			var dt:Damage_type = new Damage_type();
			dt.set_type_id(7);
			dt.set_type_name("Acid");
			return dt;
		}
		
		public static function fire_damage_type():Damage_type{
			var dt:Damage_type = new Damage_type();
			dt.set_type_id(8);
			dt.set_type_name("Fire");
			return dt;
		}
		
		public static function lit_damage_type():Damage_type{
			var dt:Damage_type = new Damage_type();
			dt.set_type_id(9);
			dt.set_type_name("Lightning");
			return dt;
		}
		
		public static function clear_skies_weather():Area_weather{
			var weather:Area_weather = new Area_weather();
			
			weather.set_minimum_length(Main.t1_hour*6);
			weather.new_daytime_status("It is night, the moon high in the sky.\n",0);
			weather.new_daytime_status("It is the early morning, sun shinning from the east.\n",Math.round(Main.t1_day*1/4));
			weather.new_daytime_status("It is the morning, the sun shining brightly.\n",Math.round(Main.t1_day*3/8));
			weather.new_daytime_status("It is the afternoon, the sun high overhead.\n",Math.round(Main.t1_day*1/2));
			weather.new_daytime_status("It is the late afternoon, the sun shining brightly.\n",Math.round(Main.t1_day*5/8));
			weather.new_daytime_status("It is the evening, the sun retreating to the west.\n",Math.round(Main.t1_day*3/4));
			weather.new_daytime_status("It is night, the moon high in the sky.\n",Math.round(Main.t1_day*7/8));
			
			return weather;			
		}
		
		public static function rain_weather():Area_weather{
			var weather:Area_weather = new Area_weather();
			
			weather.set_minimum_length(Main.t1_hour*6);
			weather.new_daytime_status("It is night, and raining heavily.\n",0);
			weather.new_daytime_status("It is the early morning, though the rain obscures the sun.\n",Math.round(Main.t1_day*1/4));
			weather.new_daytime_status("It is the morning, the rain unable to abate the light of the sun.\n",Math.round(Main.t1_day*3/8));
			weather.new_daytime_status("It is the afternoon, silver lining bright in the clouds pouring rain down.\n",Math.round(Main.t1_day*1/2));
			weather.new_daytime_status("It is the late afternoon, the rain unable to abate the light of the sun.\n",Math.round(Main.t1_day*5/8));
			weather.new_daytime_status("It is the evening, the sun visible between the horizon and the rain.\n",Math.round(Main.t1_day*3/4));
			weather.new_daytime_status("It is night, and raining heavily.\n",Math.round(Main.t1_day*7/8));
			
			return weather;			
		}
		
		public static function cart_container():Container{
			var cont:Container = new Container();
			cont.set_name("Cart");
			cont.open();
			cont.set_always_open();
			cont.set_description("There is a <s0>broken cart</s0> to the side of the path. ");
			cont.add_sub_descriptions("It is an aging merchants cart, a broken axle making it useless. ");
			
			cont.add_to_loot_table(FPalace_items.Healing_Potion(),0.1);
			cont.add_to_loot_table(FPalace_items.textiles(),0.6);
			cont.add_to_loot_table(FPalace_items.wood(),0.4);
			cont.add_to_loot_table(FPalace_items.leather(),0.1);
			cont.add_to_loot_table(FPalace_items.iron(),0.1);
			cont.add_to_loot_table(FPalace_items.bandages(),0.4);
			cont.add_to_loot_table(FPalace_items.knife(),0.1);
			cont.add_to_loot_table(FPalace_items.reduction_salve(),0.1);
			cont.add_to_loot_table(FPalace_items.Tent(),0.1);	
			
			var ba:Action = new Action();
			ba.set_dialogue("",0);
			
			var challenge:Challenge = new Challenge(true);
			challenge.set_attack_stat(FPalace_skills.items_id);
			challenge.set_defense_stat(-1,15);
			challenge.set_variability(20);
			var iconsequence:Item_Consequence = new Item_Consequence();
			iconsequence.add_consequence(FPalace_helper.curr_fatigue_id,-1,"You work for awhile, managing to not only break the cart down, but recover material as well. ",0);
			iconsequence.add_consequence(FPalace_helper.curr_fatigue_id,-1,"You work for awhile and manage to dispose of the broken cart. ",-1);
			iconsequence.add_item_reward(FPalace_items.wood(),0);
			iconsequence.add_item_reward(FPalace_items.wood(),2);
			iconsequence.add_item_reward(FPalace_items.wood(),4);
			iconsequence.add_item_reward(FPalace_items.wood(),6);
			iconsequence.add_item_reward(FPalace_items.wood(),8);
			iconsequence.add_item_reward(FPalace_items.wood(),10);			
			
			ba.add_challenge(challenge,iconsequence);
			cont.set_bury("clean up", "cleans up", ba);
			
			return cont;
		}
						
	}
	
}
