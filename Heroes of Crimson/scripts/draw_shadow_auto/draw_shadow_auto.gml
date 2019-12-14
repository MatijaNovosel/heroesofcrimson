/// @description draw_shadow_auto(sprite index);
/// @param sprite index
var sprite, factor, xoffset, yoffset, scale;
sprite = argument0;

xoffset = 0 //round(sprite_get_width(sprite) / something);
yoffset = round(sprite_get_height(sprite) / 2.5);
scale = (sprite_get_width(sprite)) / 250

if global.Draw_shadow
{
    draw_sprite_ext(spr_shadow, 0, x + xoffset, y + yoffset, scale, scale, 0, -1, 1);
}
