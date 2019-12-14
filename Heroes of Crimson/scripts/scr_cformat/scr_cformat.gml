/// @description rgb_to_bgr(Colour)
/// @param Colour
/*
** Switches a Colour from bgr format to rgb format
**
**
**
*/
var Colour = argument0 ;
 
 
 
 
var red = (Colour >> 0) & 0xFF;
var green = (Colour >> 8) & 0xFF;
var blue = (Colour >> 16) & 0xFF;
return  (blue << 0) | (green << 8) | (red << 16);
