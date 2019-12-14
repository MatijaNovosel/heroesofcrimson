/// @description  Split the floor into partitions and generate corridors
scr_auto_split();

// Save the amount of created corridors
corr_total = current_corr_id;

// Initiate the spawning of rooms
alarm[1] = base_delay;
dgen_progress = "Creating chambers..";

