///Create Event
//Scene Manager Variables
current_scene = "Title_Screen";

//show_debug_overlay(true);

global.glitch = false;
global.can_glitch = true;

audio_play_sound(STREAM_WAITING,1,true);

#region movement particle

movement_particles = part_system_create(Movement);

#endregion


