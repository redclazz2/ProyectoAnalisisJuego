if position_meeting(mouse_gui_x,mouse_gui_y,id){
	image_index = 1;
	
	if(sprite_index == spr_noUI and mouse_check_button_pressed(mb_left)){
		rollback_leave_game();
		game_restart();
	}
}
else image_index = 0;