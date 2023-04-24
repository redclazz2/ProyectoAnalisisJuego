draw_self();
if (player_local)
	draw_sprite_ext(spr_indicator,0,x,y - 8,1/6,1/6,0,c_white,my_indicator);
	
draw_text(x,y-30,global.can_glitch);
draw_text(x,y-60,global.glitch);