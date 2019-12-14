/// @description scr_crit_calc(weapon id);
/// @param weapon id
// Formula
// Weapon crit chance * (1 + (luck / 10)) = crit chance
var weapon_id, weapon_crit, luck, chance;
weapon_id = argument0;
weapon_crit = global.Weapon_stats[# weapon_id, 8];
luck = global.Total_luck;

chance = weapon_crit * luck;
if(chance > 100) {
    chance = 100;
}

return(chance);
