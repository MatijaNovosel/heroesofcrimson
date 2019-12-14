/// @description  scr_roll_itemq(lootbag chance, seq. items chance);
/// @param lootbag chance
/// @param  seq. items chance
var lb_chance, seq_chance, rng, q;
lb_chance = argument0;
seq_chance = argument1;

// Check if the player has the rich buff
var rich_buff;
if scr_status_find(status.rich, global.playerInstance)
{
    rich_buff = 1.5;
}
else
{
    rich_buff = 1;
}

// Enhance the chance for (extra) loot with the wealth stat
lb_chance *= (1 + ( (global.Total_wealth / 25) * (rich_buff)));
lb_chance = clamp(lb_chance, 0, 100);

seq_chance *= (1 + ( (global.Total_wealth / 25) * (rich_buff)));
seq_chance = clamp(seq_chance, 0, 100);

q = 0;
// Calculate the chance for the bag and its first item to spawn
rng = irandom(100);
if rng > (100 - lb_chance)
{
    q ++;
}

// Calculate the chance for each item after that to spawn
if (q == 1)
{
    for (var i = 0; i < 7; i ++)
    {
        rng = irandom(100);
        if rng > (100 - seq_chance)
        {
            q ++;
        }
    }
}

return (q);
