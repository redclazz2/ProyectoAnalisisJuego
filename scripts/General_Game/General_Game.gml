global.listen_to_input = false;
global.my_team = 0;
global.sequence = 0;
global.sampler_red = make_color_rgb(180,98,123);
global.sampler_blue = make_color_rgb(99,145,202);
global.yes_button = 0;

function start_match(){
	rollback_sync_on_frame()
	obj_SceneManager.current_scene = "In_Showcase1";
	if global.sequence == 0 {
		global.sequence = layer_sequence_create("Squences", room_width/2, room_height/2, VS_Intro);
		layer_sequence_play(global.sequence);
	}
}

function allow_input(){
	play_audio_resource(STREAM_VS01,1,1);
}

function play_soundtrack_intro(){
	play_audio_resource(STREAM_VS01_INTRO,0,0);
}

function allow_game_end(){
	if(rollback_confirmed_frame == rollback_current_frame){
		global.listen_to_input = false;
	}else{
		rollback_sync_on_frame();
		global.listen_to_input = false;
	}
	
	
	if(global.my_team == 1){
			if obj_Ball.score_team_1 > obj_Ball.score_team_2 then play_audio_resource(STREAM_VICTORY,1,true);
			else play_audio_resource(STREAM_DEFEAT,1,true);
	}else{
			if obj_Ball.score_team_1 > obj_Ball.score_team_2 then play_audio_resource(STREAM_DEFEAT,1,true);
			else play_audio_resource(STREAM_VICTORY,1,true);
	}
	
}

function play_audio_resource(audio,a,b){
	if !audio_is_playing(audio)
		audio_play_sound(audio,a,b);
}