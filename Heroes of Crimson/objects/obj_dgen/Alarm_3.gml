/// @description  Spawn wall objects
switch wall_phase {
    case 0:
        for (var xx = 0; xx < floor_w; xx++) {
            for (var yy = 0; yy < floor_h; yy++) {
                // Add the 1x1 walls
                if (tile_grid[# xx, yy] == 1) {
                    instance_create(offset_x + xx * tile_s, offset_y +  yy * tile_s, obj_wall0);
                }
            }
        }
        // Add a slight delay to prevent lagspikes
        wall_phase ++;
        alarm[3] = base_delay;
		break;
    case 1:
        for (var xx = 0; xx < floor_w; xx++) {
            for (var yy = 0; yy < floor_h; yy++) {
                // Add the 0.5x1 walls (top)
                if (tile_grid[# xx, yy] == 4) {
                    instance_create(offset_x + xx * tile_s, offset_y +  yy * tile_s, obj_wall1);
                }
            }
        }
        // Add a slight delay to prevent lagspikes
        wall_phase ++;
        alarm[3] = base_delay;
		break;
    case 2:
        for (var xx = 0; xx < floor_w; xx++) {
            for (var yy = 0; yy < floor_h; yy++) {
                // Add the 0.5x1 walls (bottom), delete any 1x1 walls if necessary
                if (tile_grid[# xx, yy] == 1) && (tile_grid[# xx, yy - 1] != 1) {
                    var temp_inst = instance_position(offset_x + xx * tile_s, offset_y +  yy * tile_s, obj_wall0)
                    with temp_inst {instance_destroy();}
                    instance_create(offset_x + xx * tile_s, offset_y +  yy * tile_s, obj_wall2);
                }
            }
        }
        
        // Optimize the wall objects
        scr_Optimise_Init(obj_wall0);
        scr_Optimise_Object(obj_wall0);
        
        scr_Optimise_Init(obj_wall1);
        scr_Optimise_Object(obj_wall1);
        
        scr_Optimise_Init(obj_wall2);
        scr_Optimise_Object(obj_wall2);
        
        // Add tiles
        alarm[4] = base_delay;
        dgen_progress = "Adding graphic tiles..";
		break;
}
