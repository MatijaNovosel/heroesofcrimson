/// @description  scr_create_lt1();
// Dungeon: Chambers of the Undead
// Determine what rarity the spawned bag should be
loot_rarity = 0;

// Determine the rarity of a loot bag and the rarity of multiple items
bag_drop_chance = 50;
seq_drop_chance = 20;

var i = 0;
unique_item_count = 0;  // Keep track of how many different items are in the loot table
lt_data[i, 0] = 8;      // Item ID, see spr_items_30px
lt_data[i, 1] = 50;     // Item weight

//Silver rings
for(a = 0; a < 8; a++) {
    i ++;
    unique_item_count++;
    lt_data[i, 0] = a;
    lt_data[i, 1] = 50;
}

//Golden rings
for(a = 10; a < 18; a++) {
    i ++;
    unique_item_count++;
    lt_data[i, 0] = a;
    lt_data[i, 1] = 30;
}

//Crystal rings
for (a = 20; a < 28; a ++)
{
    i ++;
    unique_item_count ++;
    lt_data[i, 0] = a;
    lt_data[i, 1] = 20;
}

//Hallowed rings
for (a = 30; a < 37; a ++)
{
    i ++;
    unique_item_count ++;
    lt_data[i, 0] = a;
    lt_data[i, 1] = 10;
}

//Dark rings
for (a = 40; a < 47; a ++)
{
    i ++;
    unique_item_count ++;
    lt_data[i, 0] = a;
    lt_data[i, 1] = 5;
}

//Snail god ring
i ++;
unique_item_count ++;
lt_data[i, 0] = 49;
lt_data[i, 1] = 1;

//Staves
for (a = 51; a < 53; a ++)
{
    i ++;
    unique_item_count ++;
    lt_data[i, 0] = a;
    lt_data[i, 1] = 40;
    lt_data[i, 1] -= 5;
}

//Science wand
i ++;
unique_item_count ++;
lt_data[i, 0] = 19;
lt_data[i, 1] = 5;

//Bows
for (a = 71; a < 83; a ++)
{
    i ++;
    unique_item_count ++;
    lt_data[i, 0] = a;
    lt_data[i, 1] = 60;
    lt_data[i, 1] -= 3;
}

//More bows
for (a = 85; a < 88; a ++)
{
    i ++;
    unique_item_count ++;
    lt_data[i, 0] = a;
    lt_data[i, 1] = 10;
}

//Swords
for (a = 111; a < 115; a ++)
{
    i ++;
    unique_item_count ++;
    lt_data[i, 0] = a;
    lt_data[i, 1] = 60;
    lt_data[i, 1] -= 10;
}

//Robes
for (a = 130; a < 133; a ++)
{
    i ++;
    unique_item_count ++;
    lt_data[i, 0] = a;
    lt_data[i, 1] = 60;
    lt_data[i, 1] -= 10;
}

//Leather armor
for (a = 150; a < 153; a ++)
{
    i ++;
    unique_item_count ++;
    lt_data[i, 0] = a;
    lt_data[i, 1] = 60;
    lt_data[i, 1] -= 10;
}

//Heavy armor
for (a = 170; a < 173; a ++)
{
    i ++;
    unique_item_count ++;
    lt_data[i, 0] = a;
    lt_data[i, 1] = 60;
    lt_data[i, 1] -= 10;
}

//More heavy armor
for (a = 180; a < 182; a ++)
{
    i ++;
    unique_item_count ++;
    lt_data[i, 0] = a;
    lt_data[i, 1] = 60;
    lt_data[i, 1] -= 15;
}

//Armor of divine faith
i++;
unique_item_count++;
lt_data[i, 0] = 182;
lt_data[i, 1] = 5;

//Dragons breath
i++;
unique_item_count++;
lt_data[i, 0] = 88;
lt_data[i, 1] = 5;

//Harkon sword
i++;
unique_item_count++;
lt_data[i, 0] = 120;
lt_data[i, 1] = 5;

//Reapers scythe
i++;
unique_item_count++;
lt_data[i, 0] = 123;
lt_data[i, 1] = 5;

for (var i = 0; i <= unique_item_count; i ++)
{
    lt_data[i, 2] = global.Item_info[# lt_data[i, 0], 1]; // Item rarity, see obj_inv
}
/*

for (var i = 0; i <= unique_item_count; i++) {
    if (i == 0)
    {
        range[i] = lt_data[i, 1];
        range[i] *= (1 + round(global.Total_wealth / 50) * lt_data[i, 2]);
    }
    else if (i > 0)
    {
        range[i] = range[i - 1] + lt_data[i, 1];
        range[i] *= (1 + round(global.Total_wealth / 50) * lt_data[i, 2]);
    }
}

*/