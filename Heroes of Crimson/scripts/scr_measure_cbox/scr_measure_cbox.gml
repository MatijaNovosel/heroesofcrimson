/// @description  scr_measure_cbox(corridor id)
/// @param corridor id
// This script loops through the entire grid, finding the edge of each corridor's bounding box (cbox)
// and storing this value in an array
var corr_id = argument0;

for (var xx = 0; xx < floor_w; xx ++)
{
    for (var yy = 0; yy < floor_h; yy ++)
    {
        if (corr_grid[# xx, yy] == corr_id)
        {
            // Cbox left
            if (corr_grid[# xx - 1, yy] != corr_id)
            {
                cbox_left[corr_id] = xx;
            }
            
            // Cbox right
            if (corr_grid[# xx + 1, yy] != corr_id)
            {
                cbox_right[corr_id] = xx;
            }
            
            // Cbox top
            if (corr_grid[# xx, yy - 1] != corr_id)
            {
                cbox_top[corr_id] = yy;
            }
            
            // Cbox bottom
            if (corr_grid[# xx, yy + 1] != corr_id)
            {
                cbox_bottom[corr_id] = yy;
            }
        }
    }
}

/* Determine whether the corridor is horizontal or vertical
var corr_width, corr_height;
corr_width = cbox_left[corr_id] + cbox_right[corr_id];
corr_height = cbox_top[corr_id] + cbox_bottom[corr_id];

if (corr_width > corr_height)
{
    corr_dir[corr_id] = 0;
}
else if (corr_width < corr_height)
{
    corr_dir[corr_id] = 1;
}
else if (corr_width == corr_height)
{
    corr_dir[corr_id] = 2;
}

