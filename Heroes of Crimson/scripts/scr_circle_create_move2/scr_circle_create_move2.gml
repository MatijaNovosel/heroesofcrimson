/// @description scr_circle_create_move2(x, y, amount, len, obj, spd, move dir);
/// @param x
/// @param  y
/// @param  amount
/// @param  len
/// @param  obj
/// @param  spd
/// @param  move dir

var xx, yy, amount, len, dir, obj, spd, mdir;
xx = argument0;
yy = argument1;
amount = argument2;
len = argument3;
obj = argument4;
spd = argument5;
mdir = argument6;

dir = point_direction(x, y, xx, yy);

for(i = 0; i < amount; i++) {
    action_create_object_motion(
        obj, 
        xx + lengthdir_x(len, dir + i * (360 / amount)), 
        yy + lengthdir_y(len, dir + i * (360 / amount)), 
        spd, 
        mdir
    );
}
