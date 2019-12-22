/// @description  scr_rooms_init(min room width, min room height, aspect ratio, part edge dis);
/// @param min room width
/// @param  min room height
/// @param  aspect ratio
/// @param  part edge dis

room_grid = ds_grid_create(floor_w, floor_h);
ds_grid_clear(room_grid, -1);

// Determine the min. room width/height and whether the width/height should be equal
min_room_width = argument0;
min_room_height = argument1;
aspect_ratio = argument2;

// Determine how far from the edge of a partition you want the edges of the room to be
part_edge_dis = argument3;

// Determine which room the player will start in and which room the exit will be
start_room = -1;
end_room = -1;

// Keep track of each room's bounding box coordinates
for (var i = 0; i < part_total; i ++) {
    rbox_left[i] = -1;
    rbox_right[i] = -1;
    rbox_top[i] = -1;
    rbox_bottom[i] = -1;
}
