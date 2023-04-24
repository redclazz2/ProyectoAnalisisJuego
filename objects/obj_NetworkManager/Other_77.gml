layer_create(-9999,"Squences");

obj_SceneManager.current_scene = "In_Showcase-1";

var lay_id = layer_get_id("Background"),
	back_id = layer_background_get_id(lay_id);
layer_background_sprite(back_id, spr_backbattle);

time_source_start(myStartTimer);
instance_create_depth(0,0,-1,obj_level);
instance_create_depth(room_width/2,room_height/2,-1,obj_Ball)

#region Camera
MultiTrackCamera.Track_Objects([obj_Player,obj_Ball]);
#endregion