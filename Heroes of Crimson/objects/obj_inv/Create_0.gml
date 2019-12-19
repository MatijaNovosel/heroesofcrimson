/// @description Initialize the item list
// The amount of unique items in the game, see spr_items_40px
item_total = sprite_get_number(spr_items_40px);

global.Item_info = ds_grid_create(item_total, 5);
ds_grid_clear(global.Item_info, 0);

global.Item_stats = ds_grid_create(item_total, 9);
ds_grid_clear(global.Item_stats, 0);

global.Item_mods = ds_grid_create(item_total, 1);
ds_grid_clear(global.Item_mods, 0);

// Item type enumerator, see spr_itemsil
enum item_type {
    any, // Any item type
    acc, // Accessory
    light_a, // Light Armor
    mid_a, // Medium Armor
    heavy_a, // Heavy Armor
    cons, // Consumable
    staff, // Staff (weapon)
    bow, // Bow (weapon)
    dagger, // Dagger (weapon)
    sword, // Sword (weapon)
    spellbook // Spellbook (skill)
}

// Item prefix enumerator
enum item_prefix {
    none, // No bonus
    strong, // + Damage
    quick, // + Attack speed
    deadly, // + Crit chance
    vampiric, // + Life leech, - damage
    draining // + Mana leech, - damage
}

scr_list_rings();
scr_list_light_a();
scr_list_mid_a();
scr_list_heavy_a();
scr_list_staves();
scr_list_bows();
scr_list_swords();
scr_list_misc_items();

/// Initialize the weapon list
global.Weapon_stats = ds_grid_create(item_total, 11);
ds_grid_clear(global.Weapon_stats, 0);

global.Weapon_av = ds_grid_create(item_total, 6);
ds_grid_clear(global.Weapon_av, 0);

scr_wlist_staves();
scr_wlist_bows();
scr_wlist_swords();

/*

	Weapon stats template:
		
		global.Weapon_stats[# nr, 0] = -1000; // Minimum damage
		global.Weapon_stats[# nr, 1] = -1000; // Maximum damage
		global.Weapon_stats[# nr, 2] = -1000; // Attack speed - default is 1
		global.Weapon_stats[# nr, 3] = -1000; // Projectile count
		global.Weapon_stats[# nr, 4] = -1000; // Projectile speed
		global.Weapon_stats[# nr, 5] = -1000; // Projectile life (in seconds)
		global.Weapon_stats[# nr, 6] = 0; // Piercing - 0 or 1
		global.Weapon_stats[# nr, 7] = 0; // Armor pierce - 0 or 1
		global.Weapon_stats[# nr, 8] = 0; // Base crit chance
		global.Weapon_stats[# nr, 9] = obj_pl_staff_proj0; // Projectile type
		global.Weapon_stats[# nr, 10] = "You probably can't view this text."; // Added note
		
	Weapon audio/visual template:
	
		global.Weapon_av[# 0, 0] = spr_firebolt; // Projectile sprite index
		global.Weapon_av[# 0, 1] = snd_error; // Projectile sound effect
		global.Weapon_av[# 0, 2] = 0; // Projectile image index
		global.Weapon_av[# 0, 3] = 0; // Projectile image speed
		global.Weapon_av[# 0, 4] = 0; // Projectile image size
		global.Weapon_av[# 0, 5] = "str"; // Projectile sprite direction ("str" = straight, "dia" = diagonal or other values are possible)

*/

// Comparator
global.Weapon_stats[# 0, 0] = -1000;
global.Weapon_stats[# 0, 1] = -1000;
global.Weapon_stats[# 0, 2] = -1000;
global.Weapon_stats[# 0, 3] = -1000;
global.Weapon_stats[# 0, 4] = -1000;
global.Weapon_stats[# 0, 5] = -1000;
global.Weapon_stats[# 0, 6] = 0;
global.Weapon_stats[# 0, 7] = 0;
global.Weapon_stats[# 0, 8] = 0;
global.Weapon_stats[# 0, 9] = obj_pl_staff_proj0;
global.Weapon_stats[# 0, 10] = "You probably can't view this text.";

// Audio/visual
global.Weapon_av[# 0, 0] = spr_firebolt;
global.Weapon_av[# 0, 1] = snd_error;
global.Weapon_av[# 0, 2] = 0;
global.Weapon_av[# 0, 3] = 0;
global.Weapon_av[# 0, 4] = 0;
global.Weapon_av[# 0, 5] = "str";

// Initialize the skill list
global.Skill_info = ds_grid_create(item_total, 1);
ds_grid_clear(global.Skill_info, 0);

global.Skill_stats = ds_grid_create(item_total, 6);
ds_grid_clear(global.Skill_stats, 0);

var nr;
nr = 190;

// Level 1 Heal
global.Skill_info[# nr, 0] = "When used, the caster instantly recovers some health.";
global.Skill_info[# nr, 1] = item_type.spellbook;

global.Skill_stats[# nr, 0] = 200;
global.Skill_stats[# nr, 1] = 0;
global.Skill_stats[# nr, 2] = 0;
global.Skill_stats[# nr, 3] = 30;
global.Skill_stats[# nr, 4] = 0;
global.Skill_stats[# nr, 5] = 200;

nr = 191;

// Level 1 Barrier
global.Skill_info[# nr, 0] = "A barrier is formed around the caster, protecting them from any direct damage. When the barrier takes enough damage, it disappears and the caster is armor broken for 5 seconds.";
global.Skill_info[# nr, 1] = item_type.spellbook;

global.Skill_stats[# nr, 0] = 100;
global.Skill_stats[# nr, 1] = 600;
global.Skill_stats[# nr, 2] = 0;
global.Skill_stats[# nr, 3] = 300;
global.Skill_stats[# nr, 4] = 0;
global.Skill_stats[# nr, 5] = 200;

nr ++;
// Level 2 Barrier
global.Skill_stats[# nr, 0] = 100 + (1 * 10);
global.Skill_stats[# nr, 1] = 900 + (1 * 60);
global.Skill_stats[# nr, 2] = 0;
global.Skill_stats[# nr, 3] = 300;
global.Skill_stats[# nr, 4] = 0;
global.Skill_stats[# nr, 5] = 200 + (1 * 50);

nr = 192;

// Level 1 Haste
global.Skill_info[# nr, 0] = "The caster buffs his own movement speed, multiplying it by 1.5 times.";
global.Skill_info[# nr, 1] = item_type.spellbook;

global.Skill_stats[# nr, 0] = 75;
global.Skill_stats[# nr, 1] = 180;
global.Skill_stats[# nr, 2] = 0;
global.Skill_stats[# nr, 3] = 30;
global.Skill_stats[# nr, 4] = 0;
global.Skill_stats[# nr, 5] = 0;

//scr_slist_cleric();

/*
    Template * * * * * 

// Level 1 Barrier
global.Skill_stats[# nr, 0] = 100;     // Mana cost
global.Skill_stats[# nr, 1] = 900;     // Duration
global.Skill_stats[# nr, 2] = 0;       // Cast time
global.Skill_stats[# nr, 3] = 300;     // Cooldown
global.Skill_stats[# nr, 4] = 0;       // Warm up
global.Skill_stats[# nr, 5] = 0.25;    // Var1

/* */
/// Initialize the consumable list
global.Cons_stats = ds_grid_create(item_total, 11);
ds_grid_clear(global.Cons_stats, 0);

// Tier 1 HP pot
nr = 8;
global.Cons_stats[# nr, 0] = 100;

// Tier 1 MP pot
nr = 18;
global.Cons_stats[# nr, 1] = 100;

// Tier 1 R pot
nr = 28;
global.Cons_stats[# nr, 0] = 60;
global.Cons_stats[# nr, 1] = 60;

/*
    TEMPLATE
    
	// Stats
	// Life recovery amount
	global.Cons_stats[# nr, 0] = 100;

	// Mana recovery amount
	global.Cons_stats[# nr, 1] = 0;

	// Life buff
	global.Cons_stats[# nr, 2] = 0;

	// Mana buff
	global.Cons_stats[# nr, 3] = 0;

	// Attack buff
	global.Cons_stats[# nr, 4] = 0;

	// Dexterity buff
	global.Cons_stats[# nr, 5] = 0;

	// Defense buff
	global.Cons_stats[# nr, 6] = 0;

	// Speed buff
	global.Cons_stats[# nr, 7] = 0;

	// Wisdom buff
	global.Cons_stats[# nr, 8] = 0;

	// Wealth buff
	global.Cons_stats[# nr, 9] = 0;

	// Luck buff
	global.Cons_stats[# nr, 10] = 0;

	// Buff duration
	global.Cons_stats[# nr, 11] = 0;

*/

// Initialize the inventory object

width = 4;
height = 8;
box_size = 40;
box_spacing = 8;

show_inventory = false;
show_loot = false;

// Where will the inv be drawn?
inv_x = 598 // view_wview - 192; // 598 in a 800 width window;
inv_y = 18;

// Create the ds grids
// Item type
box = ds_grid_create(width, height);
ds_grid_clear(box, -1);

// Item quantity
count = ds_grid_create(width, height);
ds_grid_clear(count, 0);

// Item prefix
prefix = ds_grid_create(width, height);
ds_grid_clear(count, 0);

// Cell classes
class = ds_grid_create(width, height);
ds_grid_clear(class, 0);

// Set the cell classes, see spr_itemsil
switch(global.playerClass) {
    case(0): {
		class[# 0, 0] = item_type.staff; // Weapon slot
        class[# 1, 0] = item_type.spellbook; // Ability slot
        class[# 2, 0] = item_type.light_a; // Armor slot
		break;
	}
    case(1): {
        class[# 0, 0] = item_type.bow;
        class[# 1, 0] = item_type.spellbook;
        class[# 2, 0] = item_type.mid_a;
		break;
	}
    case(2): {
        class[# 0, 0] = item_type.sword;
        class[# 1, 0] = item_type.spellbook;
        class[# 2, 0] = item_type.heavy_a;
		break;
	}
}

// Set the accessory slot
class[# 3, 0] = item_type.acc;

// Set the swap-out slots equal to the ones above them
class[# 0, 1] = class[# 0, 0];
class[# 1, 1] = class[# 1, 0];

// Set the consumable slots
class[# 2, 1] = item_type.cons;
class[# 3, 1] = item_type.cons;

// Initialize the mouse item system
// Keep track of the mouse item and stacksize
mouse_item = -1;
mouse_count = 0;

// Track in which cell the mouse item was, before it was taken
mouse_item_px = -1;
mouse_item_py = -1;

// Mouse item x and y scales, these are used to give the player visual feedback that an item is being picked up
mouse_item_xs = 1;
mouse_item_ys = 1;

// Mouse item alpha, this provides visual feedback when moving items
mouse_item_alpha = 0.25;
mouse_item_alpha_state = 1;

// Right click cooldowns, used for rapid-taking items from stacks
rclick_cd_number = 5;
rclick_cd_time = 0;

rclick_cd[5] = 40;
rclick_cd[4] = 30;
rclick_cd[3] = 20;
rclick_cd[2] = 10;
rclick_cd[1] = 5;
rclick_cd[0] = 0;

// Set some variables for the font colors
fnt_color_pos = scr_cformat($9FFF3F);       // Positive/better stats
fnt_color_neg = scr_cformat($FF3F4F);       // Negatieve/worse stats
fnt_color_eq = scr_cformat($FFE9AA);        // Equal stats
fnt_color_spe = scr_cformat($B266FF);       // Special text

// Initialize some variables for drawing the item tooltip
// Item info
for(i = 0; i < 3; i++) {
    line[0, i] = "";
}

// Item stats
for(i = 0; i < 9; i++) {
    line[1, i] = "";
}

// Item description
line[2, 0] = "";

// Weapon stats
for(i = 0; i < 9; i++) {
    line[3, i] = "";
}

// Start with some items to save time spawning them in

if(global.playerClass == 2) {
    box[# 0, 0] = 110;
    count[# 0, 0] = 1;
} else if(global.playerClass == 1) {
    box[# 0, 0] = 70;
    count[# 0, 0] = 1;
} else {
    box[# 0, 0] = 50;
    count[# 0, 0] = 1;
}