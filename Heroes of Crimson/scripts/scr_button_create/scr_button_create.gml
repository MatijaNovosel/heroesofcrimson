/// @description  scr_button_create(button_id, x, y, width, height, text, function, sprite);
/// @param button_id
/// @param x
/// @param y
/// @param width
/// @param height
/// @param text
/// @param function
/// @param sprite

var button_id, xx, yy, text, _func, _spr;
button_id = argument0;

xx = argument1;
yy = argument2;
ww = argument3;
hh = argument4;

text = argument5;
_func = argument6;
_spr = argument7;

button_x[button_id] = xx;
button_y[button_id] = yy;
button_w[button_id] = ww;
button_h[button_id] = hh;

button_text[button_id] = text;
button_func[button_id] = _func;
button_spr[button_id] = _spr;