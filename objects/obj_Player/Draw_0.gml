draw_self();
if(obj_SceneManager.current_scene == "In_Showcase0")
	draw_text(x,y - 30, init_ball_score);
else if (player_local)
	draw_text(x,y - 30, "You");