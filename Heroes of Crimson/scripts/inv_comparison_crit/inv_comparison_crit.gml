/// @description inv_comparison_crit(equipment id, value 1);
/// @param equipment id
/// @param  value 1
var eq_id, v1, v2;
eq_id = argument0;

if (eq_id != -1)
{
    v1 = scr_crit_calc(argument1);
    v2 = scr_crit_calc(argument0);
    
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
