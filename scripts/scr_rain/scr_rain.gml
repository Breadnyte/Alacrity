// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_rain()
{
	//create the particle type
	
	global.particle_rain = part_type_create();
	
	var pr = global.particle_rain;
	
	//two types - use sprite, or use shape
	//when using sprite
	
	//sprite type
	//part_type_sprite(pr, spr_rain_lightblue, 0, 0, 1)
	////sprite size
	//part_type_size(pr, 2, 2, 0, 0);
	
	////sprite gravity
	//part_type_gravity(pr, 0.05, 270);
	////sprite life
	//part_type_life(pr, 150, 200);
	
	////orientation
	//part_type_orientation(pr, 0, 0, 0, 0, 0);
	
	
	//using ships
	part_type_shape(pr, pt_shape_disk);
	part_type_size(pr, 0.03, 0.05, 0, 0);
	part_type_scale(pr, 0.5, 1);
	part_type_color2(pr, c_silver, c_white);
	part_type_speed(pr, 5, 8, 0, 0.5);
	part_type_direction(pr, 280, 285, 0, 0.5);
	part_type_life(pr, 300, 300);
}