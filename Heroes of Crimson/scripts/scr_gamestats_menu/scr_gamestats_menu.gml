/// @description scr_gamestats_menu();
// Draw buttons when the pause menu is up
var xoffset, yoffset, text_xoffset, text_yoffset, box0, lhold, lrel;
xoffset = 250;
yoffset = 35;
text_xoffset = 50;
text_yoffset = 125;

box0 = point_in_rectangle(mouse_x,mouse_y,__view_get( e__VW.XView, 0 )+xoffset-200,__view_get( e__VW.YView, 0 )+yoffset+500-25,__view_get( e__VW.XView, 0 )+xoffset-1,__view_get( e__VW.YView, 0 )+yoffset+499+25);

lhold = mouse_check_button(mb_left);
lrel = mouse_check_button_released(mb_left);

draw_set_color($FFFFFF)
draw_set_font(fnt_options1);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

// Draw the statistics
draw_text(text_xoffset,text_yoffset,string_hash_to_newline("Projectiles fired: "+string(global.StatShotsFired)));
draw_text(text_xoffset,text_yoffset+1*25,string_hash_to_newline("Skill uses: "+string(global.StatSkillUses)));

draw_text(text_xoffset,text_yoffset+3*25,string_hash_to_newline("Damage dealt: "+string(global.StatDamageDealt)));
draw_text(text_xoffset,text_yoffset+4*25,string_hash_to_newline("Damage taken: "+string(global.StatDamageTaken)));

draw_text(text_xoffset,text_yoffset+6*25,string_hash_to_newline("Times died: "+string(global.StatDeathCount)));
draw_text(text_xoffset,text_yoffset+7*25,string_hash_to_newline("Enemies killed: "+string(global.StatEnemyKills)));

draw_text(text_xoffset,text_yoffset+9*25,string_hash_to_newline("Perfect boss phase clears: "+string(global.StatPhasesCaptured)));
draw_text(text_xoffset,text_yoffset+10*25,string_hash_to_newline("Failed boss phase clears: "+string(global.StatPhasesFailed)));

draw_set_halign(fa_center);
// Bottom box interaction
if box0
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

draw_text(xoffset-100,500+yoffset,string_hash_to_newline("Go back"));
