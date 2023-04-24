global.listen_to_input = false;

function start_match(){
	if(rollback_sync_on_frame()){
		obj_SceneManager.current_scene = "In_Showcase1";
		audio_play_sound(STREAM_VS01,1,1);
		seq = layer_sequence_create("Squences", room_width/2, room_height/2, VS_Intro);
		layer_sequence_play(seq);

		time_source_stop(obj_NetworkManager.myStartTimer);
	}
}

function allow_input(){
	global.listen_to_input = true;
}