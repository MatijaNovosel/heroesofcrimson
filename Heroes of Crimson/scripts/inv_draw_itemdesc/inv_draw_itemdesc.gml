/// @description  inv_draw_itemdesc(item id);
/// @param item id
// Determine what text to draw * * * * *
var item_id, sh, ch;
item_id = argument0;
sh = argument1;
ch = 18;

line[2, 0] = "";
if global.Item_info[# item_id, 4] != -1
{
    line[2, 0] = string(global.Item_info[# item_id, 4]);
}

draw_set_font(fnt_itemflav);
draw_set_color(scr_cformat($D8BDA2));
draw_text_ext(inv_x - 315, inv_y + 47 + sh + ch, string_hash_to_newline(line[2, 0]), 18, 295);

var height;
height = string_height_ext(string_hash_to_newline(line[2, 0]), 18, 295) + ch;
return(height);

draw_set_font(fnt_itemdesc);
