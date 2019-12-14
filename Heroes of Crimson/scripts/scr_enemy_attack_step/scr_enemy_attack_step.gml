/// @description  scr_enemy_attack_step(move speed, move time, wait time);
/// @param move speed
/// @param  move time
/// @param  wait time
// Move into the given direction and speed
scr_enemy_move();

// Move and change direction, then wait every so often
if (attack_time_left > 0)
{
    attack_time_left --;
}
else if (attack_time_left <= 0)
{
    // Move
    if (attack_mode == 0)
    {
        mdir = DIR_PLAYER + random_range(-45, 45);
        mspd = argument0;
        
        attack_time_left = argument1;
        attack_mode = !attack_mode;
    }
    
    // Wait
    else if (attack_mode == 1)
    {
        mdir = 0;
        mspd = 0;
        
        attack_time_left = argument2;
        attack_mode = !attack_mode;
    }
}
