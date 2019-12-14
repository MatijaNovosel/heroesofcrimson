/// @description scr_orbit_step2(Point to orbit around);
/// @param Point to orbit around
orbitx = argument0.x; 
orbity = argument0.y; 

x = orbitx + lengthdir_x(orbit_rad,orbit_dir);
y = orbity + lengthdir_y(orbit_rad,orbit_dir);

orbit_dir += orbit_speed;
