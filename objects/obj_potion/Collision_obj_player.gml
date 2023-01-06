/// @description heal player

/*if (obj_settings.player_health < 2)
{
	obj_settings.player_health++;
	obj_player.sprite_index = spr_player;
	repeat(20)
	{
		instance_create_layer(obj_player.x, obj_player.y, "Player", obj_heal);
	}
	instance_destroy(self);
}

