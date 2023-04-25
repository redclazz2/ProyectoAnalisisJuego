move_bounce_solid(false);
part_particles_create(obj_SceneManager.movement_particles,x,y,Ball,1);
image_angle += speed;

if x > 305 or x < 10 {
	var myPart = x > 305 ? ScoreT1: ScoreT2;
	part_particles_create(obj_SceneManager.movement_particles,x,y,myPart,25);
	
	speed = 0;
	
	x = room_width/2;
	y = room_height /2;
}