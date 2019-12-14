/// @description inv_comp_itemstats(item id, starting height, current y);
/// @param item id
/// @param  starting height
/// @param  current y
var item_id, comp_id, sh, ch, cy;
item_id = argument0;
sh = argument1;
ch = 18;
cy = argument2;

if (cy == 0) || ((global.Item_stats[# item_id, 0] == 0) && (global.Item_stats[# item_id, 1] == 0) && (global.Item_stats[# item_id, 2] == 0) && (global.Item_stats[# item_id, 3] == 0) && 
(global.Item_stats[# item_id, 4] == 0) && (global.Item_stats[# item_id, 5] == 0) && (global.Item_stats[# item_id, 6] == 0) && (global.Item_stats[# item_id, 7] == 0) && (global.Item_stats[# item_id, 8] == 0))
{
    return(0);
}

// Define which item the stats need to be compared with
switch global.Item_info[# item_id, 2]
{
    case item_type.acc:
    comp_id = box[# 3, 0];
    break;
    
    case item_type.light_a:
    case item_type.mid_a:
    case item_type.heavy_a:
    comp_id = box[# 2, 0];
    break;
    
    case item_type.staff:
    case item_type.bow:
    case item_type.dagger:
    case item_type.sword:
    comp_id = box[# 0, 0];
    break;
    
    case item_type.spellbook:
    comp_id = box[# 1, 0];
    break;
}

if comp_id == -1
{
    comp_id = 29; // 29 is an undefined item which has all stats set to 0
}

draw_set_color(scr_cformat(c_white));
draw_text_ext(inv_x - 315, inv_y + 47 + sh + ch, string_hash_to_newline("When equipped: "), 18, 285);

for (var i = 0; i <= 8 ; i ++)
{
    var stat_name = inv_draw_statname(i);
    
    line[1, i] = "";
    if (global.Item_stats[# item_id, i] != 0)
    {
        ch += 18;
    }
    // Positive stats
    if (global.Item_stats[# item_id, i] > 0)
    {
        line[1, i] = "+" + string(global.Item_stats[# item_id, i]) + string(stat_name);
        inv_comparison(comp_id, global.Item_stats[# item_id, i], global.Item_stats[# comp_id, i]);
    }
    // Negative stats
    else if (global.Item_stats[# item_id, i] < 0)
    {
        line[1, i] = "-" + string(abs(global.Item_stats[# item_id, i])) + string(stat_name);
        draw_set_color(fnt_color_neg);
    }
    
    draw_text_ext(inv_x - 315, inv_y + 47 + sh + ch, string_hash_to_newline(line[1, i]), 18, 285);
}

var height;
height = ch + 18;
return(height);
