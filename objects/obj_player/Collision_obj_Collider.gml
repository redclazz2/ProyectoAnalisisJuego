if global.collision_level == other.id{
	move_bounce_solid(false);
}

MultiTrackCamera.Shake_Camera(3,10,ShakeCurve);
if global.can_glitch global.glitch = true;

play_audio_resource(SFX_PLAYER_COLLISION,0,false);