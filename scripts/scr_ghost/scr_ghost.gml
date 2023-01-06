// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_ghost()
{
	if (instance_exists(obj_player))
	{
		if ((round(obj_player.y + (obj_player.sprite_height/2)) > y + 16) || (obj_player.move_down))
		{
			mask_index = -1;
		}
		else
		{
			mask_index = spr_platform;
		}
	}	
}
