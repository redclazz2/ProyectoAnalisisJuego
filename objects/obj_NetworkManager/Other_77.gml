obj_SceneManager.current_scene = "In_Showcase-1";

myStartTimer = time_source_create(time_source_global,1,time_source_units_frames,start_match,[],-1);
time_source_start(myStartTimer);