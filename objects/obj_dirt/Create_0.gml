/// @description initializing variables

if (obj_player.hspd > 0)
{
	direction = random_range(0, 45);
	x = obj_player.x - 40;
}
else
{
	direction = random_range(135, 180);
	x = obj_player.x + 40;
}

image_angle = random(360);
speed = random_range(4, 8);

alarm[3] = random_range(6, 10);