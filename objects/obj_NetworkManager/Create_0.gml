layer_create(-9999,"Squences");

rollback_define_input({
	up: [vk_up, ord("W")],
    down: [vk_down, ord("S")],
	left: [vk_left, ord("A")],
	right: [vk_right, ord("D")],
	space: [vk_space],
	left_click: [mb_left],
	x_mouse: [m_axisx_gui],
	y_mouse: [m_axisy_gui]
});

rollback_define_player(obj_Player);

if(!rollback_join_game()){
	rollback_create_game(2,false);
}