/// @description  scr_ent_init(min enemy dens, max enemy dens, enemy spawn limit, chest chance);
/// @param min enemy dens
/// @param  max enemy dens
/// @param  enemy spawn limit
/// @param  chest chance

entity_grid = ds_grid_create(floor_w, floor_h);
ds_grid_clear(entity_grid, -1);

// Set the density of the enemy groups in rooms
min_enemy_dens = argument0;
max_enemy_dens = argument1;

// Set an enemy spawn limit (per room)
spawn_limit = argument2;

// Set the chance for each room to be able to spawn a loot chest
chest_chance = argument3;

// Keep track of how many enemies are alive
global.Alive_enemy_count = 0;
