var _input = rollback_get_input();

if (_input.up) vspeed -= acc;
if (_input.down) vspeed += acc;
if(_input.right) hspeed += acc; 
if(_input.left) hspeed -= acc;

if vspeed > 2.5 vspeed = 2.5
if hspeed > 2.5 hspeed = 2.5


if(!_input.up and !_input.down and !_input.left and !_input.right){
	if friction < 0.35 friction += 0.005;
	my_indicator = 1;
}else{
	part_type_direction(Movement,point_direction(hspeed, vspeed, 0, 0),0,0,0);
	part_particles_create(obj_SceneManager.movement_particles,x,y,Movement,1);
	my_indicator = 0.4;
	image_angle = direction;
	friction = 0;
}

move_bounce_solid(false);