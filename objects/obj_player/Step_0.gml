/// @description movement
movement();

if (keyboard_check_pressed(vk_up))
{
	audio_play_sound(sd_jump, 3, false);
}

switch(state)
{
	case player_states.move:
		scr_keyboard();
		break;
		
	case player_states.ghost:
		scr_ghost();
		break;
		
	case player_states.dash:
		scr_dash();
		break;
}

if (keyboard_check_pressed(ord("K")))
{
	if (selected_item - 1) >= 0
	{
		selected_item -= 1;
	}
	else
	{
		selected_item = ds_list_size(global.inventory) - 1;
	}
}

if (keyboard_check_pressed(ord("L")))
{
	if (selected_item + 1) < ds_list_size(global.inventory)
	{
		selected_item += 1;
	}
	else
	{
		selected_item = 0;
	}
}

//drop item
if (keyboard_check_pressed(vk_backspace))
{
	var item_id = global.inventory[| selected_item];
	
	var dropped_item = instance_create_layer(x, y, layer, obj_inventory);
	
	dropped_item.spr_items = item_id;

	remove_item();
}

if (keyboard_check_pressed(vk_enter))
{
	if (global.inventory[| selected_item] = "spr_potion")
	{
		if (obj_settings.player_health < 2)
		{
			audio_play_sound(sd_health, 5, false);
			obj_settings.player_health++;
			obj_player.sprite_index = spr_player;
			repeat(20)
			{
				instance_create_layer(obj_player.x, obj_player.y, "Player", obj_heal);
			}
			ds_list_delete(global.inventory, selected_item);
			selected_item = 0;
		}
	}
	else if (global.inventory[| selected_item] = "spr_freeze")
	{
		audio_play_sound(sd_freeze, 5, false);
		obj_settings.freeze = true;
		obj_settings.alarm[6] = 80;
		ds_list_delete(global.inventory, selected_item);
		selected_item = 0;
	}

}