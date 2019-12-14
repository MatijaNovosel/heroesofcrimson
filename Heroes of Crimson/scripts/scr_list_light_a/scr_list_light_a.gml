/// @description scr_list_light_a(); spr_items_40px
/* 
    TEMPLATE * * * * * * * * * *

global.Item_info[# nr, 0] = "Staff of Magic";       // Item name
global.Item_info[# nr, 1] = 4;                      // Item rarity (0 = common, 1 = uncommon, 2 = rare, 3 = epic, 4 = legendary, 5 = key)
global.Item_info[# nr, 2] = item_type.staff;        // Item type
global.Item_info[# nr, 3] = 1;                      // Maximum item stacksize

// Item description, enter -1 for no description
global.Item_info[# nr, 4] = "Now you're a magic girl.";

global.Item_stats[# nr, 0] = 10;  // Life
global.Item_stats[# nr, 1] = 20;  // Mana
global.Item_stats[# nr, 2] = 1;   // Attack
global.Item_stats[# nr, 3] = 2;   // Dexterity
global.Item_stats[# nr, 4] = 3;   // Defense
global.Item_stats[# nr, 5] = 4;   // Speed
global.Item_stats[# nr, 6] = 5;   // Wisdom
global.Item_stats[# nr, 7] = 6;   // Wealth */

// nr = number, set it to the id of the item you're implementing
var nr;

nr = 130;
global.Item_info[# nr, 0] = "Simple Robe";
global.Item_info[# nr, 1] = 0;
global.Item_info[# nr, 2] = item_type.light_a;
global.Item_info[# nr, 3] = 1;
global.Item_info[# nr, 4] = "A simplistic garb woven from silk. It offers next to no protection, but it is better than nothing.";

global.Item_stats[# nr, 2] = 1;
global.Item_stats[# nr, 4] = 2;

nr = 131;
global.Item_info[# nr, 0] = "Old Robe";
global.Item_info[# nr, 1] = 0;
global.Item_info[# nr, 2] = item_type.light_a;
global.Item_info[# nr, 3] = 1;
global.Item_info[# nr, 4] = "A dirty piece of clothing, wearing it would be considered unorthodox by some.";

global.Item_stats[# nr, 2] = 2;
global.Item_stats[# nr, 4] = 4;

nr = 132;
global.Item_info[# nr, 0] = "Robe of the Pupil";
global.Item_info[# nr, 1] = 0;
global.Item_info[# nr, 2] = item_type.light_a;
global.Item_info[# nr, 3] = 1;
global.Item_info[# nr, 4] = "A scholars uniform, it is enchanted with the most basic magic.";

global.Item_stats[# nr, 1] = 5;
global.Item_stats[# nr, 2] = 3;
global.Item_stats[# nr, 4] = 6;
global.Item_stats[# nr, 6] = 1;
