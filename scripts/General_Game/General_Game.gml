function start_match(){
	if(rollback_sync_on_frame()){
		obj_SceneManager.current_scene = "In_Showcase1";
		time_source_stop(obj_NetworkManager.myStartTimer);
	}
}