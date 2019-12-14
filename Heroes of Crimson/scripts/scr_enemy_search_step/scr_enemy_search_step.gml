/// @description  scr_enemy_search_step(movement speed);
/// @param movement speed
// Move towards the tracked x/y coordinates until they are reached
if (track_x != -1) && (track_y != -1)
{
    mspd = argument0;
    mdir = point_direction(x, y, track_x, track_y);
}

scr_enemy_move();

// When the destination has been reached, reset the tracked x/y
if (distance_to_point(track_x, track_y) <= mspd)
{
    track_x = -1;
    track_y = -1;
}

// Revert to the idle state after searching for a set time limit
if (track_time > 0)
{
    track_time --;
}
else
if (track_time == 0)
{
    track_x = -1;
    track_y = -1;
    track_time = -1;
    
    ai_state = state.idle;
}
