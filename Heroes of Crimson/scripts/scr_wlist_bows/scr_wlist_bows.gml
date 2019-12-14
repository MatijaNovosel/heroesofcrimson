/// @description scr_wlist_bows();
var nr, def_rof, def_vel, def_life, def_crit, def_spr, def_snd, def_ims, def_size, def_dir;
def_rof = 0.75;
def_vel = 25;
def_life = 0.25;
def_crit = 0.5;

def_spr = spr_arrow;
def_snd = snd_attack_bow0;
def_ims = 0;
def_size = 4;
def_dir = "dia";

// Wooden Bow
nr = 70;
global.Weapon_stats[# nr, 0] = 10;
global.Weapon_stats[# nr, 1] = 20;
global.Weapon_stats[# nr, 2] = def_rof;
global.Weapon_stats[# nr, 3] = 1;
global.Weapon_stats[# nr, 4] = def_vel;
global.Weapon_stats[# nr, 5] = def_life;
global.Weapon_stats[# nr, 6] = 1;
global.Weapon_stats[# nr, 8] = def_crit;
global.Weapon_stats[# nr, 9] = obj_pl_staff_proj0;
global.Weapon_stats[# nr, 10] = -1;

global.Weapon_av[# nr, 0] = def_spr;
global.Weapon_av[# nr, 1] = def_snd;
global.Weapon_av[# nr, 2] = 10;
global.Weapon_av[# nr, 3] = def_ims;
global.Weapon_av[# nr, 4] = def_size;
global.Weapon_av[# nr, 5] = def_dir;

// Elven Bow
nr = 71;
global.Weapon_stats[# nr, 0] = 10;
global.Weapon_stats[# nr, 1] = 20;
global.Weapon_stats[# nr, 2] = def_rof + 0.125;
global.Weapon_stats[# nr, 3] = 1;
global.Weapon_stats[# nr, 4] = def_vel;
global.Weapon_stats[# nr, 5] = def_life;
global.Weapon_stats[# nr, 6] = 1;
global.Weapon_stats[# nr, 8] = def_crit;
global.Weapon_stats[# nr, 9] = obj_pl_staff_proj0;
global.Weapon_stats[# nr, 10] = -1;

global.Weapon_av[# nr, 0] = def_spr;
global.Weapon_av[# nr, 1] = def_snd;
global.Weapon_av[# nr, 2] = 3;
global.Weapon_av[# nr, 3] = def_ims;
global.Weapon_av[# nr, 4] = def_size;
global.Weapon_av[# nr, 5] = def_dir;

// Gold Oak Bow
nr = 72;
global.Weapon_stats[# nr, 0] = 25;
global.Weapon_stats[# nr, 1] = 40;
global.Weapon_stats[# nr, 2] = def_rof;
global.Weapon_stats[# nr, 3] = 1;
global.Weapon_stats[# nr, 4] = def_vel;
global.Weapon_stats[# nr, 5] = def_life;
global.Weapon_stats[# nr, 6] = 1;
global.Weapon_stats[# nr, 8] = def_crit;
global.Weapon_stats[# nr, 9] = obj_pl_staff_proj0;
global.Weapon_stats[# nr, 10] = -1;

global.Weapon_av[# nr, 0] = def_spr;
global.Weapon_av[# nr, 1] = def_snd;
global.Weapon_av[# nr, 2] = 2;
global.Weapon_av[# nr, 3] = def_ims;
global.Weapon_av[# nr, 4] = def_size;
global.Weapon_av[# nr, 5] = def_dir;

// Shadow Bow
nr = 73;
global.Weapon_stats[# nr, 0] = 30;
global.Weapon_stats[# nr, 1] = 50;
global.Weapon_stats[# nr, 2] = def_rof;
global.Weapon_stats[# nr, 3] = 1;
global.Weapon_stats[# nr, 4] = def_vel;
global.Weapon_stats[# nr, 5] = def_life;
global.Weapon_stats[# nr, 6] = 1;
global.Weapon_stats[# nr, 8] = def_crit;
global.Weapon_stats[# nr, 9] = obj_pl_staff_proj0;
global.Weapon_stats[# nr, 10] = "Whee shadows";

global.Weapon_av[# nr, 0] = def_spr;
global.Weapon_av[# nr, 1] = def_snd;
global.Weapon_av[# nr, 2] = 19;
global.Weapon_av[# nr, 3] = def_ims;
global.Weapon_av[# nr, 4] = def_size;
global.Weapon_av[# nr, 5] = def_dir;

// Elven Longbow
nr = 74;
global.Weapon_stats[# nr, 0] = 30;
global.Weapon_stats[# nr, 1] = 50;
global.Weapon_stats[# nr, 2] = def_rof + 0.125;
global.Weapon_stats[# nr, 3] = 1;
global.Weapon_stats[# nr, 4] = def_vel;
global.Weapon_stats[# nr, 5] = def_life;
global.Weapon_stats[# nr, 6] = 1;
global.Weapon_stats[# nr, 8] = def_crit;
global.Weapon_stats[# nr, 9] = obj_pl_staff_proj0;
global.Weapon_stats[# nr, 10] = -1;

global.Weapon_av[# nr, 0] = def_spr;
global.Weapon_av[# nr, 1] = def_snd;
global.Weapon_av[# nr, 2] = 20;
global.Weapon_av[# nr, 3] = def_ims;
global.Weapon_av[# nr, 4] = def_size;
global.Weapon_av[# nr, 5] = def_dir;

// Arctic Longbow
nr = 75;
global.Weapon_stats[# nr, 0] = 45;
global.Weapon_stats[# nr, 1] = 75;
global.Weapon_stats[# nr, 2] = def_rof;
global.Weapon_stats[# nr, 3] = 1;
global.Weapon_stats[# nr, 4] = def_vel;
global.Weapon_stats[# nr, 5] = def_life;
global.Weapon_stats[# nr, 6] = 1;
global.Weapon_stats[# nr, 8] = def_crit;
global.Weapon_stats[# nr, 9] = obj_pl_staff_proj0;
global.Weapon_stats[# nr, 10] = -1;

global.Weapon_av[# nr, 0] = def_spr;
global.Weapon_av[# nr, 1] = def_snd;
global.Weapon_av[# nr, 2] = 18;
global.Weapon_av[# nr, 3] = def_ims;
global.Weapon_av[# nr, 4] = def_size;
global.Weapon_av[# nr, 5] = def_dir;

// Spectral Flame Bow
nr = 76;
global.Weapon_stats[# nr, 0] = 55;
global.Weapon_stats[# nr, 1] = 90;
global.Weapon_stats[# nr, 2] = def_rof;
global.Weapon_stats[# nr, 3] = 1;
global.Weapon_stats[# nr, 4] = def_vel;
global.Weapon_stats[# nr, 5] = def_life;
global.Weapon_stats[# nr, 6] = 1;
global.Weapon_stats[# nr, 8] = def_crit;
global.Weapon_stats[# nr, 9] = obj_pl_staff_proj0;
global.Weapon_stats[# nr, 10] = -1;

global.Weapon_av[# nr, 0] = def_spr;
global.Weapon_av[# nr, 1] = def_snd;
global.Weapon_av[# nr, 2] = 17;
global.Weapon_av[# nr, 3] = def_ims;
global.Weapon_av[# nr, 4] = def_size;
global.Weapon_av[# nr, 5] = def_dir;

// Skeletal Bow
nr = 77;
global.Weapon_stats[# nr, 0] = 55;
global.Weapon_stats[# nr, 1] = 90;
global.Weapon_stats[# nr, 2] = def_rof + 0.125;
global.Weapon_stats[# nr, 3] = 1;
global.Weapon_stats[# nr, 4] = def_vel;
global.Weapon_stats[# nr, 5] = def_life;
global.Weapon_stats[# nr, 6] = 1;
global.Weapon_stats[# nr, 8] = def_crit;
global.Weapon_stats[# nr, 9] = obj_pl_staff_proj0;
global.Weapon_stats[# nr, 10] = -1;

global.Weapon_av[# nr, 0] = def_spr;
global.Weapon_av[# nr, 1] = def_snd;
global.Weapon_av[# nr, 2] = 14;
global.Weapon_av[# nr, 3] = def_ims;
global.Weapon_av[# nr, 4] = def_size;
global.Weapon_av[# nr, 5] = def_dir;

// Hellfire Bow
nr = 78;
global.Weapon_stats[# nr, 0] = 70;
global.Weapon_stats[# nr, 1] = 110;
global.Weapon_stats[# nr, 2] = def_rof;
global.Weapon_stats[# nr, 3] = 3;
global.Weapon_stats[# nr, 4] = def_vel;
global.Weapon_stats[# nr, 5] = def_life;
global.Weapon_stats[# nr, 6] = 1;
global.Weapon_stats[# nr, 8] = def_crit;
global.Weapon_stats[# nr, 9] = obj_pl_staff_proj0;
global.Weapon_stats[# nr, 10] = -1;

global.Weapon_av[# nr, 0] = def_spr;
global.Weapon_av[# nr, 1] = def_snd;
global.Weapon_av[# nr, 2] = 13;
global.Weapon_av[# nr, 3] = def_ims;
global.Weapon_av[# nr, 4] = def_size;
global.Weapon_av[# nr, 5] = def_dir;

// Angelic Bow
nr = 79;
global.Weapon_stats[# nr, 0] = 10;
global.Weapon_stats[# nr, 1] = 45;
global.Weapon_stats[# nr, 2] = 1.6;
global.Weapon_stats[# nr, 3] = 1;
global.Weapon_stats[# nr, 4] = def_vel;
global.Weapon_stats[# nr, 5] = def_life;
global.Weapon_stats[# nr, 6] = 1;
global.Weapon_stats[# nr, 8] = def_crit;
global.Weapon_stats[# nr, 9] = obj_pl_staff_proj0;
global.Weapon_stats[# nr, 10] = -1;

global.Weapon_av[# nr, 0] = def_spr;
global.Weapon_av[# nr, 1] = def_snd;
global.Weapon_av[# nr, 2] = 24;
global.Weapon_av[# nr, 3] = def_ims;
global.Weapon_av[# nr, 4] = def_size;
global.Weapon_av[# nr, 5] = def_dir;

// Dual bow
nr = 80;
global.Weapon_stats[# nr, 0] = 15;
global.Weapon_stats[# nr, 1] = 25;
global.Weapon_stats[# nr, 2] = def_rof;
global.Weapon_stats[# nr, 3] = 2;
global.Weapon_stats[# nr, 4] = def_vel;
global.Weapon_stats[# nr, 5] = def_life;
global.Weapon_stats[# nr, 6] = 1;
global.Weapon_stats[# nr, 8] = 0.75;
global.Weapon_stats[# nr, 9] = obj_pl_staff_proj0;
global.Weapon_stats[# nr, 10] = -1;

global.Weapon_av[# nr, 0] = def_spr;
global.Weapon_av[# nr, 1] = def_snd;
global.Weapon_av[# nr, 2] = 10;
global.Weapon_av[# nr, 3] = def_ims;
global.Weapon_av[# nr, 4] = def_size;
global.Weapon_av[# nr, 5] = def_dir;

// Bow of Flames
nr = 81;
global.Weapon_stats[# nr, 0] = 20;
global.Weapon_stats[# nr, 1] = 35;
global.Weapon_stats[# nr, 2] = def_rof;
global.Weapon_stats[# nr, 3] = 1;
global.Weapon_stats[# nr, 4] = def_vel;
global.Weapon_stats[# nr, 5] = def_life;
global.Weapon_stats[# nr, 6] = 0;
global.Weapon_stats[# nr, 8] = 0.75;
global.Weapon_stats[# nr, 9] = obj_pl_staff_proj0;
global.Weapon_stats[# nr, 10] = "Has a chance to ignite enemies";

global.Weapon_av[# nr, 0] = spr_fire_arrow;
global.Weapon_av[# nr, 1] = def_snd;
global.Weapon_av[# nr, 2] = 0;
global.Weapon_av[# nr, 3] = def_ims;
global.Weapon_av[# nr, 4] = def_size;
global.Weapon_av[# nr, 5] = def_dir;

// Harp of Light
nr = 82;
global.Weapon_stats[# nr, 0] = 700;
global.Weapon_stats[# nr, 1] = 750;
global.Weapon_stats[# nr, 2] = 0.09375;
global.Weapon_stats[# nr, 3] = 1;
global.Weapon_stats[# nr, 4] = 30;
global.Weapon_stats[# nr, 5] = 0.20;
global.Weapon_stats[# nr, 6] = 1;
global.Weapon_stats[# nr, 8] = 1;
global.Weapon_stats[# nr, 9] = obj_pl_staff_proj0;
global.Weapon_stats[# nr, 10] = -1;

global.Weapon_av[# nr, 0] = spr_reimuneedle;
global.Weapon_av[# nr, 1] = snd_attack_bow0;
global.Weapon_av[# nr, 2] = 0;
global.Weapon_av[# nr, 3] = def_ims;
global.Weapon_av[# nr, 4] = def_size;
global.Weapon_av[# nr, 5] = "dir";

// Diamond Repeater
nr = 85;
global.Weapon_stats[# nr, 0] = 35;
global.Weapon_stats[# nr, 1] = 55;
global.Weapon_stats[# nr, 2] = 1.25;
global.Weapon_stats[# nr, 3] = 1;
global.Weapon_stats[# nr, 4] = def_vel;
global.Weapon_stats[# nr, 5] = def_life;
global.Weapon_stats[# nr, 6] = 0;
global.Weapon_stats[# nr, 8] = 1;
global.Weapon_stats[# nr, 9] = obj_pl_staff_proj0;
global.Weapon_stats[# nr, 10] = -1;

global.Weapon_av[# nr, 0] = spr_diarep_bolt;
global.Weapon_av[# nr, 1] = snd_attack_bow0;
global.Weapon_av[# nr, 2] = 5;
global.Weapon_av[# nr, 3] = def_ims;
global.Weapon_av[# nr, 4] = def_size;
global.Weapon_av[# nr, 5] = "dir"; //def_dir;

// Azure Bow
nr = 86;
global.Weapon_stats[# nr, 0] = 30;
global.Weapon_stats[# nr, 1] = 60;
global.Weapon_stats[# nr, 2] = 0.35;
global.Weapon_stats[# nr, 3] = 7;
global.Weapon_stats[# nr, 4] = def_vel;
global.Weapon_stats[# nr, 5] = def_life;
global.Weapon_stats[# nr, 6] = 1;
global.Weapon_stats[# nr, 8] = 0.75;
global.Weapon_stats[# nr, 9] = obj_pl_staff_proj0;
global.Weapon_stats[# nr, 10] = -1;

global.Weapon_av[# nr, 0] = def_spr;
global.Weapon_av[# nr, 1] = def_snd;
global.Weapon_av[# nr, 2] = 0;
global.Weapon_av[# nr, 3] = def_ims;
global.Weapon_av[# nr, 4] = def_size;
global.Weapon_av[# nr, 5] = def_dir;

// Bow of Jealousy
nr = 87;
global.Weapon_stats[# nr, 0] = 15;
global.Weapon_stats[# nr, 1] = 30;
global.Weapon_stats[# nr, 2] = 0.70;
global.Weapon_stats[# nr, 3] = 10;
global.Weapon_stats[# nr, 4] = def_vel;
global.Weapon_stats[# nr, 5] = def_life;
global.Weapon_stats[# nr, 6] = 1;
global.Weapon_stats[# nr, 8] = 0.75;
global.Weapon_stats[# nr, 9] = obj_pl_staff_proj0;
global.Weapon_stats[# nr, 10] = -1;

global.Weapon_av[# nr, 0] = def_spr;
global.Weapon_av[# nr, 1] = def_snd;
global.Weapon_av[# nr, 2] = 15;
global.Weapon_av[# nr, 3] = def_ims;
global.Weapon_av[# nr, 4] = def_size;
global.Weapon_av[# nr, 5] = def_dir;

// Dragons breath
nr = 88;
global.Weapon_stats[# nr, 0] = 5;
global.Weapon_stats[# nr, 1] = 15;
global.Weapon_stats[# nr, 2] = 2;
global.Weapon_stats[# nr, 3] = 4;
global.Weapon_stats[# nr, 4] = def_vel;
global.Weapon_stats[# nr, 5] = def_life;
global.Weapon_stats[# nr, 6] = 1;
global.Weapon_stats[# nr, 8] = 0.75;
global.Weapon_stats[# nr, 9] = obj_pl_staff_proj0;
global.Weapon_stats[# nr, 10] = -1;

global.Weapon_av[# nr, 0] = spr_crescent;
global.Weapon_av[# nr, 1] = def_snd;
global.Weapon_av[# nr, 2] = 1;
global.Weapon_av[# nr, 3] = def_ims;
global.Weapon_av[# nr, 4] = def_size;
global.Weapon_av[# nr, 5] = "ran";

/* 
    TEMPLATE * * * * * * * * * *

// Stats
// Minimum damage
global.Weapon_stats[# 0, 0] = 1;

// Maximum damage
global.Weapon_stats[# 0, 1] = 1;

// Attacking speed (default is 1)
global.Weapon_stats[# 0, 2] = 1;

// Projectile count
global.Weapon_stats[# 0, 3] = 1;

// Projectile speed
global.Weapon_stats[# 0, 4] = 10;

// Projectile life (in seconds)
global.Weapon_stats[# 0, 5] = 1;

// Piercing (does it hit multiple targets? 0 = no, 1 = yes)
global.Weapon_stats[# 0, 6] = 0;

// Armor piercing (does it ignore defense? 0 = no, 1 = yes)
global.Weapon_stats[# 0, 7] = 0;

// Base crit chance
global.Weapon_stats[# 0, 8] = 1;

// Projectile type
global.Weapon_stats[# 0, 9] = obj_pl_staff_proj;

// Added note
global.Weapon_stats[# 0, 10] = "Very cool";

// Audio/visual
// Projectile sprite index
global.Weapon_av[# 0, 0] = spr_firebolt;

// Projectile sound effect
global.Weapon_av[# 0, 1] = snd_error;

// Projectile image index
global.Weapon_av[# 0, 2] = 0;

// Projectile image speed
global.Weapon_av[# 0, 3] = 0;

// Projectile image size
global.Weapon_av[# 0, 4] = 1;

// Projectile sprite direction ("str" = straight (0 degrees), "dir" = direction, "dia" = diagonal or other values are possible)
global.Weapon_av[# 0, 5] = "str";
