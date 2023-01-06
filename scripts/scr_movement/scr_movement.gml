// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function movement()
{
	//horizontal collision
	
	if (place_meeting(x + hspd, y, obj_solid))
	{
		while (!place_meeting(x + sign(hspd), y, obj_solid))
		{
			x += sign(hspd);
			//sign indicates that the criteria will be met whether the value above is negative or positive
		}
		hspd = 0;
	}
	//gravity
	else if (!place_meeting(x, y + 1, obj_solid))
	{
		vspd += grav;
	}
	//jump
	else
	{
		if (move_up)
		{
			vspd = -player_jump;
			//stretch
			x_scale = image_xscale * 0.8;
			y_scale = image_yscale * 1.6;
		}
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
	
	if (hspd != 0 && place_meeting(x, y + 1, obj_solid))
	{
		//x_scale = lerp(x_scale, image_xscale, -0.2);
		//y_scale = lerp(y_scale, image_yscale, -0.2);
		x_scale = image_xscale * 1.4;
		y_scale = image_yscale * 0.8;
		if (dirt = false)
		{
			instance_create_layer(x, y, "Player", obj_dirt);
			dirt = true;
			obj_player.alarm[4] = 4;
		}
		/*var i = 0;
		while (i < 50)
		{
			x_scale = image_xscale * i;
			y_scale = image_yscale * i / 2;
			if (i >= 1.6)
			{
				i = i - 0.1;
			}
			if (hspd = 0 || place_meeting(x, y + 1, obj_solid))
			{
				break;
			}
			i = i + 0.1;
		}*/
	}
	
	//detect collision for squash
	if (place_meeting(x, y + 1, obj_solid) && !place_meeting(x, yprevious + 1, obj_solid))
	{
		//x_scale = lerp(x_scale, image_xscale, 2);
		//y_scale = lerp(y_scale, image_yscale, 2);
		x_scale = image_xscale * 1.6;
		y_scale = image_yscale * 0.8;
	}
	
	//return to normal scale
	x_scale = lerp(x_scale, image_xscale, 0.2); 
	y_scale = lerp(y_scale, image_yscale, 0.2);

	//if (keyboard_check_pressed(vk_shift))
	//{
		//state = player_states.dash();
	//}
	if (mouse_check_button_pressed(mb_left))	
	{
		audio_play_sound(sd_player_shoot, 6, false);
		instance_create_layer(x, y - 25, "Items", obj_bullet);
	}
}
	
	
		/*for (var i = 0; i > 50; i = i + 0.1)
		{
			x_scale = image_xscale * i;//1.6;
			y_scale = image_yscale * i / 2;//0.8;
			if (i + >= 1.6)
			{
				i = i - 0.1;
			}