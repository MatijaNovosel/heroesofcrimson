/// @description  Auto stuff
scr_portal_step();

// Enter the portal
if(instance_exists(global.playerInstance) and (global.Current_portal == id) and !global.playerDead and global.Key_interact) {
    global.Floor_current++;
    room_instance_clear(room);
    room_goto(global.Floor_room_id[global.Floor_current]);
}

/// Pop-out animation
if(!global.Pause && !global.Sleep) {
    var inc = 0.2;
    
    if(scale_state == 0 && scale < 2) {
        scale += inc;
    }
    
    if(scale > (2 - inc)) {
        scale_state = 1;
    }
    
    if(scale_state == 1 && scale > 1) {
        scale -= inc;
    }
}

image_xscale = scale;
image_yscale = scale;