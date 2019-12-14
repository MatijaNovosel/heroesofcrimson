/// @description  Draw status and tracked x/y (debug)
/// @param debug
scr_status_enemy_draw(x, bbox_top - 16);

if global.Debug_mode
draw_sprite(spr_target_icon, 0, track_x, track_y);

