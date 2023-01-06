// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_hurt()
{
	if (global.iframe == true)
	{
		audio_play_sound(sd_hurt, 8, false);
		obj_player.alarm[1] = 40;
		for (var i = 0; i <= 40; i++)
		{
			obj_player.image_alpha = 0.4;
			obj_player.sprite_index = spr_player_hurt;
		}
		repeat(10)
		{
			instance_create_layer(obj_player.x, obj_player.y, "Player", obj_injured);
		}
		//obj_player.image_alpha = 1;
	}
	if (obj_settings.player_health <= 0)
	{
		var foo = choose(1, 2);
		if (foo = 1)
		{
			audio_play_sound(sd_death, 10, false);
		}
		else
		{
			audio_play_sound(sd_death_2, 10, false);
		}
		repeat(50)
		{
			instance_create_layer(obj_player.x, obj_player.y, "Player", obj_injured);
		}
		global.iframe = false;
		obj_settings.alarm[5] = 50;
		instance_destroy(obj_player);
		//obj_player.image_alpha = 0;
	}
}

