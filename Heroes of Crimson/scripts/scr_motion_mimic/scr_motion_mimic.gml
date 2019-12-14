/// @description scr_motion_mimic(old x,old y,new x,new y);
/// @param old x
/// @param old y
/// @param new x
/// @param new y

var pixeldiff, ox, oy, nx, ny;
ox = argument0;
oy = argument1;
nx = argument2;
ny = argument3;


if ox != nx
{
    pixeldiff = ox - nx;
    x -= pixeldiff;
}

if oy != ny
{
    pixeldiff = oy - ny;
    y -= pixeldiff;
}
