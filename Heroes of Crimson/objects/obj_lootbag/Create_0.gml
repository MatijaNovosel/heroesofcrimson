// Inherit parent event
event_inherited();

// Time until the bag despawns
decay_time = 120 * 60; // 2 minutes

// Audio/visual
scr_zunsound(snd_lootbag);
image_speed = 0;

// Set the scale variable
scale = 1;
scale_state = 0;
image_xscale = scale;
image_yscale = scale;

// Isometric effect
depth = -y;

