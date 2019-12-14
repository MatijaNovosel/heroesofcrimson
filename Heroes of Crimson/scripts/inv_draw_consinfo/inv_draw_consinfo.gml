/// @description inv_draw_consinfo(item id, starting height);
/// @param item id
/// @param  starting height
var item_id, sh, ch, line;
item_id = argument0;
sh = argument1; // Starting Height
ch = 18;        // Line Height

draw_set_color(scr_cformat(c_white));
draw_text_ext(inv_x - 315, inv_y + 47 + sh + ch, string_hash_to_newline("When used: "), 18, 285);

// Line 0 - HP healing
if (global.Cons_stats[# item_id, 0] != 0)
{
    ch += 18;
    line = "Recovers " + string(global.Cons_stats[# item_id, 0]) + " Life";
    
    draw_set_color(fnt_color_eq);
    draw_text_ext(inv_x - 315, inv_y + 47 + sh + ch, string_hash_to_newline(string(line)), 18, 285);
}

// Line 1 - MP healing
if (global.Cons_stats[# item_id, 1] != 0)
{
    ch += 18;
    line = "Recovers " + string(global.Cons_stats[# item_id, 1]) + " Mana";
    
    draw_set_color(fnt_color_eq);
    draw_text_ext(inv_x - 315, inv_y + 47 + sh + ch, string_hash_to_newline(string(line)), 18, 285);
}

// Line 2 through 10 - Stat buffs
for (var i = 0; i <= 8 ; i ++)
{
    var stat_name = inv_draw_statname(i);
    
    line = "";
    if (global.Cons_stats[# item_id, i + 2] != 0)
    {
        ch += 18;
    }
    // Positive buffs
    if (global.Cons_stats[# item_id, i + 2] > 0)
    {
        line = "+" + string(global.Cons_stats[# item_id, i + 2]) + string(stat_name);
        draw_set_color(fnt_color_eq);
    }
    // Negative buffs
    else if (global.Cons_stats[# item_id, i + 2] < 0)
    {
        line = "-" + string(abs(global.Cons_stats[# item_id, i + 2])) + string(stat_name);
        draw_set_color(fnt_color_neg);
    }
    
    draw_text_ext(inv_x - 315, inv_y + 47 + sh + ch, string_hash_to_newline(string(line)), 18, 285);
}

var height;
height = ch + 18;
return(height);
