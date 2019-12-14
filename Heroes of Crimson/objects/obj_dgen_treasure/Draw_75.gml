/// @description  Loading screen
if !gen_complete
{
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_color(c_black);
    draw_rectangle(0, 0, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ), false);
    
    draw_set_color(c_lime);
    draw_text(10, 10, string_hash_to_newline("Temporary loading text!#Please wait patiently as I construct this dungeon floor."+"##"+string(dgen_progress)));
}

