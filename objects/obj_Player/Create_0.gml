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

spriteRequest = noone;
avatarSprite = noone;
username = "";

var _avatarUrl = gxc_get_query_param("avatarUrl");
var _username = gxc_get_query_param("username");

if (is_undefined(_avatarUrl) || is_undefined(_username))
{
	gxc_profile_get_info(function(_status, _result)
    {
		if (_status == 200)
        {
			var _avatarUrl = _result.data.avatarUrl;
			var _username = _result.data.username;
			
			spriteRequest = sprite_add(_avatarUrl, 0, 0, 0, 0, 0);
			username = _username;
		}
	});
}
else
{
	spriteRequest = sprite_add(_avatarUrl, 0, 0, 0, 0, 0);
	username = _username;
}
