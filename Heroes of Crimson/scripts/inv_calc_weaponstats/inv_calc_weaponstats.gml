/// @description inv_calc_weaponstats(item id, starting height);
/// @param item id
/// @param  starting height
var item_id, sh, ch;
item_id = argument0;
sh = argument1;

// Line 0 - Damage and DPS * projectile count
ch = 18;

// Line 1 - Projectile count
ch += 18;

// Line 2 - Attacks per second
ch += 18;

// Line 3 - Critical hit chance
ch += 18;

// Line 4 - Projectile piercing
if (global.Weapon_stats[# item_id, 6] == 1)
{
    ch += 18;
}

// Line 5 - Projectile piercing
if (global.Weapon_stats[# item_id, 7] == 1)
{
    ch += 18;
}

// Line 6 - Added information
if (global.Weapon_stats[# item_id, 10] != -1)
{
    ch += 18;
}

var height;
height = ch + 18;
return(height);
