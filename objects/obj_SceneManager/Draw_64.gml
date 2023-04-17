switch current_scene{
	case "Title_Screen":
		draw_text(1280/2, 720/2, "TITLE SCREEN.\nPRESS ENTER.");
	break;
	
	case "Waiting_Screen":
		draw_text(1280/2, 720/2, "WAITING FOR GAME SESSION...");
	break;
	
	case "In_Showcase-1":
		draw_text(1280/2, 720/2, "GET READY...");
	break;
	
	case "In_Showcase0":
		draw_text(1280/2, 720/2, "PUSH THE BALL WITH SPACE!");
	break;
	
	case "In_Showcase1":
		draw_sprite_stretched_ext(spr_placeholder,0,0,30,400,50,c_dkgray,0.8);

		
		with(obj_Player) {
		
			if(player_id == 0) {
					var myUsername = username,
						myPhoto = avatarSprite,
					var txt = scribble("[avatarSprite][myUsername]: 0");
					txt.draw(0,30);
			}
		
		}
		
		
		draw_sprite_stretched_ext(spr_placeholder,0,display_get_gui_width() - 400,30,400,50,c_dkgray,0.8);
		var txt = scribble("0: PLAYER 2[pfp1]");
		txt.draw(display_get_gui_width() - 400,30);
	break;

}