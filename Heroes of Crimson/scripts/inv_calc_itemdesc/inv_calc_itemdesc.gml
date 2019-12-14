/// @description  inv_calc_itemdesc(item id);
/// @param item id
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

var height;
height = string_height_ext(string_hash_to_newline(line[2, 0]), 18, 295) + ch;
return(height);
