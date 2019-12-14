/// @description inv_calc_itemstats(item id, starting height);
/// @param item id
/// @param  starting height
var item_id, sh, ch;
item_id = argument0;
sh = argument1;
ch = 18;

if (global.Item_stats[# item_id, 0] == 0) && (global.Item_stats[# item_id, 1] == 0) && (global.Item_stats[# item_id, 2] == 0) && (global.Item_stats[# item_id, 3] == 0) && 
(global.Item_stats[# item_id, 4] == 0) && (global.Item_stats[# item_id, 5] == 0) && (global.Item_stats[# item_id, 6] == 0) && (global.Item_stats[# item_id, 7] == 0) && (global.Item_stats[# item_id, 8] == 0)
{
    return(0);
}

for (var i = 0; i <= 8 ; i ++)
{
    if (global.Item_stats[# item_id, i] != 0)
    {
        ch += 18;
    }
}

var height;
height = ch + 18;
return(height);
