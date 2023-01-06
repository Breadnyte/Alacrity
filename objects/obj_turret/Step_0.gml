/// @description shooting

if (distance_to_object(obj_player) < 650)
{
	image_angle = point_direction(x, y, obj_player.x, obj_player.y);
	if (timer = 0)
	{
		instance_create_layer(x, y, "Collidables", obj_enemy_bullet);
		audio_sound_gain(sd_shoot, 0.1, 0);
		audio_play_sound(sd_shoot, 1, false);
		timer = 1;
		alarm[3] = 50;
	}
}