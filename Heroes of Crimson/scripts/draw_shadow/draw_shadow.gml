/// @description draw_shadow(x offset, y offset, scale);
/// @param x offset
/// @param  y offset
/// @param  scale
var xoffset, yoffset, scale;
xoffset = argument0;
yoffset = argument1;
scale = argument2;

if global.Draw_shadow
{
    draw_sprite_ext(spr_shadow, 0, x + xoffset, y + yoffset, scale, scale, 0, -1, 1);
}
