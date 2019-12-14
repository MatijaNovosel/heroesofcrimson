/// @description  scr_enemy_cancel_tl(reset tl, image speed, image index)
/// @param reset tl
/// @param  image speed
/// @param  image index
// If a timeline was running, turn it off and reset some variables
var reset_tl = argument0;

if timeline_running
{
    timeline_running = false;
    
    if reset_tl
    {
        timeline_position = 0;
        old_tl_pos = -1;
    }
    
    image_speed = argument1;
    image_index = argument2;
}
