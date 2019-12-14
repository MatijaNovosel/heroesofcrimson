/// @description  scr_wlist_swords();
var nr, def_rof, def_proj_count, def_vel, def_life, def_crit, def_spr, def_snd, def_ims, def_size, def_dir;
def_rof = 0.75;
def_proj_count = 1;
def_vel = 20;
def_life = 0.0875;
def_crit = 0.25;

def_spr = spr_tail;
def_snd = snd_attack_sword0;
def_ims = 0;
def_size = 4;
def_dir = "dia";

// Wooden Sword
nr = 110;
global.Weapon_stats[# nr, 0] = 30;
global.Weapon_stats[# nr, 1] = 50;
global.Weapon_stats[# nr, 2] = def_rof;
global.Weapon_stats[# nr, 3] = def_proj_count;
global.Weapon_stats[# nr, 4] = def_vel;
global.Weapon_stats[# nr, 5] = def_life;
global.Weapon_stats[# nr, 6] = 0; // Piercing
global.Weapon_stats[# nr, 8] = def_crit;
global.Weapon_stats[# nr, 9] = obj_pl_staff_proj0;
global.Weapon_stats[# nr, 10] = -1;

global.Weapon_av[# nr, 0] = def_spr;
global.Weapon_av[# nr, 1] = def_snd;
global.Weapon_av[# nr, 2] = 10; // Image index
global.Weapon_av[# nr, 3] = def_ims;
global.Weapon_av[# nr, 4] = def_size;
global.Weapon_av[# nr, 5] = def_dir;

// Iron sword
nr = 111;
global.Weapon_stats[# nr, 0] = 40;
global.Weapon_stats[# nr, 1] = 60;
global.Weapon_stats[# nr, 2] = def_rof;
global.Weapon_stats[# nr, 3] = def_proj_count;
global.Weapon_stats[# nr, 4] = def_vel;
global.Weapon_stats[# nr, 5] = def_life;
global.Weapon_stats[# nr, 6] = 0; // Piercing
global.Weapon_stats[# nr, 8] = def_crit;
global.Weapon_stats[# nr, 9] = obj_pl_staff_proj0;
global.Weapon_stats[# nr, 10] = -1;

global.Weapon_av[# nr, 0] = def_spr;
global.Weapon_av[# nr, 1] = def_snd;
global.Weapon_av[# nr, 2] = 10; // Image index
global.Weapon_av[# nr, 3] = def_ims;
global.Weapon_av[# nr, 4] = def_size;
global.Weapon_av[# nr, 5] = def_dir;

// Falchion
nr = 112;
global.Weapon_stats[# nr, 0] = 50;
global.Weapon_stats[# nr, 1] = 75;
global.Weapon_stats[# nr, 2] = def_rof;
global.Weapon_stats[# nr, 3] = def_proj_count;
global.Weapon_stats[# nr, 4] = def_vel;
global.Weapon_stats[# nr, 5] = def_life;
global.Weapon_stats[# nr, 6] = 0; // Piercing
global.Weapon_stats[# nr, 8] = def_crit;
global.Weapon_stats[# nr, 9] = obj_pl_staff_proj0;
global.Weapon_stats[# nr, 10] = -1;

global.Weapon_av[# nr, 0] = def_spr;
global.Weapon_av[# nr, 1] = def_snd;
global.Weapon_av[# nr, 2] = 10; // Image index
global.Weapon_av[# nr, 3] = def_ims;
global.Weapon_av[# nr, 4] = def_size;
global.Weapon_av[# nr, 5] = def_dir;

// Crystalline sword
nr = 113;
global.Weapon_stats[# nr, 0] = 60;
global.Weapon_stats[# nr, 1] = 90;
global.Weapon_stats[# nr, 2] = 1.1
global.Weapon_stats[# nr, 3] = def_proj_count;
global.Weapon_stats[# nr, 4] = def_vel;
global.Weapon_stats[# nr, 5] = def_life;
global.Weapon_stats[# nr, 6] = 0; // Piercing
global.Weapon_stats[# nr, 8] = def_crit;
global.Weapon_stats[# nr, 9] = obj_pl_staff_proj0;
global.Weapon_stats[# nr, 10] = -1;

global.Weapon_av[# nr, 0] = def_spr;
global.Weapon_av[# nr, 1] = def_snd;
global.Weapon_av[# nr, 2] = 5; // Image index
global.Weapon_av[# nr, 3] = def_ims;
global.Weapon_av[# nr, 4] = def_size;
global.Weapon_av[# nr, 5] = def_dir;

// Blade of Demonfire
nr = 114;
global.Weapon_stats[# nr, 0] = 30;
global.Weapon_stats[# nr, 1] = 55;
global.Weapon_stats[# nr, 2] = 1.3
global.Weapon_stats[# nr, 3] = 2;
global.Weapon_stats[# nr, 4] = def_vel;
global.Weapon_stats[# nr, 5] = 0.035;
global.Weapon_stats[# nr, 6] = 0; // Piercing
global.Weapon_stats[# nr, 8] = def_crit;
global.Weapon_stats[# nr, 9] = obj_pl_staff_proj0;
global.Weapon_stats[# nr, 10] = -1;

global.Weapon_av[# nr, 0] = def_spr;
global.Weapon_av[# nr, 1] = def_snd;
global.Weapon_av[# nr, 2] = 1; // Image index
global.Weapon_av[# nr, 3] = def_ims;
global.Weapon_av[# nr, 4] = def_size;
global.Weapon_av[# nr, 5] = def_dir;

// Blade of the Harkon Clan
nr = 120;
global.Weapon_stats[# nr, 0] = 20;
global.Weapon_stats[# nr, 1] = 60;
global.Weapon_stats[# nr, 2] = 1
global.Weapon_stats[# nr, 3] = def_proj_count;
global.Weapon_stats[# nr, 4] = def_vel;
global.Weapon_stats[# nr, 5] = def_life;
global.Weapon_stats[# nr, 6] = 0; // Piercing
global.Weapon_stats[# nr, 8] = def_crit;
global.Weapon_stats[# nr, 9] = obj_pl_staff_proj0;
global.Weapon_stats[# nr, 10] = "Constant global.lifesteal effect";

global.Weapon_av[# nr, 0] = spr_bolt;
global.Weapon_av[# nr, 1] = def_snd;
global.Weapon_av[# nr, 2] = 0; // Image index
global.Weapon_av[# nr, 3] = def_ims;
global.Weapon_av[# nr, 4] = def_size;
global.Weapon_av[# nr, 5] = def_dir;

// The Reapers Scythe
nr = 123;
global.Weapon_stats[# nr, 0] = 50;
global.Weapon_stats[# nr, 1] = 70;
global.Weapon_stats[# nr, 2] = 1;
global.Weapon_stats[# nr, 3] = def_proj_count;
global.Weapon_stats[# nr, 4] = def_vel;
global.Weapon_stats[# nr, 5] = 0.125;
global.Weapon_stats[# nr, 6] = 1; // Piercing
global.Weapon_stats[# nr, 8] = def_crit;
global.Weapon_stats[# nr, 9] = obj_pl_staff_proj0;
global.Weapon_stats[# nr, 10] = -1;

global.Weapon_av[# nr, 0] = spr_crescent;
global.Weapon_av[# nr, 1] = def_snd;
global.Weapon_av[# nr, 2] = 0; // Image index
global.Weapon_av[# nr, 3] = 0;
global.Weapon_av[# nr, 4] = def_size;
global.Weapon_av[# nr, 5] = "ran";

// Tyrants Brachium
nr = 260;
global.Weapon_stats[# nr, 0] = 40;
global.Weapon_stats[# nr, 1] = 80;
global.Weapon_stats[# nr, 2] = 0.25;
global.Weapon_stats[# nr, 3] = 3;
global.Weapon_stats[# nr, 4] = def_vel;
global.Weapon_stats[# nr, 5] = 0.25
global.Weapon_stats[# nr, 6] = 1; // Piercing
global.Weapon_stats[# nr, 8] = def_crit;
global.Weapon_stats[# nr, 9] = obj_pl_staff_proj0;
global.Weapon_stats[# nr, 10] = -1;

global.Weapon_av[# nr, 0] = spr_pulse;
global.Weapon_av[# nr, 1] = def_snd;
global.Weapon_av[# nr, 2] = 0; // Image index
global.Weapon_av[# nr, 3] = 0;
global.Weapon_av[# nr, 4] = def_size;
global.Weapon_av[# nr, 5] = "dir";