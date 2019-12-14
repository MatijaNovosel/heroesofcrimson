lb_value = global.bossLasthit.gear_loot_bonus + global.bossLasthit.next_loot_bonus;

lifespan = 120;

color_timer = 18;
if lb_value = 0
{
    color = $FF3232;
}
else
{
    color = $ADFE46;
}
alpha = 1;

