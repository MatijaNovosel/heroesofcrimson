/// @description scr_wave_motion_init(increment, amplitude)
/// @param increment
/// @param amplitude
t = 0;
increment = degtorad(argument0); // 12 degrees, now converted to radians -- freq = 1 oscillation per second (1Hz)
amplitude = argument1; // pixels of peak oscillation

//clone the y-position (or use x instead if you're doing horizontal oscillation)
xx = x;
yy = y;