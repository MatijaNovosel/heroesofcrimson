/// @description  scr_enemy_idle_step(move speed, move time, wait time);
/// @param move speed
/// @param  move time
/// @param  wait time
// Move into the given direction and speed
scr_enemy_move();

// Move and change direction, then wait every so often
if (idle_time_left > 0)
{
    idle_time_left --;
}
else if (idle_time_left <= 0)
{
    // Move
    if (idle_mode == 0)
    {
        mdir = random(360);
        mspd = argument0;
        
        idle_time_left = argument1;
        idle_mode = !idle_mode;
    }
    
    // Wait
    else if (idle_mode == 1)
    {
        mdir = 0;
        mspd = 0;
        
        idle_time_left = argument2;
        idle_mode = !idle_mode;
    }
}
