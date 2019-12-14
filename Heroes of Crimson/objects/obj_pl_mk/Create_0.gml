/// @description  Initialize the player object
scr_pl_init($FFD6AD, $7435B2, $E5F6FF);

/// Initialize the sprite variables
// Standing stil
sprite_still = spr_mk_still;

// Walking
sprite_walk_left = spr_mk_wleft;
sprite_walk_right = spr_mk_wright;
sprite_walk_up = spr_mk_wup;
sprite_walk_down = spr_mk_wdown;

// Shooting
sprite_shoot_left = spr_mk_sleft;
sprite_shoot_right = spr_mk_sright;
sprite_shoot_up = spr_mk_sup;
sprite_shoot_down = spr_mk_sdown;

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