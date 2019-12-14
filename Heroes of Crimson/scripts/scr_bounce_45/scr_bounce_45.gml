/// @description scr_bounce_45(face direction);
/// @param face direction
var face = argument0;

x = xprevious;
y = yprevious;

if(place_meeting(x, y + vspeed, obj_wall_par)) {
    direction = (2 * 90) - direction - 180;
    if(face) image_angle = direction - 45;
}

if(place_meeting(x + hspeed, y, obj_wall_par)) {
    direction = 2 * 180 - direction - 180;
    if(face) image_angle = direction - 45;
}
