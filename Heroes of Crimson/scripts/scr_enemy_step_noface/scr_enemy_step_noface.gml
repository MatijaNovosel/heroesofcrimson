/// @description  scr_enemy_step_noface();
// A script that requires no input, place this in the step event of an enemy
if (!global.Pause && !global.Sleep)
{
    // Update hp% every frame
    hp_percent = (hp / hp_max) * 100;
    
    // Update debuff icons and substract 1 from the debuff timer every step
    scr_status_enemy_step();
    
    // Set the depth to -y, creating a fake 3D effect
    depth = -y;
    
    if(scr_status_find(status.burn, self)){
        hp -= scr_dot_calc(100);
    }
}
