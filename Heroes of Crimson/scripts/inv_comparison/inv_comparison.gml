/// @description inv_comparison(equipment id, value 1, value 2);
/// @param equipment id
/// @param  value 1
/// @param  value 2
var eq_id, v1, v2;
eq_id = argument0;
v1 = argument1;
v2 = argument2;

if (eq_id != -1)
{
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
