/// @description  scr_measure_pbox(partition id)
/// @param partition id
// This script loops through the entire grid, finding the edge of each partition's bounding box (pbox)
// and storing this value in an array
var part_id = argument0;

for (var xx = 0; xx < floor_w; xx ++)
{
    for (var yy = 0; yy < floor_h; yy ++)
    {
        if (floor_grid[# xx, yy] == part_id)
        {
            // Pbox left
            if (floor_grid[# xx - 1, yy] != part_id)
            {
                pbox_left[part_id] = xx;
            }
            
            // Pbox right
            if (floor_grid[# xx + 1, yy] != part_id)
            {
                pbox_right[part_id] = xx;
            }
            
            // Pbox top
            if (floor_grid[# xx, yy - 1] != part_id)
            {
                pbox_top[part_id] = yy;
            }
            
            // Pbox bottom
            if (floor_grid[# xx, yy + 1] != part_id)
            {
                pbox_bottom[part_id] = yy;
            }
        }
    }
}

