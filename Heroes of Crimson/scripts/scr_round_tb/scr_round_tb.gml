/// @description  scr_round_tb(object to avoid, padding);
/// @param object to avoid
/// @param  padding
var _obj = argument0;
var padding = argument1;

var round_top  = collision_rectangle(bbox_left - padding, bbox_top, bbox_right + padding, y, _obj, false, true);
var round_bottom  = collision_rectangle(bbox_left - padding, y, bbox_right + padding, bbox_bottom, _obj, false, true);

if (round_top = noone) && (round_bottom != noone)
{
    y --;
}
else if (round_top != noone) && (round_bottom = noone)
{
    y ++;
}
