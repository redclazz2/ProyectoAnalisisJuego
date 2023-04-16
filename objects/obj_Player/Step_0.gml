var _input = rollback_get_input();

if (_input.down)
{
        y += my_movement_speed;
		y = clamp(y + my_movement_speed, sprite_height/2, room_height - sprite_height/2 );
}
if (_input.up)
{
        y -= my_movement_speed;
		y = clamp(y - my_movement_speed, sprite_height/2, room_height - sprite_height/2 );
}

if(_input.space and obj_SceneManager.current_scene == "In_Showcase0"){
	init_ball_score += 1;
}

if (init_ball_score > 50 and obj_SceneManager.current_scene == "In_Showcase0"){
	obj_SceneManager.current_scene = "In_Showcase1";
	//random_set_seed(1);
	instance_create_depth(room_width/2,room_height/2,0,obj_Ball);
}