function start_match(){
	if(rollback_sync_on_frame()){
		obj_SceneManager.current_scene = "In_Showcase0";
		time_source_stop(obj_NetworkManager.myStartTimer);
	}
}

function handle_paddle_push(paddle){
	paddle.can_push = true;
}