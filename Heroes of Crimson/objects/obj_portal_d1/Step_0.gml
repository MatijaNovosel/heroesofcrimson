/// @description  Auto stuff
scr_portal_step();

// Enter the portal
if instance_exists(global.playerInstance) && (global.Current_portal == id) && !global.playerDead && global.Key_interact
{
    room_goto(rm_create_dungeon1);
}

/// Pop-out animation
if (!global.Pause && !global.Sleep)
{
    var inc = 0.2;
    
    if (scale_state == 0) && scale < 2
    {
        scale += inc;
    }
    
    if scale > (2 - inc)
    {
        scale_state = 1;
    }
    
    if (scale_state == 1) && scale > 1
    {
        scale -= inc;
    }
}

image_xscale = scale;
image_yscale = scale;

