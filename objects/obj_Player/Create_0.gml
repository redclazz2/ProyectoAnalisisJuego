init_ball_score = 0;
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
		myColor = c_maroon;
}


image_xscale = image_xscale / 10;
image_yscale = image_yscale / 10;

acc = 0.1;
should_stop = true;