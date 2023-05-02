layer_create(-9999,"Squences");

rollback_define_input({
	up: [vk_up, ord("W")],
    down: [vk_down, ord("S")],
	left: [vk_left, ord("A")],
	right: [vk_right, ord("D")],
	space: [vk_space],
	left_click: [mb_left],
	x_mouse: [m_axisx_gui],
	y_mouse: [m_axisy_gui]
});

rollback_define_player(obj_Player);

if(!rollback_join_game()){
	var aaa = true;
	rollback_create_game(2,aaa);
	
	if aaa {
		obj_SceneManager.current_scene = "In_Showcase-1";

		var lay_id = layer_get_id("Background"),
			back_id = layer_background_get_id(lay_id);
		layer_background_sprite(back_id, spr_backbattle20);
		audio_stop_sound(STREAM_WAITING)
		
		instance_create_depth(0,0,-1,obj_level);

		#region Camera
		MultiTrackCamera.Track_Objects([obj_Player,obj_Ball]);
		#endregion
	}
}