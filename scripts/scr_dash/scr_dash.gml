// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_dash()
{
	dash_dir = point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y);
	dash_spd = hspd;
	if (dash == false)
	{
		global.iframe = true;
		dash = true;
		obj_player.alarm[1] = 30;
		obj_player.alarm[0] = room_speed;
		if (dash_dir > 90 && dash_dir < 270)
		{
			dash_spd = -dash_spd;
		}
		for (var i = room_speed / 2; i > 0; i--)
		{
			x += lengthdir_x(dash_spd * (i / 20), dash_dir);
			y += lengthdir_y(dash_spd * (i / 20), dash_dir);
			if (place_meeting(x + 2, y + 2, obj_solid))
			{
				obj_player.alarm[0] = 30;
				state = player_states.move;
			}
		}
	}
	state = player_states.move;
}