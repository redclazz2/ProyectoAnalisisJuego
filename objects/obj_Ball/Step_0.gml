move_bounce_solid(false);
part_particles_create(obj_SceneManager.movement_particles,x,y,Ball,1);
image_angle += speed;

if x > 305 or x < 10 {
	var myPartColor = x > 305 ? make_color_rgb(45,62,83): make_color_rgb(100,61,73);
	
	
	if x > 305{
		part_type_color3(Score,make_color_rgb(99,145,202),make_color_rgb(99,145,202),make_color_rgb(180,98,123))
	}else{
		part_type_color3(Score,make_color_rgb(180,98,123),make_color_rgb(180,98,123), make_color_rgb(99,145,202))
	}
	

	part_particles_create_color(obj_SceneManager.movement_particles,x,y,Score,myPartColor,25);
	
	speed = 0;
	
	x = room_width/2;
	y = room_height /2;
}