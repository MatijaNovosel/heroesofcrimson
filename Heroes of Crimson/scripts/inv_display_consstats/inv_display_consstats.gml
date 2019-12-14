/// @description inv_display_consstats(item_id);
/// @param item_id
var item_id, output, line_0, line_1, line_2;
item_id = argument0;

// Line 0 - Life recovery over time
line_0 = "";
if global.Cons_stats[# item_id, 0] != 0
{
    if scr_recovertime_calc(item_id, "life") == 1
    {
        line_0 = "#Recovers " + string(global.Cons_stats[# item_id, 0]) + " HP over " + string_format(scr_recovertime_calc(item_id, "life"), 2, 2) + " second";
    }
    else if scr_recovertime_calc(item_id, "life") != 1
    {
        line_0 = "#Recovers " + string(global.Cons_stats[# item_id, 0]) + " HP over " + string_format(scr_recovertime_calc(item_id, "life"), 2, 2) + " seconds";
    }
}

// Line 1 - Mana recovery over time
line_1 = "";
if global.Cons_stats[# item_id, 2] != 0
{
    if scr_recovertime_calc(item_id, "mana") == 1
    {
        line_1 = "#Recovers " + string(global.Cons_stats[# item_id, 2]) + " MP over " + string_format(scr_recovertime_calc(item_id, "mana"), 2, 2) + " second";
    }
    else if scr_recovertime_calc(item_id, "mana") != 1
    {
        line_1 = "#Recovers " + string(global.Cons_stats[# item_id, 2]) + " MP over " + string_format(scr_recovertime_calc(item_id, "mana"), 2, 2) + " seconds";
    }
}

// Line 2 - Added note
line_2 = ""
if global.Cons_stats[# item_id, 4] != -1
{
    line_2 = "#" + string(global.Cons_stats[# item_id, 4]);
}

output = "#" + line_0 + line_1 + line_2;
return(output);
