/// @description  Draw the messages!
for(var i = 0; i < 5; i ++) {
    if(global.Text_log[i, 0] != -1) {
        draw_set_font(fnt_textlog);
        draw_set_color(global.Text_log[i, 1]);
        draw_set_alpha(global.Text_log[i, 3]);
        draw_set_halign(fa_left);
        draw_set_valign(fa_bottom);
        draw_text_outline(8, __view_get( e__VW.HView, 0 ) - 8 - (18 * i), string(global.Text_log[i, 0]), 1, c_black, 10);
    }
}