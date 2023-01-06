/// @description draw menu stuff

draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(fnt_menu);

margin = 60;

for (var i = 0; i < array_length_1d(menu); i++)
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

draw_sprite(sprite_index, 0, x + 20, y + (index * margin));