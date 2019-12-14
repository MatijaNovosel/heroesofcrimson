/// @description  scr_add_normal_floor();
// Put a normal floor tile over each cell with a room/corridor
for (var xx = 0; xx < floor_w; xx ++)
{
    for (var yy = 0; yy < floor_h; yy ++)
    {
        // -4 here is the void, 0 is a normal floor tile
        if ((room_grid[# xx, yy] != -1) || (corr_grid[# xx, yy] != -1)) && (tile_grid[# xx, yy] == -4)
        {
            tile_grid[# xx, yy] = 0;
        }
    }
}

