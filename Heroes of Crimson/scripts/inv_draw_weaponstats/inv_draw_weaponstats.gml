/// @description inv_draw_weaponstats(item id, starting height);
/// @param item id
/// @param  starting height
var item_id, sh, ch;
item_id = argument0;
sh = argument1;
ch = 18;

// Line 0 - Damage and DPS * projectile count
line[3, 0] = "Damage: " + string(global.Weapon_stats[# item_id, 0]) + " - " + string(global.Weapon_stats[# item_id, 1]);// + " (DPS: " + string(scr_wepdpscalc(item_id)) + ")";// + " x " + string(global.Weapon_stats[# item_id, 3]) + ")";

draw_set_color(scr_cformat($FFE9AA));
draw_text_ext(inv_x - 315, inv_y + 47 + sh + ch, string_hash_to_newline(line[3, 0]), 18, 285);

// Line 1 - Projectile count
ch += 18;
line[3, 1] = "Projectiles: " + string(global.Weapon_stats[# item_id, 3]);

draw_set_color(scr_cformat($FFE9AA));
draw_text_ext(inv_x - 315, inv_y + 47 + sh + ch, string_hash_to_newline(line[3, 1]), 18, 285);

// Line 2 - Attacks per second
ch += 18;
line[3, 2] = "Attacks per second: " + string_format(scr_wepapscalc(item_id), 2, 2);

draw_set_color(scr_cformat($FFE9AA));
draw_text_ext(inv_x - 315, inv_y + 47 + sh + ch, string_hash_to_newline(line[3, 2]), 18, 285);

// Line 3 - Critical hit chance
if (global.Weapon_stats[# item_id, 8] > 0)
{
    ch += 18;
    line[3, 3] = "Critical hit chance: " + string(scr_crit_calc(item_id)) + "%"
    
    draw_set_color(scr_cformat($FFE9AA));
    draw_text_ext(inv_x - 315, inv_y + 47 + sh + ch, string_hash_to_newline(line[3, 3]), 18, 285);
}
else if (global.Weapon_stats[# item_id, 8] == 0)
{
    ch += 18;
    line[3, 3] = "Cannot critically hit"
    
    draw_set_color(scr_cformat($FF3F4F));
    draw_text_ext(inv_x - 315, inv_y + 47 + sh + ch, string_hash_to_newline(line[3, 3]), 18, 285);
}

// Line 4 - Projectile piercing
line[3, 4] = "";
if (global.Weapon_stats[# item_id, 6] == 1)
{
    ch += 18;
    line[3, 4] = "Can hit multiple enemies"
    
    draw_set_color(scr_cformat($FFE9AA));
    draw_text_ext(inv_x - 315, inv_y + 47 + sh + ch, string_hash_to_newline(line[3, 4]), 18, 285);
}

// Line 5 - Projectile piercing
line[3, 5] = "";
if (global.Weapon_stats[# item_id, 7] == 1)
{
    ch += 18;
    line[3, 5] = "Ignores the enemy's defense"
    
    draw_set_color(scr_cformat($FFE9AA));
    draw_text_ext(inv_x - 315, inv_y + 47 + sh + ch, string_hash_to_newline(line[3, 5]), 18, 285);
}

// Line 6 - Added information
line[3, 6] = "";
if (global.Weapon_stats[# item_id, 10] != -1)
{
    ch += 18;
    line[3, 6] = string(global.Weapon_stats[# item_id, 10]);
    
    draw_set_color(scr_cformat($B266FF));
    draw_text_ext(inv_x - 315, inv_y + 47 + sh + ch, string_hash_to_newline(line[3, 6]), 18, 285);
}

var height;
height = ch + 18;
return(height);
