/// @description scr_options_buttons2();
// Draw buttons when the pause menu is up
var xoffset, yoffset, text_xoffset, text_yoffset, box0, box1, box2, box3, box4, box5, box8, box9, lhold, lrel;
xoffset = 250;
yoffset = 35;
text_xoffset = 400;
text_yoffset = 450;

// Left side boxes
box0 = point_in_rectangle(mouse_x,mouse_y,__view_get( e__VW.XView, 0 )+xoffset-100,__view_get( e__VW.YView, 0 )+yoffset+125-25,__view_get( e__VW.XView, 0 )+xoffset+99,__view_get( e__VW.YView, 0 )+yoffset+124+25);
box1 = point_in_rectangle(mouse_x,mouse_y,__view_get( e__VW.XView, 0 )+xoffset-100,__view_get( e__VW.YView, 0 )+yoffset+200-25,__view_get( e__VW.XView, 0 )+xoffset+99,__view_get( e__VW.YView, 0 )+yoffset+199+25);
box2 = point_in_rectangle(mouse_x,mouse_y,__view_get( e__VW.XView, 0 )+xoffset-100,__view_get( e__VW.YView, 0 )+yoffset+275-25,__view_get( e__VW.XView, 0 )+xoffset+99,__view_get( e__VW.YView, 0 )+yoffset+274+25);
box3 = point_in_rectangle(mouse_x,mouse_y,__view_get( e__VW.XView, 0 )+xoffset-100,__view_get( e__VW.YView, 0 )+yoffset+350-25,__view_get( e__VW.XView, 0 )+xoffset+99,__view_get( e__VW.YView, 0 )+yoffset+349+25);

box8 = point_in_rectangle(mouse_x,mouse_y,__view_get( e__VW.XView, 0 )+xoffset-200,__view_get( e__VW.YView, 0 )+yoffset+500-25,__view_get( e__VW.XView, 0 )+xoffset-1,__view_get( e__VW.YView, 0 )+yoffset+499+25);
box9 = point_in_rectangle(mouse_x,mouse_y,__view_get( e__VW.XView, 0 )+xoffset+50,__view_get( e__VW.YView, 0 )+yoffset+500-25,__view_get( e__VW.XView, 0 )+xoffset+249,__view_get( e__VW.YView, 0 )+yoffset+499+25);

// Right side boxes
box4 = point_in_rectangle(mouse_x,mouse_y,__view_get( e__VW.XView, 0 )+xoffset+200,__view_get( e__VW.YView, 0 )+yoffset+125-25,__view_get( e__VW.XView, 0 )+xoffset+399,__view_get( e__VW.YView, 0 )+yoffset+124+25);
box5 = point_in_rectangle(mouse_x,mouse_y,__view_get( e__VW.XView, 0 )+xoffset+200,__view_get( e__VW.YView, 0 )+yoffset+200-25,__view_get( e__VW.XView, 0 )+xoffset+399,__view_get( e__VW.YView, 0 )+yoffset+199+25);
box6 = point_in_rectangle(mouse_x,mouse_y,__view_get( e__VW.XView, 0 )+xoffset+200,__view_get( e__VW.YView, 0 )+yoffset+275-25,__view_get( e__VW.XView, 0 )+xoffset+399,__view_get( e__VW.YView, 0 )+yoffset+274+25);
box7 = point_in_rectangle(mouse_x,mouse_y,__view_get( e__VW.XView, 0 )+xoffset+200,__view_get( e__VW.YView, 0 )+yoffset+350-25,__view_get( e__VW.XView, 0 )+xoffset+399,__view_get( e__VW.YView, 0 )+yoffset+349+25);

lhold = mouse_check_button(mb_left);
lrel = mouse_check_button_released(mb_left);

draw_set_color($FFFFFF)
draw_set_font(fnt_options0);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Left side box interaction
if box0
{
    if lhold
    {
        draw_sprite(spr_pause_button,2,xoffset,125+yoffset);
    }
    else
    {
        draw_sprite(spr_pause_button,1,xoffset,125+yoffset);
    }
    
    if lrel
    {
        // Weapon sounds
        global.wepsndOn = !global.wepsndOn;
        scr_zunsound(snd_click0);
    }
    
    if global.wepsndOn
    {
        draw_text(text_xoffset,text_yoffset,string_hash_to_newline("Determines whether player weapons emit sounds.#This is currently ENABLED."))
    }
    else
    {
        draw_text(text_xoffset,text_yoffset,string_hash_to_newline("Determines whether player weapons emit sounds.#This is currently DISABLED."))
    }
}
else
{
    draw_sprite(spr_pause_button,0,xoffset,125+yoffset);
}


if box1
{
    if lhold
    {
        draw_sprite(spr_pause_button,2,xoffset,200+yoffset);
    }
    else
    {
        draw_sprite(spr_pause_button,1,xoffset,200+yoffset);
    }
    
    if lrel
    {
        // Weapon sounds
        global.transProj = !global.transProj;
        scr_zunsound(snd_click0);
    }
    
    if global.transProj
    {
        draw_text(text_xoffset,text_yoffset,string_hash_to_newline("Makes player projectiles transparent, so you can focus on enemy projectiles more.#This is currently ENABLED."))
    }
    else
    {
        draw_text(text_xoffset,text_yoffset,string_hash_to_newline("Makes player projectiles transparent, so you can focus on enemy projectiles more.#This is currently DISABLED."))
    }
}
else
{
    draw_sprite(spr_pause_button,0,xoffset,200+yoffset);
}

if box2
{
    if lhold
    {
        draw_sprite(spr_pause_button,2,xoffset,275+yoffset);
    }
    else
    {
        draw_sprite(spr_pause_button,1,xoffset,275+yoffset);
    }
    
    if lrel
    {
        // Toggle sound overlap
        global.sndOverlap = !global.sndOverlap;
        scr_zunsound(snd_click0);
    }
    
    if global.sndOverlap
    {
        draw_text(text_xoffset,text_yoffset,string_hash_to_newline("When enabled, sounds that are played multiple times in#quick succession don't cut off their previous play.#This is currently ENABLED."))
    }
    else
    {
        draw_text(text_xoffset,text_yoffset,string_hash_to_newline("When enabled, sounds that are played multiple times in#quick succession don't cut off their previous play.#This is currently DISABLED."))
    }
}
else
{
    draw_sprite(spr_pause_button,0,xoffset,275+yoffset);
}


if box3
{
    if lhold
    {
        draw_sprite(spr_pause_button,2,xoffset,350+yoffset);
    }
    else
    {
        draw_sprite(spr_pause_button,1,xoffset,350+yoffset);
    }
    
    if lrel
    {
        // Toggle cam shake
        global.Draw_shadow = !global.Draw_shadow;
        scr_zunsound(snd_click0);
    }
    
    if global.camShake
    {
        draw_text(text_xoffset,text_yoffset,string_hash_to_newline("Determines whether to draw shadows under entities#such as players and enemies.#This is currently DISABLED."))
    }
    else
    {
        draw_text(text_xoffset,text_yoffset,string_hash_to_newline("Determines whether to draw shadows under entities#such as players and enemies.#This is currently DISABLED."))
    }
}
else
{
    draw_sprite(spr_pause_button,0,xoffset,350+yoffset);
}

// Right side box interaction
if box4
{
    if lhold
    {
        draw_sprite(spr_pause_button,2,300+xoffset,125+yoffset);
    }
    else
    {
        draw_sprite(spr_pause_button,1,300+xoffset,125+yoffset);
    }
    
    if lrel
    {
        // Toggle damage/healing numbers
        global.sleepOn = !global.sleepOn;
        scr_zunsound(snd_click0);
    }
    
    if global.indOn
    {
        draw_text(text_xoffset,text_yoffset,string_hash_to_newline("Makes the game freeze for a few frames when slaying enemies.#This is currently ENABLED."))
    }
    else
    {
        draw_text(text_xoffset,text_yoffset,string_hash_to_newline("Makes the game freeze for a few frames when slaying enemies.#This is currently DISABLED."))
    }
}
else
{
    draw_sprite(spr_pause_button,0,300+xoffset,125+yoffset);
}


// Bottom box interaction
if box8
{
    if lhold
    {
        draw_sprite(spr_colored_button,2,xoffset-100,500+yoffset);
    }
    else
    {
        draw_sprite(spr_colored_button,1,xoffset-100,500+yoffset);
    }
    
    if lrel
    {
        // Go to the main pause screen
        current_screen = screen[4];
        scr_zunsound(snd_click1);
    }
}
else
{
    draw_sprite(spr_colored_button,0,xoffset-100,500+yoffset);
}

if box9
{
    if lhold
    {
        draw_sprite(spr_colored_button,5,xoffset+150,500+yoffset);
    }
    else
    {
        draw_sprite(spr_colored_button,4,xoffset+150,500+yoffset);
    }
    
    if lrel
    {
        // Reset the options to default
        global.smoothCam = true;
        global.camShake = true;
        global.partOn = true;
        global.indOn = true;
        global.permHitbox = false;
        if !global.vsyncOn
        {
            global.vsyncOn = true;
            display_reset(0,true);
        }
        scr_zunsound(snd_click1);
    }
}
else
{
    draw_sprite(spr_colored_button,3,xoffset+150,500+yoffset);
}

// Draw the text of the buttons
// Left side
draw_set_font(fnt_options1);
draw_text(xoffset,125+yoffset,string_hash_to_newline("Weapon sounds"));
draw_text(xoffset,200+yoffset,string_hash_to_newline("Trans. proj."));
draw_text(xoffset,275+yoffset,string_hash_to_newline("Sound overlap"));
draw_text(xoffset,350+yoffset,string_hash_to_newline("Shadows"));

// Bottom
draw_text(xoffset-100,500+yoffset,string_hash_to_newline("<< Page 1"));
draw_text(xoffset+150,500+yoffset,string_hash_to_newline("Reset to default"));

// Draw the lights that indicate whether an option is enabled/disabled
// Left side lights
if global.wepsndOn
{
    draw_sprite(spr_options_light,1,xoffset-125,125+yoffset);
}
else
{
    draw_sprite(spr_options_light,0,xoffset-125,125+yoffset);
}


if global.transProj
{
    draw_sprite(spr_options_light,1,xoffset-125,200+yoffset);
}
else
{
    draw_sprite(spr_options_light,0,xoffset-125,200+yoffset);
}

if global.sndOverlap
{
    draw_sprite(spr_options_light,1,xoffset-125,275+yoffset);
}
else
{
    draw_sprite(spr_options_light,0,xoffset-125,275+yoffset);
}

if global.Draw_shadow
{
    draw_sprite(spr_options_light,1,xoffset-125,350+yoffset);
}
else
{
    draw_sprite(spr_options_light,0,xoffset-125,350+yoffset);
}
/*
//Right side lights
if global.indOn
{
    draw_sprite(spr_options_light,1,xoffset+425,125+yoffset);
}
else
{
    draw_sprite(spr_options_light,0,xoffset+425,125+yoffset);
}

if global.permHitbox
{
    draw_sprite(spr_options_light,1,xoffset+425,200+yoffset);
}
else
{
    draw_sprite(spr_options_light,0,xoffset+425,200+yoffset);
}

if global.vsyncOn
{
    draw_sprite(spr_options_light,1,xoffset+425,275+yoffset);
}
else
{
    draw_sprite(spr_options_light,0,xoffset+425,275+yoffset);
}

if global.autoRespawn
{
    draw_sprite(spr_options_light,1,xoffset+425,355+yoffset);
}
else
{
    draw_sprite(spr_options_light,0,xoffset+425,355+yoffset);
}
/*
