/// @description  Adding wall and floor tiles
// Encase the rooms and corridors in walls
scr_room_walls();
scr_corr_walls();

// If the tile is a wall and there is space in a cell under wall, generate a side wall
for (var xx = 0; xx < floor_w; xx ++)
{
    for (var yy = 0; yy < floor_h; yy ++)
    {
        if (tile_grid[# xx, yy] == 1) && ((tile_grid[# xx, yy + 1] == 0) || (tile_grid[# xx, yy + 1] == 2) || (tile_grid[# xx, yy + 1] == 3) ||(tile_grid[# xx, yy + 1] == -4))
        {
            tile_grid[# xx, yy + 1] = 4;
        }
    }
}

// Put a normal floor tile over each cell with a room/corridor
scr_add_normal_floor();

// Initiate the spawning of wall objects
alarm[3] = base_delay;
dgen_progress = "Adding and optimizing wall objects..";

