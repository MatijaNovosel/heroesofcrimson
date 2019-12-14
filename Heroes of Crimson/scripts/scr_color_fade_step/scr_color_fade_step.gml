/// @description scr_color_fade_step(increment,min,max);
/// @param increment
/// @param min
/// @param max
var inc, cmin, cmax;
inc = argument0;    // Increment/decrement
cmin = argument1;   // Minimum saturation value
cmax = argument2;   // Maximum saturation value

if colormath = "add"
csat += inc;
if colormath = "sub"
csat -= inc;

if csat > cmax && colormath = "add"
colormath = "sub"
if csat < cmin && colormath = "sub"
colormath = "add"
