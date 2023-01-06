/// @description health stuff

//x = view_get_xport(view_camera[0]) - 500;
//y = view_get_xport(view_camera[0]) + 500;

x = camera_get_view_x(view_camera[0]) + 1200;
y = camera_get_view_y(view_camera[0]) + 125;

if (obj_settings.player_health = 2)
{
	image_index = 0;
}
if (obj_settings.player_health = 1)
{
	image_index = 1;
}
else if (obj_settings.player_health <= 0)
{
	image_index = 2;
}
