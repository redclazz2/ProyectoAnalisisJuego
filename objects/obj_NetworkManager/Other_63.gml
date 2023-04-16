var _id = ds_map_find_value(async_load,"id"),
	_status = ds_map_find_value(async_load,"status"),
	_result = ds_map_find_value(async_load,"result");

if(current_message == "Init_Option"){
	
	rollback_define_player(obj_Player);
	
	switch(_result){
	
	case "Host":
		rollback_create_game(2,false);
	break;

	case "Join":
		rollback_join_game();
	break;

	}

}