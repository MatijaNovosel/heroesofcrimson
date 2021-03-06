/// @description draw_text_outline_ext(x,y,str,outwidth,outcol,outfidelity,xscale,yscale,angle)
/// @param x
/// @param y
/// @param str
/// @param outwidth
/// @param outcol
/// @param outfidelity
/// @param xscale
/// @param yscale
/// @param angle
//Created by Andrew McCluskey http://nalgames.com/
//x,y: Coordinates to draw
//str: String to draw
//outwidth: Width of outline in pixels
//outcol: Colour of outline (main text draws with regular set colour)
//outfidelity: Fidelity of outline (recommended: 4 for small, 8 for medium, 16 for larger. Watch your performance!)

var dto_dcol=draw_get_color();

draw_set_color(argument4);

for(var dto_i=45; dto_i<405; dto_i+=360/argument5)
{
    draw_text_transformed(argument0+lengthdir_x(argument3,dto_i),argument1+lengthdir_y(argument3,dto_i),string_hash_to_newline(argument2),argument6,argument7,argument8);
}

draw_set_color(dto_dcol);

draw_text_transformed(argument0,argument1,string_hash_to_newline(argument2),argument6,argument7,argument8);
