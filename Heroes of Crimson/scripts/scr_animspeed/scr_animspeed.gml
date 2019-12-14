/// @description scr_animspeed();
//AS = Animation Speed

var AS1;
if global.Slomo
AS1 = 1/(shoot_cd/2);
else
AS1 = 1/(shoot_cd/4);

return AS1;
