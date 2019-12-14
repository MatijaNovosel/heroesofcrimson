/// @description scr_pause_buttons();

// Draw buttons when the pause menu is up
var box0, box1, box2, box3, lhold, lrel;
box0 = point_in_rectangle(mouse_x,mouse_y,__view_get( e__VW.XView, 0 )+300,__view_get( e__VW.YView, 0 )+275,__view_get( e__VW.XView, 0 )+499,__view_get( e__VW.YView, 0 )+324);
box1 = point_in_rectangle(mouse_x,mouse_y,__view_get( e__VW.XView, 0 )+300,__view_get( e__VW.YView, 0 )+350,__view_get( e__VW.XView, 0 )+499,__view_get( e__VW.YView, 0 )+399);
box2 = point_in_rectangle(mouse_x,mouse_y,__view_get( e__VW.XView, 0 )+300,__view_get( e__VW.YView, 0 )+425,__view_get( e__VW.XView, 0 )+499,__view_get( e__VW.YView, 0 )+474);
box3 = point_in_rectangle(mouse_x,mouse_y,__view_get( e__VW.XView, 0 )+300,__view_get( e__VW.YView, 0 )+500,__view_get( e__VW.XView, 0 )+499,__view_get( e__VW.YView, 0 )+549);
lhold = mouse_check_button(mb_left);
lrel = mouse_check_button_released(mb_left);

if box0
{
    if lhold
    {
        draw_sprite(spr_pause_button,2,400,300);
    }
    else
    {
        draw_sprite(spr_pause_button,1,400,300);
    }
    
    if lrel
    {
        // Unpause
        scr_pause_toggle();
    }
}
else
{
    draw_sprite(spr_pause_button,0,400,300);
}

if box1
{
    if lhold
    {
        draw_sprite(spr_pause_button,2,400,375);
    }
    else
    {
        draw_sprite(spr_pause_button,1,400,375);
    }
    
    if lrel
    {
        // Show game statistics
        current_screen = screen[3];
        scr_zunsound(snd_click0);
    }
}
else
{
    draw_sprite(spr_pause_button,0,400,375);
}

if box2
{
    if lhold
    {
        draw_sprite(spr_pause_button,2,400,450);
    }
    else
    {
        draw_sprite(spr_pause_button,1,400,450);
    }
    
    if lrel
    {
        // Show options
        current_screen = screen[4];
        scr_zunsound(snd_click0);
    }
}
else
{
    draw_sprite(spr_pause_button,0,400,450);
}

if box3
{
    if lhold
    {
        draw_sprite(spr_pause_button,2,400,525);
    }
    else
    {
        draw_sprite(spr_pause_button,1,400,525);
    }
    
    if lrel
    {
        // Exit the game
        current_screen = screen[5];
        scr_zunsound(snd_click0);
    }
}
else
{
    draw_sprite(spr_pause_button,0,400,525);
}

// Draw the text of the buttons
draw_set_color($FFFFFF);
draw_set_font(fnt_options1);
draw_text(400,300,string_hash_to_newline("Resume game"));
draw_text(400,375,string_hash_to_newline("Game stats"));
draw_text(400,450,string_hash_to_newline("Options"));
draw_text(400,525,string_hash_to_newline("Exit game"));
