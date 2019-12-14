/// @description  scr_pl_portal_int
// Interact with a portal when the player is close enough
if instance_exists(obj_portal_parent) && distance_to_object(obj_portal_parent) <= global.Portal_range
{
    global.Current_portal = instance_nearest(x, y, obj_portal_parent);
}
else
{
    global.Current_portal = -1;
}
