/// @description  scr_tile_init(tile depth);
/// @param tile depth
tile_grid = ds_grid_create(floor_w, floor_h);
ds_grid_clear(tile_grid, -4);

tile_depth = argument0;

/*

    LEGEND
    -4 = Void
    0 = Floor
    1 = Wall
    2 = Start Floor
    3 = Finish Floor
    4 = Wall side

*/

