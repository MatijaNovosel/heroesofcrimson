// Draw the indicator text
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_floatingtext);
draw_set_color(color);
draw_set_alpha(alpha);

draw_text_outline(draw_x, draw_y, input, 1, c_black, 10);

// Reset the draw settings
draw_set_color($FFFFFF);
draw_set_alpha(1);