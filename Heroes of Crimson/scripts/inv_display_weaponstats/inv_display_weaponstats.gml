/// @description inv_display_weaponstats(item_id);
/// @param item_id
var item_id, output, line_0, line_1, line_2, line_3, line_4, line_5, line_6;
item_id = argument0;

// Line 0 - Damage and DPS * projectile count
line_0 = "#Damage: " + string(global.Weapon_stats[# item_id, 0]) + " - " + string(global.Weapon_stats[# item_id, 1]) + " (DPS: " + string(scr_wepdpscalc(item_id)) + " x " + string(global.Weapon_stats[# item_id, 3]) + ")";

// Line 1 - Attacks per second
line_1 = "#Attacks per second: " + string_format(scr_wepapscalc(item_id), 2, 2);

// Line 2 - Projectile count
if (global.Weapon_stats[# item_id, 3] == 1)
{
    line_2 = "#Fires " + string(global.Weapon_stats[# item_id, 3]) + " projectile"
}
else
{
    line_2 = "#Fires " + string(global.Weapon_stats[# item_id, 3]) + " projectiles"
}

// Line 3 - Projectile piercing
line_3 = "";
if (global.Weapon_stats[# item_id, 6] == 1)
{
    line_3 = "#Hits multiple targets"
}

// Line 4 - Armor piercing
line_4 = "";
if (global.Weapon_stats[# item_id, 7] == 1)
{
    line_4 = "#Ignores defense"
}

// Line 5 - Base critical hit chance
line_5 = "";
if (global.Weapon_stats[# item_id, 8] > 0)
{
    line_5 = "#Critical hit chance: " + string(scr_crit_calc(item_id)) + "%"
}
else if (global.Weapon_stats[# item_id, 8] == 0)
{
    line_5 = "#Cannot critical hit"
}

// Line 6 - Added details
line_6 = "";
if (global.Weapon_stats[# item_id, 10] != -1)
{
    line_6 = "#" + string(global.Weapon_stats[# item_id, 10]);
}

output = "#" + line_0 + line_1 + line_2 + line_3 + line_4 + line_5 + line_6;
return(output);
