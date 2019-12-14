/// @description  scr_dot_calc(amount);
/// @param amount
// NOTE: 50 X * 0.005 = +/- 15 HP per second 

amount = argument0;
var regen = (amount * 0.005);
return(regen);
