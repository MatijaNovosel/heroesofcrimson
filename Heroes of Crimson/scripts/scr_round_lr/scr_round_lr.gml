/// @description  scr_round_lr(object to avoid, padding);
/// @param object to avoid
/// @param  padding
var _obj = argument0;
var padding = argument1;

var round_left  = collision_rectangle(bbox_left, bbox_top - padding, x, bbox_bottom + padding, _obj, false, true);
var round_right  = collision_rectangle(x, bbox_top - padding, bbox_right, bbox_bottom + padding, _obj, false, true);

if (round_left = noone) && (round_right != noone)
{
    x --;
}
else if (round_left != noone) && (round_right = noone)
{
    x ++;
}
