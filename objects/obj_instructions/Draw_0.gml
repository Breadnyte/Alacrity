/// @description draw title

draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(fnt_instructions_title);


/*for (var i = 0; i < array_length_1d(menu); i++)
{
	if (i == index)
	{
		draw_set_color(c_teal);
		draw_set_font(fnt_selected);
	}
	else
	{
		draw_set_color(c_white);
		draw_set_font(fnt_menu);
	}
	draw_text(x + margin, y + (margin * i + 5), menu[i]);
}
*/
//draw_sprite(sprite_index, 0, x + 20, y);

draw_set_color(c_teal);
draw_text(x + 180, y + 85, "Instructions");
draw_set_font(fnt_instructions_text);
draw_set_color(c_white);
draw_text(x + 30, y + 195, "* WASD or arrow keys to move");
draw_text(x + 30, y + 225, "* Click to fire a small ranged bullet - kills red enemies");
draw_text(x + 30, y + 255, "* Alternatively, jump on red enemies to kill them, always avoid turrets");
draw_text(x + 30, y + 285, "* You have 2 lives. Red enemies and turrets both take 1, whereas spikes take 2");
draw_text(x + 30, y + 315, "* Yellow potions restore life - select them in inventory and press enter to use");
draw_text(x + 30, y + 345, "* Blue potions freeze bullets and enemies temporarily - enter to use");
draw_text(x + 30, y + 375, "* L and K keys are to cycle through your inventory");
draw_text(x + 30, y + 405, "* Press F for fullscreen, and R to restart/return to the title screen");
draw_text(x + 30, y + 435, "* Get to the end, if you can... beware, it's a hard game!");
draw_text(x + 30, y + 465, "* Just press backspace to return to the title screen, or test the movement out below!");