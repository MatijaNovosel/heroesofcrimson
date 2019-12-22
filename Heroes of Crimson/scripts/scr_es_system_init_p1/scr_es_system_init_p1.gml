/// @description  scr_es_system_init_p1(unique enemies);
/// @param unique enemies
// How many different enemies are there?
e_table_height = argument0;

for (var i = 0; i < e_table_height; i++) {
    // ES = Enemy Spawn Data
    es_data[i, 0] = -1;     // Enemy ID
    es_data[i, 1] = -1;     // Enemy weight
    es_data[i, 2] = -1;     // Spawning cap per room (-1 for no cap)
    es_data[i, 3] = -1;     // Spawning cap per floor (-1 for no cap);
    range[i] = -1;
}
