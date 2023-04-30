switch current_scene{
	case "Title_Screen":
	var txt = scribble("[fa_center][fa_middle][scale,8][wave][spr_mainlogo]");
		txt.draw((display_get_gui_width()/2),
			(display_get_gui_height()/2));
	break;
	
	case "Waiting_Screen":
	var txt = scribble("[scale,1][wave][spr_waitingplayers,0,5]");
		txt.draw((display_get_gui_width()/2) - sprite_get_width(spr_waitingplayers)/2,
			(display_get_gui_height()/2) - sprite_get_height(spr_waitingplayers)/2);
	break;
	
	case "RESULTS":
		draw_sprite_ext(spr_placeholder,0,0,0,1280,720,0,c_black,0.6);
		
		var txt = 0;
		
		if(global.my_team == 1){
			if obj_Ball.score_team_1 > obj_Ball.score_team_2 then txt = scribble("[fa_center][fa_middle][scale,8][wave][spr_win_team1]");
			else txt = scribble("[fa_center][fa_middle][scale,8][wave][spr_lose_team1]");
		}else{
			if obj_Ball.score_team_1 > obj_Ball.score_team_2 then txt = scribble("[fa_center][fa_middle][scale,8][wave][spr_lose_team2]");
			else txt = scribble("[fa_center][fa_middle][scale,8][wave][spr_win_team2]");
		}
		
		txt.draw((display_get_gui_width()/2),
			(display_get_gui_height()/2) - 250);
		txt = scribble("[fa_center][fa_middle][scale,8][wave][spr_play_question]");
		txt.draw((display_get_gui_width()/2),
			(display_get_gui_height()/2) - 50);
	break;
}