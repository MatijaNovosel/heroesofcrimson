/// @description  Create the grids
room_speed = 60;

scr_floor_init(10, 10, 40, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ), 0.5, 0.5, 0);
scr_rooms_init(2, 2, 0, 2);
scr_corr_init(2);
scr_tile_init(10000);
scr_ent_init(0.025, 0.40, 60, 50);

// Set a delay so the game is less likely to freeze
base_delay = 3;

// Put breaks in-between for loops during the placement of wall object, to prevent freezing of the game
wall_phase = 0;

// Visual information
// Show an estimate of the dungeon generation progress
dgen_progress = "Creating partitions and corridors..";

// Initiate the first splitting iteration
current_iteration ++;
alarm[0] = 5;

/// Create an enemy spawning system
// Part 1
scr_es_system_init_p1(5);

// Skeleton
var i;
i = 0;
es_data[i, 0] = obj_skeleton;
if global.Floor_current = 0
{
    es_data[i, 1] = 100;
}
else
{
    es_data[i, 1] = 50;
}

// Skeletal Archer
i = 1;
es_data[i, 0] = obj_skeletal_archer;
if global.Floor_current = 0
{
    es_data[i, 1] = 75;
}
else
{
    es_data[i, 1] = 100;
}

// Skeletal Warrior
i = 2;
es_data[i, 0] = obj_skeletal_warrior;
if global.Floor_current = 0
{
    es_data[i, 1] = 75;
}
else
{
    es_data[i, 1] = 100;
}

// Skeletal Firemage
i = 3;
es_data[i, 0] = obj_skeletal_firemage;
if global.Floor_current = 0
{
    es_data[i, 1] = 30;
}
else if global.Floor_current = 1
{
    es_data[i, 1] = 50;
}
else if global.Floor_current = 2
{
    es_data[i, 1] = 100;
}

// Skeletal Frostmage
i = 4;
es_data[i, 0] = obj_skeletal_frostmage;
if global.Floor_current = 0
{
    es_data[i, 1] = 30;
}
else if global.Floor_current = 1
{
    es_data[i, 1] = 50;
}
else if global.Floor_current = 2
{
    es_data[i, 1] = 100;
}

/// Create an enemy spawning system (part 2)
scr_es_system_init_p2();

/// Debugging variables
// Allow the user to see the x and y coordinate of a cell and its id
mouse_grid_x = -1;
mouse_grid_y = -1;
mouse_grid_id = -1;
mouse_grid_id_room = -1;
mouse_grid_id_corr = -1;

// Display options
display_grid = false;
display_numbers = false;
display_corridors = false;
display_part_colors = false;
display_room_colors = false;
display_tile_colors = true;

// Check whether the dungeon is fully generated
gen_complete = false;

