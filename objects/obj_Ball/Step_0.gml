if (bbox_bottom > room_height || bbox_top < 0){
	if hSpeed < 0 hSpeed -= 0.3; else hSpeed += 0.3;
	if vSpeed < 0 vSpeed -= 0.3; else vSpeed += 0.3;
	vSpeed *= -1;
}

if(x < 0 || x > room_width){
	x = room_width / 2;
	y = room_height / 2;
	
	hSpeed = random_range(-3,3);
	vSpeed = random_range(-3,3);
}

x+=hSpeed;
y+=vSpeed;