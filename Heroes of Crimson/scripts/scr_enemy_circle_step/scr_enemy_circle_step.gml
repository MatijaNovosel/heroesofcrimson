/// @description  scr_enemy_circle_step(movement speed, clockwise)
/// @param movement speed
/// @param  clockwise
var spin_dir, clockwise;
clockwise = argument1;

if clockwise
{
    spin_dir = 90;
}
else
{
    spin_dir = -90;
}

mdir = DIR_PLAYER + 90;
mspd = argument0;
