/// @description scr_recovertime_calc(consumable id, life/mana);
/// @param consumable id
/// @param  life/mana
// Formula
// (recovery amount / (1 * recovery speed)) / 60
var cons_id, type, time;
cons_id = argument0;
type = argument1;

if(type = "life") {
    time = (global.Cons_stats[# cons_id, 0] / (1 * global.Cons_stats[# cons_id, 1])) / 60;
} else if(type = "mana") {
    time = (global.Cons_stats[# cons_id, 2] / (1 * global.Cons_stats[# cons_id, 3])) / 60;
}

return(time);
