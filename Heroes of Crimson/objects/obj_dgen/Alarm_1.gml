/// @description  Spawn the rooms and pick a start/end room
scr_spawn_rooms();
scr_choose_start_end();

// Add wall/floor tiles
alarm[2] = base_delay;
dgen_progress = "Adding wall and floor tiles..";
