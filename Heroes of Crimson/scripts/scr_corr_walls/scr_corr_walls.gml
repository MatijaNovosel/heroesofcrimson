/// @description  scr_corr_walls();
// This script adds walls around all corridors

for (var aa = 0; aa < corr_total; aa++) {
    // Place a wall top left of the room
    if (tile_grid[# cbox_left[aa] - 1, cbox_top[aa] - 1] == -4) 
	&& (room_grid[# cbox_left[aa] - 1, cbox_top[aa] - 1] == -1)
    && (corr_grid[# cbox_left[aa] - 1, cbox_top[aa] - 1] == -1) {
        tile_grid[# cbox_left[aa] - 1, cbox_top[aa] - 1] = 1;
    }
    
    // Place a wall top right of the room
    if (tile_grid[# cbox_right[aa] + 1, cbox_top[aa] - 1] == -4) 
	&& (room_grid[# cbox_right[aa] + 1, cbox_top[aa] - 1] == -1)
    && (corr_grid[# cbox_right[aa] + 1, cbox_top[aa] - 1] == -1) {
        tile_grid[# cbox_right[aa] + 1, cbox_top[aa] - 1] = 1;
    }
    
    // Place a wall bottom left the room
    if (tile_grid[# cbox_left[aa] - 1, cbox_bottom[aa] + 1] == -4) 
	&& (room_grid[# cbox_left[aa] - 1, cbox_bottom[aa] + 1] == -1)
    && (corr_grid[# cbox_left[aa] - 1, cbox_bottom[aa] + 1] == -1) {
        tile_grid[# cbox_left[aa] - 1, cbox_bottom[aa] + 1] = 1;
    }
    
    // Place a wall bottom right the room
    if (tile_grid[# cbox_right[aa] + 1, cbox_bottom[aa] + 1] == -4) 
	&& (room_grid[# cbox_right[aa] + 1, cbox_bottom[aa] + 1] == -1)
    && (corr_grid[# cbox_right[aa] + 1, cbox_bottom[aa] + 1] == -1) {
        tile_grid[# cbox_right[aa] + 1, cbox_bottom[aa] + 1] = 1;
    }

    for (var xx = 0; xx < floor_w; xx++) {
        for (var yy = 0; yy < floor_h; yy++) {
            if (corr_grid[# xx, yy] == aa) {
                // Place walls left of the room
                if ((tile_grid[# xx - 1, yy] == -4) && (room_grid[# xx - 1, yy] == -1) && (corr_grid[# xx - 1, yy] == -1)) {
                    tile_grid[# xx - 1, yy] = 1;
                }
                
                // Place walls right of the room
                if ((tile_grid[# xx + 1, yy] == -4) && (room_grid[# xx + 1, yy] == -1) && (corr_grid[# xx + 1, yy] == -1)) {
                    tile_grid[# xx + 1, yy] = 1;
                }
                
                // Place walls above the room
                if ((tile_grid[# xx, yy - 1] == -4) && (room_grid[# xx, yy - 1] == -1) && (corr_grid[# xx, yy - 1] == -1)) {
                    tile_grid[# xx, yy - 1] = 1;
                }
                
                // Place walls below the room
                if ((tile_grid[# xx, yy + 1] == -4) && (room_grid[# xx, yy + 1] == -1) && (corr_grid[# xx, yy + 1] == -1)) {
                    tile_grid[# xx, yy + 1] = 1;
                }
            }
        }
    }
}

