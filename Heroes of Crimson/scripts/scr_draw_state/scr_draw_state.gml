/// @description  scr_draw_state();
draw_set_font(fnt_debug);
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);

var ai_text;
switch (ai_state)
{
    case state.idle:
        draw_set_color(c_aqua);
        ai_text = "Idle"
    break;
    
    case state.flee:
        draw_set_color(c_lime);
        ai_text = "Flee"
    break;
    
    case state.chase:
        draw_set_color(c_yellow);
        ai_text = "Chase"
    break;
    
    case state.attack:
        draw_set_color(c_red);
        ai_text = "Attack"
    break;
    
    case state.search:
        draw_set_color(c_fuchsia);
        ai_text = "Search"
    break;
    
    case state.pause:
        draw_set_color(c_white);
        ai_text = "global.Pause"
    break;
}

draw_text(x, y - 32, string_hash_to_newline(string(ai_text)));
