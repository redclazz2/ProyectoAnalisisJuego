global.listen_to_input = false;
global.my_team = 0;

function start_match(){
	if(rollback_confirmed_frame != rollback_current_frame){
		rollback_sync_on_frame();
	}
	
	obj_SceneManager.current_scene = "In_Showcase1";
	seq = layer_sequence_create("Squences", room_width/2, room_height/2, VS_Intro);
	layer_sequence_play(seq);
}

function allow_input(){
	rollback_sync_on_frame();
	allow_game_start();
}

function play_soundtrack_intro(){
	audio_play_sound(STREAM_VS01_INTRO,0,0);
}

function allow_game_start(){
	audio_play_sound(STREAM_VS01,1,1);
	global.listen_to_input = true;
}

function allow_game_end(){
	if(rollback_confirmed_frame == rollback_current_frame){
		global.listen_to_input = false;
	}else{
		rollback_sync_on_frame();
		global.listen_to_input = false;
	}
}