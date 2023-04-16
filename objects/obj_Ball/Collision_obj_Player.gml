if other.can_push{
	hSpeed = -hSpeed;
	other.can_push = false;
	other.alarm[0] = 60;
}
