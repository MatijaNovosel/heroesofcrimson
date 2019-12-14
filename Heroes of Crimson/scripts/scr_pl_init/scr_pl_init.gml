/// @description  scr_pl_init(pbcolor1,pbcolor2,pbcolor3);
/// @param pbcolor1
/// @param pbcolor2
/// @param pbcolor3
instance_create(x, y, obj_hitbox);

// Check where the mouse is relative to the player
mouse_dir_abs = point_direction(x, y, mouse_x, mouse_y);

// Declare a variable that determines the direction the player moves in
mdir = -1;

// Declare a variable that determines how fast the player can move
mspeed = 0;

// Focus; slow down movement when holding shift
mslow = 0;

// Cooldown variables
shoot_cd = 0;
cast_time = 0;

// Determines how long the player needs to rest until he can regenerate
rest = 0;

// Magic Regeneration (M. Reg.)
wis_cd = 0;

// Invincibility frames
iframe = 0; // The invincibility period
itimer = 0; // The invincibility animation time

// Status conditions + grace period
scr_status_init();
scr_status_inflict(status.grace_period, self, 10, 100);

// Animation
image_speed = 0;
image_face_left = 0;
image_face_right = 0;
image_face_up = 0;
image_face_down = 0;

// Declare variables to look into the direction the player shoots
mouse_dir_abs = 0; //abs = absolute
mouse_dir_card = 0; //card = cardinal direction

// If relevant, create bullets with different 'types', this can be used to create the same bullet object but with different properties
btype = 0;

// A local variable that determines whether the player is dead, different from global.playerDead
dead = 0;

// Generate particles when the player has has a status condition
status_part_time = 0;

// Determine what colors the pixel bits have when player is hit
PBColor1 = scr_cformat(argument0);
PBColor2 = scr_cformat(argument1);
PBColor3 = scr_cformat(argument2);