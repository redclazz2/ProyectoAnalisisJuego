obj_SceneManager.current_scene = "In_Showcase-1";

myStartTimer = time_source_create(time_source_global,2,time_source_units_seconds,start_match,[],-1);
time_source_start(myStartTimer);