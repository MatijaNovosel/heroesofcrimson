/// @description inv_display_itemdesc(item id);
/// @param item id
// See obj_inv
var output, item_id;
item_id = argument0;

// Line 0 - Description
line[12] = "";
if global.Item_info[# item_id, 4] != -1
{
    line[12] = string(global.Item_info[# item_id, 4]);
}

output = line[12];
return(output);
