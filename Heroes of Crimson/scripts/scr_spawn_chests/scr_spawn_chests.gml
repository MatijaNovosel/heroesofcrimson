/// @description  scr_spawn_chests(room id, chest entity id);
/// @param room id
/// @param  chest entity id
// Calculate the size of the room
var chest_id, rm_id, rm_l, rm_r, rm_t, rm_b, rm_width, rm_height, tile_count;

rm_id = argument0;
chest_id = argument1;

rm_l = rbox_left[rm_id] + 1;
rm_r = rbox_right[rm_id] - 1;
rm_t = rbox_top[rm_id] + 1;
rm_b = rbox_bottom[rm_id] - 1;

rm_width = rm_r - rm_l;
rm_height = rm_b - rm_t;

tile_count = rm_width * rm_height;

// Place the chest randomly in the room
var xx, yy;
if irandom(100) > (100 - chest_chance)
{
    xx = irandom_range(rm_l, rm_r);
    yy = irandom_range(rm_t, rm_b);
    
    if (entity_grid[# xx, yy] == -1)
    {
        entity_grid[# xx, yy] = chest_id;
    }
}

