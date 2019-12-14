/// @description  scr_split_part(partition to split, partition to create);
/// @param partition to split
/// @param  partition to create
var new_part_id, old_part_id, old_part_width, old_part_height,
min_part_width, min_part_height;

old_part_id = argument0;
new_part_id = argument1;

// Take the size of the given partition
pb_l = pbox_left[old_part_id];
pb_r = pbox_right[old_part_id];
pb_t = pbox_top[old_part_id];
pb_b = pbox_bottom[old_part_id];

old_part_width = pb_r - pb_l;
old_part_height = pb_b - pb_t;

// Calculate the min. size of the partition width by multiplying the total partition width by the min. room horizontal ratio.
min_part_width = round(min_room_h_ratio * old_part_width);

// Do the same with the height.
min_part_height = round(min_room_v_ratio * old_part_height);

// Take a random x/y coordinate to split the partition in half
var split_dir, split_x, split_y;

split_dir = scr_check_part_wh(old_part_width, old_part_height);
if (split_dir == 0)
{
    // Vertical split
    split_x = irandom_range(pb_l + min_part_width, pb_r - min_part_width); 
    ds_grid_set_region(floor_grid, pb_l, pb_t, split_x, pb_b, new_part_id);
}
else if (split_dir == 1)
{
    // Horizontal split
    split_y = irandom_range(pb_t + min_part_height, pb_b - min_part_height);
    ds_grid_set_region(floor_grid, pb_l, pb_t, pb_r, split_y, new_part_id);
}

// Measure and store the sizes of the partitions in an array
scr_measure_pbox(old_part_id);
scr_measure_pbox(new_part_id);

// Store the parent id, the current iteration of the newly made partition in an array
part_it[new_part_id] = current_iteration;
part_parent[new_part_id] = old_part_id;

// Generate a corridor between the two partitions
if (split_dir == 0)
{
    corr_dir[current_corr_id] = 0;  // Horizontal
    
    x1 = (pbox_left[old_part_id] + pbox_right[old_part_id]) div 2;
    x2 = ((pbox_left[new_part_id] + pbox_right[new_part_id]) div 2);
    
    // If the corridor width is an even number
    if (corr_width mod 2 == 0)
    {
        if (corr_width > 0)
        {
            y1 = ((pbox_top[old_part_id] + pbox_bottom[old_part_id]) div 2) - (corr_width div 2) + 1;
            y2 = ((pbox_top[new_part_id] + pbox_bottom[new_part_id]) div 2) + (corr_width div 2);
        }
        else
        {
            y1 = (pbox_top[old_part_id] + pbox_bottom[old_part_id]) div 2;
            y2 = (pbox_top[new_part_id] + pbox_bottom[new_part_id]) div 2;
        }
    }
    // If the corridor width is an odd number
    else if (corr_width mod 2 != 0)
    {
        if (corr_width > 1)
        {
            y1 = ((pbox_top[old_part_id] + pbox_bottom[old_part_id]) div 2) - (floor(corr_width / 2));
            y2 = ((pbox_top[new_part_id] + pbox_bottom[new_part_id]) div 2) + (corr_width div 2);
        }
        else if (corr_width == 1)
        {
            y1 = (pbox_top[old_part_id] + pbox_bottom[old_part_id]) div 2;
            y2 = ((pbox_top[new_part_id] + pbox_bottom[new_part_id]) div 2) + corr_width;
        }
    }
}
else
{
    corr_dir[current_corr_id] = 1;  // Vertical
    
    y1 = (pbox_top[old_part_id] + pbox_bottom[old_part_id]) div 2;
    y2 = ((pbox_top[new_part_id] + pbox_bottom[new_part_id]) div 2);
    
    // If the corridor width is an even number
    if (corr_width mod 2 == 0)
    {
        if (corr_width > 0)
        {
            x1 = ((pbox_left[old_part_id] + pbox_right[old_part_id]) div 2) - (corr_width div 2) + 1;
            x2 = ((pbox_left[new_part_id] + pbox_right[new_part_id]) div 2) + (corr_width div 2);
        }
        else
        {
            x1 = (pbox_left[old_part_id] + pbox_right[old_part_id]) div 2;
            x2 = (pbox_left[new_part_id] + pbox_right[new_part_id]) div 2;
        }
    }
    // If the corridor width is an odd number
    else if (corr_width mod 2 != 0)
    {
        if (corr_width > 1)
        {
            x1 = ((pbox_left[old_part_id] + pbox_right[old_part_id]) div 2) - (floor(corr_width / 2));
            x2 = ((pbox_left[new_part_id] + pbox_right[new_part_id]) div 2) + (corr_width div 2);
        }
        else if (corr_width == 1)
        {
            x1 = (pbox_left[old_part_id] + pbox_right[old_part_id]) div 2;
            x2 = ((pbox_left[new_part_id] + pbox_right[new_part_id]) div 2) + corr_width;
        }
    }
}

// Generate the corridor, measure it and move on to create the next corridor
ds_grid_set_region(corr_grid, x1, y1, x2, y2, current_corr_id);
scr_measure_cbox(current_corr_id);
current_corr_id ++;

/* Mark the new and old partitions as 'split', so they are skipped during the rest of the iteration OLD CODE, CAN BE REMOVED (16-5-2016)
part_split[old_part_id] = true;
part_split[new_part_id] = true;

