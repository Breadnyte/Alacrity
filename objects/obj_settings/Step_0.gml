/// @description freeze enemies

if (freeze = true)
{
	instance_destroy(obj_enemy_bullet);
	obj_enemy.move_speed = 0;
}
