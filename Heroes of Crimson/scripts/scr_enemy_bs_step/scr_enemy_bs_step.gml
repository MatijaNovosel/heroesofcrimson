/// @description  scr_enemy_bs_step(move speed, move time, wait time, friction);
/// @param move speed
/// @param  move time
/// @param  wait time
/// @param  friction
// Move towards the tracked x/y coordinates until they are reached
// Move and change direction, then wait every so often
if (track_x != -1) && (track_y != -1)
{
    if (burst_time_left > 0)
    {
        if (burst_mode == 0)
        {
            if (mspd > 0)
            {
                mspd -= argument3;
            }
            else if (mspd <= 0)
            {
                mspd = 0;
            }
        }
        
        burst_time_left --;
    }
    else if (burst_time_left <= 0)
    {
        // Move
        if (burst_mode == 0)
        {
            mdir = point_direction(x, y, track_x, track_y);
            mspd = argument0;
            
            burst_time_left = argument1;
            burst_mode = !burst_mode;
        }
        
        // Wait
        else if (burst_mode == 1)
        {
            burst_time_left = argument2;
            burst_mode = !burst_mode;
        }
    }
}

// When the destination has been reached, reset the tracked x/y
if distance_to_point(track_x, track_y) <= mspd
{
    track_x = -1;
    track_y = -1;
}

// Move into the given direction and speed
scr_enemy_move();
