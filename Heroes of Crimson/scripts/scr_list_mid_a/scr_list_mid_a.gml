/// @description scr_list_mid_a(); spr_items_40px
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
global.Item_stats[# nr, 7] = 6;   // Wealth
global.Item_stats[# nr, 8] = 7;   // Luck */

// nr = number, set it to the id of the item you're implementing
var nr;

nr = 150;
global.Item_info[# nr, 0] = "Wool Vestment";
global.Item_info[# nr, 1] = 0;
global.Item_info[# nr, 2] = item_type.mid_a;
global.Item_info[# nr, 3] = 1;
global.Item_info[# nr, 4] = "A warm and comfortable vestment made of a sheep's wool.";

global.Item_stats[# nr, 3] = 1;
global.Item_stats[# nr, 4] = 3;

nr = 151;
global.Item_info[# nr, 0] = "Leather Armor";
global.Item_info[# nr, 1] = 0;
global.Item_info[# nr, 2] = item_type.mid_a;
global.Item_info[# nr, 3] = 1;
global.Item_info[# nr, 4] = "Armor fashioned with some hardened leather.";

global.Item_stats[# nr, 3] = 2;
global.Item_stats[# nr, 4] = 6;

nr = 152;
global.Item_info[# nr, 0] = "Reinforced Leather Armor";
global.Item_info[# nr, 1] = 0;
global.Item_info[# nr, 2] = item_type.mid_a;
global.Item_info[# nr, 3] = 1;
global.Item_info[# nr, 4] = "Armor that's notably tougher than the usual leather armor. It's reinforced with small bits of plating.";

global.Item_stats[# nr, 3] = 3;
global.Item_stats[# nr, 4] = 9;
