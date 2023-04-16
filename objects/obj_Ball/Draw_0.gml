draw_self();

if(image_blend != c_white){
	surface_set_target(obj_SurfaceManager.surf);
	draw_sprite_ext(spr_splat,0,x,y,1.5,1.5,0,image_blend,1);
	surface_reset_target();
}
