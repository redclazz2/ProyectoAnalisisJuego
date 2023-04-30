var coll_dir = point_direction(other.x,other.y,x,y),
	rand = random_range(-4,4);
	
if speed == 0 rand = random_range(-40,40);	

motion_add(coll_dir +  rand, 10);
if speed > 2.7 speed = 2.7

play_audio_resource(SFX_BALL_COLLISION,0,false);