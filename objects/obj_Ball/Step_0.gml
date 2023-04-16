if (bbox_bottom > room_height || bbox_top < 0){
	hSpeed = clamp(hSpeed * 1.2, -6,6);
	vSpeed = clamp(-vSpeed * 1.2, -6,6);
}

if(x < 0 || x > room_width){
	x = room_width / 2;
	y = room_height / 2;
	
	hSpeed = random_range(-3,3);
	vSpeed = random_range(-3,3);
	
	image_blend = c_white;
}

x+=hSpeed;
y+=vSpeed;