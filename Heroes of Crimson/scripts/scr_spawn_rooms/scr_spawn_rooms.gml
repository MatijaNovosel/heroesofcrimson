/// @description  scr_spawn_rooms();
var room_middle_x, room_middle_y;

for (var i = 0; i < part_total; i ++)
{
    // Find the middle of the partition, then expand from that point
    room_middle_x = (pbox_left[i] + pbox_right[i]) div 2;
    room_middle_y = (pbox_top[i] + pbox_bottom[i]) div 2;
    
    rbox_left[i] = irandom_range(pbox_left[i] + part_edge_dis, room_middle_x - min_room_width);
    rbox_left[i] = clamp(rbox_left[i], pbox_left[i] + part_edge_dis, pbox_right[i] - part_edge_dis);
    rbox_right[i] = irandom_range(room_middle_x + min_room_width, pbox_right[i] - part_edge_dis);
    rbox_right[i] = clamp(rbox_right[i], pbox_left[i] + part_edge_dis, pbox_right[i] - part_edge_dis);
    
    rbox_top[i] = irandom_range(pbox_top[i] + part_edge_dis, room_middle_y - min_room_height);
    rbox_top[i] = clamp(rbox_top[i], pbox_top[i] + part_edge_dis, pbox_bottom[i] - part_edge_dis);
    rbox_bottom[i] = irandom_range(room_middle_y + min_room_height, pbox_bottom[i] - part_edge_dis);
    rbox_bottom[i] = clamp(rbox_bottom[i], pbox_top[i] + part_edge_dis, pbox_bottom[i] - part_edge_dis);
    
    // I put an extra clamp here, to make sure the bottom half of walls are drawn properly
    rbox_bottom[i] = clamp(rbox_bottom[i], pbox_top[i] + part_edge_dis, pbox_bottom[i] - 2);
    
    ds_grid_set_region(room_grid, rbox_left[i], rbox_top[i], rbox_right[i], rbox_bottom[i], i);
}

