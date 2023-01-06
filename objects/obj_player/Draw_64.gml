/// @description show inventory


var margin = 10;

for(var i = 0; i < ds_list_size(global.inventory); i++)
{
	var item_id = global.inventory[| i];
	
	var xoffset = sprite_get_xoffset(sprite_index);
	var yoffset = sprite_get_yoffset(sprite_index);
	var spr_w = sprite_get_width(sprite_index) + margin;
	
	var draw_x = margin + (xoffset + (i * spr_w));
	var draw_y = (margin * 2) + yoffset;
	
	draw_sprite(asset_get_index(item_id), 0, draw_x, draw_y);
	
	if (selected_item == i)
	{
		draw_sprite(spr_selected_item, 0, draw_x, draw_y);
	}
}

