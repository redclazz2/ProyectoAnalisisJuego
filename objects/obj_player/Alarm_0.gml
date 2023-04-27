image_xscale = image_xscale / 2.6;
image_yscale = image_yscale / 2.6;
acc = 0.1;
part_particles_create(obj_SceneManager.movement_particles,x,y,Ball,30);
image_speed = 0;
image_index = 0;
audio_play_sound(SFX_BONUS_END,1,false);
		