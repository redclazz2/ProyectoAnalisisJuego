if (async_load[? "id"] == spriteRequest)
{
	if (async_load[? "status"] >= 0)
    {
		avatarSprite = spriteRequest;
	}
	else
    {
		show_debug_message("[WARNING] image loaded event, failed to load image");
	}
}