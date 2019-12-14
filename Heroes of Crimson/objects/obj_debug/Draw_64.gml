if(display == 1) {
    draw_set_font(fnt_itemdesc);
    draw_set_valign(fa_middle)
    draw_set_halign(fa_center);
    draw_text(20, 380, string_hash_to_newline("Debug on"));
    draw_text(20, 400, string_hash_to_newline(string(instance_count)));
    draw_set_alpha(1);
    draw_set_color(c_white);
}