/// @description  scr_enemy_check_range(range, inside);
/// @param range
/// @param  inside
var range = argument0;
var inside = argument1;

if inside
{
    if distance_to_object(global.playerInstance) <= range
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
    if distance_to_object(global.playerInstance) > range
    {
        return (true);
    }
    else
    {
        return (false);
    }
}
