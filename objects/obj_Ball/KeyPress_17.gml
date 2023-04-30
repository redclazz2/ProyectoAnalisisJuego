		play_audio_resource(SFX_SCORE_FINAL,2,false);
		audio_stop_sound(STREAM_VS01);
		allow_game_end();
		MultiTrackCamera.Stop_Tracking_All();
		visible = false;
		
		with(obj_SceneManager){
			current_scene = "RESULTS";
		}
		
		instance_create_depth(0,0,-10,obj_clickUI)
		instance_create_depth(0,0,-10,obj_clickUI)