/// @description scr_circle_create(x,y,amount,len,obj);
/// @param x
/// @param y
/// @param amount
/// @param len
/// @param obj

var xx, yy, amount, len, dir, obj;
xx = argument0;
yy = argument1;
amount = argument2;
len = argument3;
obj = argument4;

dir = point_direction(x, y, xx, yy);

for(i = 0; i < amount; i++) {
    instance_create(
        xx + lengthdir_x(len, dir + i * (360 / amount)), 
        yy + lengthdir_y(len, dir + i * (360 / amount)), 
        obj
    );
}
