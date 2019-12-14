/// @description  Auto stuff
event_inherited();

// Change sprite when the player is within range of the bag
if instance_exists(global.playerInstance)
{
    // If this container is selected
    if (global.Current_cont == id) && obj_inv.show_inventory
    {
        var temp_img_ind = image_index;
        
        sprite_index = spr_lootbag1;
        image_index = temp_img_ind;
        
        // Set a global bag rarity variable for drawing the correct inv cell colors
        global.Bag_rarity = rarity;
    }
    // If this container isn't selected
    else
    {
        var temp_img_ind = image_index;
        
        sprite_index = spr_lootbag0;
        image_index = temp_img_ind;
        
        // Decay after the time is up
        decay_time -= 1;
        if decay_time < 1
        {
            instance_destroy();
        }
    }
}

// Destroy self if bag is empty
if item[0] == -1 && item[1] == -1 && item[2] == -1 && item[3] == -1 
&& item[4] == -1 && item[5] == -1 && item[6] == -1 && item[7] == -1 
&& (obj_inv.mouse_item_py < 6 || global.Current_cont != id)
{
    instance_destroy();
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

