/// @description inv_display_skillstats(item_id);
/// @param item_id
var item_id, output, line_0, line_1, line_2, line_3, line_4, line_5, line_6;
item_id = argument0;

// Line 0 - Mana cost
line_0 = "";
if global.Skill_stats[# item_id, 0] == 0
{
    line_0 = "#Doesn't use mana";
}
else if global.Skill_stats[# item_id, 0] != 0
{
    line_0 = "#Mana cost: " + string(global.Skill_stats[# item_id, 0]);
}

// Line 1 - Skill duration
line_1 = "";
if global.Skill_stats[# item_id, 1] != 0
{
    if global.Skill_stats[# item_id, 1] == 60
    {
        line_1 = "#Duration: " + scr_frame_to_time(global.Skill_stats[# item_id, 1]) + " second";
    }
    else if global.Skill_stats[# item_id, 1] != 60
    {
        line_1 = "#Duration: " + scr_frame_to_time(global.Skill_stats[# item_id, 1]) + " seconds";
    }
}

// Line 2 - Cast time
line_2 = "";
if global.Skill_stats[# item_id, 2] != 0
{
    if global.Skill_stats[# item_id, 2] == 60
    {
        line_2 = "#Cast time: " + scr_frame_to_time(global.Skill_stats[# item_id, 2]) + " second";
    }
    else if global.Skill_stats[# item_id, 2] != 60
    {
        line_2 = "#Cast time: " + scr_frame_to_time(global.Skill_stats[# item_id, 2]) + " seconds";
    }
}

// Line 3 - Cooldown time
line_3 = "";
if global.Skill_stats[# item_id, 3] != 0
{
    if global.Skill_stats[# item_id, 3] == 60
    {
        line_3 = "#Cooldown: " + scr_frame_to_time(global.Skill_stats[# item_id, 3]) + " second";
    }
    else if global.Skill_stats[# item_id, 3] != 60
    {
        line_3 = "#Cooldown: " + scr_frame_to_time(global.Skill_stats[# item_id, 3]) + " seconds";
    }
}

// Line 4 - Warm up time
line_4 = "";
if global.Skill_stats[# item_id, 4] != 0
{
    if global.Skill_stats[# item_id, 4] == 60
    {
        line_4 = "#Preparation time: " + scr_frame_to_time(global.Skill_stats[# item_id, 4]) + " second";
    }
    else if global.Skill_stats[# item_id, 4] != 60
    {
        line_4 = "#Preparation time: " + scr_frame_to_time(global.Skill_stats[# item_id, 4]) + " seconds";
    }
}

// Line 5 - Variable 1
line_5 = "";
if global.Skill_stats[# item_id, 5] != 0
{
    switch item_id
    {
        case 190:   line_5 = "#Life recovered: " + string(global.Skill_stats[# item_id, 5]);
                    break;
        case 191:   line_5 = "#Barrier life: " + string(global.Skill_stats[# item_id, 5]);
                    break;
    }
}

// Line 6 - Detailed description
line_6 = "";
if global.Skill_info[# item_id, 0] != -1
{
    line_6 = "#" + string(global.Skill_info[# item_id, 0]);
}

output = "#" + line_6 + "#" + line_0 + line_2 + line_1 + line_3 + line_4 + line_5;
return(output);
