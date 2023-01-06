/// @description place item

if (place_meeting(x, y, obj_player)) && (picked_up == true)
{
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
