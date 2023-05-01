global.listen_to_input = false;
global.my_team = 0;
global.sequence = 0;
global.sampler_red = make_color_rgb(180,98,123);
global.sampler_blue = make_color_rgb(99,145,202);
global.yes_button = 0;

function start_match(){
	rollback_sync_on_frame()
	obj_SceneManager.current_scene = "In_Showcase1";
	if global.sequence == 0 {
		global.sequence = layer_sequence_create("Squences", room_width/2, room_height/2, VS_Intro);
		layer_sequence_play(global.sequence);
	}
}

function allow_input(){
	play_audio_resource(STREAM_VS01,1,1);
}

function play_soundtrack_intro(){
	play_audio_resource(STREAM_VS01_INTRO,0,0);
}

function allow_game_end(){
	if(rollback_confirmed_frame == rollback_current_frame){
		global.listen_to_input = false;
	}else{
		rollback_sync_on_frame();
		global.listen_to_input = false;
	}
	
	
	if(global.my_team == 1){
			if obj_Ball.score_team_1 > obj_Ball.score_team_2 then play_audio_resource(STREAM_VICTORY,1,true);
			else play_audio_resource(STREAM_DEFEAT,1,true);
	}else{
			if obj_Ball.score_team_1 > obj_Ball.score_team_2 then play_audio_resource(STREAM_DEFEAT,1,true);
			else play_audio_resource(STREAM_VICTORY,1,true);
	}
	
}


function collision_real_id(argument0,argument1,argument2) {
    var x_offset = argument0;
    var y_offset = argument1;
    var obj = argument2;
    var collision_id = noone;

    for(var i=0;i<instance_number(obj);i++) {
        var obj_id = instance_find(obj,i);
   
        if bbox_top + y_offset < obj_id.bbox_bottom
        && bbox_left + x_offset < obj_id.bbox_right
        && bbox_bottom + y_offset > obj_id.bbox_top
        && bbox_right + x_offset > obj_id.bbox_left {
            collision_id = obj_id;
        }
    }

    return collision_id;
}

function play_audio_resource(audio,a,b){
	if !audio_is_playing(audio)
		audio_play_sound(audio,a,b);
}

function player_collision_handler(){
	MultiTrackCamera.Shake_Camera(3,10,ShakeCurve);
	if global.can_glitch global.glitch = true;
	play_audio_resource(SFX_PLAYER_COLLISION,0,false);
}