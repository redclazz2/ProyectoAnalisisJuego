move_bounce_solid(false);
part_particles_create(obj_SceneManager.movement_particles,x,y,Ball,1);
image_angle += speed;

if x > 305 or x < 10 {
	score_time_out = 10;
	play_audio_resource(SFX_BALL_SCORE,0,false);
	MultiTrackCamera.Shake_Camera(6,15,ShakeCurve);
	global.can_glitch = true;
	global.glitch = true;
	
	var myPartColor = x > 305 ? make_color_rgb(45,62,83): make_color_rgb(100,61,73),
		_team_scored = 0;
		
	if x > 305{
		part_type_color3(Score,global.sampler_blue,global.sampler_blue,global.sampler_red);
		_team_scored = 1;
		score_team_1 ++;
	}else{
		part_type_color3(Score,global.sampler_red,global.sampler_red,global.sampler_blue);
		_team_scored = 2;
		score_team_2 ++;
	}
	
	if global.my_team == _team_scored play_audio_resource(SFX_SCORE_ALLY,0,false);
	else play_audio_resource(SFX_SCORE_ENEMY,0,false);

	part_particles_create_color(obj_SceneManager.movement_particles,x,y,Score,myPartColor,25);
	
	speed = 0;	
	x = room_width/2;
	y = room_height /2;
	
	with(obj_Player){
		y = room_height/2;
		x = start_coor;
		part_particles_create(obj_SceneManager.movement_particles,x,y,Ball,30);
	}
	
	if score_team_1 == 8 or score_team_2 == 8{
		play_audio_resource(SFX_SCORE_FINAL,2,false);
		audio_stop_sound(STREAM_VS01);
		allow_game_end();
		MultiTrackCamera.Stop_Tracking_All();
		visible = false;
	}
}

if !global.listen_to_input speed = 0;
if score_time_out > 0 score_time_out -= 0.05;