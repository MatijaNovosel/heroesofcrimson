/// @description inv_display_itemstats(item id);
/// @param item id
var output, item_id;
item_id = argument0;

if (global.Item_stats[# item_id, 0] == 0) && (global.Item_stats[# item_id, 1] == 0) && (global.Item_stats[# item_id, 2] == 0) && (global.Item_stats[# item_id, 3] == 0) && 
(global.Item_stats[# item_id, 4] == 0) && (global.Item_stats[# item_id, 5] == 0) && (global.Item_stats[# item_id, 6] == 0) && (global.Item_stats[# item_id, 7] == 0) && (global.Item_stats[# item_id, 8] == 0)
{
    output = "";
    return(output);
}

// Normally I'd start at line_0, but I'm lazy-- sorry future self!
// Line 1 - Life
line[3] = "";
if (global.Item_stats[# item_id, 0] > 0)
{
    line[3] = "+" + string(global.Item_stats[# item_id, 0]) + " Life";
}
else if (global.Item_stats[# item_id, 0] < 0)
{
    line[3] = "-" + string(abs(global.Item_stats[# item_id, 0])) + " Life";
}

// Line 2 - Mana
line[4] = "";
if (global.Item_stats[# item_id, 1] > 0)
{
    line[4] = "+" + string(global.Item_stats[# item_id, 1]) + " Mana";
}
else if (global.Item_stats[# item_id, 1] < 0)
{
    line[4] = "-" + string(abs(global.Item_stats[# item_id, 1])) + " Mana";
}

// Line 3 - Attack
line[5] = "";
if (global.Item_stats[# item_id, 2] > 0)
{
    line[5] = "+" + string(global.Item_stats[# item_id, 2]) + " Attack";
}
else if (global.Item_stats[# item_id, 2] < 0)
{
    line[5] = "-" + string(abs(global.Item_stats[# item_id, 2])) + " Attack";
}

// Line 4 - Dexterity
line[6] = "";
if (global.Item_stats[# item_id, 3] > 0)
{
    line[6] = "+" + string(global.Item_stats[# item_id, 3]) + " Dexterity";
}
else if (global.Item_stats[# item_id, 3] < 0)
{
    line[6] = "-" + string(abs(global.Item_stats[# item_id, 3])) + " Dexterity";
}

// Line 5 - Defense
line[7] = "";
if (global.Item_stats[# item_id, 4] > 0)
{
    line[7] = "+" + string(global.Item_stats[# item_id, 4]) + " Defense";
}
else if (global.Item_stats[# item_id, 4] < 0)
{
    line[7] = "-" + string(abs(global.Item_stats[# item_id, 4])) + " Defense";
}

// Line 6 - Speed
line[8] = "";
if (global.Item_stats[# item_id, 5] > 0)
{
    line[8] = "+" + string(global.Item_stats[# item_id, 5]) + " Speed";
}
else if (global.Item_stats[# item_id, 5] < 0)
{
    line[8] = "-" + string(abs(global.Item_stats[# item_id, 5])) + " Speed";
}

// Line 7 - Wisdom
line[9] = "";
if (global.Item_stats[# item_id, 6] > 0)
{
    line[9] = "+" + string(global.Item_stats[# item_id, 6]) + " Wisdom";
}
else if (global.Item_stats[# item_id, 6] < 0)
{
    line[9] = "-" + string(abs(global.Item_stats[# item_id, 6])) + " Wisdom";
}

// Line 8 - Wealth
line[10] = "";
if (global.Item_stats[# item_id, 7] > 0)
{
    line[10] = "+" + string(global.Item_stats[# item_id, 7]) + " Wealth";
}
else if (global.Item_stats[# item_id, 7] < 0)
{
    line[10] = "-" + string(abs(global.Item_stats[# item_id, 7])) + " Wealth";
}

// Line 9 - Luck
line[11] = "";
if (global.Item_stats[# item_id, 8] > 0)
{
    line[11] = "+" + string(global.Item_stats[# item_id, 8]) + " Luck";
}
else if (global.Item_stats[# item_id, 8] < 0)
{
    line[11] = "-" + string(abs(global.Item_stats[# item_id, 8])) + " Luck";
}

output = "When equipped:" + line[3] + line[4] + line[5] + line[6] + line[7] + line[8] + line[9] + line[10] + line[11];
return(output);
