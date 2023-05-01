var coll_dir = point_direction(other.x,other.y,x,y),
	rand = 0;
	
if speed == 0 rand = random_range(-40,40);	

motion_add(coll_dir +  rand, 2);
if speed > 3 speed = 3

play_audio_resource(SFX_BALL_COLLISION,0,false);
has_been_reset = true;