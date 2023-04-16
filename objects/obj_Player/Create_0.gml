init_ball_score = 0;
my_movement_speed = 2;
can_push = true;

y = room_height / 2;

if (player_id == 0)
{
        x = 50;
		myColor = c_aqua;
}
else if (player_id == 1)
{
        x = room_width - 50;
		myColor = c_fuchsia;
}

image_blend = myColor;