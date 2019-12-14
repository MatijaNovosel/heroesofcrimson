/// @description  scr_portal_drawtext(destination name, level);
/// @param destination name
/// @param  level
/// Draw the details of the destination
var name = argument0;
var level = argument1;

var xx = round(x);
var yy = round(y);
var padding = 5;

if (global.Current_portal == id) && !global.playerDead
{
    var str = string(name) + "#Dungeon level: " + string(level) + "#Press 'ENTER' to enter the portal.";
    var str_h = string_height(string_hash_to_newline(str));
    var str_w = string_width(string_hash_to_newline(str)) div 2;
    
    draw_set_color(c_black);
    draw_set_alpha(0.5);
    draw_rectangle(xx - str_w - padding, yy - 24 - str_h, xx + str_w + padding, yy - 24, false);
    
    draw_set_color(scr_cformat($D8D8D8));
    draw_set_alpha(1);
    draw_rectangle(xx - str_w - padding, yy - 24 - str_h, xx + str_w + padding, yy - 24, true);
    
    draw_set_font(fnt_portal);
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_set_valign(fa_top);
    draw_text_outline(xx, yy - 24 - str_h, string(str), 1, c_black, 10);
}
