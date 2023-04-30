depth = -100;

if instance_number(obj_clickUI) == 1 {
	sprite_index = spr_yesUI;
	x = display_get_gui_width()/2 - 130;
	global.yes_button = id;
}else{
	sprite_index = spr_noUI;
	x = display_get_gui_width()/2 + 130;
}

y = display_get_gui_height()/2 + 200;

image_xscale *= 2.5;
image_yscale *= 2.5;

image_speed = 0;
image_index = 0;