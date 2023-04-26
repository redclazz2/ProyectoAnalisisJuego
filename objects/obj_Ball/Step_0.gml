move_bounce_solid(false);
part_particles_create(obj_SceneManager.movement_particles,x,y,Ball,1);
image_angle += speed;

if x > 305 or x < 10 {
	score_time_out = 10;
	audio_play_sound(SFX_BALL_SCORE,0,false);
	MultiTrackCamera.Shake_Camera(6,15,ShakeCurve);
	global.can_glitch = true;
	global.glitch = true;
	
	var myPartColor = x > 305 ? make_color_rgb(45,62,83): make_color_rgb(100,61,73),
		_red = make_color_rgb(180,98,123),
		_blue = make_color_rgb(99,145,202),
		_team_scored = 0;
	
	
	if x > 305{
		part_type_color3(Score,_blue,_blue,_red);
		_team_scored = 1;
		score_team_1 ++;
	}else{
		part_type_color3(Score,_red,_red,_blue);
		_team_scored = 2;
		score_team_2 ++;
	}
	
	if global.my_team == _team_scored audio_play_sound(SFX_SCORE_ALLY,0,false);
	else audio_play_sound(SFX_SCORE_ENEMY,0,false);
	

	part_particles_create_color(obj_SceneManager.movement_particles,x,y,Score,myPartColor,25);
	
	speed = 0;
	
	x = room_width/2;
	y = room_height /2;
}

if score_time_out > 0 score_time_out -= 0.05;