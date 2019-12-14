/// @description  inv_calc_consinfo(item id, starting height);
/// @param item id
/// @param  starting height
var item_id, sh, ch;
item_id = argument0;
sh = argument1;     // Starting Height
ch = 18;            // Line Height

// Line 0 - HP healing
if (global.Cons_stats[# item_id, 0] != 0)
{
    ch += 18;
}

// Line 1 - MP healing
if (global.Cons_stats[# item_id, 1] != 0)
{
    ch += 18;
}

// Line 2 through 10 - Stat buffs
for (var i = 0; i <= 8 ; i ++)
{
    if (global.Cons_stats[# item_id, i + 2] != 0)
    {
        ch += 18;
    }
}

var height;
height = ch + 18;
return(height);
