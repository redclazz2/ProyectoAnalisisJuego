#region Movement
acc = 0.15;
my_indicator = 0;
my_tutorial_active = true;
my_tutorial_alpha = 1;
start_coor = 0;

my_bonus_cooldown = 0;
my_color = 0;
my_enemy_color = 0;

#macro max_speed 2.4
#endregion

var my_team = 0;

depth = 0;
y = room_height / 2;

if (player_id == 0)
{
	x = 50;
	sprite_index = spr_player1;
	my_team = 1;
	direction = 0;
		
	my_color = global.sampler_blue;
	my_enemy_color = global.sampler_red;
}
else if (player_id == 1)
{
    x = room_width - 50;
	sprite_index = spr_player2;
	direction = 180;
	my_team = 2;
		
	my_color = global.sampler_red;
	my_enemy_color = global.sampler_blue;
}

if player_local global.my_team = my_team;

start_coor = x;
image_angle = direction;
image_xscale = image_xscale / 4;
image_yscale = image_yscale / 4;
image_speed = 0;