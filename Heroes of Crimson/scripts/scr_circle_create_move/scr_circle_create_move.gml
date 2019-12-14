/// @description scr_circle_create_move(x,y,amount,len,obj,spd,dir offset);
/// @param x
/// @param y
/// @param amount
/// @param len
/// @param obj
/// @param spd
/// @param dir offset

var xx, yy, amount, len, dir, obj, spd, doffset;
xx = argument0;
yy = argument1;
amount = argument2;
len = argument3;
obj = argument4;
spd = argument5;
doffset = argument6;

dir = point_direction(x, y, xx, yy);

for(i = 0; i < amount; i++) {
    action_create_object_motion(
        obj, 
        xx + lengthdir_x(len, dir + i * (360 / amount)), 
        yy + lengthdir_y(len, dir + i * (360 / amount)), 
        spd, 
        dir + i * (360 / amount) + doffset
    );
}
