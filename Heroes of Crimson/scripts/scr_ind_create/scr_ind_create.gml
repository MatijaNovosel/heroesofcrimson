/// @description scr_ind_create(x, y, input, color, vspeed);
/// @param x
/// @param  y
/// @param  input
/// @param  color
/// @param  vspeed

if(global.indOn) {
    var inst = instance_create(argument0, argument1, obj_indicator);
    inst.input = argument2;
    inst.color = scr_cformat(argument3);
    inst.vspeed = argument4;
}