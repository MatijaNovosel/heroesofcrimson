/// @description  scr_enemy_step();
// A script that requires no input, place this in the step event of an enemy
if (!global.Pause && !global.Sleep)
{
    // Update hp% every frame
    hp_percent = (hp / hp_max) * 100;
    
    // Face the player when seen
    if scr_enemy_see_player(chase_range, true)
    {
        if global.playerInstance.x > x
        {
            image_xscale = 1;
        }
        else
        {
            image_xscale = -1;
        }
    }
    
    // Update debuff icons and substract 1 from the debuff timer every step
    scr_status_enemy_step();
    
    // Set the depth to -y, creating a fake 3D effect
    depth = -y;
}

/*

if global.playerInstance.dead == 2 {
    // Reset the image index when the player has been killed
    image_index = 0;
}

*/

scr_stop_animation();

if(scr_status_find(status.burn, self)){
    hp -= scr_dot_calc(100);
}
