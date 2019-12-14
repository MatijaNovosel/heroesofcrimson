/// @description  scr_status_player_draw(x, y);
/// @param x
/// @param  y
var offset_x, offset_y;
offset_x = argument0;
offset_y = argument1;

if global.Debug_mode
{
    draw_set_alpha(1);
    draw_set_color(c_white);
    draw_text(x, y + 40, string_hash_to_newline(string(status_count) + "/" + string(global.Max_status)));
}

var offset_s = (10 * (status_count - 1));
for (var i = 0; i < global.Max_status; i ++)
{
    if (status_id[i] != -1)
    {
        draw_sprite(spr_statusicons, scr_status_getimage(status_id[i]), offset_x + (20 * i) - offset_s, offset_y);
    }
}
