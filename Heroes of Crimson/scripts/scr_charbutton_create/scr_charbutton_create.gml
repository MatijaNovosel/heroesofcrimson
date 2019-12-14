/// @description  scr_charbutton_create(button id, x, y);
/// @param button id
/// @param  x
/// @param  y
var a, xx, yy;
a = argument0;
xx = argument1;
yy = argument2;

button_x[a] = xx;
button_y[a] = yy;
button_w[a] = global.Charbutton_width;
button_h[a] = global.Charbutton_height;

button_text[a] = -1;
button_func[a] = func.charselect;
button_spr[a] = spr_charbutton;