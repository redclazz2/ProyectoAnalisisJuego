if other.can_push{
	hSpeed = -hSpeed;
	other.can_push = false;
	time_source_start(other.myPushTimer);
}
