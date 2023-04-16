init_ball_score = 0;
my_movement_speed = 1.5;
can_push = true;

y = room_height / 2;

if (player_id == 0)
{
        x = 50;
}
else if (player_id == 1)
{
        x = room_width - 50;
}

myPushTimer = time_source_create(time_source_global,1,time_source_units_seconds,handle_paddle_push,[self]);