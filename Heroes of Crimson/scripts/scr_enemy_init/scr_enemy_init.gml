/// @description  scr_enemy_init(name, hp, def, monster level, xp, hit sound, death sound, flying);
/// @param name
/// @param  hp
/// @param  def
/// @param  monster level
/// @param  xp
/// @param  hit sound
/// @param  death sound
/// @param  flying
// Set the enemy's name
enemy_name = argument0;

// Set the enemy's hp, def and xp
hp = argument1;
hp_max = hp;
hp_percent = (hp / hp_max) * 100;

def = argument2;

level = argument3;
xp_value = argument4;

// Sound/visual effects
hit_snd = argument5;
death_snd = argument6;

image_speed = 0;

// Set some variables to create enemy behaviour
flying = argument7;

mdir = 0;
mspd = 0;
track_x = -1;
track_y = -1;
track_time = -1;

old_tl_pos = -1;
old_ani_spd = 0;

tl_dir = 0;
tl_ammo = 0;

// Set some variables for status conditions and give the enemy a short grace period
scr_status_init();
scr_status_inflict(status.invin2, self, 6, 100);
