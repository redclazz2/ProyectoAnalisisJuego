draw_self();
if (player_local){
	draw_sprite_ext(spr_indicator,0,x,y - 8,1/6,1/6,0,c_white,my_indicator);
	draw_sprite_ext(spr_tutorial,player_id,start_coor,y + 56,1/2,1/2,0,c_white,my_tutorial_alpha);
}