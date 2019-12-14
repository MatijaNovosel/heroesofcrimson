/// @description  Spawn the entities
/* Spawn a movable player instance
var room_middle_x = (rbox_left[start_room] + rbox_right[start_room]) div 2;
var room_middle_y = (rbox_top[start_room] + rbox_bottom[start_room]) div 2;
instance_create(tile_s * room_middle_x, tile_s * room_middle_y, global.playerInstance);*/

// Loop through all the rooms, add an entrance and exit portal in the start and exit rooms
for (var i = 0; i < part_total; i ++)
{
    if (i == start_room)
    {
        scr_spawn_portals(i, 1);
    }
    else
    if (i == end_room)
    {
        scr_spawn_portals(i, 2);
    }
}

// Loop through all the rooms, set the position of the enemies if it isn't a safe room
for (var i = 0; i < part_total; i ++)
{
    if (i != start_room) && (i != end_room)
    {
        scr_spawn_enemy_pos(i, 4);
    }
}

// Loop through all the enemies, spawn a random enemy there, according to their weight
/*scr_spawn_enemy_rw();
for (var xx = 0; xx < floor_w; xx ++)
{
    for (var yy = 0; yy < floor_h; yy ++)
    {
        if entity_grid[# xx, yy] = 
        entity_grid[# xx, yy] = scr_spawn_enemy_id();
    }
}*/

// Loop through all the rooms, spawn chests if it isn't a safe room
for (var i = 0; i < part_total; i ++)
{
    if (i != start_room) && (i != end_room)
    {
        scr_spawn_chests(i, 3);
    }
}

// Create objects in the given locations
for (var xx = 0; xx < floor_w; xx ++)
{
    for (var yy = 0; yy < floor_h; yy ++)
    {
        var real_x = offset_x + xx * tile_s;
        var real_y = offset_y + yy * tile_s;
        
        var player_xoffset = offset_x + (xx + choose(-1, 1)) * tile_s;
        var player_yoffset = offset_y + (yy + choose(-1, 1)) * tile_s;
        
        switch entity_grid[# xx, yy]
        {
            case 1:
                var portal = instance_create(real_x, real_y, obj_portal_exit);
                
                instance_create(player_xoffset, player_yoffset, global.playerInstance);
            break;
            
            case 2:
                var portal = instance_create(real_x, real_y, obj_portal_next);
            break;
            
            case 4:
                instance_create(real_x, real_y, scr_spawn_enemy_id());
            break;
        }
    }
}

// The dungeon is done generating, so remove the loading screen and delete the grids
alarm[11] = base_delay;

dgen_progress = "Done!";

/* */
/*  */
