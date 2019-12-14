/// @description scr_jumpradius(center_x,center_y,max dis,min dis);
/// @param center_x
/// @param center_y
/// @param max dis
/// @param min dis
// Center of spawn area
var _x = argument0;
var _y = argument1;

var distMax = argument2; // Maximum distance from point
var distMin = argument3; // Minimum distance from point

// Set the distance to spawn the object
var dist = (distMax - distMin) * random(1) + distMin;

// Set the direction to spawn the object
var dir = random(360);

// Set the X and Y of the spawn object
_x += lengthdir_x(dist, dir);
_y += lengthdir_y(dist, dir);

// Jump tp the position
x = _x;
y = _y;
