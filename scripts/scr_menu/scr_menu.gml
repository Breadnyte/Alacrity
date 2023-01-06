// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_menu()
{
	var up = keyboard_check_pressed(vk_up);
	var down = keyboard_check_pressed(vk_down);
	var select = keyboard_check_pressed(vk_enter);
	
	var move = down - up;
	
	if (move != 0)
	{
		index += move;
		var size = array_length_1d(menu);
		if (index < 0)
		{
			index = size - 1;
		}
		else if (index >= size)
		{
			index = 0;
		}
	}
	if (select)
	{
		scr_menu_select();
	}
}

function scr_menu_select()
{
	switch(index)
	{
		case 0:
			room_goto(rm_level_1);
			break;
		case 1:
			room_goto(rm_settings);
			break;
		case 2:
			room_goto(rm_lore);
			break;
		case 3:
			game_end();
			break;
	}
}