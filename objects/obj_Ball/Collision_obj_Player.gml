if other.can_push{
	hSpeed = clamp(-hSpeed * 1.2, -6,6);
	other.can_push = false;
	other.alarm[0] = 60;
	image_blend = other.myColor;
}
