if(global.glitch){
	global.can_glitch = false;
	obj_SceneManager.alarm[0] = 90;
	bktglitch_activate(1280,720);
	bktglitch_config_preset(BktGlitchPreset.A)
	draw_surface_stretched(application_surface, 0, 0, display_get_gui_width(), display_get_gui_height());
	bktglitch_deactivate();
}