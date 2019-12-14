/// @description  scr_update_stat_total();
// Keep track of the player stat totals, making sure they don't drop below 1 or 0
global.Total_life = global.Base_life + global.Gear_life;
if global.Total_life <= 0
{
    global.Total_life = 1;
}

global.Total_mana = global.Base_mana + global.Gear_mana;
if global.Total_mana <= 0
{
    global.Total_mana = 0;
}

global.playerhp_max = global.Total_life;
global.playermp_max = global.Total_mana;

global.Total_attack = global.Base_attack + global.Gear_attack;
if global.Total_attack <= 0
{
    global.Total_attack = 0;
}

global.Total_dexterity = global.Base_dexterity + global.Gear_dexterity;
if global.Total_dexterity <= 0
{
    global.Total_dexterity = 0;
}

global.Total_defense = global.Base_defense + global.Gear_defense;
if global.Total_defense <= 0
{
    global.Total_defense = 0;
}

global.Total_speed = global.Base_speed + global.Gear_speed;
if global.Total_speed <= 0
{
    global.Total_speed = 0;
}

global.Total_wisdom = global.Base_wisdom + global.Gear_wisdom;
if global.Total_wisdom <= 0
{
    global.Total_wisdom = 0;
}

global.Total_wealth = global.Base_wealth + global.Gear_wealth;
if global.Total_wealth <= 0
{
    global.Total_wealth = 0;
}

global.Total_luck = global.Base_luck + global.Gear_luck;
if global.Total_luck <= 0
{
    global.Total_luck = 0;
}
