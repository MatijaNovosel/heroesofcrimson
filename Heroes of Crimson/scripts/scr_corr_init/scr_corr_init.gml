/// @description  scr_corr_init(corridor width);
/// @param corridor width

corr_grid = ds_grid_create(floor_w, floor_h);
ds_grid_clear(corr_grid, -1);

corr_width = argument0;

// Keep track of what corridor is being interacted with
current_corr_id = 0;

// Store each corridor's bounding box coordinates in an array
corr_total = part_total;
for (var i = 0; i < corr_total; i++) {
    // Direction: 0 = horizontal, 1 = vertical
    corr_dir[i] = -1;
    cbox_left[i] = -1;
    cbox_right[i] = -1;
    cbox_top[i] = -1;
    cbox_bottom[i] = -1;
}
