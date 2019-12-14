/// @description  scr_enemy_see_player(range, inside);
/// @param range
/// @param  inside
var range, inside;
range = argument0;
inside = argument1;

if inside
{
    if (!global.Pause && !global.Sleep && !global.eFreeze && !global.playerDead) && distance_to_object(global.playerInstance) <= range && !collision_line(x, y, global.playerInstance.x, global.playerInstance.y, obj_wall_par, false, true)
    && (!scr_status_find(status.grace_period, global.playerInstance)) && (!scr_status_find(status.invis, global.playerInstance))
    {
        return (true);
    }
    else
    {
        return (false);
    }
}
else
{
    if (!global.Pause && !global.Sleep && !global.eFreeze && !global.playerDead) && distance_to_object(global.playerInstance) <= range && !collision_line(x, y, global.playerInstance.x, global.playerInstance.y, obj_wall_par, false, true)
    && (!scr_status_find(status.grace_period, global.playerInstance)) && (!scr_status_find(status.invis, global.playerInstance))
    {
        return (true);
    }
    else
    {
        return (false);
    }
}
