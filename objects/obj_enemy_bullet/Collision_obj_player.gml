/// @description hurt player

if (global.iframe == false)
{
	obj_settings.player_health -= damage;
	global.iframe = true;
	scr_hurt();
	instance_destroy(self);
}