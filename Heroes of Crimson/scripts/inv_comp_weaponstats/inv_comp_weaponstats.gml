/// @description inv_comp_weaponstats(item id, starting height);
/// @param item id
/// @param  starting height
var item_id, comp_id, sh, ch;
item_id = argument0;
sh = argument1;
ch = 18;

// Define which item the stats need to be compared with
comp_id = box[# 0, 0];
if comp_id == -1
{
    comp_id = 29; // 29 is an undefined item which has all stats set to 0
}

// Line 0 - Damage and DPS * projectile count
line[3, 0] = "Damage: " + string(global.Weapon_stats[# item_id, 0]) + " - " + string(global.Weapon_stats[# item_id, 1]); // + " (DPS: " + string(scr_wepdpscalc(item_id)) + ")";// + " x " + string(global.Weapon_stats[# item_id, 3]) + ")";

inv_comparison_dmg(comp_id, item_id);
draw_text_ext(inv_x - 315, inv_y + 47 + sh + ch, string_hash_to_newline(line[3, 0]), 18, 285);

// Line 1 - Projectile count
ch += 18;
line[3, 1] = "Projectiles: " + string(global.Weapon_stats[# item_id, 3]);

inv_comparison(comp_id, global.Weapon_stats[# item_id, 3], global.Weapon_stats[# comp_id, 3]);
draw_text_ext(inv_x - 315, inv_y + 47 + sh + ch, string_hash_to_newline(line[3, 1]), 18, 285);

// Line 2 - Attacks per second
ch += 18;
line[3, 2] = "Attacks per second: " + string_format(scr_wepapscalc(item_id), 2, 2);

inv_comparison_aps(comp_id, item_id);
draw_text_ext(inv_x - 315, inv_y + 47 + sh + ch, string_hash_to_newline(line[3, 2]), 18, 285);

// Line 3 - Critical hit chance
if (global.Weapon_stats[# item_id, 8] > 0)
{
    ch += 18;
    line[3, 3] = "Critical hit chance: " + string(scr_crit_calc(item_id)) + "%"
    
    inv_comparison_crit(comp_id, item_id);
    draw_text_ext(inv_x - 315, inv_y + 47 + sh + ch, string_hash_to_newline(line[3, 3]), 18, 285);
}
else if (global.Weapon_stats[# item_id, 8] == 0)
{
    ch += 18;
    line[3, 3] = "Cannot critically hit"
    
    draw_set_color(fnt_color_neg);
    draw_text_ext(inv_x - 315, inv_y + 47 + sh + ch, string_hash_to_newline(line[3, 3]), 18, 285);
}

// Line 4 - Projectile piercing
line[3, 4] = "";
if (global.Weapon_stats[# item_id, 6] == 1)
{
    ch += 18;
    line[3, 4] = "Can hit multiple enemies"
    
    inv_comparison(comp_id, global.Weapon_stats[# item_id, 6], global.Weapon_stats[# comp_id, 6]);
    draw_text_ext(inv_x - 315, inv_y + 47 + sh + ch, string_hash_to_newline(line[3, 4]), 18, 285);
}

// Line 5 - Armor piercing
line[3, 5] = "";
if (global.Weapon_stats[# item_id, 7] == 1)
{
    ch += 18;
    line[3, 5] = "Ignores the enemy's defense"
    
    inv_comparison(comp_id, global.Weapon_stats[# item_id, 7], global.Weapon_stats[# comp_id, 7]);
    draw_text_ext(inv_x - 315, inv_y + 47 + sh + ch, string_hash_to_newline(line[3, 5]), 18, 285);
}

// Line 6 - Added information
line[3, 6] = "";
if (global.Weapon_stats[# item_id, 10] != -1)
{
    ch += 18;
    line[3, 6] = string(global.Weapon_stats[# item_id, 10]);
    
    draw_set_color(fnt_color_spe);
    draw_text_ext(inv_x - 315, inv_y + 47 + sh + ch, string_hash_to_newline(line[3, 6]), 18, 285);
}

var height;
height = ch + 18;
return(height);
