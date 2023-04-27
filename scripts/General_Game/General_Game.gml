global.listen_to_input = false;
global.my_team = 0;
global.sequence = 0;

function start_match(){
	rollback_sync_on_frame()
	obj_SceneManager.current_scene = "In_Showcase1";
	global.sequence = layer_sequence_create("Squences", room_width/2, room_height/2, VS_Intro);
	layer_sequence_play(global.sequence);
}

function allow_input(){
	audio_play_sound(STREAM_VS01,1,1);
}

function play_soundtrack_intro(){
	audio_play_sound(STREAM_VS01_INTRO,0,0);
}

function allow_game_end(){
	if(rollback_confirmed_frame == rollback_current_frame){
		global.listen_to_input = false;
	}else{
		rollback_sync_on_frame();
		global.listen_to_input = false;
	}
}