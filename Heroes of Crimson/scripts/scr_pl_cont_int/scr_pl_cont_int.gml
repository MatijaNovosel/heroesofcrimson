/// @description  scr_pl_cont_int
// Interact with a loot container when the player is close enough
if instance_exists(obj_container) && distance_to_object(obj_container) <= global.Bag_range
{
    global.Current_cont = instance_nearest(x, y, obj_container);
}
else
{
    global.Current_cont = -1;
}
