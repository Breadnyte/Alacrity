/// @description picking up item

if (place_meeting(x, y, obj_player)) && (picked_up == true)
{
	audio_play_sound(sd_pickup, 3, false);
	ds_list_add(global.inventory, spr_items);
	instance_destroy();
}
else
{
	if (!place_meeting(x, y, obj_player))
	{
		picked_up = true;
	}
}
