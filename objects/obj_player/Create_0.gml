/// @description variables

hspd = 0;
vspd = 0;
image_speed = 0.2;

player_spd = 10;

//identifying rooms
var targetroom, targetX, targetY;

//dash
dash = false;
dash_spd = player_spd * 2;
dash_dir = 0;
global.iframe = false;

obj_settings.player_health = 2;

//gravity
grav = 1;
player_jump = 14;

//inventory
global.inventory = ds_list_create();
selected_item = 0;

//move down
move_down = 0;

//particles
dirt = false;

//stretch/squash
x_scale = image_xscale;
y_scale = image_yscale;

//mapping keys
keyboard_set_map(ord("W"), vk_up);
keyboard_set_map(ord("D"), vk_right);
keyboard_set_map(ord("A"), vk_left);
keyboard_set_map(ord("S"), vk_down);

//enums
enum player_states
{
	move,
	attack,
	jump,
	ghost,
	ladder,
	dash,
}
//initializing enum
state = player_states.move;