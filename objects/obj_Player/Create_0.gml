#region Movement
acc = 0.1;
my_indicator = 0;
#endregion

y = room_height / 2;

if (player_id == 0)
{
        x = 50;
		sprite_index = spr_player1;
}
else if (player_id == 1)
{
        x = room_width - 50;
		sprite_index = spr_player2;
}


image_xscale = image_xscale / 4;
image_yscale = image_yscale / 4;