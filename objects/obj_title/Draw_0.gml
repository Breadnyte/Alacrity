/// @description draw title

draw_set_halign(fa_middle);
draw_set_valign(fa_middle);
draw_set_font(fnt_title);


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
draw_text(x + 60, y + 75, "Alacrity");
draw_set_font(fnt_author);
draw_text(x + 60, y + 195, "Gabriel Oseguera");