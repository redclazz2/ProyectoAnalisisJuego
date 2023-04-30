var _input = rollback_get_input();
if global.listen_to_input{
	if (_input.up) vspeed -= acc;
	if (_input.down) vspeed += acc;
	if(_input.right) hspeed += acc; 
	if(_input.left) hspeed -= acc;
	
	if (_input.space and my_bonus_cooldown <= 0){	
		
		part_particles_create(obj_SceneManager.movement_particles,x,y,Ball,30);
		audio_play_sound(SFX_ACTIVATE_BONUS,1,false);
		
		image_xscale = image_xscale * 2.6;
		image_yscale = image_yscale * 2.6;
		image_speed = 1;
		
		my_bonus_cooldown = 12;
		acc = 0.05;
		
		alarm[0] = 170;
	}

	if speed > 2.8 speed = 2.8

	if(!_input.up and !_input.down and !_input.left and !_input.right){
		if friction < 0.35 friction += 0.005;
		my_indicator = 1;
	}else{	
		part_type_direction(Movement,point_direction(hspeed, vspeed, 0, 0),0,0,0);
		part_particles_create(obj_SceneManager.movement_particles,x,y,Movement,1);
		my_indicator = 0.4;
		my_tutorial_active = false;
		image_angle = direction;
		friction = 0;
	}
}else{
	friction = 1;
}
move_bounce_all(false);
if !my_tutorial_active and my_tutorial_alpha > 0 my_tutorial_alpha -= 0.023;
if my_bonus_cooldown > 0 my_bonus_cooldown -= 0.02;

if instance_exists(global.yes_button) and player_id == 0{
	if position_meeting(_input.x_mouse,_input.y_mouse,global.yes_button){
	with(global.yes_button) image_index = 1;
	
		if(_input.left_click and player_id == 0){
			rollback_sync_on_frame();
			instance_destroy(obj_clickUI);
		
			obj_NetworkManager.alarm[0] = 2 * room_speed;
			obj_NetworkManager.alarm[1] = 400;
			global.sequence = 0;
			obj_SceneManager.current_scene = "In_Showcase1"
		}
	}
}//else if global.yes_button != 0 and player_id == 1 instance_destroy(global.yes_button);