/// @description  Prevent overlap with portals
if (!global.Pause && !global.Sleep)
{
    var i;
    i = point_direction(other.x, other.y, x, y);
    if !place_meeting(x + lengthdir_x(2, i), y, obj_wall_par)
    {
        x += lengthdir_x(0.2, i);
    }
    
    if !place_meeting(x, y + lengthdir_y(2, i), obj_wall_par)
    {
        y += lengthdir_y(0.2, i);
    }
}

