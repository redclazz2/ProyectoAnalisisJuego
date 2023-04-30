var txt = 0;
if _draw_sprite == spr_yesUI {
	txt = scribble("[fa_center][fa_middle][scale,3][wave][spr_yesUI]");
	txt.draw((display_get_gui_width()/2) - 160,(display_get_gui_height()/2) + 200);
}else{
	txt = scribble("[fa_center][fa_middle][scale,3][wave][spr_noUI]");
	txt.draw((display_get_gui_width()/2) + 160,(display_get_gui_height()/2) + 200);
}