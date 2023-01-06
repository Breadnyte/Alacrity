// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy()
{
	//horizontal collision
	if (place_meeting(x + hspd, y, obj_solid))
	{
		while (!place_meeting(x + sign(hspd), y, obj_solid))
		{
			x += sign(hspd);
		}
		hspd = 0;
		dir *= -1;
	}
	x += hspd;
	
	//vertical collision
	if (place_meeting(x, y + vspd, obj_solid))
	{
		while (!place_meeting(x, y + sign(vspd), obj_solid))
		{
			y += sign(vspd);
		}
		vspd = 0;
	}
	y += vspd;
}

//enemy-player collision
function playerEnemyAttack(damage)
{
	if (place_meeting(x, y, obj_player))
	{
		if (obj_player.y < y)
		{
			with(obj_player)vspd = player_jump;
			audio_play_sound(sd_whiff, 8, false);
			instance_destroy();
		}
		else
		{
			if (global.iframe == false)
			{
				obj_settings.player_health -= damage;
				global.iframe = true;
				scr_hurt();
			}
		}
	}
}