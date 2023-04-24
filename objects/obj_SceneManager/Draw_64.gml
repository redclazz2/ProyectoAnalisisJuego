switch current_scene{
	case "Title_Screen":
	var txt = scribble("[scale,1][wave][spr_mainlogo]");
		txt.draw((display_get_gui_width()/2) - sprite_get_width(spr_mainlogo)/2,
			(display_get_gui_height()/2) - sprite_get_height(spr_mainlogo)/2);
	break;
	
	case "Waiting_Screen":
	var txt = scribble("[scale,1][wave][spr_waitingplayers,0,5]");
		txt.draw((display_get_gui_width()/2) - sprite_get_width(spr_waitingplayers)/2,
			(display_get_gui_height()/2) - sprite_get_height(spr_waitingplayers)/2);
	break;
}