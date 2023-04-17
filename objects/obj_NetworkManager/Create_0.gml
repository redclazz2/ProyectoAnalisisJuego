current_message = "Init_Option";
myStartTimer = time_source_create(time_source_global,1,time_source_units_frames,start_match,[],-1);

rollback_define_input({
	up: [vk_up, ord("W")],
    down: [vk_down, ord("S")],
	space: [vk_space]
});

rollback_define_player(obj_Player);

if(!rollback_join_game()){
	rollback_create_game(2,false);
}