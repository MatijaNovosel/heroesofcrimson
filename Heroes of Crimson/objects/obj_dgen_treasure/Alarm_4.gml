/// @description  Add the tiles
// Structure tiles
for (var xx = 0; xx < floor_w; xx ++)
{
    for (var yy = 0; yy < floor_h; yy ++)
    {
        switch tile_grid[# xx, yy]
        {
            case 0: case 2: case 3:
                tile_add(bg_tiles, tile_s * 1, tile_s * irandom_range(2, 6), tile_s, tile_s, offset_x + xx * tile_s, offset_y + yy * tile_s, tile_depth);
            break;
            
            case 1:
                tile_add(bg_tiles, tile_s * 1, tile_s * 0, tile_s, tile_s, offset_x + xx * tile_s, offset_y + yy * tile_s, -tile_depth);
            break;
            
            case 4:
                tile_add(bg_tiles, tile_s * 1, tile_s * 1, tile_s, tile_s, offset_x + xx * tile_s, offset_y + yy * tile_s, tile_depth);
            break;
        }
    }
}

// Shading tiles
for (var xx = 0; xx < floor_w; xx ++)
{
    for (var yy = 0; yy < floor_h; yy ++)
    {
        switch tile_grid[# xx, yy]
        {
            // Floor shading (when adjacent to a wall)
            case 0: case 2: case 3:
                if (tile_grid[# xx - 1, yy] == 1) || (tile_grid[# xx - 1, yy] == 4)
                tile_add(bg_tiles_sh, tile_s * 0, tile_s * 0, tile_s, tile_s, offset_x + xx * tile_s, offset_y + yy * tile_s, tile_depth - 1);
                
                if (tile_grid[# xx + 1, yy] == 1) || (tile_grid[# xx + 1, yy] == 4)
                tile_add(bg_tiles_sh, tile_s * 1, tile_s * 0, tile_s, tile_s, offset_x + xx * tile_s, offset_y + yy * tile_s, tile_depth - 1);
                
                if (tile_grid[# xx, yy - 1] == 4)
                tile_add(bg_tiles_sh, tile_s * 2, tile_s * 0, tile_s, tile_s, offset_x + xx * tile_s, offset_y + yy * tile_s, tile_depth - 1);
                
                if (tile_grid[# xx, yy + 1] == 1)
                tile_add(bg_tiles_sh, tile_s * 3, tile_s * 0, tile_s, tile_s, offset_x + xx * tile_s, offset_y + yy * tile_s, tile_depth - 1);
            break;
            
            // Wall side shading
            case 4:
                tile_add(bg_tiles_sh, tile_s * 4, tile_s * 0, tile_s, tile_s, offset_x + xx * tile_s, offset_y + yy * tile_s, tile_depth - 1);
            break;
        }
    }
}

alarm[5] = base_delay;
dgen_progress = "Adding entities..";

