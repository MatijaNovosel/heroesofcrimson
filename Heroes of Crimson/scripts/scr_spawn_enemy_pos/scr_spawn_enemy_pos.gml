/// @description  scr_spawn_enemy_pos(room id, enemy entity id);
/// @param room id
/// @param  enemy entity id
// Calculate the size of the room
var en_id, rm_id, rm_l, rm_r, rm_t, rm_b, rm_width, rm_height, tile_count;

en_id = argument1;
rm_id = argument0;

rm_l = rbox_left[rm_id] + 1;
rm_r = rbox_right[rm_id] - 1;
rm_t = rbox_top[rm_id] + 1;
rm_b = rbox_bottom[rm_id] - 1;

rm_width = rm_r - rm_l;
rm_height = rm_b - rm_t;

tile_count = rm_width * rm_height;

// Calculate how many enemies should be placed
var min_enemy_count, max_enemy_count, enemy_count;

min_enemy_count = round(tile_count * min_enemy_dens);
min_enemy_count = clamp(min_enemy_count, 1, tile_count);
max_enemy_count = round(tile_count * max_enemy_dens);
max_enemy_count = clamp(max_enemy_count, 1, tile_count);
enemy_count = (min_enemy_count + max_enemy_count) div 2;
enemy_count = clamp(enemy_count, 1, spawn_limit);

// Place the enemies randomly in the room, using the entity grid
var xx, yy;
for (var i = 0; i < enemy_count; i ++)
{
    xx = irandom_range(rm_l, rm_r);
    yy = irandom_range(rm_t, rm_b);
    
    if (entity_grid[# xx, yy] == -1)
    {
        entity_grid[# xx, yy] = en_id;
        global.Alive_enemy_count ++;
    }
}

