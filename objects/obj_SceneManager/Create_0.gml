///Create Event
//Scene Manager Variables
current_scene = "Title_Screen";

//show_debug_overlay(true);

#macro mouse_gui_x device_mouse_x_to_gui(0)
#macro mouse_gui_y device_mouse_y_to_gui(0)

global.glitch = false;
global.can_glitch = true;

audio_play_sound(STREAM_WAITING,1,true);

#region movement particle

movement_particles = part_system_create(Movement);

#endregion


