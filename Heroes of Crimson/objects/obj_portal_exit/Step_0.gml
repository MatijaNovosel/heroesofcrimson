/// @description  Auto stuff
scr_portal_step();

// Enter the portal
if(instance_exists(global.playerInstance) and global.Current_portal == id and !global.playerDead and global.Key_interact) {
    global.Floor_current++;
    scr_message_add("The exit has been sealed off.", global.logcol_warning);
    scr_junsound(snd_mimic, 1, 0.8, 1.2);
}

// Pop-out animation
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