/// @description  scr_floor_init(floor width, floor height, tile size, offset x, offset y, min room h ratio, min room v ratio, iterations);
/// @param floor width
/// @param  floor height
/// @param  tile size
/// @param  offset x
/// @param  offset y
/// @param  min room h ratio
/// @param  min room v ratio
/// @param  iterations
// Define a size for the floor (width, height) and the tile size
floor_w = argument0;
floor_h = argument1;
tile_s = argument2;
floor_grid = ds_grid_create(floor_w, floor_h);
ds_grid_clear(floor_grid, 0);

// Define an offset to create the grid a certain distance away from the edge of the room
offset_x = argument3;
offset_y = argument4;

// Determine the horizontal and vertical ratios of each partition
min_room_h_ratio = argument5;
min_room_h_ratio = clamp(min_room_h_ratio, 0, 0.5);
min_room_v_ratio = argument6;
min_room_v_ratio = clamp(min_room_v_ratio, 0, 0.5);

// Determine how many partitions will be made (prediction)
iterations = argument7;
current_iteration = 0;

// Calculate to predict the amount of partitions and splits
part_total = 1;
for (var i = 1; i <= iterations; i ++)
{
    part_total *= 2;
}
split_total = part_total div 2;

// Keep track of each partition's bounding box coordinates
for (var i = 0; i < part_total; i ++)
{
    pbox_left[i] = -1;
    pbox_right[i] = -1;
    pbox_top[i] = -1;
    pbox_bottom[i] = -1;
}

pbox_left[0] = 0;
pbox_right[0] = floor_w;
pbox_top[0] = 0;
pbox_bottom[0] = floor_h;

// Keep track of each partition's parent and the iteration it was created on
for (var i = 0; i < part_total; i ++)
{
    part_it[i] = -1;
    part_parent[i] = -1;
    part_sis[i] = -1;
}

part_it[0] = 0;
part_parent[0] = -5;

