if !instance_exists(obj_NetworkManager){
	audio_play_sound(SFX_PRESS_ENTER,0,false);
	instance_create_depth(0,0,0,obj_NetworkManager);
	current_scene = "Waiting_Screen";	
}