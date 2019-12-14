/// @description inv_draw_itemstats(item id, starting height);
/// @param item id
/// @param  starting height
var item_id, sh, ch;
item_id = argument0;
sh = argument1;
ch = 18;

if (global.Item_stats[# item_id, 0] == 0) && (global.Item_stats[# item_id, 1] == 0) && (global.Item_stats[# item_id, 2] == 0) && (global.Item_stats[# item_id, 3] == 0) && 
(global.Item_stats[# item_id, 4] == 0) && (global.Item_stats[# item_id, 5] == 0) && (global.Item_stats[# item_id, 6] == 0) && (global.Item_stats[# item_id, 7] == 0) && (global.Item_stats[# item_id, 8] == 0)
{
    return(0);
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
        draw_set_color(scr_cformat($FFE9AA));
    }
    // Negative stats
    else if (global.Item_stats[# item_id, i] < 0)
    {
        line[1, i] = "-" + string(abs(global.Item_stats[# item_id, i])) + string(stat_name);
        draw_set_color(scr_cformat($FF3F4F));
    }
    
    draw_text_ext(inv_x - 315, inv_y + 47 + sh + ch, string_hash_to_newline(line[1, i]), 18, 285);
}

var height;
height = ch + 18;
return(height);
