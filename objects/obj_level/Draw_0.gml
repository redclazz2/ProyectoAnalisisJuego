draw_sprite_ext(spr_level_back,0,x,y-2,image_xscale,image_yscale,image_angle,c_white,1);

var x_score_position_T1 = room_width/2 - 35,
	x_score_position_T2 = room_width/2 + 35,
	y_score_position = room_height/2 - 50,
	score_scale = 1,
	score_alpha = 0.7;
	
if obj_Ball.score_time_out > 0{
	x_score_position_T1 -= 40;
	x_score_position_T2 += 40;
	y_score_position = room_height/2;
	score_scale = 6;
	score_alpha = obj_Ball.score_time_out;
}
	
if global.listen_to_input {
draw_sprite_ext(spr_score,obj_Ball.score_team_1,x_score_position_T1,y_score_position,score_scale,score_scale,
	0,c_white,score_alpha);
draw_sprite_ext(spr_score,obj_Ball.score_team_2,x_score_position_T2,y_score_position,score_scale,score_scale,
	0,c_white,score_alpha);
}
draw_self();