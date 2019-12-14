/// @description  scr_enemy_burst_step(direction, move speed, move time, wait time, friction);
/// @param direction
/// @param  move speed
/// @param  move time
/// @param  wait time
/// @param  friction
// Move and change direction, then wait every so often
if (burst_time_left > 0)
{
    if (burst_mode == 0)
    {
        if (mspd > 0)
        {
            mspd -= argument4;
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
        mdir = argument0;
        mspd = argument1;
        
        burst_time_left = argument2;
        burst_mode = !burst_mode;
    }
    
    // Wait
    else if (burst_mode == 1)
    {
        burst_time_left = argument3;
        burst_mode = !burst_mode;
    }
}

// Move into the given direction and speed
scr_enemy_move();
