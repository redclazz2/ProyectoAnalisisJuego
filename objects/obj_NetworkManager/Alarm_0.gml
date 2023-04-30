if !instance_exists(obj_Ball) instance_create_depth(room_width/2,room_height/2,-1,obj_Ball)
obj_Ball.score_team_1 = 0;
obj_Ball.score_team_2 = 0;
start_match();
