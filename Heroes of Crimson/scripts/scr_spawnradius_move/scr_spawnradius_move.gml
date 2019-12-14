/// @description scr_spawnradius_move(center_x,center_y,max dis,min dis,obj,spd,dir);
/// @param center_x
/// @param center_y
/// @param max dis
/// @param min dis
/// @param obj
/// @param spd
/// @param dir
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

// Create the object
action_create_object_motion(argument4, _x, _y, argument5, argument6);
