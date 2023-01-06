/// @description movement

hspd = dir * move_speed;
vspd += grav;
var damage = 1;
scr_enemy();

switch(state)
{
	case player_states.attack:
		scr_enemy();
		break;
}

playerEnemyAttack(damage);