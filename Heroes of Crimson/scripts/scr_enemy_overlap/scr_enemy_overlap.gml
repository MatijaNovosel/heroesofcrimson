/// @description  scr_enemy_overlap();
if (!global.Pause && !global.Sleep && !global.eFreeze)
{
    var i;
    i = point_direction(other.x, other.y, x, y);
    if !place_meeting(x + lengthdir_x(2, i), y, obj_wall_par)
    {
        x += lengthdir_x(0.1, i);
    }
    
    if !place_meeting(x, y + lengthdir_y(2, i), obj_wall_par)
    {
        y += lengthdir_y(0.1, i);
    }
}
