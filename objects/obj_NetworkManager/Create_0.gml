current_message = "Init_Option";
myStartTimer = 0;
get_string_async("Enter Host to host a game or Join to join...","Host");

randomize();
rollback_define_input({
	up: [vk_up, ord("W")],
    down: [vk_down, ord("S")],
	space: [vk_space]
});