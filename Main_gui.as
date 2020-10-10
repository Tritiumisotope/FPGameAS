package  {
	
	import flash.display.MovieClip;
	import flash.display.DisplayObjectContainer;
	import flash.display.Sprite;
	import flash.display.Graphics;
	import flash.display.GraphicsPathCommand;
	import flash.text.TextField;
	import fl.controls.TextArea;
	import fl.controls.Button;
	import flash.events.TextEvent;
	import flash.events.MouseEvent;
	import flash.events.KeyboardEvent;
	import flash.events.Event;
	import flash.geom.Rectangle;
	import flash.geom.Matrix;
	import flash.display.BitmapData;
	import flash.display.Bitmap;
	import flash.display.Shape;
	import flash.text.TextFormat;
	
	
	public class Main_gui {
		
		public static const combat_bg_colour:uint = 0xFFFFFF;//0
		public static const combat_txt_colour:uint = 0;//0xFFFFFF
		
		private static var current_cm:Combat_manager;
		private static var selected_attack_id:int;
		private static var selected_target_id:int;

		public function Main_gui() {
			// constructor code
		}
		
		public static function make_skillbar(c:Character, m:Main):MovieClip{
			var ret_clip:MovieClip = new MovieClip();
			ret_clip.x = 10;
			ret_clip.y = 550;
			
			var temp_string:String = "";
			var ui_list:Array = new Array();
			
			if(c.party != null){
				var char_id:int = 0;
				for(char_id;char_id<c.party.members.length;char_id++){
					if(c.party.members[char_id] == c)break;
				}
				if(char_id-1>=0){
					var left_button:Button = new Button();
					left_button.name = String(char_id-1);
					left_button.x = 10;
					left_button.y = 12;
					left_button.width = 40;
					left_button.height = 22;
					left_button.label = "<<";
					
					left_button.setStyle("textFormat", m.button_text_format);
					left_button.setStyle("disabledTextFormat", m.button_text_format);
					left_button.setStyle("disabledSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_disabledSkin_img));
					left_button.setStyle("downSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_downSkin_img));
					left_button.setStyle("emphasizedSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_emphasizedSkin_img));
					left_button.setStyle("overSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_overSkin_img));
					left_button.setStyle("selectedDisabledSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_selectedDisabledSkin_img));
					left_button.setStyle("selectedDownSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_selectedDownSkin_img));
					left_button.setStyle("selectedOverSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_selectedOverSkin_img));
					left_button.setStyle("selectedUpSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_selectedUpSkin_img));
					left_button.setStyle("upSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_upSkin_img));
			
					left_button.addEventListener(MouseEvent.CLICK, party_member_change);
					ret_clip.addChild(left_button);
				}
				
				if(char_id+1<c.party.members.length){
					var right_button:Button = new Button();
					right_button.name = String(char_id+1);
					right_button.x = 710;
					right_button.y = 12;
					right_button.width = 40;
					right_button.height = 22;
					right_button.label = ">>";
					
					right_button.setStyle("textFormat", m.button_text_format);
					right_button.setStyle("disabledTextFormat", m.button_text_format);
					right_button.setStyle("disabledSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_disabledSkin_img));
					right_button.setStyle("downSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_downSkin_img));
					right_button.setStyle("emphasizedSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_emphasizedSkin_img));
					right_button.setStyle("overSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_overSkin_img));
					right_button.setStyle("selectedDisabledSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_selectedDisabledSkin_img));
					right_button.setStyle("selectedDownSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_selectedDownSkin_img));
					right_button.setStyle("selectedOverSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_selectedOverSkin_img));
					right_button.setStyle("selectedUpSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_selectedUpSkin_img));
					right_button.setStyle("upSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_upSkin_img));
					right_button.addEventListener(MouseEvent.CLICK, party_member_change);
					
					ret_clip.addChild(right_button);
				}
				
				function party_member_change(event:MouseEvent):void{
					if(m.status.enabled){
						m.cleanup_gui();
						m.create_mini_map(int(event.target.name));							
					}
				}
			}
			
			if(c.location != null){
				if(m.player != c){
					temp_string += c.get_party_actions();
				}else{
					temp_string += c.get_personal_actions();
				}
			}
			
			var action_expression:RegExp = new RegExp("<a href=\"event:[,_a-z0-9]*\">","gi");
			var action_choices:Array = temp_string.match(action_expression);
			var start_index:int = 0;
			var i:int = 0;
			for(i;i<action_choices.length;i++){
				var ability_button:Button = new Button();
				ability_button.name = action_choices[i].substr(action_choices[i].indexOf(":")+1,action_choices[i].indexOf("\">") - action_choices[i].indexOf(":") - 1);
				ability_button.x = 60 + 610/(action_choices.length)*i;
				ability_button.y = 12;
				ability_button.width = 100;
				ability_button.height = 22;
				ability_button.label = temp_string.substr(temp_string.indexOf("FF'>",start_index)+4,temp_string.indexOf("</font>",start_index)- temp_string.indexOf("FF'>",start_index)-4);
				start_index = temp_string.indexOf("</a>",start_index+1);
				ability_button.setStyle("textFormat", m.button_text_format);
				ability_button.setStyle("disabledTextFormat", m.button_text_format);
				ability_button.setStyle("disabledSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_disabledSkin_img));
				ability_button.setStyle("downSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_downSkin_img));
				ability_button.setStyle("emphasizedSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_emphasizedSkin_img));
				ability_button.setStyle("overSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_overSkin_img));
				ability_button.setStyle("selectedDisabledSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_selectedDisabledSkin_img));
				ability_button.setStyle("selectedDownSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_selectedDownSkin_img));
				ability_button.setStyle("selectedOverSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_selectedOverSkin_img));
				ability_button.setStyle("selectedUpSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_selectedUpSkin_img));
				ability_button.setStyle("upSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_upSkin_img));
				
				ability_button.addEventListener(MouseEvent.CLICK, ability_MouseClickHandler);
				ui_list[ui_list.length] = ability_button;
				function ability_MouseClickHandler(event:MouseEvent):void{
					if(m.status.enabled){
						m.cleanup_gui();
						var e:TextEvent;
						e = new TextEvent(TextEvent.LINK, false, false, event.target.name);								
						m.linkHandler(e);						
					}
				}
				
				ret_clip.addChild(ability_button);
			}
			
			var myTextImage:BitmapData = new BitmapData(100, 100, true, 0xC2C2C2);
			var tf:TextField = new TextField();
			tf.defaultTextFormat = m.textfield_text_format;
			tf.htmlText = Main.capitalize(c.sanitize("</n>",c));
			
			var text_height:Number = tf.textHeight;
			
			myTextImage.draw(tf);
			var bm:Bitmap = new Bitmap(myTextImage);
			
			bm.x = 50;
			bm.y = -text_height;
			
			ret_clip.addChild(bm);
			
			var bar_sprite:Sprite = c.draw_statusbars(460,text_height,true,false);
			
			bar_sprite.x = 150 - 7;
			bar_sprite.y = -text_height - 7;
			
			ret_clip.addChild(bar_sprite);
			
			var status_effects:Sprite = c.draw_status_effects(50, 20);
			status_effects.x = 660;
			status_effects.y = -7;
			ret_clip.addChild(status_effects);
			
			ret_clip.addEventListener(Event.REMOVED_FROM_STAGE, cleanup_handlers);
									  
			function cleanup_handlers(event:Event):void{
				if(left_button != null)left_button.removeEventListener(MouseEvent.CLICK,party_member_change);
				if(right_button != null)right_button.removeEventListener(MouseEvent.CLICK,party_member_change);
				var i:int = 0;
				for(i;i<ui_list.length;i++){
					ui_list[i].removeEventListener(MouseEvent.CLICK,ability_MouseClickHandler);
				}
				ret_clip.removeEventListener(Event.REMOVED_FROM_STAGE, cleanup_handlers);
			}
			
			return ret_clip;
		}
		
		public static function alchemy_minigame(c:Character, ai1_id:String, ai2_id:String, m:Main):MovieClip{
			var ret_clip:MovieClip = new MovieClip();
			ret_clip.x = 123.5;
			ret_clip.y = 47.45;
			var ai1:Alchemy_item = c.possessions[int(ai1_id)];
			var ai2:Alchemy_item = c.possessions[int(ai2_id)];
			
			c.drop(int(ai1_id));
			if(ai2_id < ai1_id){
				c.drop(int(ai2_id));
			}else{
				c.drop(int(ai2_id)-1);
			}
				
			var type_array:Array = ai1.types.concat(ai2.types);
			type_array = type_array.concat(ai1.change_effects).concat(ai2.change_effects).concat(ai1.stat_action_add).concat(ai2.stat_action_add);
			
			var initial_array:Array = type_array;
			
			if(type_array.length <= 2){
				//not much point... just mix the two types and return to text gui
				var new_item:Item = ai1.combine(c,ai2, null);
				
				c.set_busy();
				c.add_to_possessions(new_item);
				m.output = ("You got " + new_item.get_name() + ".");
				m.world_tick();
				m.cleanup_gui();
				return null;
			}
			
			var char_for_chal:Character = c;
			if(c.party != null)char_for_chal = c.party.get_best_at_skill(FPalace_skills.alchemy_id);
			var alchemy_challenge:Challenge = new Challenge(true);
			alchemy_challenge.set_attack_stat(FPalace_skills.alchemy_id);
			alchemy_challenge.set_defense_stat(-1,type_array.length);
			alchemy_challenge.set_variability(Math.round((type_array.length)/2));
			
			var result:int = Math.floor(Math.sqrt(alchemy_challenge.roll(char_for_chal))) + 1;
			
			while(type_array.length - 1 < (result*result)/2) result--;//make sure there aren't too many blank spaces
			
			if(result < 3) result = 3;
			
			if(type_array.length >= result * result){
				//need to toss out some types at random...
				var replace_count:int = (type_array.length -1) - result*result;
				for(replace_count;replace_count>0;replace_count--){
					var rand_replace:int = Math.round(Math.random()*(type_array.length-1));
					while(type_array[rand_replace] == null)rand_replace = Math.round(Math.random()*(type_array.length-1));
					type_array[rand_replace] = null;
				}
			}else{
				while(type_array.length -1 < result * result)type_array[type_array.length] = null;
			}
			
			char_for_chal = c;
			if(c.party != null)char_for_chal = c.party.get_best_at_skill(FPalace_skills.item_alchemy_effects_id);
			var alch_ident_challenge:Challenge = new Challenge(true);
			alch_ident_challenge.set_attack_stat(FPalace_skills.item_effects_id);
			alch_ident_challenge.set_defense_stat(-1,Math.max(ai1.get_identify_difficulty(),ai2.get_identify_difficulty()));
			alch_ident_challenge.set_variability(5);
			
			var ident_chance:Number = alch_ident_challenge.roll(char_for_chal)/Math.max(ai1.get_identify_difficulty(),ai2.get_identify_difficulty());
						
			var sprite:Sprite = new Sprite( );
			var g:Graphics = sprite.graphics;
			g.beginFill(0xFFFFFF);
			g.drawRect(0, 0, 640, 491);
			g.endFill();
			sprite.alpha = 0.5;
			
			ret_clip.addChildAt(sprite, 0);
			
			var selected_types:Array = new Array();
			function select_atype(event:Event):void{
				var temp_sprite:Sprite = event.target as Sprite;
				if(temp_sprite != null){
					var temp_g:Graphics = temp_sprite.graphics;
					if(selected_types[0] == null){
						selected_types[0] = temp_sprite;
						temp_g.beginFill(0x0000FF);
						temp_g.drawRect(0, 0, 640/result, 491/result);
						temp_g.endFill();
						temp_g.beginFill(0xFFFFFF);
						temp_g.drawRect(2, 2, 640/result-4, 491/result-4);
						temp_g.endFill();
					}else{
						if(selected_types[0] != temp_sprite){
							c.set_busy();
							m.world_tick();
							//unhighlight, and swap tile positions
							temp_g = selected_types[0].graphics;
							var x_swap:Number = selected_types[0].x;
							var y_swap:Number = selected_types[0].y;
							selected_types[0].x = temp_sprite.x;
							selected_types[0].y = temp_sprite.y;
							temp_sprite.x = x_swap;
							temp_sprite.y = y_swap;
							temp_sprite.parent.swapChildren(temp_sprite, selected_types[0]);
						}
						temp_g.beginFill(0);
						temp_g.drawRect(0, 0, 640/result, 491/result);
						temp_g.endFill();
						temp_g.beginFill(0xFFFFFF);
						temp_g.drawRect(2, 2, 640/result-4, 491/result-4);
						temp_g.endFill();
						
						//check for matches, and remove selectability if found... 
						//up/down matches
						var a1_lock:Boolean = false;
						var a2_lock:Boolean = false;
						var child_count:int = 1;
						var temp_array:Array = new Array();
						var x:int = 0;
						for(x;x<result;x++){
							if(temp_array[x] == null) temp_array[x] = new Array();
							var y:int = 0;
							var a1_count:int = 0;
							var a2_count:int = 0;
							for(y;y<result;y++){
								temp_array[x][y] = temp_sprite.parent.getChildAt(child_count);
								child_count++;
								if(temp_array[x][y].name == temp_sprite.name){
									a2_count++;
								}else{
									if(a2_count >= 3)a2_lock = true;
									a2_count = 0;
								}
								if(temp_array[x][y].name == selected_types[0].name){
									a1_count++;
								}else{
									if(a1_count >= 3)a1_lock = true;
									a1_count = 0;
								}
							}
							if(a1_count >= 3)a1_lock = true;
							if(a2_count >= 3)a2_lock = true;
						}
						//left/right matches - don't bother if we already know to lock both types
						if(!(a1_lock && a2_lock)){
							y = 0;
							for(y;y<result;y++){
								x = 0;
								a1_count = 0;
								a2_count = 0;
								for(x;x<result;x++){
									if(temp_array[x][y].name == temp_sprite.name){
										a2_count++;
									}else{
										if(a2_count >= 3)a2_lock = true;
										a2_count = 0;
									}
									if(temp_array[x][y].name == selected_types[0].name){
										a1_count++;
									}else{
										if(a1_count >= 3)a1_lock = true;
										a1_count = 0;
									}
								}
								if(a1_count >= 3)a1_lock = true;
								if(a2_count >= 3)a2_lock = true;
							}
						}
						
						if(a1_lock){
							x = 0;
							for(x;x<temp_array.length;x++){
								y = 0;
								for(y;y<temp_array[x].length;y++){
									if(temp_array[x][y].name == selected_types[0].name){
										temp_array[x][y].removeEventListener(MouseEvent.CLICK, select_atype);
										temp_g = temp_array[x][y].graphics;
										temp_g.beginFill(0xFF0000);
										temp_g.drawRect(0, 0, 640/result, 491/result);
										temp_g.endFill();
										temp_g.beginFill(0xFFFFFF);
										temp_g.drawRect(2, 2, 640/result-4, 491/result-4);
										temp_g.endFill();
									}
								}
							}
						}
						
						if(a2_lock){
							x = 0;
							for(x;x<temp_array.length;x++){
								y = 0;
								for(y;y<temp_array[x].length;y++){
									if(temp_array[x][y].name == temp_sprite.name){
										temp_array[x][y].removeEventListener(MouseEvent.CLICK, select_atype);
										temp_g = temp_array[x][y].graphics;
										temp_g.beginFill(0xFF0000);
										temp_g.drawRect(0, 0, 640/result, 491/result);
										temp_g.endFill();
										temp_g.beginFill(0xFFFFFF);
										temp_g.drawRect(2, 2, 640/result-4, 491/result-4);
										temp_g.endFill();
									}
								}
							}
						}
						
						selected_types[0] = null;
					}
				}
			}
			
			var x:int = 0;
			for(x;x<result;x++){
				var y:int = 0;
				for(y;y<result;y++){
					sprite = new Sprite();
					sprite.name = "";
					sprite.x = 640/result*x;
					sprite.y = 491/result*y;
					g = sprite.graphics;
					g.beginFill(0);
					g.drawRect(0, 0, 640/result, 491/result);
					g.endFill();
					
					var rand:int = Math.random()*(type_array.length - 1);
					
					if(type_array[rand] != null){
						if(type_array[rand] is Dynamic_object || type_array[rand] is Consequence || type_array[rand] is Action){
							var init_count:int = 0;
							for(init_count;init_count<initial_array.length;init_count++){
								if(initial_array[init_count] == type_array[rand])break;
							}
							if(type_array[rand] is Consequence){
								sprite.name = "c"+init_count;
							}else{
								sprite.name = "a"+init_count;
							}
						}
						else{
							sprite.name = type_array[rand];
						}
						
						g.beginFill(0xFFFFFF);
						g.drawRect(2, 2, 640/result-4, 491/result-4);
						g.endFill();
						var text1_txt:TextField = new TextField();
						text1_txt.x = 640/result/2;
						text1_txt.y = 491/result/2;
						if(type_array[rand] is Dynamic_object || type_array[rand] is Consequence){
							text1_txt.htmlText = "<font color='#0000FF'>?</font>";
						}else if(type_array[rand] is Action){
							text1_txt.htmlText = "<font color='#0000FF'>?</font>";
						}else{
							if(type_array[rand] < 0){
								if(Math.random() <= ident_chance){
									text1_txt.htmlText = "<font color='#FF0000'>" + Main.capitalize(FPalace_helper.get_stat_name_by_id(-type_array[rand])) + "</font>";
								}else{
									text1_txt.htmlText = "<font color='#FF0000'>?</font>";
								}
							}else{
								if(Math.random() <= ident_chance){
									text1_txt.htmlText = "<font color='#00FF00'>" + Main.capitalize(FPalace_helper.get_stat_name_by_id(type_array[rand])) + "</font>";
								}else{
									text1_txt.htmlText = "<font color='#00FF00'>?</font>";
								}
							}
						}
						text1_txt.selectable = false;
						text1_txt.x -= text1_txt.textWidth/2;
						text1_txt.y -= text1_txt.textHeight/2;
						text1_txt.width = text1_txt.textWidth*1.5;
						text1_txt.height = text1_txt.textHeight*1.25;
						
						sprite.addChild(text1_txt);
						
						if(type_array[rand] is Dynamic_object || type_array[rand] is Consequence || type_array[rand] is Action){
							
						}else{
							sprite.addEventListener(MouseEvent.CLICK, select_atype);
						}
						
						type_array = type_array.slice(0, rand).concat(type_array.slice(rand+1, type_array.length));													
					}
					ret_clip.addChild(sprite);
				}
			}
			
			var done_button:Button = new Button();
			done_button.x = 540;
			done_button.y = 491;
			done_button.width = 100;
			done_button.height = 22;
			done_button.label = "Mix";
			done_button.enabled = true;
			done_button.setStyle("textFormat", m.button_text_format);
			done_button.setStyle("disabledTextFormat", m.button_text_format);
			done_button.setStyle("disabledSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_disabledSkin_img));
			done_button.setStyle("downSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_downSkin_img));
			done_button.setStyle("emphasizedSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_emphasizedSkin_img));
			done_button.setStyle("overSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_overSkin_img));
			done_button.setStyle("selectedDisabledSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_selectedDisabledSkin_img));
			done_button.setStyle("selectedDownSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_selectedDownSkin_img));
			done_button.setStyle("selectedOverSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_selectedOverSkin_img));
			done_button.setStyle("selectedUpSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_selectedUpSkin_img));
			done_button.setStyle("upSkin",FPalace_helper.get_image_by_id(FPalace_helper.Button_upSkin_img));
			done_button.addEventListener(MouseEvent.CLICK, done_button_MouseClickHandler);
			
			function done_button_MouseClickHandler(event:MouseEvent):void{
				var temp_array:Array = new Array();
				var child_count:int = 1;
				var x:int = 0;
				for(x;x<result;x++){
					if(temp_array[x] == null) temp_array[x] = new Array();
					var y:int = 0;
					for(y;y<result;y++){
						temp_array[x][y] = ret_clip.getChildAt(child_count).name;
						if(ret_clip.getChildAt(child_count).hasEventListener(MouseEvent.CLICK)){
							ret_clip.getChildAt(child_count).removeEventListener(MouseEvent.CLICK, select_atype);
						}
						child_count++;
					}
				}
				var new_item:Item = ai1.combine(c,ai2,temp_array);
				
				c.set_busy();
				c.add_to_possessions(new_item);
				m.output = ("You got " + new_item.get_name() + ".");
				m.world_tick();
				done_button.removeEventListener(MouseEvent.CLICK, done_button_MouseClickHandler);
				m.Look_button.enabled = true;
				m.Inventory_button.enabled = true;
				m.appearance.enabled = true;
				m.status.enabled = true;
				m.skill_button.enabled = true;
				m.map_button.enabled = true;
				m.save_button.enabled = true;
				m.wait_button.enabled = true;
				m.save_button.enabled = true;
				m.newgame_button.enabled = true;
				m.options_button.enabled = true;
				m.cleanup_gui();
			}
			
			ret_clip.addChild(done_button);
			
			return ret_clip;
		}
		
		public static function make_minimap(c:Character, m:Main, sight:int = 1):MovieClip{
			var ret_clip:MovieClip = new MovieClip();
			if(sight == 1){
				ret_clip.x = 42.5;
			}else{
				ret_clip.x = 17.5;
			}
			ret_clip.y = 19.45;//429.0;			
			
			var back_sprite:Sprite = new Sprite();
			var g:Graphics = back_sprite.graphics;
			g.beginFill(combat_txt_colour);
			if(sight == 1){
				g.drawRect( 0, 0, 50, 50);
			}else{
				g.drawRect( 0, 0, 100, 100);
			}
			g.endFill( );
			g.beginFill(combat_bg_colour);
			if(sight == 1){
				g.drawRect( 1, 1, 48, 48);
			}else{
				g.drawRect( 1, 1, 98, 98);
			}
			g.endFill( );
			
			ret_clip.addChild(back_sprite);
			
			var map_string:String = c.location.area.get_map(1,c,sight,1,true);
			
			if(map_string == "")trace("(Main_gui.make_minimap)What the hell? No map?");
			
			var map_sprite:Sprite = make_map_sprite(map_string, m, false); 
			
			//scale down the map_sprite to fit in the back sprite
			map_sprite.scaleY = 0.63;//map_sprite.scaleX = (back_sprite.width - 2) / map_sprite.width;
			map_sprite.scaleX = 0.63;//map_sprite.scaleY = (back_sprite.height-2) / map_sprite.height;
			//position the map... center the character
			var char_sprite_x:int = -1;
			var char_sprite_y:int = -1;
			var count:int = 0;
			for(count;count<map_sprite.numChildren;count++){
				if(map_sprite.getChildAt(count) is Sprite){
					var temp_spr:Sprite = map_sprite.getChildAt(count) as Sprite;
					if(temp_spr.name == "Player"){
						char_sprite_x = (temp_spr.x + (temp_spr.width/2)) * map_sprite.scaleX;
						char_sprite_y = (temp_spr.y + (temp_spr.height/2)) * map_sprite.scaleY;
						break;
					}
				}
			}
			
			if(char_sprite_x < (back_sprite.width / 2)){
				map_sprite.x = map_sprite.x + ((back_sprite.width / 2) - char_sprite_x);
			}else if(char_sprite_x > (back_sprite.width / 2)){
				map_sprite.x = map_sprite.x - (char_sprite_x - (back_sprite.width / 2));
			}
			if(char_sprite_y < (back_sprite.height / 2)){
				map_sprite.y = map_sprite.y + ((back_sprite.height / 2) - char_sprite_y);
			}else if(char_sprite_y > (back_sprite.height / 2)){
				map_sprite.y = map_sprite.y - (char_sprite_y - (back_sprite.height / 2));
			}
			
			//map_sprite.getChildAt(0).visible = false;
			
			ret_clip.addChild(map_sprite);
			
			return ret_clip;
		}
		
		public static function make_map_sprite(map_string:String, m:Main = null, center:Boolean = true):Sprite{
			var temp_map:String = map_string;
			var super_sprite:Sprite = new Sprite();
			var ui_list:Array = new Array();
			
			var i:int = 0;
			var y_list:Array = new Array()
			while ( temp_map.substr(i, temp_map.length).indexOf("\n") > 0 ){
				y_list[y_list.length] = temp_map.substr(i, temp_map.indexOf("\n",i) - i);
				i =  temp_map.indexOf("\n",i) + 1;
			}
			y_list[y_list.length] = temp_map.substr(i,map_string.length);
			
			function mapmove(event:Event):void{
				var e:TextEvent;
				e = new TextEvent(TextEvent.LINK, false, false, event.target.name);								
				if(m.Look_button.enabled)m.linkHandler(e);
			}

			var char_x:int = -1;
			var char_y:int = -1;
			var parsed_string:String = "";
			i = 0;
			for(i;i<y_list.length;i++){
				var j:int = 0;
				for(j;j<y_list[i].length;j++){
					var room_colour:uint = 0xFFFFFF;
					if(y_list[i].charAt(j) == "O" || y_list[i].charAt(j) == "@" || y_list[i].charAt(j) == "F"){
						var sprite:Sprite = new Sprite( );
						var g:Graphics = sprite.graphics;						
						if(parsed_string != ""){
							room_colour = uint(parsed_string.slice(parsed_string.indexOf("colour=")+7, parsed_string.indexOf(">",parsed_string.indexOf(">") + 1) ));							
							if(parsed_string.indexOf(":") >= 0){
								g.beginFill(0x0000FF);
								g.drawRect( 0, 0, 16, 16);
								g.endFill( );
								parsed_string = parsed_string.slice(parsed_string.indexOf(":")+1, parsed_string.indexOf("\"",parsed_string.indexOf("\"") + 1) )
								//hackackackack!
								sprite.name = parsed_string;
								sprite.addEventListener(MouseEvent.CLICK, mapmove);				
								ui_list[ui_list.length] = sprite;
							}else{
								g.beginFill( 0);
								g.drawRect( 0, 0, 16, 16);
								g.endFill( );
							}
							parsed_string = "";
						}else{
							g.beginFill( 0);
							g.drawRect( 0, 0, 16, 16);
							g.endFill( );
						}						
						g.beginFill( room_colour);						
						g.drawRect( 0 + 2, 0 + 2, 12, 12);
						
						if(y_list[i].charAt(j) == "@"){
							g.lineStyle(2,0x000000);
							g.moveTo(0, 0)
							g.lineTo(16, 16)
							g.moveTo(16, 0)
							g.lineTo(0, 16)
							
						}						
						g.endFill( );						
						sprite.x = j*16;
						sprite.y = i*16;
						
						super_sprite.addChild (sprite);
					}else if(y_list[i].charAt(j) == "P"){
						sprite = new Sprite( );
						g = sprite.graphics;
						char_x = (j*16) + 8;
						char_y = (i*16) + 8;
						g.beginFill(0);
						g.drawRect( 0, 0, 16, 16);
						g.endFill();						
						if(parsed_string != ""){
							room_colour = uint(parsed_string.slice(parsed_string.indexOf("colour=")+7, parsed_string.indexOf(">",parsed_string.indexOf(">") + 1) ));
							parsed_string = "";
						}
						
						g.beginFill(room_colour);
						g.drawRect( 0 + 2, 0 + 2, 12, 12);
						g.endFill( );						
						g.beginFill(0x0000FF);
						g.drawCircle(8,8,6);
						g.endFill();
						
						sprite.x = j*16;
						sprite.y = i*16;
						sprite.name = "Player";
						
						super_sprite.addChild (sprite);						
					}else if(y_list[i].charAt(j) == "\\"){
						sprite = new Sprite( );
						g = sprite.graphics;
						g.lineStyle(3, 0, 1);
						g.beginFill( 0, 1 );
						g.moveTo( 0, 0);
						g.lineTo( 0+16, 0+16);
						g.endFill( );
						sprite.x = j*16;
						sprite.y = i*16;
						super_sprite.addChild (sprite);
						if(parsed_string != "") parsed_string = "";
					}else if(y_list[i].charAt(j) == "/"){
						sprite = new Sprite( );
						g = sprite.graphics;
						g.lineStyle(3, 0, 1);
						g.beginFill( 0, 1 );
						g.moveTo( 0, 0+16);
						g.lineTo( 0+16, 0);
						g.endFill( );
						sprite.x = j*16;
						sprite.y = i*16;
						super_sprite.addChild (sprite);
						if(parsed_string != "") parsed_string = "";
					}else if(y_list[i].charAt(j) == "|"){
						sprite = new Sprite( );
						g = sprite.graphics;
						g.beginFill( 0, 1 );
						g.drawRect( 0+7, 0, 3, 16);
						g.endFill( );
						sprite.x = j*16;
						sprite.y = i*16;
						super_sprite.addChild (sprite);
						if(parsed_string != "") parsed_string = "";
					}else if(y_list[i].charAt(j) == "-"){
						sprite = new Sprite( );
						g = sprite.graphics;
						g.beginFill( 0, 1 );
						g.drawRect( 0, 0+7, 16, 3);
						g.endFill( );
						sprite.x = j*16;
						sprite.y = i*16;
						super_sprite.addChild (sprite);
						if(parsed_string != "") parsed_string = "";
					}else if(y_list[i].charAt(j) == "<"){
						//it's parsing time baby!
						parsed_string = y_list[i].charAt(j);
						var end_tag:int = 0;
						while(y_list[i].charAt(j+end_tag) != ">"){
							end_tag++;
							parsed_string += y_list[i].charAt(j+end_tag);
						}
						y_list[i] = y_list[i].slice(0, j).concat(y_list[i].slice(j+end_tag+1, y_list[i].length));
						j--;
					}else if(y_list[i].charAt(j) != " " && y_list[i].charAt(j) != "\n"){
						sprite = new Sprite( );
						g = sprite.graphics;
						var text1_txt:TextField = new TextField();
						text1_txt.background = false;
						text1_txt.x = (j*16) + 3;
						text1_txt.y = (i*16) - 2;
						text1_txt.width = 16;
						text1_txt.height = 16;
						text1_txt.htmlText = y_list[i].charAt(j);
						text1_txt.selectable = false;
						if(parsed_string != "" && parsed_string.indexOf("colour=") >= 0){
							room_colour = uint(parsed_string.slice(parsed_string.indexOf("colour=")+7, parsed_string.indexOf(">",parsed_string.indexOf(">") + 1) ));							
							if(parsed_string.indexOf(":") >= 0){
								g.beginFill(0x0000FF);
								g.drawRect( 0, 0, 16, 16);
								g.endFill( );
								g.beginFill(room_colour);
								g.drawRect( 0 + 2, 0 + 2, 12, 12);
								g.endFill( );								
								parsed_string = parsed_string.slice(parsed_string.indexOf(":")+1, parsed_string.indexOf("\"",parsed_string.indexOf("\"") + 1) )
								//hackackackack!
								text1_txt.name = parsed_string;
								text1_txt.addEventListener(MouseEvent.CLICK, mapmove);
								ui_list[ui_list.length] = text1_txt;
							}else{
								g.beginFill(0x000000);
								g.drawRect( 0, 0, 16, 16);
								g.endFill( );
								g.beginFill(room_colour);
								g.drawRect( 0 + 2, 0 + 2, 12, 12);
								g.endFill( );
							}
							parsed_string = "";
						}else{
							g.beginFill( 0, 1 );
							g.drawCircle( 0 + 8, 0 + 8, 8);
							g.drawCircle( 0 + 8, 0 + 8, 6);
							g.endFill( );
						}
						
						sprite.x = j*16;
						sprite.y = i*16;
						super_sprite.addChild (sprite);						
						super_sprite.addChild (text1_txt);
					}
				}			
			}
			
			if(char_x == -1 && char_y == -1){
				var visible_x_array:Array = new Array();
				var visible_y_array:Array = new Array();
				i = 0;
				for(i;i<super_sprite.numChildren;i++){
					if(super_sprite.getChildAt(i).visible){
						visible_x_array[visible_x_array.length] = super_sprite.getChildAt(i).x;
						visible_x_array[visible_x_array.length] = super_sprite.getChildAt(i).x + super_sprite.getChildAt(i).width;
						visible_y_array[visible_y_array.length] = super_sprite.getChildAt(i).y;
						visible_y_array[visible_y_array.length] = super_sprite.getChildAt(i).y + super_sprite.getChildAt(i).height;
					}
				}
				var avg_visible_x:int = 0;
				var avg_visible_y:int = 0;
				
				i = 0;
				for(i;i<visible_x_array.length;i++){
					avg_visible_x += visible_x_array[i];
				}
				avg_visible_x = avg_visible_x/visible_x_array.length;
				
				i = 0;
				for(i;i<visible_y_array.length;i++){
					avg_visible_y += visible_y_array[i];
				}
				avg_visible_y = avg_visible_y/visible_y_array.length;
				
				char_x = avg_visible_x;
				char_y = avg_visible_y;
			}
			
			//center that map!
			if(center){
				var move_x:Number = 300 - char_x;
				var move_y:Number = 246.5 - char_y;
				i = 0;
				for(i;i<super_sprite.numChildren;i++){
					if(super_sprite.getChildAt(i) is Sprite){	
						var temp_s:Sprite = super_sprite.getChildAt(i) as Sprite;
						temp_s.x = temp_s.x + move_x;
						//if(temp_s.width == 640) temp_s.x = 0;
						temp_s.y = temp_s.y + move_y;
						//if(temp_s.height == 513 - 150) temp_s.y = 0;
					}else if(super_sprite.getChildAt(i) is TextField){
						var temp_t:TextField = super_sprite.getChildAt(i) as TextField;
						temp_t.x = temp_t.x + move_x;
						temp_t.y = temp_t.y + move_y;
					}
				}
			}
			
			super_sprite.cacheAsBitmap = true;
			
			super_sprite.addEventListener(Event.REMOVED_FROM_STAGE, cleanup_handlers);
									  
			function cleanup_handlers(event:Event):void{
				var i:int = 0;
				for(i;i<ui_list.length;i++){
					ui_list[i].removeEventListener(MouseEvent.CLICK, mapmove);
				}
				super_sprite.removeEventListener(Event.REMOVED_FROM_STAGE, cleanup_handlers);
			}
			
			return super_sprite;
		}
		
		public static function make_map(map_string:String, m:Main):MovieClip{
			
			var container_mc:MovieClip = new MovieClip();
			container_mc.x = 123.5;
			container_mc.y = 47.45;
		
			var temp_map:String = map_string;
			var legend:String = "";
			if(map_string.indexOf("\n\n\n") > 0){
				 temp_map = map_string.substr(0, map_string.indexOf("\n\n\n"));
				 legend = map_string.slice(map_string.indexOf("\n\n\n")+4, map_string.length);
			}
			
			container_mc.addChild(make_map_sprite(temp_map, m));
			
			//put a background in place... not that the height/width are correct
			
			var sprite:Sprite = new Sprite( );
			var g:Graphics = sprite.graphics;
			g.beginFill(0xFFFFFF);
			g.drawRect(0, 0, 640, 480);
			g.endFill();
			sprite.alpha = 0.5;
			
			container_mc.addChildAt(sprite, 0);
			
			
			if(legend != ""){
				var text1_txt:TextArea = new TextArea();
				text1_txt.x = 0;
				text1_txt.y = 370;
				text1_txt.width = 640;
				text1_txt.height = 110;
				text1_txt.editable = false;
				text1_txt.htmlText = legend;
				text1_txt.alpha = 0.75;
				text1_txt.setStyle("upSkin",FPalace_helper.get_image_by_id(FPalace_helper.TextArea_upSkin_img));
				text1_txt.setStyle("disabledSkin",FPalace_helper.get_image_by_id(FPalace_helper.TextArea_disabledSkin_img));			
				text1_txt.setStyle("textFormat",m.textfield_text_format);
				text1_txt.setStyle("disabledTextFormat",m.textfield_text_format);
				text1_txt.setStyle("downArrowDisabledSkin",FPalace_helper.get_image_by_id(FPalace_helper.ScrollArrowDown_disabledSkin_img));
				text1_txt.setStyle("downArrowDownSkin",FPalace_helper.get_image_by_id(FPalace_helper.ScrollArrowDown_downSkin_img));
				text1_txt.setStyle("downArrowOverSkin",FPalace_helper.get_image_by_id(FPalace_helper.ScrollArrowDown_overSkin_img));
				text1_txt.setStyle("downArrowUpSkin",FPalace_helper.get_image_by_id(FPalace_helper.ScrollArrowDown_upSkin_img));			
				text1_txt.setStyle("thumbDownSkin",FPalace_helper.get_image_by_id(FPalace_helper.ScrollThumb_downSkin_img));
				text1_txt.setStyle("thumbIcon",FPalace_helper.get_image_by_id(FPalace_helper.ScrollBar_thumbIcon_img));
				text1_txt.setStyle("thumbOverSkin",FPalace_helper.get_image_by_id(FPalace_helper.ScrollThumb_overSkin_img));
				text1_txt.setStyle("thumbUpSkin",FPalace_helper.get_image_by_id(FPalace_helper.ScrollThumb_upSkin_img));
				text1_txt.setStyle("trackDisabledSkin",FPalace_helper.get_image_by_id(FPalace_helper.ScrollTrack_skin_img));
				text1_txt.setStyle("trackDownSkin",FPalace_helper.get_image_by_id(FPalace_helper.ScrollTrack_skin_img));
				text1_txt.setStyle("trackOverSkin",FPalace_helper.get_image_by_id(FPalace_helper.ScrollTrack_skin_img));
				text1_txt.setStyle("trackUpSkin",FPalace_helper.get_image_by_id(FPalace_helper.ScrollTrack_skin_img));
				text1_txt.setStyle("upArrowDisabledSkin",FPalace_helper.get_image_by_id(FPalace_helper.ScrollArrowUp_disabledSkin_img));
				text1_txt.setStyle("upArrowDownSkin",FPalace_helper.get_image_by_id(FPalace_helper.ScrollArrowUp_downSkin_img));
				text1_txt.setStyle("upArrowOverSkin",FPalace_helper.get_image_by_id(FPalace_helper.ScrollArrowUp_overSkin_img));
				text1_txt.setStyle("upArrowUpSkin",FPalace_helper.get_image_by_id(FPalace_helper.ScrollArrowUp_upSkin_img));
				
				text1_txt.addEventListener(TextEvent.LINK, linkHandler);
				
				function linkHandler(e:TextEvent):void{
					m.linkHandler(e);
				}				
				
				container_mc.addChild (text1_txt);
			}
			
			var scroll_rect:Rectangle = new Rectangle(0,0,640,513);
			container_mc.scrollRect = scroll_rect;
			
			//let the user drag the map around... kinda
			container_mc.addEventListener(MouseEvent.MOUSE_DOWN,DragStart);
			function DragStart(event:Event):void{
				var i:int = 1;//skip the background
				//for(i;i<container_mc.numChildren;i++){
					var temp_s:Object = container_mc.getChildAt(i);					
					if(temp_s is Sprite){
						temp_s.startDrag(false);
					}
				//}
			}
			
			container_mc.addEventListener(MouseEvent.MOUSE_UP,DragStop);
			function DragStop(event:MouseEvent):void{
				var i:int = 1;//skip the background
				//for(i;i<container_mc.numChildren;i++){
					var temp_s:Object = container_mc.getChildAt(i);					
					if(temp_s is Sprite){
						temp_s.stopDrag();
					}
				//}
			}
			
			container_mc.addEventListener(MouseEvent.MOUSE_WHEEL,Zoom_funct);
			function Zoom_funct(event:MouseEvent):void{
				var i:int = 1;//skip the background
				//for(i;i<container_mc.numChildren;i++){
					var temp_s:Object = container_mc.getChildAt(i);
					if(temp_s is Sprite){
						if(event.delta < 0){
							temp_s.scaleX  = temp_s.scaleX/1.3;
							temp_s.scaleY  = temp_s.scaleY/1.3;
						}else{
							temp_s.scaleX  = temp_s.scaleX*1.3;
							temp_s.scaleY  = temp_s.scaleY*1.3;
						}
					}
				//}
			}
			
			container_mc.addEventListener(Event.REMOVED_FROM_STAGE, cleanup_handlers);
			function cleanup_handlers(event:Event):void{
				if(text1_txt != null)text1_txt.removeEventListener(TextEvent.LINK, linkHandler);
				container_mc.removeEventListener(MouseEvent.MOUSE_DOWN,DragStart);
				container_mc.removeEventListener(MouseEvent.MOUSE_UP,DragStop);
				container_mc.removeEventListener(MouseEvent.MOUSE_WHEEL,Zoom_funct);				
				container_mc.removeEventListener(Event.REMOVED_FROM_STAGE, cleanup_handlers);
			}
			
			return container_mc;
		}
		
		public static function combat_gui(c:Character, char_id:int, action_num:int, enemy_id:int, m:Main, chall_id:String = null, dynamic_id:Array = null):MovieClip{
			var container_mc:MovieClip = new MovieClip();
			container_mc.name = "Combat_gui";
			container_mc.x = 0;
			container_mc.y = 0;
			
			var sprite:Sprite = new Sprite( );
			var g:Graphics = sprite.graphics;
			if(c.location != null && c.location.get_combat_img() >= 0){
				var temp_bmp:Bitmap = FPalace_helper.get_image_by_id(c.location.get_combat_img());
				var matrix:Matrix = new Matrix(); 
				matrix.scale(800/temp_bmp.width, 600/temp_bmp.height);
				g.beginBitmapFill(temp_bmp.bitmapData,matrix);
			}else{
				g.beginFill(combat_bg_colour);
			}
			
			g.drawRect(0, 0, 800, 600);
			g.endFill( );
			sprite.x = 0;
			sprite.y = 0;
			container_mc.addChild (sprite);
			
			sprite = combat_box(800,600);
			container_mc.addChild(sprite);
			
			var cursor:Sprite = new Sprite();
			g = cursor.graphics;
			g.beginFill(combat_txt_colour);
			//g.drawCircle(0,0,13);
			g.drawPath(
				Vector.<int>([GraphicsPathCommand.MOVE_TO,GraphicsPathCommand.LINE_TO,GraphicsPathCommand.LINE_TO,GraphicsPathCommand.LINE_TO]),
					Vector.<Number>([-13,-13, 13,0, -13,13, -13,-13]));
			g.endFill();
			cursor.x = 0;
			cursor.y = 0;
			
			cursor.visible = false;
			cursor.hitArea = null;
			cursor.mouseEnabled = false;
			
			var cursor_options:Array = new Array();
			
			cursor.addEventListener(KeyboardEvent.KEY_UP, keyboard_options);
			
			function keyboard_options(event:KeyboardEvent):void{
				var me:MouseEvent
				if(event.keyCode == m.combat_confirm_keycode){
					if(cursor.hitArea != null){
						me = new MouseEvent(MouseEvent.CLICK);
						cursor.hitArea.dispatchEvent(me);
						/*if(!cursor.hitArea.hasEventListener(MouseEvent.CLICK)){
							cursor.removeEventListener(KeyboardEvent.KEY_UP, keyboard_options);
						}*/
					}else{
						trace("(Main_gui.keyboard_options)Hmmmm, don't have an event to fire");
					}
				}else{
					var curr_option:int = -1;
					if(cursor.hitArea != null){
						var i:int = 0;
						for(i;i<cursor_options.length;i++){
							if(cursor.hitArea == cursor_options[i]){
								curr_option = i;
								break;
							}
						}
					}
					//up: 38, 104
					var kb:KeyboardEvent;
					if((event.keyCode == m.combat_up_keycode || event.keyCode == m.n_keycode || event.keyCode == m.combat_left_keycode ||event.keyCode == m.w_keycode) && curr_option > 0){
						me = new MouseEvent(MouseEvent.MOUSE_OUT);
						cursor.hitArea.dispatchEvent(me);
						curr_option--;
						if(cursor_options[curr_option].visible == false){
							kb = new KeyboardEvent(KeyboardEvent.KEY_UP);
							cursor.hitArea.dispatchEvent(kb);
						}
						cursor.x = figure_x(cursor_options[curr_option]) - 13;
						cursor.y = figure_y(cursor_options[curr_option]) + 13;
						cursor.hitArea = cursor_options[curr_option];
						me = new MouseEvent(MouseEvent.MOUSE_OVER);
						cursor.hitArea.dispatchEvent(me);
					//down: 40, 98
					}else if((event.keyCode == m.combat_down_keycode || event.keyCode == m.s_keycode || event.keyCode == m.combat_right_keycode ||event.keyCode == m.e_keycode) && curr_option < (cursor_options.length - 1)){
						me = new MouseEvent(MouseEvent.MOUSE_OUT);
						cursor.hitArea.dispatchEvent(me);
						curr_option++;
						if(cursor_options[curr_option].visible == false){
							kb = new KeyboardEvent(KeyboardEvent.KEY_DOWN);
							cursor.hitArea.dispatchEvent(kb);
						}
						cursor.x = figure_x(cursor_options[curr_option]) - 13;
						cursor.y = figure_y(cursor_options[curr_option]) + 13;
						cursor.hitArea = cursor_options[curr_option];
						me = new MouseEvent(MouseEvent.MOUSE_OVER);
						cursor.hitArea.dispatchEvent(me);
					}
				}
			}
			
			function select_target(event:Event):void{
				//need to call combat_gui with enemies id and previously chosen attack...
				if(m.player.location.cm != null){
					if(m.player.location.cm.selecting){
						m.player.location.cm.selecting = false;
						/*
						var i:int = 0;
						var temp:Sprite;
						for(i;i<cursor_options.length;i++){
							temp = cursor_options[i];							
							temp.removeEventListener(MouseEvent.CLICK, select_target);
							temp.removeEventListener(MouseEvent.MOUSE_OVER, show_target);
						}
						*/
						var temp_o:Object = event.target;
						while(temp_o.name.indexOf("combat") < 0 && temp_o != null)temp_o = temp_o.parent;
						var e:TextEvent = new TextEvent(TextEvent.LINK, false, false, temp_o.name);	
						container_mc.dispatchEvent(e);
					}
				}				
			}
			
			function show_target(event:Event):void{
				var i:int = 0;
				if(cursor_options.length > 0){
					for(i;i<cursor_options.length;i++){
						if(cursor_options[i] == event.target){
							cursor.hitArea = event.target as Sprite;
							cursor.x = figure_x(cursor.hitArea) - 13;
							cursor.y = figure_y(cursor.hitArea) + 13;
							cursor.visible = true;
							break;
						}
					}
				}
			}
			
			if(c.location == null){
				trace("(MAIN_GUI)character is dead, yet still attempting to act.");
			}
			
			if(c.location.get_content(char_id) != c && c.location.get_content(char_id) != null) c = c.location.get_content(char_id) as Character;
			
			var active_cm:Combat_manager;
			if(c.location.cm == null){
				c.location.cm = new Combat_manager();
			}
			active_cm = c.location.cm;
			if(current_cm != active_cm){
				current_cm = active_cm;				
			}
			
			var enemy:Character;		
			if(enemy_id >= 0){
				enemy = c.location.get_content(enemy_id) as Character;
				if(enemy == null){
					enemy_id = -1;
				}else{
					active_cm.add_participant(enemy);
					active_cm.add_participant(c);
				}
			}		
			
			var enemy_list:Array = active_cm.get_enemies(c);
			if(enemy_list.length <= 0){
				enemy_list[enemy_list.length] = c.location.get_content(enemy_id);
			}
			container_mc.addChild(draw_participants(enemy_list, c, action_num, m, cursor, cursor_options, select_target, show_target));
			
			var sideline:Array = active_cm.get_sideline(c);
			if(sideline.indexOf(c.location.get_content(enemy_id)) >= 0){
				sideline = sideline.slice(0,sideline.indexOf(c.location.get_content(enemy_id))).concat(sideline.slice(sideline.indexOf(c.location.get_content(enemy_id))+1,sideline.length));
			}
			container_mc.addChild(draw_sideline(sideline, c, action_num, m, cursor, cursor_options, select_target, show_target));
			
			if(enemy_list[0] == null && sideline[0] == null){				
				trace("(MAIN_GUI)No one identified from combat manager");
				trace("(MAIN_GUI)Participants:" + active_cm.participants);				
			}
			
			var i:int = 0;
			var temp_output:String = "";
			if(m.player.get_party() == null){
				container_mc.addChild(char_status_box(m.player, m.player, action_num, m, cursor, cursor_options, select_target, show_target));
				if(action_num == -1 && (!m.player.get_combat_status() || active_cm.get_init(m.player) < 0) && enemy_id != m.player.location.get_content_id(m.player)){//need to make sure the player isn't a "next action" target
					//need to kick out of combat....
					temp_output = m.player.sanitize(m.player.get_combat_failures());
					if(temp_output == "") temp_output = "A lull in the fray makes you realize you have no reason to continue fighting. \n";
					temp_output += m.player.look();
					m.output = temp_output;
					return null;
				}
			}else{
				var com_stat:Boolean = false;
				var p:Array = m.player.get_party().get_members();
				for(i;i<p.length;i++){
					var temp_s:Sprite;
					if(p[i].location == m.player.location){
						if((p[i].get_combat_status() && active_cm.get_init(p[i]) >= 0) || enemy_id == m.player.location.get_content_id(p[i])){//need to make sure the character isn't a "next action" target
							com_stat = true;
						}
						
						temp_s = char_status_box(p[i], c, action_num, m, cursor, cursor_options, select_target, show_target);
						temp_s.x = 12.5 + 145 * i;						
						container_mc.addChild(temp_s);
					}
				}
				
				if(!com_stat){
					//need to kick out of combat
					temp_output = m.player.sanitize(m.player.get_combat_failures());
					if(temp_output == "") temp_output = "A lull in the fray makes you realize you have no reason to continue fighting. \n";
					temp_output += m.player.look();
					m.output = temp_output;
					return null;
				}
			}
			
			var targeting_options:Array = new Array()
			targeting_options = targeting_options.concat(cursor_options);
			selected_attack_id = -1;
			selected_target_id = -1;
			
			container_mc.addEventListener(TextEvent.LINK, linkHandler);
			function linkHandler(event:TextEvent):void {
				var tempArray:Array = new Array();
				tempArray = event.text.split(",");
				if(tempArray[0] == "combat"){
					event.target.removeChildAt(container_mc.getChildIndex(cursor)-1);//remove option boxes
					if(int(tempArray[2]) == -1 && int(tempArray[3]) == -1){
						selected_attack_id = -1;
						selected_target_id = -1;
					}
					
					if(selected_attack_id != -1)tempArray[2] = String(selected_attack_id);
					if(selected_target_id != -1)tempArray[3] = String(selected_target_id);
					
					var temp_char:Character = c.location.get_content(int(tempArray[1])) as Character;
					var attack:Action;
					if(int(tempArray[2]) == -1 && int(tempArray[3]) == -1){
						cursor_options.length = 0;
						event.target.addChild(combat_option_box(temp_char, null, m, cursor, cursor_options, container_mc)); 
						cursor_options = cursor_options.concat(targeting_options);
					}else if(int(tempArray[2]) == -1){
						selected_target_id = int(tempArray[3]);
						cursor_options.length = 0;
						event.target.addChild(combat_option_box(temp_char, c.location.get_content(int(tempArray[3])) as Character, m, cursor, cursor_options, container_mc));
					}else if(int(tempArray[3]) == -1){
						selected_attack_id = int(tempArray[2]);
						attack = temp_char.get_attack_action(int(tempArray[2]));						
						if(attack.attack_flag == Action.attack_type_all_enemy_target_single_conseq ||
						   attack.attack_flag == Action.attack_type_all_enemy_target_all_enemy_conseq ||
						   attack.attack_flag == Action.attack_type_all_target_all_conseq ||
						   attack.attack_flag == Action.attack_type_all_target_no_user_conseq){
							cursor_options.length = 0;
							event.target.addChild(action_results(temp_char, tempArray[1], tempArray[2], c.location.get_content_id(active_cm.get_enemies(c)[0]), m, container_mc, null, null, cursor,cursor_options));
						}else if(attack.attack_flag == Action.attack_type_self_target){
							cursor_options.length = 0;
							event.target.addChild(action_results(temp_char, tempArray[1], tempArray[2], tempArray[1], m, container_mc, null, null, cursor,cursor_options));
						}else{
							cursor_options.length = 0;
							cursor_options = cursor_options.concat(targeting_options);
							event.target.addChild(cancel_action_option(temp_char,m,container_mc,cursor_options,select_target,show_target));
							c.location.cm.selecting = true;
						}
					}else{
						attack = temp_char.get_attack_action(int(tempArray[2]));
						if(attack != null){
							if(attack.attack_flag == Action.attack_type_all_enemy_target_single_conseq ||
							   attack.attack_flag == Action.attack_type_all_enemy_target_all_enemy_conseq ||
							   attack.attack_flag == Action.attack_type_all_target_all_conseq ||
							   attack.attack_flag == Action.attack_type_all_target_no_user_conseq){
								//nothing here... yet
							}else if(attack.attack_flag == Action.attack_type_self_target){
								tempArray[3] = tempArray[1];
							}
							cursor_options.length = 0;
							event.target.addChild(action_results(temp_char, int(tempArray[1]), int(tempArray[2]), int(tempArray[3]), m, container_mc, tempArray[4], tempArray.slice(5, tempArray.length), cursor, cursor_options));								
						}
					}
					if(cursor_options[0] != null){
						cursor.x = figure_x(cursor_options[0]) - 13;
						cursor.y = figure_y(cursor_options[0]) + 13;
						cursor.hitArea = cursor_options[0];
						cursor.visible = true;
						display_cursor_option = new MouseEvent(MouseEvent.MOUSE_OVER);
						cursor.hitArea.dispatchEvent(display_cursor_option);
						m.stage.focus = cursor;
						event.target.setChildIndex(cursor, container_mc.numChildren-1);
					}else{
						cursor.visible = false;
					}
					
					m.stage.stageFocusRect = false;
					
				}else{
					m.cleanup_gui();
					m.reenable_gui();
					m.linkHandler(event);					
				}
			}
			
			if(action_num <= -1){
				cursor_options.length = 0;
				if(enemy != null){
					container_mc.addChild(combat_option_box(c, enemy, m, cursor, cursor_options, container_mc));
				}else{
					container_mc.addChild(combat_option_box(c, null, m, cursor, cursor_options, container_mc));
				}
			}else if(enemy_id == -1){
				//action may not require a target... 
				var attack:Action = c.get_attack_action(action_num);
				if(attack == null){
					//what? well shit...
					trace("(Main_gui.combat_gui)I MAY have just given the player the ability to control an enemies action....");
					if(enemy != null){
						container_mc.addChild(combat_option_box(c, enemy, m, cursor, cursor_options, container_mc));
					}else{
						container_mc.addChild(combat_option_box(c, null, m, cursor, cursor_options, container_mc));
					}					
				}else if(attack.attack_flag == Action.attack_type_all_enemy_target_single_conseq ||
				   attack.attack_flag == Action.attack_type_all_enemy_target_all_enemy_conseq ||
				   attack.attack_flag == Action.attack_type_all_target_all_conseq ||
				   attack.attack_flag == Action.attack_type_all_target_no_user_conseq){
					cursor_options.length = 0;
					container_mc.addChild(action_results(c, char_id, action_num, c.location.get_content_id(active_cm.get_enemies(c)[0]), m, container_mc, null, null, cursor,cursor_options));
				}else if(attack.attack_flag == Action.attack_type_self_target){
					cursor_options.length = 0;
					container_mc.addChild(action_results(c, char_id, action_num, char_id, m, container_mc, null, null, cursor,cursor_options));
				}else{
					//output box: Select target
					container_mc.addChild(cancel_action_option(c,m,container_mc,cursor_options,select_target,show_target));
					c.location.cm.selecting = true;				
				}
			}else{
				cursor_options.length = 0;
				attack = c.get_attack_action(action_num);
				if(attack.attack_flag == Action.attack_type_all_enemy_target_single_conseq ||
				   attack.attack_flag == Action.attack_type_all_enemy_target_all_enemy_conseq ||
				   attack.attack_flag == Action.attack_type_all_target_all_conseq ||
				   attack.attack_flag == Action.attack_type_all_target_no_user_conseq){
					//nothing here... yet
				}else if(attack.attack_flag == Action.attack_type_self_target){
					enemy_id = char_id;
				}
				container_mc.addChild(action_results(c, char_id, action_num, enemy_id, m, container_mc, chall_id, dynamic_id, cursor, cursor_options));
			}
			
			if(cursor_options[0] != null){
				cursor.x = figure_x(cursor_options[0]) - 13;
				cursor.y = figure_y(cursor_options[0]) + 13;
				cursor.hitArea = cursor_options[0];
				cursor.visible = true;
				var display_cursor_option:MouseEvent = new MouseEvent(MouseEvent.MOUSE_OVER);
				cursor.hitArea.dispatchEvent(display_cursor_option);
			}
			
			container_mc.addChild(cursor);
			m.stage.stageFocusRect = false;
			m.stage.focus = cursor;
			
			return container_mc;
		}
		
		private static function figure_x(s:DisplayObjectContainer):Number{
			var ret:Number = s.x;
			var temp_s:DisplayObjectContainer = s.parent;
			
			while(temp_s != null){
				ret += temp_s.x;
				temp_s = temp_s.parent;
			}
			
			return ret;
		}
		
		private static function figure_y(s:DisplayObjectContainer):Number{
			var ret:Number = s.y;
			var temp_s:DisplayObjectContainer = s.parent;
			
			while(temp_s != null){
				ret += temp_s.y;
				temp_s = temp_s.parent;
			}
			
			return ret;
		}
		
		public static function draw_participants(enemy_list:Array, c:Character, action_num:int, m:Main, cursor:Sprite, cursor_options:Array, select_function:Function, show_function:Function):Sprite{
			var i:int = 0;
			var sprite:Sprite = new Sprite();
			var x_inc:Number = 800/(enemy_list.length+1);
			
			if(x_inc <= 100){//width of character...
				//need to make second row
				
				
				
				
				
				
				
			}
			
			for(i;i<enemy_list.length;i++){
				// need to space them out correctly
				//400,300 is center of screen (ideal placement for a lone enemy)
				if(enemy_list[i] != null){
					var char_content_id:int = enemy_list[i].location.get_content_id(enemy_list[i]);
					var char_sprite:Sprite = enemy_list[i].draw_self((i+1)*x_inc,300, m.player);
						
					char_sprite.addEventListener(MouseEvent.CLICK, select_function);
					
					if(c.location != null){
						char_sprite.name = "combat,"+c.location.get_content_id(c)+","+action_num+"," + c.location.get_content_id(enemy_list[i]);
						if(cursor_options != null){
							char_sprite.addEventListener(MouseEvent.MOUSE_OVER, show_function);
							cursor_options[cursor_options.length] = char_sprite;
						}
					}		
					
					sprite.addChild(char_sprite);
				}
			}
			
			return sprite;
		}
		
		public static function draw_sideline(sideline_list:Array, c:Character, action_num:int, m:Main, cursor:Sprite, cursor_options:Array, select_function:Function, show_function:Function):Sprite{
			var i:int = 0;
			var sprite:Sprite = new Sprite();
			var y_inc:Number = 425/(50*(sideline_list.length+1));//sideline image height is 50...
			y_inc = Math.max(y_inc, 50);
			
			for(i;i<sideline_list.length;i++){
				// need to space them out correctly
				var char_sprite:Sprite = sideline_list[i].draw_sideline(750,25 + i*50 + i,m.player);;
				var char_content_id:int = sideline_list[i].location.get_content_id(sideline_list[i]);
				
				char_sprite.addEventListener(MouseEvent.CLICK, select_function);
				
				if(c.location != null){
					char_sprite.name = "combat,"+c.location.get_content_id(c)+","+action_num+"," + c.location.get_content_id(sideline_list[i]);
					if(cursor_options != null){
						char_sprite.addEventListener(MouseEvent.MOUSE_OVER, show_function);
						cursor_options[cursor_options.length] = char_sprite;
					}
				}
				
				sprite.addChild(char_sprite);
			}
			
			return sprite;
		}
		
		public static function combat_box(h:Number, w:Number, box_colour:uint = 0xC2C2C2):Sprite{
			var sprite:Sprite = new Sprite( );
			var g:Graphics = sprite.graphics;
			//g.beginFill( combat_bg_colour);
			//g.drawRect( 0, 0, h, w);
			//g.endFill( );
			g.beginFill( box_colour);
			g.drawRect( 0 + 5, 0 + 5, h-10, w-10);
			g.endFill( );
			g.beginFill(combat_bg_colour);
			g.drawRect( 0 + 10, 0 + 10, h-20, w-20);
			g.endFill( );
			sprite.alpha = 0.5;
			return sprite;
		}
		
		public static function cancel_action_option(c:Character, m:Main, container_mc:MovieClip, cursor_options:Array, select_target:Function, show_target:Function):Sprite{
			var sprite:Sprite = combat_box(800, 175);
			sprite.x = 0;
			sprite.y = 425;
			
			var tf:TextField = new TextField();
			tf.height = 600;
			tf.width = 775;
			tf.wordWrap = true;
			
			tf.defaultTextFormat = m.combat_text_format;
			tf.htmlText = "Select target";
			
			var myTextImage:BitmapData = new BitmapData(775, ((int(tf.defaultTextFormat.size)*1.1))*tf.numLines, true, combat_bg_colour);
			myTextImage.draw(tf);
			
			var bm:Bitmap = new Bitmap(myTextImage);			
			bm.x = 12.5;
			bm.y = 12.5;
			
			sprite.addChild(bm);
			
			var cancel_sprite:Sprite = combat_box(112.5, 47.5);
			
			tf = new TextField();
			tf.height = 50;
			tf.width = 200;
			tf.wordWrap = true;			
			tf.defaultTextFormat = m.combat_text_format;
			tf.htmlText = "Cancel";
			
			myTextImage = new BitmapData(775, ((int(tf.defaultTextFormat.size)*1.1))*tf.numLines, true, combat_bg_colour);
			myTextImage.draw(tf);
			
			bm = new Bitmap(myTextImage);
			bm.x = 12.5;
			bm.y = 12.5;
			
			cancel_sprite.addChild(bm);
			
			cancel_sprite.x = 687.5;
			cancel_sprite.y = 127.5;			
			cancel_sprite.name = "combat,"+c.location.get_content_id(c)+",-1,-1,-1";
			
			sprite.addChild(cancel_sprite);
			
			cancel_sprite.addEventListener(MouseEvent.CLICK, cancel_targeting);
			cancel_sprite.addEventListener(MouseEvent.MOUSE_OVER, show_target);
			cursor_options[cursor_options.length] = cancel_sprite;
			
			function cancel_targeting(event:Event):void{
				/*
				var i:int = 0;
				var temp:Sprite;
				for(i;i<cursor_options.length;i++){
					temp = cursor_options[i];
					temp.removeEventListener(MouseEvent.CLICK, select_target);
					temp.removeEventListener(MouseEvent.MOUSE_OVER, show_target);
					temp.removeEventListener(MouseEvent.CLICK, cancel_targeting);
				}
				*/
				var e:TextEvent;
				e = new TextEvent(TextEvent.LINK, false, false, event.target.name);								
				container_mc.dispatchEvent(e);
			}
			
			return sprite;
		}
		
		public static function char_status_box(c:Character, active_char:Character, action_num:int, m:Main, cursor:Sprite, cursor_options:Array, select_function:Function, show_function:Function):Sprite{
			var char_content_id:int = c.location.get_content_id(c);
			var sprite:Sprite = null;
			
			if(active_char != c){
				sprite = combat_box(150,175);
			}else{
				sprite = combat_box(150,175,0x0000FF);
			}					
			var g:Graphics = sprite.graphics
			sprite.x = 12.5;
			sprite.y = 12.5;
			
			//Character Name
			var myTextImage:BitmapData = new BitmapData(145, 25, true, combat_bg_colour);
			var tf:TextField = new TextField();
			tf.defaultTextFormat = m.combat_text_format;
			tf.htmlText = c.get_name();

			myTextImage.draw(tf);
			
			var bm:Bitmap = new Bitmap(myTextImage);
			
			bm.x = 12.5;
			bm.y = 12.5;
			
			sprite.addChild(bm);
			
			//Class
			if(c.get_current_class() != null){
				myTextImage = new BitmapData(145, 25, true, combat_bg_colour);
				tf = new TextField();
				tf.defaultTextFormat = m.combat_text_format;
				tf.htmlText = c.get_current_class().get_name();
	
				myTextImage.draw(tf);
				
				bm = new Bitmap(myTextImage);
				
				bm.x = 12.5;
				bm.y = 30;
				
				sprite.addChild(bm);
			}
			
			//Level
			myTextImage = new BitmapData(145, 25, true, combat_bg_colour);
			tf = new TextField();
			tf.defaultTextFormat = m.combat_text_format;
			tf.htmlText = "Level: " + c.get_lvl();

			myTextImage.draw(tf);
			
			bm = new Bitmap(myTextImage);
			
			bm.x = 12.5;
			bm.y = 47.5;
			
			sprite.addChild(bm);
			
			var status_bars:Sprite = c.draw_statusbars(125, 45);
			status_bars.x = 0;
			status_bars.y = 57;
			sprite.addChild(status_bars);
			
			var status_effects:Sprite = c.draw_status_effects(125, 20);
			status_effects.x = 0;
			status_effects.y = 150;
			sprite.addChild(status_effects);
			
			
			//Initiative
			/*
			if(c.location.cm != null && c.location.cm.get_init(c) > 0){
				g.beginFill( 0x000000);
				g.drawCircle(70,165,15);
				g.endFill();
				g.beginFill( 0xFFFFFF);
				g.drawCircle(70,165,13);
				g.endFill();
				
				var next_action_in:int = c.location.cm.chars_to_next_action(c);
				var last_action_was:int = c.location.cm.chars_since_last_action(c);
				if(last_action_was == 0){
					g.beginFill( 0x0000FF);
					g.drawCircle(70,165,13);
					g.endFill();
				}else{
					g.beginFill( 0x0000FF);
					g.drawCircle(70,165,13*(last_action_was/(next_action_in+last_action_was)));
					g.endFill();
				}
			}
			*/
			//check if character is incapacitated
			if(c.location.cm.get_init(c) < 0){
				g.lineStyle(20, 0xFF0000);
				g.moveTo(0,0);
				g.lineTo(150,175);
				g.moveTo(0,175);
				g.lineTo(150,0);
			}
			
			sprite.addEventListener(MouseEvent.CLICK, select_function);
			
			if(c.location != null){
				sprite.name = "combat,"+active_char.location.get_content_id(active_char)+","+action_num+"," + c.location.get_content_id(c);
				if(cursor_options != null){
					sprite.addEventListener(MouseEvent.MOUSE_OVER, show_function);
					cursor_options[cursor_options.length] = sprite;
				}
			}
			
			return sprite;
		}
		
		public static function combat_option_box(c:Character, e:Character, m:Main, cursor:Sprite, cursor_options:Array, container_mc:MovieClip):Sprite{
			var return_sprite:Sprite = new Sprite();
			
			var attack_tiers:Array = new Array();
			attack_tiers[0] = new Array();
			
			attack_tiers[0][0] = "";
			
			var options:Array = c.show_combat_options(e).split("\n");
			var count:int = 0;
			//need to have 'tiers' or a tree of actions from certain options....				
			for(count;count<options.length;count++){
				if(options[count] == "") continue;
				
				var attack_action:Action = c.get_attack_action(options[count].split(",")[2]);
				
				if(attack_action != null){
					var found:Boolean = false;
					var curr_tiers:int = 0;
					for(curr_tiers;curr_tiers < attack_tiers.length;curr_tiers++){
						if(attack_tiers[curr_tiers][0] == attack_action.attack_type){
							if(attack_action.get_attack_order() >= 0){
								attack_tiers[curr_tiers] = attack_tiers[curr_tiers].slice(0,1 + attack_action.get_attack_order()).concat(options[count]).concat(attack_tiers[curr_tiers].slice(1 + attack_action.get_attack_order(),attack_tiers[curr_tiers].length));
							}else if(attack_action.get_attack_order() == -1){
								attack_tiers[curr_tiers][attack_tiers[curr_tiers].length] = options[count];
							}
							found = true;
							break;
						}
					}
					
					if(!found){
						attack_tiers[attack_tiers.length] = new Array();
						attack_tiers[attack_tiers.length-1][0] = attack_action.attack_type;
						attack_tiers[attack_tiers.length-1][1] = options[count];
						
						//try for second place
						if(attack_tiers[0].length > 2){
							attack_tiers[0] = attack_tiers[0].slice(0,2).concat(attack_action.attack_type).concat(attack_tiers[0].slice(2,attack_tiers[0].length));
						}else{
							attack_tiers[0][attack_tiers[0].length] = attack_action.attack_type;
						}
					}				
				}
			}
			
			var need_scroll:Boolean = false;
			curr_tiers = 0;
			for(curr_tiers;curr_tiers<attack_tiers.length;curr_tiers++){
				var sprite:Sprite = combat_box(150, 175);
				sprite.x = 0;
				sprite.y = 425;
				
				if(curr_tiers>0){
					attack_tiers[curr_tiers][attack_tiers[curr_tiers].length] = "Back";
				}
				
				count = 1;
				for(count;count<attack_tiers[curr_tiers].length;count++){
					var ns:Sprite = new Sprite();
					
					var tf:TextField = new TextField();
					tf.defaultTextFormat = m.combat_text_format;
					tf.htmlText = attack_tiers[curr_tiers][count];
					var myTextImage:BitmapData = new BitmapData(150, ((int(tf.defaultTextFormat.size)*1.1))*tf.numLines, true, combat_bg_colour);
					myTextImage.draw(tf);
					
					var bm:Bitmap = new Bitmap(myTextImage);
					
					//need to parse out the attack
					if(attack_tiers[curr_tiers][count].indexOf(":") >= 0){
						ns.name = attack_tiers[curr_tiers][count].slice(attack_tiers[curr_tiers][count].indexOf(":")+1, attack_tiers[curr_tiers][count].indexOf("\"",attack_tiers[curr_tiers][count].indexOf("\"") + 1));
					}else{
						var move_to_tier:int = 0;
						for(move_to_tier;move_to_tier<attack_tiers.length;move_to_tier++){
							if(attack_tiers[move_to_tier][0] == attack_tiers[curr_tiers][count]){
								ns.name = "move_to_tier" + move_to_tier;
							}
						}
						
						if(attack_tiers[curr_tiers][count] == "Back"){
							ns.name = "move_to_tier0";
						}
					}
					
					function attack(event:Event):void{
						var i:int = 0;
						var temp:Sprite;
						for(i;i<cursor_options.length;i++){
							temp = cursor_options[i];							
							temp.removeEventListener(MouseEvent.CLICK, attack);
							temp.removeEventListener(MouseEvent.MOUSE_OVER, show_attack_info);
							temp.removeEventListener(MouseEvent.MOUSE_OUT, remove_info);
							temp.removeEventListener(KeyboardEvent.KEY_DOWN,show_combat_options_down);
							temp.removeEventListener(KeyboardEvent.KEY_UP,show_combat_options_up);
							temp.removeEventListener(MouseEvent.CLICK, show_other_tier);
						}
						if(down_button != null)down_button.removeEventListener(MouseEvent.CLICK, show_combat_options_down);
						if(up_button != null)up_button.removeEventListener(MouseEvent.CLICK, show_combat_options_up);
						var e:TextEvent;
						e = new TextEvent(TextEvent.LINK, false, false, event.target.name);
						container_mc.dispatchEvent(e);
					}
					
					function show_other_tier(event:Event):void{
						var i:int = 0;
						var temp:Sprite;
						for(i;i<cursor_options.length;i++){
							temp = cursor_options[i];							
							temp.removeEventListener(MouseEvent.CLICK, attack);
							temp.removeEventListener(MouseEvent.MOUSE_OVER, show_attack_info);
							temp.removeEventListener(MouseEvent.MOUSE_OUT, remove_info);
							temp.removeEventListener(KeyboardEvent.KEY_DOWN,show_combat_options_down);
							temp.removeEventListener(KeyboardEvent.KEY_UP,show_combat_options_up);
							temp.removeEventListener(MouseEvent.CLICK, show_other_tier);
						}
						cursor_options.length = 0;
						
						var show_down_button:Boolean = false;
						var child_count:int = 0;
						for(child_count;child_count < return_sprite.numChildren;child_count++){
							if(child_count == int(event.target.name.slice(12, event.target.name.length))){
								var dif:Number = 0;
								var temp_sprite:Sprite = null;
								if(return_sprite.getChildAt(child_count) is Sprite){
									temp_sprite = return_sprite.getChildAt(child_count) as Sprite
									dif = 12.5 - temp_sprite.getChildAt(0).y
								}
								if(temp_sprite != null){
									var child_count2:int = 0;
									for(child_count2;child_count2<temp_sprite.numChildren;child_count2++){
										temp_sprite.getChildAt(child_count2).y += dif;
										if(temp_sprite.getChildAt(child_count2).y + temp_sprite.getChildAt(child_count2).height < 150){
											temp_sprite.getChildAt(child_count2).visible = true;
										}else{
											temp_sprite.getChildAt(child_count2).visible = false;
											show_down_button = true;
										}
										
										if(temp_sprite.getChildAt(child_count2).name.indexOf("combat,") >= 0){
											temp_sprite.getChildAt(child_count2).addEventListener(MouseEvent.CLICK, attack);
											temp_sprite.getChildAt(child_count2).addEventListener(MouseEvent.MOUSE_OUT, remove_info);
										}else{
											temp_sprite.getChildAt(child_count2).addEventListener(MouseEvent.CLICK, show_other_tier);
										}
										temp_sprite.getChildAt(child_count2).addEventListener(MouseEvent.MOUSE_OVER, show_attack_info);
										temp_sprite.getChildAt(child_count2).addEventListener(KeyboardEvent.KEY_DOWN,show_combat_options_down);
										temp_sprite.getChildAt(child_count2).addEventListener(KeyboardEvent.KEY_UP,show_combat_options_up);
										
										cursor_options[cursor_options.length] = temp_sprite.getChildAt(child_count2);
										
									}
								}
								return_sprite.getChildAt(child_count).visible = true;
							}else{
								if(return_sprite.getChildAt(child_count).name == "button" && show_down_button){
									return_sprite.getChildAt(child_count).visible = true;
								}else{
									return_sprite.getChildAt(child_count).visible = false;
								}
							}							
						}
						cursor.x = figure_x(cursor_options[0]) - 13;
						cursor.y = figure_y(cursor_options[0]) + 13;
						cursor.hitArea = cursor_options[0];
						m.stage.stageFocusRect = false;
						m.stage.focus = cursor;
					}
					
					function remove_info(event:Event):void{
						var i:int = 0;
						for(i;i<return_sprite.numChildren;i++){
							var temp:Sprite = return_sprite.getChildAt(i) as Sprite;
							if(temp.hitArea != null && temp.hitArea != cursor.hitArea){
								return_sprite.removeChildAt(i);
								i--;
							}
						}
					}
					
					function show_attack_info(event:Event):void{
						cursor.hitArea = event.target as Sprite;
						cursor.x = figure_x(cursor.hitArea) - 13;
						cursor.y = figure_y(cursor.hitArea) + 13;
						cursor.visible = true;
						remove_info(event);
						if(event.target.name.indexOf("move_to_tier") < 0){
							var attack_info_sprite:Sprite = combat_box(650,175);
							
							var text_sprite:Sprite = new Sprite();
							var myTextImage_info:BitmapData = new BitmapData(650, 175, true, combat_bg_colour);
							var tf_info:TextField = new TextField();
							tf_info.width = 650;
							tf_info.height = 175;
							tf_info.wordWrap = true;
							tf_info.selectable = false;
							tf_info.defaultTextFormat = m.combat_text_format;
							
							var attack_action:Action = c.get_attack_action(event.target.name.split(",")[2]);
							
							if(attack_action != null){
								tf_info.htmlText = attack_action.get_attack_description(c);
							}else{
								tf_info.htmlText = "Attack!";
							}
									
							myTextImage_info.draw(tf_info);
							
							var bm_info:Bitmap = new Bitmap(myTextImage_info);
							
							text_sprite.addChild(bm_info);
							
							text_sprite.x = 12.5;
							text_sprite.y = 12.5;
							
							attack_info_sprite.addChild(text_sprite);
							
							attack_info_sprite.x = 150;
							attack_info_sprite.y = 425;
							attack_info_sprite.mouseEnabled = false;
							attack_info_sprite.hitArea = cursor.hitArea;
							return_sprite.addChild(attack_info_sprite);
						}
					}
										
					if(attack_tiers[curr_tiers][count] != ""){
						if(curr_tiers > 0){
							
						}else{
							if(attack_tiers[curr_tiers][count].indexOf(":") >= 0){
								ns.addEventListener(MouseEvent.CLICK, attack);
								ns.addEventListener(MouseEvent.MOUSE_OUT, remove_info);
							}else{
								ns.addEventListener(MouseEvent.CLICK, show_other_tier);
							}
							ns.addEventListener(MouseEvent.MOUSE_OVER, show_attack_info);
							ns.addEventListener(KeyboardEvent.KEY_DOWN,show_combat_options_down);
							ns.addEventListener(KeyboardEvent.KEY_UP,show_combat_options_up);
						}
					}
					
					ns.addChild(bm);
					ns.height = bm.height;
					
					ns.x = 12.5;
					ns.y = 12.5 + (count-1)*((int(tf.defaultTextFormat.size)*1.1))*tf.numLines;
					
					if(ns.y + bm.height > 150){
						ns.visible = false;
						need_scroll = true;
					}
					
					if(curr_tiers == 0){
						cursor_options[cursor_options.length] = ns;
					}
					
					sprite.addChild(ns);
				}
				
				if(curr_tiers > 0) sprite.visible = false;
				return_sprite.addChild(sprite);
				
			}
			
			function show_combat_options_down(event:Event):void{
				if(!down_button.visible) return;
				var main_count:int = 0;
				for(main_count;main_count<return_sprite.numChildren;main_count++){
					var move_amount:int = ((int(tf.defaultTextFormat.size)*1.1))*tf.numLines;
					if(return_sprite.getChildAt(main_count) is Sprite){
						var sprite:Sprite = return_sprite.getChildAt(main_count) as Sprite;
						if(sprite.visible){
							var last_index:int = 0;
							var i:int = 0;
							for(i;i<sprite.numChildren;i++){
								if(sprite.getChildAt(i) is Sprite){ 
									sprite.getChildAt(i).y -= move_amount;
									if(sprite.getChildAt(i).y + sprite.getChildAt(i).height < 150){
										sprite.getChildAt(i).visible = true;
									}else{
										sprite.getChildAt(i).visible = false;
									}
									if(sprite.getChildAt(i).y < 12 + move_amount){
										sprite.getChildAt(i).visible = false;
									}
									last_index = i;
								}
							}
							//need to enable the up scroll
							if(up_button.visible == false) up_button.visible = true;
							if(sprite.numChildren > 0 && sprite.getChildAt(last_index).visible == true){
								down_button.visible = false;
							}
							break;
						}
					}
				}
			}
			
			function show_combat_options_up(event:Event):void{
				if(!up_button.visible) return;
				var main_count:int = 0;
				for(main_count;main_count<return_sprite.numChildren;main_count++){
					var i:int = 0;
					var move_amount:int = ((int(tf.defaultTextFormat.size)*1.1))*tf.numLines;
					if(return_sprite.getChildAt(main_count) is Sprite){
						var sprite:Sprite = return_sprite.getChildAt(main_count) as Sprite;
						if(sprite.visible){
							for(i;i<sprite.numChildren;i++){
								if(sprite.getChildAt(i) is Sprite){ 
									sprite.getChildAt(i).y += move_amount;
									if(sprite.getChildAt(i).y + sprite.getChildAt(i).height < 150){
										sprite.getChildAt(i).visible = true;
									}else{
										sprite.getChildAt(i).visible = false;
									}
									
									if(sprite.getChildAt(i).y < 12 + move_amount){
										sprite.getChildAt(i).visible = false;
									}
									if(i == 0 && sprite.getChildAt(i).y >= 12){
										sprite.getChildAt(i).visible = true;
									}
								}
							}
							//need to enable the down scroll
							if(down_button.visible == false) down_button.visible = true;
							//need to see if we're at the top of the list, and disable our up button if we are
							if(sprite.numChildren > 0 && sprite.getChildAt(0).visible == true){
								up_button.visible = false;
							}
							break;
						}
					}
				}
			}
			
			//Need to make this list scrollable
			if(need_scroll){				
				var down_button:Sprite = new Sprite();
				down_button.name = "button";
				
				var gra:Graphics = down_button.graphics;
				gra.beginFill(0xC2C2C2);
				gra.drawCircle(0,0,20);
				gra.endFill();
				
				down_button.x = 70;
				down_button.y = 425 + 160;
				
				var up_button:Sprite = new Sprite();
				//up_button.name = "button";
				
				gra = up_button.graphics;
				gra.beginFill(0xC2C2C2);
				gra.drawCircle(0,0,20);
				gra.endFill();
				
				up_button.x = 70;
				up_button.y = 425 + 22;
				
				up_button.visible = false;				
				
				down_button.addEventListener(MouseEvent.CLICK, show_combat_options_down);
				up_button.addEventListener(MouseEvent.CLICK, show_combat_options_up);
				
				return_sprite.addChild(up_button);
				return_sprite.addChild(down_button);
			}
			
			return return_sprite;
		}
		
		public static function item_option_box(c:Character, e:Character, m:Main, action_num:int, options:Array, cursor:Sprite, cursor_options:Array, container_mc:MovieClip):Sprite{
			cursor_options.length = 0;
			options[options.length] = "<a href=\"event:combat,"+m.player.location.get_content_id(c)+",-1,-1\">Back</a>";
			var sprite:Sprite = combat_box(250, 175);
			sprite.x = 0;
			sprite.y = 425;
			var skip:int = 0;
				
			var count:int = 0;
			for(count;count<options.length;count++){
				if(options[count] == "" || options[count].indexOf(":") < 0){
					skip++;
					continue;
				}
				var need_scroll:Boolean = false;
				
				var ns:Sprite = new Sprite();
				var tf:TextField = new TextField();
				tf.width = 250;
				tf.defaultTextFormat = m.combat_text_format;
				tf.htmlText = options[count];
	
				var myTextImage:BitmapData = new BitmapData(250, ((int(tf.defaultTextFormat.size)*1.1))*tf.numLines, true, combat_bg_colour);
				
				myTextImage.draw(tf);
				
				var bm:Bitmap = new Bitmap(myTextImage);
				
				ns.name = options[count].slice(options[count].indexOf(":")+1, options[count].indexOf("\"",options[count].indexOf("\"") + 1));
				
				var combat_call_temp:Array = ns.name.split(",");
				
				function dynamic_combat_handler(event:Event):void{
					var i:int = 0;
					var temp:Sprite;
					for(i;i<cursor_options.length;i++){
						temp = cursor_options[i];
						temp.removeEventListener(MouseEvent.MOUSE_OUT, remove_info);
						temp.removeEventListener(MouseEvent.MOUSE_OVER, show_attack_info);
						temp.removeEventListener(MouseEvent.CLICK, dynamic_combat_handler);
						temp.removeEventListener(KeyboardEvent.KEY_DOWN,show_combat_options_down);
						temp.removeEventListener(KeyboardEvent.KEY_UP,show_combat_options_up);
						
					}
					if(up_button != null)up_button.removeEventListener(MouseEvent.CLICK, show_combat_options_up);
					if(down_button != null)down_button.removeEventListener(MouseEvent.CLICK, show_combat_options_down);
					var e:TextEvent;
					e = new TextEvent(TextEvent.LINK, false, false, event.target.name);								
					container_mc.dispatchEvent(e);
				}
				
				function remove_info(event:Event):void{
					//sprite.removeChildAt(sprite.numChildren-1);
					var i:int = 0;
					for(i;i<sprite.numChildren;i++){
						var temp:Sprite = sprite.getChildAt(i) as Sprite;
						if(temp.hitArea != null && temp.hitArea != cursor.hitArea){
							sprite.removeChildAt(i);
							i--;
						}
					}
				}
				
				function show_attack_info(event:Event):void{
					cursor.hitArea = event.target as Sprite;
					cursor.x = figure_x(cursor.hitArea) - 13;
					cursor.y = figure_y(cursor.hitArea) + 13;
					cursor.visible = true;
					remove_info(event);
					
					if(event.target.name.indexOf(",-1,-1") < 0){
						var attack_info_sprite:Sprite = combat_box(550,175);
						var text_sprite:Sprite = new Sprite();
						var myTextImage_info:BitmapData = new BitmapData(550, 175, true, combat_bg_colour);
						var tf_info:TextField = new TextField();
						tf_info.width = 550;
						tf_info.height = 175;
						tf_info.wordWrap = true;
						tf_info.selectable = false;
						tf_info.defaultTextFormat = m.combat_text_format;
						
						var temp_name:Array = event.target.name.split(",");
						var attack_action:Action = c.get_attack_action(temp_name[2]);
						var dynamic_choice:Array = temp_name.slice(5, temp_name.length);					
						
						if(attack_action != null){
							if(attack_action.consequences[0] is Dynamic_Consequence && attack_action.consequences[0].consequence_list_type == Dynamic_Consequence.list_inventory && dynamic_choice[0] != null && c.get_possesion_by_id(dynamic_choice[0]) != null){
								tf_info.htmlText = c.get_possesion_by_id(dynamic_choice[0]).get_description(c);
							}else{
								tf_info.htmlText = attack_action.get_attack_description(c);
							}
						}else{
							tf_info.htmlText = "Attack!";
						}
								
						myTextImage_info.draw(tf_info);
						
						var bm_info:Bitmap = new Bitmap(myTextImage_info);
						
						text_sprite.addChild(bm_info);
						
						text_sprite.x = 12.5;
						text_sprite.y = 12.5;
						
						attack_info_sprite.addChild(text_sprite);
						
						attack_info_sprite.x = 250;
						
						attack_info_sprite.mouseEnabled = false;
						attack_info_sprite.hitArea = cursor.hitArea;
						
						sprite.addChild(attack_info_sprite);
					}
				}
				
				if(options[count].indexOf(">Back<") < 0){
					combat_call_temp[2] = action_num;
					ns.addEventListener(MouseEvent.MOUSE_OUT, remove_info);
				}
				ns.addEventListener(MouseEvent.MOUSE_OVER, show_attack_info);
				ns.addEventListener(MouseEvent.CLICK, dynamic_combat_handler);
				ns.addEventListener(KeyboardEvent.KEY_DOWN,show_combat_options_down);
				ns.addEventListener(KeyboardEvent.KEY_UP,show_combat_options_up);
				
				cursor_options[cursor_options.length] = ns;
				ns.addChild(bm);
				
				ns.name = combat_call_temp.toString();
				ns.height = bm.height;
				
				ns.x = 12.5;
				ns.y = 12.5 + (count-skip)*((int(tf.defaultTextFormat.size)*1.1))*tf.numLines;
				
				if(ns.y + bm.height > 150){
					ns.visible = false;
					need_scroll = true;
				}
				
				sprite.addChild(ns);
				
			}
			var last_index:int = sprite.numChildren - 1;
			function show_combat_options_down(event:Event):void{
				if(!down_button.visible) return;
				var i:int = 0;
				var move_amount:int = ((int(tf.defaultTextFormat.size)*1.1))*tf.numLines;
				for(i;i<sprite.numChildren;i++){
					if(sprite.getChildAt(i) is Sprite){ 
						if((sprite.getChildAt(i) as Sprite).numChildren > 0){
							sprite.getChildAt(i).y -= move_amount;
							if(sprite.getChildAt(i).y + sprite.getChildAt(i).height < 150){
								sprite.getChildAt(i).visible = true;
							}else{
								sprite.getChildAt(i).visible = false;
							}
							if(sprite.getChildAt(i).y < 12 + move_amount){
								sprite.getChildAt(i).visible = false;
							}
						}
					}
				}
				//need to enable the up scroll
				if(up_button.visible == false) up_button.visible = true;
				if(sprite.numChildren > 0 && sprite.getChildAt(last_index).visible == true){
					down_button.visible = false;
				}
			}
			
			function show_combat_options_up(event:Event):void{
				if(!up_button.visible) return;
				var i:int = 0;
				var move_amount:int = ((int(tf.defaultTextFormat.size)*1.1))*tf.numLines;
				for(i;i<sprite.numChildren;i++){
					if(sprite.getChildAt(i) is Sprite){ 
						if((sprite.getChildAt(i) as Sprite).numChildren > 0){
							sprite.getChildAt(i).y += move_amount;
							if(sprite.getChildAt(i).y + sprite.getChildAt(i).height < 150){
								sprite.getChildAt(i).visible = true;
							}else{
								sprite.getChildAt(i).visible = false;
							}
							
							if(sprite.getChildAt(i).y < 12 + move_amount){
								sprite.getChildAt(i).visible = false;
							}
							if(i == 0 && sprite.getChildAt(i).y >= 12){
								sprite.getChildAt(i).visible = true;
							}
						}
					}
				}
				//need to enable the down scroll
				if(down_button.visible == false) down_button.visible = true;
				//need to see if we're at the top of the list, and disable our up button if we are
				if(sprite.getChildAt(0).visible == true){
					up_button.visible = false;
				}
			}
			//Need to make this list scrollable
			if(need_scroll){
				
				var down_button:Sprite = new Sprite();
				down_button.addEventListener(MouseEvent.CLICK, show_combat_options_down);
				
				var gra:Graphics = down_button.graphics;
				gra.beginFill(0xC2C2C2);
				gra.drawCircle(0,0,20);
				gra.endFill();
				
				down_button.x = 70;
				down_button.y = 160;
				
				sprite.addChild(down_button);
				
				var up_button:Sprite = new Sprite();
				up_button.addEventListener(MouseEvent.CLICK, show_combat_options_up);
				
				gra = up_button.graphics;
				gra.beginFill(0xC2C2C2);
				gra.drawCircle(0,0,20);
				gra.endFill();
				
				up_button.x = 70;
				up_button.y = 22;
				
				up_button.visible = false;
				
				sprite.addChild(up_button);				
			}
			
			return sprite;
		}
		
		public static function action_results(c:Character, char_id:int, action_num:int, enemy_id:int, m:Main, container_mc:MovieClip, chall_id:String = null, dynamic_choice_id:Array = null, cursor:Sprite = null, cursor_options:Array = null):Sprite{
			var sprite:Sprite = combat_box(800, 175);
			sprite.x = 0;
			sprite.y = 425;
			//this can never, ever be null...
			var participant_count:int = 1;
			var enemy:Character = c.location.get_content(enemy_id) as Character;
			var enemy_list:Array = new Array();
			if(c.location.cm == null){
				trace("(MAIN_GUI)do you know why combat is null?");
				m.cleanup_gui();
				m.reenable_gui();
				if(m.player.location != null)m.look();
			}else{
				participant_count = c.location.cm.participants.length;
			}
			
			var combat_manage:Combat_manager = c.location.cm;
			
			var act_results:Array = new Array();
			
			if(enemy != null){
				enemy_id = enemy.location.get_content_id(enemy);
				var PC_is_target:Boolean = true;
				if(m.player.location != null){
					if(c.get_party() != null){
						if(c.party.member_of(m.player))PC_is_target = false;
					}else{
						if(c == m.player)PC_is_target = false;
					}
				}
				
				var a:Action = c.get_attack_action(action_num);
				var temp_string:String = "";
				
				try{
					temp_string = Main.capitalize(c.attack(char_id,action_num,enemy_id,chall_id, dynamic_choice_id,m.player));
				}catch(e:Error){
					trace("(Main_gui)Combat Error: " + e.getStackTrace());
				}
				
				act_results = temp_string.split("\n");
				if(chall_id == null)chall_id = "0";
				if((temp_string.indexOf("</a>") >= 0 || (a.consequences[int(chall_id)] is Dynamic_Consequence && a.consequences[int(chall_id)].consequence_list_type != Dynamic_Consequence.list_nolist))){
					if(temp_string.indexOf("</a>") >= 0 || temp_string.replace("\n","") == ""){
						if(PC_is_target){
							var action_expression:RegExp = new RegExp("<a href=\"event:[,_a-z0-9]*\">","gi");
							var action_strings:Array = temp_string.match(action_expression);
							var action_choice:int = c.personality.determine_overworld_action(action_strings,c);
							if(action_strings[action_choice] != null){
								act_results = action_strings[action_choice].split(",");
								temp_string = Main.capitalize(c.sanitize(enemy.sanitize(c.attack(act_results[1],act_results[2],act_results[3],act_results[4].substr(0,act_results[4].indexOf("\"")), dynamic_choice_id,m.player),m.player),m.player));
								act_results = temp_string.split("\n");
							}
						}else{
							return item_option_box(c, enemy, m, action_num, act_results, cursor, cursor_options, container_mc);
						}
					}
				}else if(temp_string == ""){
					trace("(Main_gui.action_results)I just did an attack and recieved NO output... Attack name: " + a.get_name());
				}
			}else{
				trace("(MAIN_GUI)do you know why combat is null2? found no enemy while looking for character id: " + enemy_id);
				m.cleanup_gui();
				m.reenable_gui();
				if(m.player.location != null)m.look();
			}
			
			if(m.player.location!= null){
				if(m.player.location.cm != null){
					var temp_array:Array = combat_manage.update_participants();
					if(combat_manage.participants.length >= participant_count){
						act_results = temp_array.concat(act_results);
					}else{
						act_results = act_results.concat(temp_array);
					}					
				}
			}
			
			var count:int = 0;
			var tot_height:Number = 12.5;
			for(count;count<act_results.length;count++){
				if(act_results[count] == "") continue;
				var tf:TextField = new TextField();
				tf.height = 600;
				tf.width = 775;
				tf.wordWrap = true;
				tf.defaultTextFormat = m.combat_text_format;
				tf.htmlText = act_results[count];//Don't know what we do if there are more than one link in this set of results...
				
				
				var myTextImage:BitmapData = new BitmapData(775, ((int(tf.defaultTextFormat.size)*1.1))*tf.numLines, true, combat_bg_colour);
				myTextImage.draw(tf);
				
				var bm:Bitmap = new Bitmap(myTextImage);
				
								
				var bm_sprite:Sprite = new Sprite();
				bm_sprite.addChild(bm);
				
				bm_sprite.x = 12.5;
				bm_sprite.y = tot_height;
				tot_height += bm_sprite.height;
				
				if(bm_sprite.y + bm_sprite.height > 150) bm_sprite.visible = false;

				
				if(act_results[count].indexOf("</a>") >= 0 && bm_sprite.visible){
					bm_sprite.name = act_results[count].slice(act_results[count].indexOf(":")+1, act_results[count].indexOf("\"",act_results[count].indexOf("\"") + 1));
					var combat_call_temp:Array = bm_sprite.name.split(",");
					combat_call_temp[2] = action_num;
					bm_sprite.name = combat_call_temp.toString();
					
					function dynamic_combat_handler(event:Event):void{
						bm_sprite.removeEventListener(MouseEvent.CLICK, dynamic_combat_handler);
						var e:TextEvent;
						e = new TextEvent(TextEvent.LINK, false, false, event.target.name);								
						container_mc.dispatchEvent(e);
					}
					
					bm_sprite.addEventListener(MouseEvent.CLICK, dynamic_combat_handler);
				}
				
				sprite.addChild(bm_sprite);
			}
			
			var sp:Sprite = new Sprite();
			
			sp.addEventListener(MouseEvent.CLICK, show_options);
			
			cursor.hitArea = sp;
			cursor_options[cursor_options.length] = sp;
			
			if(m.player.location != null)sp.name = "combat,"+m.player.location.get_content_id(m.player)+",-1,-1";
			
			var gra:Graphics = sp.graphics;
			gra.beginFill(0xC2C2C2);
			gra.drawCircle(0,0,20);
			gra.endFill();
			
			function show_options(event:Event):void{
				//find the bitmap
				var kick:Boolean = true;
				var i:int = 0;
				var move_amount:int = 25;
				for(i;i<sprite.numChildren;i++){
					if(sprite.getChildAt(i) is Sprite && sprite.getChildAt(i) != sp){
						if(sprite.getChildAt(i).y > 150 && kick){
							kick = false;
							move_amount = sprite.getChildAt(i).height;
							i = -1;
						}else if(!kick){
							sprite.getChildAt(i).y -= move_amount;
							if(sprite.getChildAt(i).y + sprite.getChildAt(i).height < 150) sprite.getChildAt(i).visible = true;
							if(sprite.getChildAt(i).y < 12) sprite.getChildAt(i).visible = false;
						}
					}
				
				}
				if(kick){
					sp.removeEventListener(MouseEvent.CLICK, show_options);
					var active_cm:Combat_manager;
					if(m.player == null){
						m.cleanup_gui();
						m.reenable_gui();
						m.death();
						return;
					}
					if(m.player.location != null)active_cm = m.player.location.cm;
					//if it's still null, time to drop to a look
					if(active_cm == null){
						m.cleanup_gui();
						m.reenable_gui();
						if(m.player.location != null){
							if(m.mini_map > 0)m.create_mini_map();
							m.look();
						}else{
							m.death();
						}
						return;
					}
					if(!active_cm.active_combat()){
						m.cleanup_gui();
						m.reenable_gui();
						if(m.player.location != null){
							if(m.mini_map > 0)m.create_mini_map();
							m.look();
						}else{
							m.death();
						}
					}else{
						var next_char:Character = active_cm.next_character();
						var next_action:Array = next_char.get_next_attack().split(",");
						var next_char_id:int = m.player.location.get_content_id(next_char);
						var next_action_id:int = -1;
						var next_target_id:int = -1;
						var next_chall_id:int = -1;
						
						if(next_action[0] != null && next_action[0] != ""){
							if(next_char_id != next_action[0]){
								trace("(Main_gui)We have a problem here. Character has next action, but their id doesn't match.");
							}else{
								next_target_id = next_action[3];
								if(next_char.location.get_content(next_target_id) != null){
									next_action_id = next_action[1];
									next_chall_id = next_action[2];
								}else{
									next_target_id = -1;
									trace("(Main_gui)Have a next action, but no target. Suspicious. Should probably cancel the action choice, but doing nothing instead.");
								}
							}
						}
						next_char.tick();
						var e:TextEvent;
						if(next_char == m.player){
							if(m.player.location != null){
								if(next_chall_id == -1){
									e = new TextEvent(TextEvent.LINK, false, false, "combat,"+next_char_id+","+next_action_id+","+next_target_id);
								}else{
									e = new TextEvent(TextEvent.LINK, false, false, "combat,"+next_char_id+","+next_action_id+","+next_target_id+","+next_chall_id);
								}
								m.linkHandler(e);
							}else{
								m.death();
							}
						}else{
							//fire the next characters action
							var enemy_list:Array = new Array();
							enemy_list = active_cm.participants;
														
							if((enemy_list[0] == null && next_target_id == -1) || next_char.location == null){
								trace ("(MAIN_GUI)No enemies... though there may be a dead guy trying to act. ");
								m.cleanup_gui();
								m.reenable_gui();
								if(m.player.location != null)m.look();
								return;
							}
							if(next_char.get_party() != null){
								if(next_char.party.member_of(m.player)){
									if(next_chall_id == -1){
										e = new TextEvent(TextEvent.LINK, false, false, "combat,"+next_char_id+","+next_action_id+","+next_target_id);
									}else{
										e = new TextEvent(TextEvent.LINK, false, false, "combat,"+next_char_id+","+next_action_id+","+next_target_id+","+next_chall_id);
									}
									m.linkHandler(e);
									return;
								}
							}
							
							if(next_action_id < 0 || next_target_id < 0){
								var rand_enemy:int = 0;
								if(next_target_id < 0){
									rand_enemy = next_char.personality.determine_target(enemy_list, next_char);
									next_target_id = next_char.location.get_content_id(enemy_list[rand_enemy]);
								}
								
								if(next_action_id < 0 && next_target_id >= 0){
									next_action_id = next_char.personality.determine_action(next_char.location.get_content(next_target_id) as Character, next_char);
								}
								
								if(next_action_id < 0 || next_target_id < 0){//try again...?
									trace("(Main_gui)Interesting... this character did not determine an action to perform. SHOULD just be skipping their action, but may be giving it to someone else by mistake. ");
									show_options(event);
									return;
								}
								//Need to catch dynamic choices, and make them....
								var dynamic_choice:int = -1;
								var chall_id:int = -1;
								var temp_action:Action = next_char.get_attack_action(next_action_id);
								if(temp_action.consequences[0] is Dynamic_Consequence && temp_action.consequences[0].consequence_list_type != Dynamic_Consequence.list_nolist){
									chall_id = 0;
									dynamic_choice = next_char.personality.determine_dynamic(next_target_id, next_action_id, next_char);
								}
								if(dynamic_choice == -1){
									e = new TextEvent(TextEvent.LINK, false, false, "combat,"+next_char_id+","+next_action_id+","+next_target_id);								
								}else{
									e = new TextEvent(TextEvent.LINK, false, false, "combat,"+next_char_id+","+next_action_id+","+next_target_id+","+chall_id+","+dynamic_choice);								
								}
							}else{
								if(next_chall_id == -1){
									e = new TextEvent(TextEvent.LINK, false, false, "combat,"+next_char_id+","+next_action_id+","+next_target_id);
								}else{
									e = new TextEvent(TextEvent.LINK, false, false, "combat,"+next_char_id+","+next_action_id+","+next_target_id+","+next_chall_id);
								}
							}
														
							m.linkHandler(e);
						}
					}
				}
			}
			
			sp.x = 765;
			sp.y = 140;
			
			sprite.addChild(sp);
			
			return sprite;
		}

	}
	
}
