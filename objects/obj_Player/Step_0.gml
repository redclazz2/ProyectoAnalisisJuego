if global.listen_to_input{
	var _input = rollback_get_input();
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
		
		alarm[0] = 160;
	}

	if vspeed > 1.7 vspeed = 1.7
	if hspeed > 1.7 hspeed = 1.7
	

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
	move_bounce_solid(false);
}else{
	friction = 1;
}

if !my_tutorial_active and my_tutorial_alpha > 0 my_tutorial_alpha -= 0.023;
if my_bonus_cooldown > 0 my_bonus_cooldown -= 0.02;