/// @description scr_orbit_step(point to orbit around);
/// @param point to orbit around
if global.Slomo
orbit_angle += orbit_speed/2;
else
orbit_angle += orbit_speed;

x = argument0.x + orbit_radius * cos(orbit_angle * pi / 180);
y = argument0.y - orbit_radius * sin(orbit_angle * pi / 180);
