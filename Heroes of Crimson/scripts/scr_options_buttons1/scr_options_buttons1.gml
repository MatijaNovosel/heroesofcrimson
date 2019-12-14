/// @description scr_options_buttons1();
// Draw buttons when the pause menu is up
var xoffset, yoffset, text_xoffset, text_yoffset, box0, box1, box2, box3, box4, box5, box8, box9, box10, lhold, lrel;
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
box10 = point_in_rectangle(mouse_x,mouse_y,__view_get( e__VW.XView, 0 )+xoffset+300,__view_get( e__VW.YView, 0 )+yoffset+500-25,__view_get( e__VW.XView, 0 )+xoffset+499,__view_get( e__VW.YView, 0 )+yoffset+499+25);

// Right side boxes
box4 = point_in_rectangle(mouse_x,mouse_y,__view_get( e__VW.XView, 0 )+xoffset+200,__view_get( e__VW.YView, 0 )+yoffset+125-25,__view_get( e__VW.XView, 0 )+xoffset+399,__view_get( e__VW.YView, 0 )+yoffset+124+25);
box5 = point_in_rectangle(mouse_x,mouse_y,__view_get( e__VW.XView, 0 )+xoffset+200,__view_get( e__VW.YView, 0 )+yoffset+200-25,__view_get( e__VW.XView, 0 )+xoffset+399,__view_get( e__VW.YView, 0 )+yoffset+199+25);
box6 = point_in_rectangle(mouse_x,mouse_y,__view_get( e__VW.XView, 0 )+xoffset+200,__view_get( e__VW.YView, 0 )+yoffset+275-25,__view_get( e__VW.XView, 0 )+xoffset+399,__view_get( e__VW.YView, 0 )+yoffset+274+25);
box7 = point_in_rectangle(mouse_x,mouse_y,__view_get( e__VW.XView, 0 )+xoffset+200,__view_get( e__VW.YView, 0 )+yoffset+350-25,__view_get( e__VW.XView, 0 )+xoffset+399,__view_get( e__VW.YView, 0 )+yoffset+349+25);

lhold = mouse_check_button(mb_left);
lpress = mouse_check_button_pressed(mb_left);
lrel = mouse_check_button_released(mb_left);

draw_set_color($FFFFFF)
draw_set_font(fnt_options0);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Left side box interaction
// Volume slider
if box0
{
    draw_text(text_xoffset,text_yoffset,string_hash_to_newline("Determines how loud the game plays its sounds."))
}

draw_sprite(spr_sliderbg,0,xoffset,125+yoffset);
draw_sprite_part(spr_slidercolor,0,0,0,(200*global.sndVol),12,xoffset-100,119+yoffset);
draw_sprite(spr_sliderbar,0,xoffset,125+yoffset);
draw_sprite(spr_sliderpointer,0,xoffset-100+(200*global.sndVol),125+yoffset);

var snd_minus_x, snd_plus_x, snd_y, snd_slider;
snd_minus_x = xoffset-125;
snd_plus_x = xoffset+125;
snd_y = yoffset+125;
snd_slider = point_in_rectangle(mouse_x,mouse_y,__view_get( e__VW.XView, 0 )+xoffset-100,__view_get( e__VW.YView, 0 )+yoffset+125-12,__view_get( e__VW.XView, 0 )+xoffset+99,__view_get( e__VW.YView, 0 )+yoffset+124+12);

if snd_slider
{
    if lhold
    {
        global.sndVol = (mouse_x-(__view_get( e__VW.XView, 0 )+xoffset-100))/200;
    }
}

if (abs(global.View_mouse_x - snd_minus_x) < 9) && (abs(global.View_mouse_y - snd_y) < 9)
{
    if lpress
    {
        if global.sndVol > 0.05
        global.sndVol -= 0.05;
        else
        global.sndVol = 0;
        
        scr_zunsound(snd_player_hit1);
    }
    
    if lhold
    draw_sprite(spr_sliderminus,0,snd_minus_x,snd_y+2);
    else
    draw_sprite(spr_sliderminus,0,snd_minus_x,snd_y);
}
else
draw_sprite(spr_sliderminus,0,snd_minus_x,snd_y);

if (abs(global.View_mouse_x - snd_plus_x) < 9) && (abs(global.View_mouse_y - snd_y) < 9)
{
    if lpress
    {
        if global.sndVol < 0.95
        global.sndVol += 0.05;
        else
        global.sndVol = 1;
        
        scr_zunsound(snd_player_hit1);
    }
    
    if lhold
    draw_sprite(spr_sliderplus,0,snd_plus_x,snd_y+2);
    else
    draw_sprite(spr_sliderplus,0,snd_plus_x,snd_y);
}
else
draw_sprite(spr_sliderplus,0,snd_plus_x,snd_y);

/*OLD BOX0 CODE: if box0
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
        // Do something
    }
    
    draw_text(text_xoffset,text_yoffset,"Currently disabled, adding volume slider later.")
}
else
{
    draw_sprite(spr_pause_button,0,xoffset,125+yoffset);
}*/

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
        // Toggle particles
        global.partOn = !global.partOn;
        scr_zunsound(snd_click0);
    }
    
    if global.partOn
    {
        draw_text(text_xoffset,text_yoffset,string_hash_to_newline("Determines whether the game displays particle effects.#Example: fire particles that show up when an enemy is on fire.#This is currently ENABLED."))
    }
    else
    {
        draw_text(text_xoffset,text_yoffset,string_hash_to_newline("Determines whether the game displays particle effects.#Example: fire particles that show up when an enemy is on fire.#This is currently DISABLED."))
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
        // Toggle smooth cam
        global.smoothCam = !global.smoothCam;
        scr_zunsound(snd_click0);
    }
    
    if global.smoothCam
    {
        draw_text(text_xoffset,text_yoffset,string_hash_to_newline("When enabled, this option makes the camera move towards the player#at a speed dependant on the distance between the two.#If you're unsure what that means, try experimenting with it.#This is currently ENABLED."))
    }
    else
    {
        draw_text(text_xoffset,text_yoffset,string_hash_to_newline("When enabled, this option makes the camera move towards the player#at a speed dependant on the distance between the two.#If you're unsure what that means, try experimenting with it.#This is currently DISABLED."))
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
        global.camShake = !global.camShake;
        scr_zunsound(snd_click0);
    }
    
    if global.camShake
    {
        draw_text(text_xoffset,text_yoffset,string_hash_to_newline("Determines whether the camera is allowed to shake,#creating an earthquake-like effect.#This is currently ENABLED."))
    }
    else
    {
        draw_text(text_xoffset,text_yoffset,string_hash_to_newline("Determines whether the camera is allowed to shake,#creating an earthquake-like effect.#This is currently DISABLED."))
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
        global.indOn = !global.indOn;
        scr_zunsound(snd_click0);
    }
    
    if global.indOn
    {
        draw_text(text_xoffset,text_yoffset,string_hash_to_newline("Determines whether to show text above the player/enemies.#This includes damage/healing numbers and debuff text.#This is currently ENABLED."))
    }
    else
    {
        draw_text(text_xoffset,text_yoffset,string_hash_to_newline("Determines whether to show text above the player/enemies.#This includes damage/healing numbers and debuff text.#This is currently DISABLED."))
    }
}
else
{
    draw_sprite(spr_pause_button,0,300+xoffset,125+yoffset);
}

if box5
{
    if lhold
    {
        draw_sprite(spr_pause_button,2,300+xoffset,200+yoffset);
    }
    else
    {
        draw_sprite(spr_pause_button,1,300+xoffset,200+yoffset);
    }
    
    if lrel
    {
        // Toggle damage/healing numbers
        global.permHitbox = !global.permHitbox;
        scr_zunsound(snd_click0);
    }
    
    if global.permHitbox
    {
        draw_text(text_xoffset,text_yoffset,string_hash_to_newline("Determines whether to permanently show the player's hitbox.#This means it will be visible even when the player isn't focused.#This is currently ENABLED."))
    }
    else
    {
        draw_text(text_xoffset,text_yoffset,string_hash_to_newline("Determines whether to permanently show the player's hitbox.#This means it will be visible even when the player isn't focused.#This is currently DISABLED."))
    }
}
else
{
    draw_sprite(spr_pause_button,0,300+xoffset,200+yoffset);
}

if box6
{
    if lhold
    {
        draw_sprite(spr_pause_button,2,300+xoffset,275+yoffset);
    }
    else
    {
        draw_sprite(spr_pause_button,1,300+xoffset,275+yoffset);
    }
    
    if lrel
    {
        // Toggle vsync
        if global.vsyncOn
        {
            global.vsyncOn = !global.vsyncOn;
            display_reset(0,false);
        }
        else
        {
            global.vsyncOn = !global.vsyncOn;
            display_reset(0,true);
        }
        scr_zunsound(snd_click0);
    }
    
    if global.vsyncOn
    {
        draw_text(text_xoffset,text_yoffset,string_hash_to_newline("Determines whether to enable vertical synchronisation.#It can prevent screen tearing, but may lower the framerate.#This is currently ENABLED."))
    }
    else
    {
        draw_text(text_xoffset,text_yoffset,string_hash_to_newline("Determines whether to enable vertical synchronisation.#It can prevent screen tearing, but may lower the framerate.#This is currently DISABLED."))
    }
}
else
{
    draw_sprite(spr_pause_button,0,300+xoffset,275+yoffset);
}

if box7
{
    if lhold
    {
        draw_sprite(spr_pause_button,2,300+xoffset,350+yoffset);
    }
    else
    {
        draw_sprite(spr_pause_button,1,300+xoffset,350+yoffset);
    }
    
    if lrel
    {
        // Toggle automatic respawning
        global.autoRespawn = !global.autoRespawn;
        scr_zunsound(snd_click0);
    }
    
    if global.autoRespawn
    {
        draw_text(text_xoffset,text_yoffset,string_hash_to_newline("Determines whether the game skips the death screen automatically.#This is currently ENABLED."))
    }
    else
    {
        draw_text(text_xoffset,text_yoffset,string_hash_to_newline("Determines whether the game skips the death screen automatically.#This is currently DISABLED."))
    }
}
else
{
    draw_sprite(spr_pause_button,0,300+xoffset,350+yoffset);
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
        current_screen = screen[2];
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

if box10
{
    if lhold
    {
        draw_sprite(spr_colored_button,2,xoffset+400,500+yoffset);
    }
    else
    {
        draw_sprite(spr_colored_button,1,xoffset+400,500+yoffset);
    }
    
    if lrel
    {
        // Go to the main pause screen
        current_screen = screen[6];
        scr_zunsound(snd_click1);
    }
}
else
{
    draw_sprite(spr_colored_button,0,xoffset+400,500+yoffset);
}

// Draw the text of the buttons
// Left side
draw_set_font(fnt_options1);
draw_text(xoffset,125+yoffset-25,string_hash_to_newline("Sound effects"));
draw_text(xoffset,125+yoffset+25,string_hash_to_newline(string(round(global.sndVol*100))+"%"));

draw_text(xoffset,200+yoffset,string_hash_to_newline("Particles"));
draw_text(xoffset,275+yoffset,string_hash_to_newline("Smooth camera"));
draw_text(xoffset,350+yoffset,string_hash_to_newline("Camera shake"));

// Right side
draw_text(xoffset+300,125+yoffset,string_hash_to_newline("Damage/heal text"));
draw_text(xoffset+300,200+yoffset,string_hash_to_newline("Permanent hitbox"));
draw_text(xoffset+300,275+yoffset,string_hash_to_newline("Vsync"));
draw_text(xoffset+300,350+yoffset,string_hash_to_newline("Auto respawn"));

// Bottom
draw_text(xoffset-100,500+yoffset,string_hash_to_newline("Go back"));
draw_text(xoffset+150,500+yoffset,string_hash_to_newline("Reset to default"));
draw_text(xoffset+400,500+yoffset,string_hash_to_newline("Page 2 >>"));

// Draw the lights that indicate whether an option is enabled/disabled
// Left side lights
/*if audio_emitter_exists(global.sndEmitter)
{
    draw_sprite(spr_options_light,1,xoffset-125,125+yoffset);
}
else
{
    draw_sprite(spr_options_light,0,xoffset-125,125+yoffset);
}*/

if global.partOn
{
    draw_sprite(spr_options_light,1,xoffset-125,200+yoffset);
}
else
{
    draw_sprite(spr_options_light,0,xoffset-125,200+yoffset);
}

if global.smoothCam
{
    draw_sprite(spr_options_light,1,xoffset-125,275+yoffset);
}
else
{
    draw_sprite(spr_options_light,0,xoffset-125,275+yoffset);
}

if global.camShake
{
    draw_sprite(spr_options_light,1,xoffset-125,350+yoffset);
}
else
{
    draw_sprite(spr_options_light,0,xoffset-125,350+yoffset);
}

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
