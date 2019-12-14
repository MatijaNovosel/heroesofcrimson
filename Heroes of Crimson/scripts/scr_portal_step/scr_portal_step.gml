/// @description  scr_portal_step();
event_inherited();

// Change sprite when the player is within range of the portal
if instance_exists(global.playerInstance) && !global.playerDead && (global.Current_portal == id)
{
    var temp_img_ind = image_index;
    
    sprite_index = spr_portal1;
    image_index = temp_img_ind;
}
else
{
    var temp_img_ind = image_index;
    
    sprite_index = spr_portal0;
    image_index = temp_img_ind;
}
