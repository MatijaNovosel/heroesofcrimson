/// @description  The dungeon generation is complete!
gen_complete = true;

// Clear the instances and tiles from the previous floor to save memory
if global.Floor_current > 0
{
    room_instance_clear(global.Floor_room_id[global.Floor_current - 1]);
    room_tile_clear(global.Floor_room_id[global.Floor_current - 1]);
}

// Show a welcoming message and notify if there is a floor mod active
scr_message_add("You've entered the " + string(global.Floor_name[global.Floor_current]) + ".", global.logcol_notice);

if (global.Floor_mod[global.Floor_current] != f_mod.no_mod)
{
    switch global.Floor_mod[global.Floor_current]
    {
        default:
            scr_message_add("Something feels different.", global.logcol_notice);
        break;
    }
}

// Destroy the grids if they aren't being used anymore
if ds_exists(floor_grid, ds_type_grid)
{
    ds_grid_destroy(floor_grid);
}

if ds_exists(room_grid, ds_type_grid)
{
    ds_grid_destroy(room_grid);
}

if ds_exists(corr_grid, ds_type_grid)
{
    ds_grid_destroy(corr_grid);
}

if ds_exists(tile_grid, ds_type_grid)
{
    ds_grid_destroy(tile_grid);
}

if ds_exists(entity_grid, ds_type_grid)
{
    ds_grid_destroy(entity_grid);
}

