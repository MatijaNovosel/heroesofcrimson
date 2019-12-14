/// @description  inv_item_has_stats(item_id);
/// @param item_id
var item_id = argument0;

if (global.Item_stats[# item_id, 0] != 0) || (global.Item_stats[# item_id, 1] != 0) || (global.Item_stats[# item_id, 2] != 0) || (global.Item_stats[# item_id, 3] != 0) || 
(global.Item_stats[# item_id, 4] != 0) || (global.Item_stats[# item_id, 5] != 0) || (global.Item_stats[# item_id, 6] != 0) || (global.Item_stats[# item_id, 7] != 0) || (global.Item_stats[# item_id, 8] != 0)
{
    // The item has at least one stat buff
    return(1);
}
else
{
    // The item has no stat buffs
    return(0);
}
