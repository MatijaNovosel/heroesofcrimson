/// @description  Deactivate far away entities
var padding = 400;

instance_deactivate_object(obj_enemy_par);
//instance_activate_region(x - padding, y - padding, x + padding, y + padding, true);
instance_activate_region(__view_get( e__VW.XView, 0 ) - padding, __view_get( e__VW.YView, 0 ) - padding, __view_get( e__VW.WView, 0 ) + (padding * 2), __view_get( e__VW.HView, 0 ) + (padding * 2), true);

alarm[0] = base_delay;

