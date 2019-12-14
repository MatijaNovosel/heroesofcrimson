/// @description scr_list_mid_a(); spr_items_40px
/* 
    TEMPLATE * * * * * * * * * *

global.Item_info[# nr, 0] = "Staff of Magic";       // Item name
global.Item_info[# nr, 1] = 4;                      // Item rarity (0 = common, 1 = uncommon, 2 = rare, 3 = epic, 4 = legendary, 5 = key)
global.Item_info[# nr, 2] = item_type.staff;        // Item type
global.Item_info[# nr, 3] = 1;                      // Maximum item stacksize

// Item description, enter -1 for no description
global.Item_info[# nr, 4] = "Now you're a magic girl.";

// Added info, enter -1 for no info
global.Item_info[# nr, 5] = "Can prevent death.";

global.Item_stats[# nr, 0] = 10;  // Life
global.Item_stats[# nr, 1] = 20;  // Mana
global.Item_stats[# nr, 2] = 1;   // Attack
global.Item_stats[# nr, 3] = 2;   // Dexterity
global.Item_stats[# nr, 4] = 3;   // Defense
global.Item_stats[# nr, 5] = 4;   // Speed
global.Item_stats[# nr, 6] = 5;   // Wisdom
global.Item_stats[# nr, 7] = 6;   // Wealth
global.Item_stats[# nr, 8] = 7;   // Luck */

// nr = number, set it to the id of the item you're implementing
var nr;

nr = 170;
global.Item_info[# nr, 0] = "Wooden Armor";
global.Item_info[# nr, 1] = 0;
global.Item_info[# nr, 2] = item_type.heavy_a;
global.Item_info[# nr, 3] = 1;
global.Item_info[# nr, 4] = "A crudely made set of armor composed of twigs and logs.";

global.Item_stats[# nr, 4] = 4;
global.Item_stats[# nr, 5] = -2;

nr = 171;
global.Item_info[# nr, 0] = "Silver Armor";
global.Item_info[# nr, 1] = 0;
global.Item_info[# nr, 2] = item_type.heavy_a;
global.Item_info[# nr, 3] = 1;
global.Item_info[# nr, 4] = "A finely made armor, it consists of interlocked plates and rings of pure silver.";

global.Item_stats[# nr, 4] = 8;
global.Item_stats[# nr, 5] = -4;

nr = 172;
global.Item_info[# nr, 0] = "Gladiator Armor";
global.Item_info[# nr, 1] = 2;
global.Item_info[# nr, 2] = item_type.heavy_a;
global.Item_info[# nr, 3] = 1;
global.Item_info[# nr, 4] = "A blood stained hauberk worn by vicious gladiators.";

global.Item_stats[# nr, 4] = 12;
global.Item_stats[# nr, 5] = -6;

nr = 180;
global.Item_info[# nr, 0] = "Rusty Iron Armor";
global.Item_info[# nr, 1] = 0;
global.Item_info[# nr, 2] = item_type.heavy_a;
global.Item_info[# nr, 3] = 1;
global.Item_info[# nr, 4] = "A salvaged piece of armor that once belonged to an old, now deceased soldier. It is very frail and eroded.";

global.Item_stats[# nr, 4] = 5;
global.Item_stats[# nr, 5] = -3;

nr = 181;
global.Item_info[# nr, 0] = "Glistening Gold Plate";
global.Item_info[# nr, 1] = 1;
global.Item_info[# nr, 2] = item_type.heavy_a;
global.Item_info[# nr, 3] = 1;
global.Item_info[# nr, 4] = "A beautiful vestment worn only by noblemen. It shines and sparkles when struck by sunbeams.";

global.Item_stats[# nr, 4] = 10;
global.Item_stats[# nr, 5] = -5;

nr = 182;
global.Item_info[# nr, 0] = "Armor of Divine Faith";
global.Item_info[# nr, 1] = 4;
global.Item_info[# nr, 2] = item_type.heavy_a;
global.Item_info[# nr, 3] = 1;
global.Item_info[# nr, 4] = "A faithful crusaders hauberk, it has been thrice blessed by holy enchantments. The Gods themselves smile upon the wearer.";

global.Item_stats[# nr, 0] = 20;
global.Item_stats[# nr, 4] = 5;
global.Item_stats[# nr, 5] = 5;
