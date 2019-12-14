/// @description inv_comparison_dmg(equipment id, value 1);
/// @param equipment id
/// @param  value 1
var eq_id, v1, v2;
eq_id = argument0;

if (eq_id != -1)
{
    v1 = ((global.Weapon_stats[# argument1, 0] + global.Weapon_stats[# argument1, 1]) / 2)
    v2 = ((global.Weapon_stats[# argument0, 0] + global.Weapon_stats[# argument0, 1]) / 2)
    
    // If the equipped item has HIGHER stats than the compared item OR no item is equipped
    if (v1 > v2)
    {
        draw_set_color(fnt_color_pos);
    }
    // If the equipped item has LOWER stats than the compared item
    else if (v1 < v2)
    {
        draw_set_color(fnt_color_neg);
    }
    // If the equipped item has EQUAL stats than the compared item
    else if (v1 == v2)
    {
        draw_set_color(fnt_color_eq);
    }
}
else if (eq_id == -1)
{
    draw_set_color(fnt_color_pos);
}
