draw_self();
if (player_local){
	draw_sprite_ext(spr_indicator,0,x,y - 8,1/6,1/6,0,c_white,my_indicator);
	draw_sprite_ext(spr_tutorial,player_id,start_coor,y + 56,1/2,1/2,0,c_white,my_tutorial_alpha);
	
	var power_ = (my_bonus_cooldown / 12.5) * 100;
	if power_ < 0.05 then power_ = 0;
	
	draw_healthbar(x-7,y + 8, x + 7, y + 10, power_, my_color, my_enemy_color,my_enemy_color, 0, true, false)
}