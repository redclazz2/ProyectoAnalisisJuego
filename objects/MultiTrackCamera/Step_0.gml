fx_set_parameter(shake_fx, "g_Magnitude", shake_magnitude);
fx_set_parameter(shake_fx, "g_ShakeSpeed", shake_speed);

if (shake_magnitude > 0)
{
	shake_magnitude -= 0.2;
}