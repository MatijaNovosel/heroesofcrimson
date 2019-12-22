/// @description  scr_spawn_enemy_id();
// This script selects a random enemy, taking their weight into account
// Pick a range using RNG
var rng = irandom(e_total_weight);

// Check what range the randomly generated number falls into, determine what enemy to spawn
for (var i = 0; i < e_table_height; i++) {
    if (rng <= range[i]) {
        return (es_data[i, 0]);
        break;
    }
}
