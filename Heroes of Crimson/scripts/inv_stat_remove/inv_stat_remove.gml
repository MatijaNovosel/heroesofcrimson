/// @description inv_stat_remove(item id);
/// @param item id
var item_id = argument0;

global.Gear_life -= global.Item_stats[# item_id, 0];
global.Gear_mana -= global.Item_stats[# item_id, 1];
global.Gear_attack -= global.Item_stats[# item_id, 2];
global.Gear_dexterity-= global.Item_stats[# item_id, 3];
global.Gear_defense -= global.Item_stats[# item_id, 4];
global.Gear_speed -= global.Item_stats[# item_id, 5];
global.Gear_wisdom -= global.Item_stats[# item_id, 6];
global.Gear_wealth -= global.Item_stats[# item_id, 7];
global.Gear_luck -= global.Item_stats[# item_id, 8];
