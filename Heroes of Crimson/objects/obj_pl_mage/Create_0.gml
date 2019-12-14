/// @description  Initialize the player object
scr_pl_init($5D0EB0, $0B0B0B, $99510F);

/// Initialize the sprite variables
// Standing stil
sprite_still = spr_cleric_still;

// Walking
sprite_walk_left = spr_cleric_wleft;
sprite_walk_right = spr_cleric_wright;
sprite_walk_up = spr_cleric_wup;
sprite_walk_down = spr_cleric_wdown;

// Shooting
sprite_shoot_left = spr_cleric_sleft;
sprite_shoot_right = spr_cleric_sright;
sprite_shoot_up = spr_cleric_sup;
sprite_shoot_down = spr_cleric_sdown;

// Spell casting
sprite_cast = sprite_still;

/* TEMPLATE

/// Initialise the sprite variables
// Standing stil
sprite_stil = 0;

// Walking
sprite_walk_left = 0;
sprite_walk_right = 0;
sprite_walk_up = 0;
sprite_walk_down = 0;

// Shooting
sprite_shoot_left = 0;
sprite_shoot_right = 0;
sprite_shoot_up = 0;
sprite_shoot_down = 0;

// Spell casting
sprite_cast = 0;