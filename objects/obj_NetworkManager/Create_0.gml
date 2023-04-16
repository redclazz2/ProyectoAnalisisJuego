current_message = "Init_Option";
myStartTimer = time_source_create(time_source_global,1,time_source_units_frames,start_match,[],-1);
get_string_async("Enter Host to host a game or Join to join...","Host");

randomize();
rollback_define_input({
	up: [vk_up, ord("W")],
    down: [vk_down, ord("S")],
	space: [vk_space]
});