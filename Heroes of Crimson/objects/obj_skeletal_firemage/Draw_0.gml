/// @description  Draw the sprite and shadow
if !collision_line(x, y, global.playerInstance.x, global.playerInstance.y, obj_wall_par, false, true) && !scr_status_find(status.invis, self)
{
    draw_shadow_auto(sprite_index);
    scr_en_drawself();
}

// DEBUGGING
if global.Debug_mode
{
    if !collision_line(x, y, global.playerInstance.x, global.playerInstance.y, obj_wall_par, false, true)
    {
        image_alpha = 1;
    }
    else
    {
        image_alpha = 0.33;
    }
    
    scr_en_drawself();
    
    scr_draw_state();
    
    draw_circle(x, y, chase_range, true);
    draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, true);
}

