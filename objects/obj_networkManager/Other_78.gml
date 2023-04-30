switch rollback_event_id{
	
	case rollback_synchronized_with_peer:
		obj_SceneManager.current_scene = "In_Showcase-1";

		var lay_id = layer_get_id("Background"),
			back_id = layer_background_get_id(lay_id);
		layer_background_sprite(back_id, spr_backbattle20);
		audio_stop_sound(STREAM_WAITING)
		
		instance_create_depth(0,0,-1,obj_level);

		#region Camera
		MultiTrackCamera.Track_Objects([obj_Player,obj_Ball]);
		#endregion
	break;
	
	case rollback_end_game:
		show_message("A COMMUNICATION ERROR HAS OCURRED.");
		game_restart();
	break;
	
}