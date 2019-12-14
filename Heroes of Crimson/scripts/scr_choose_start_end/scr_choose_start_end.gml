/// @description  scr_choose_start_end();
var corner_start, corner_end;

/*
    Corners:
    1 = top left
    2 = top right
    3 = bottom left
    4 = bottom right
*/

// Pick a corner for the starting room
corner_start = irandom(3);

// Pick a corner for the ending room, make sure it's not the same as the starting corner
for (var i = 0; i < 50; i ++)
{
    corner_end = irandom(3);
    
    if corner_end != corner_start
    break;
}

// If after 50 loops the game cannot find two different corners, pick two random corners that cannot be the same
if corner_end == corner_start
{
    corner_start = choose(0, 1);
    corner_end = choose(2, 3);
}

// Assign a starting room
var part_id;
switch corner_start
{
    case 0:
        part_id = floor_grid[# 0, 0];
        start_room = part_id;
        
        ds_grid_set_region(tile_grid, rbox_left[start_room], rbox_top[start_room], rbox_right[start_room], rbox_bottom[start_room], 2);
    break;
    
    case 1:
        part_id = floor_grid[# floor_w - 1, 0];
        start_room = part_id;
        
        ds_grid_set_region(tile_grid, rbox_left[start_room], rbox_top[start_room], rbox_right[start_room], rbox_bottom[start_room], 2);
    break;
    
    case 2:
        part_id = floor_grid[# 0, floor_h - 1];
        start_room = part_id;
        
        ds_grid_set_region(tile_grid, rbox_left[start_room], rbox_top[start_room], rbox_right[start_room], rbox_bottom[start_room], 2);
    break;
    
    case 3:
        part_id = floor_grid[# floor_w - 1, floor_h - 1];
        start_room = part_id;
        
        ds_grid_set_region(tile_grid, rbox_left[start_room], rbox_top[start_room], rbox_right[start_room], rbox_bottom[start_room], 2);
    break;
}

// Assign an ending room
switch corner_end
{
    case 0:
        part_id = floor_grid[# 0, 0];
        end_room = part_id;
        
        ds_grid_set_region(tile_grid, rbox_left[end_room], rbox_top[end_room], rbox_right[end_room], rbox_bottom[end_room], 3);
    break;
    
    case 1:
        part_id = floor_grid[# floor_w - 1, 0];
        end_room = part_id;
        
        ds_grid_set_region(tile_grid, rbox_left[end_room], rbox_top[end_room], rbox_right[end_room], rbox_bottom[end_room], 3);
    break;
    
    case 2:
        part_id = floor_grid[# 0, floor_h - 1];
        end_room = part_id;
        
        ds_grid_set_region(tile_grid, rbox_left[end_room], rbox_top[end_room], rbox_right[end_room], rbox_bottom[end_room], 3);
    break;
    
    case 3:
        part_id = floor_grid[# floor_w - 1, floor_h - 1];
        end_room = part_id;
        
        ds_grid_set_region(tile_grid, rbox_left[end_room], rbox_top[end_room], rbox_right[end_room], rbox_bottom[end_room], 3);
    break;
}

