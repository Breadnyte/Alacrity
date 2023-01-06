// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_keyboard()
{
//variable setting
	move_right = keyboard_check(vk_right);
	move_left = keyboard_check(vk_left);
	move_up = keyboard_check(vk_up);
	move_down = keyboard_check(vk_down);

	
//actual movement

	if (move_right)
	{
		hspd = player_spd;
	}
	else if (move_left)
	{
		hspd = -player_spd;
	}
	else
	{
		hspd = 0;
	}
	
	
}