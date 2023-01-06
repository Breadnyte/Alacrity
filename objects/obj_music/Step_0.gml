/// @description music

if (room = rm_title && thing = 0)
{
	audio_stop_all()
	thing = 1;
	thing1 = 0;
	audio_play_sound(sd_menu, 3, true);
	audio_play_sound(sd_wind, 10, true);
}

if (room = rm_level_1 && thing1 = 0)
{
	audio_stop_all()
	thing = 0;
	thing1 = 1;
	audio_play_sound(sd_game, 8, true);
}