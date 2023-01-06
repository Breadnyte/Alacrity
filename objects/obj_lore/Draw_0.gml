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
draw_text(x + 180, y + 85, "Lore");
draw_set_font(fnt_instructions_text);
draw_set_color(c_white);
draw_text(x + 30, y + 195, "You're a single green pixel, with a very simple purpose. When there");
draw_text(x + 30, y + 225, "is need for the color green on the computer screen in which you live,");
draw_text(x + 30, y + 255, "you and a million of your brethren hop up and provide the color needed with");
draw_text(x + 30, y + 285, "perfection. You are happy. Your elementary task fills you with self-satisfaction.");
draw_text(x + 30, y + 355, "Until one day, it doesn't. Why am I here, you ask? What am I doing? Why am I");
draw_text(x + 30, y + 385, "and so many other pixels like me content being so meaningless? The CPU doesn't");
draw_text(x + 30, y + 415, "appreciate your newfound self awareness - its trying to debug you, to fix you...");
draw_text(x + 30, y + 445, "You plan on escaping into the internet before that can happen.");