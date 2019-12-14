/// @description  GUI
var lhold = mouse_check_button(mb_left);
var lrel = mouse_check_button_released(mb_left);

draw_set_alpha(0.75);
draw_set_font(fnt_debug);

if(global.Debug_mode) {
    draw_set_color(global.logcol_error);
    draw_set_halign(fa_right);
    draw_set_valign(fa_bottom);
    draw_text_outline(__view_get(e__VW.WView, 0) - 8, __view_get(e__VW.HView, 0) - 8 - 18 - 18, "Debug mode: ON", 1, c_black, 10);
}

draw_set_color(c_white);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);
draw_text_outline(__view_get(e__VW.WView, 0) - 8, __view_get(e__VW.HView, 0) - 8, "Player class: " + string(global.playerClass), 1, c_black, 10);

draw_set_color(c_white);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);
draw_text_outline(__view_get(e__VW.WView, 0) - 8, __view_get(e__VW.HView, 0) - 8 - 18, string(fps) + " FPS", 1, c_black, 10);

draw_set_alpha(0.75);
draw_set_halign(fa_left);

if(global.Debug_mode) {
    draw_text_outline(16, 150 - 16 * 1, "Stats:", 1, c_black, 10);
    draw_text_outline(16, 150 + 16 * 0, "ATT: " + string(global.Total_attack), 1, c_black, 10);
    draw_text_outline(16, 150 + 16 * 1, "DEX: " + string(global.Total_dexterity), 1, c_black, 10);
    draw_text_outline(16, 150 + 16 * 2, "SPD: " + string(global.Total_speed), 1, c_black, 10);
    draw_text_outline(16, 150 + 16 * 3, "DEF: " + string(global.Total_defense), 1, c_black, 10);
    draw_text_outline(16, 150 + 16 * 4, "WIS: " + string(global.Total_wisdom), 1, c_black, 10);
    draw_text_outline(16, 150 + 16 * 5, "Life: " + string(global.Total_life), 1, c_black, 10);
    draw_text_outline(16, 150 + 16 * 6, "Mana: " + string(global.Total_mana), 1, c_black, 10);
    draw_text_outline(16, 150 + 16 * 7, "Wealth: " + string(global.Total_wealth), 1, c_black, 10);
    draw_text_outline(16, 150 + 16 * 8, "Luck: " + string(global.Total_luck), 1, c_black, 10);
    draw_text_outline(100, 150 - 16 * 1, "Controls: ", 1, c_black, 10);
    draw_text_outline(100, 150 + 16 * 0, "O - debug mode ", 1, c_black, 10);
    draw_text_outline(100, 150 + 16 * 1, "E - open inventory ", 1, c_black, 10);
    draw_text_outline(100, 150 + 16 * 2, "P - open item spawner", 1, c_black, 10);
    draw_text_outline(100, 150 + 16 * 3, "HOLD shift - precise movement mode", 1, c_black, 10);
    draw_text_outline(100, 150 + 16 * 4, "R - restart game", 1, c_black, 10);
    draw_text_outline(100, 150 + 16 * 5, "1 and 2 - drink potions", 1, c_black, 10);
    draw_text_outline(100, 150 + 16 * 6, "Q - switch items from secondary slot", 1, c_black, 10);
}

draw_set_alpha(1);

if(!global.playerDead) {
    // Draw the HP, MP and XP bars
    var hud_yoffset = 0;
    draw_sprite(spr_playerbar_border, 0, 16, hud_yoffset + 16);
    draw_sprite(spr_playerbar_border, 0, 16, hud_yoffset + 46);
    draw_sprite(spr_playerbar_border, 0, 16, hud_yoffset + 76);
    
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_set_valign(fa_bottom);
    
    // Draw the HP filling and text
    if(global.playerhp_percent > 100) {
        global.playerhp_percent = 100;
    }
    
    draw_sprite(spr_playerbar_bg, 0, 16, hud_yoffset+16);
    draw_sprite_part(spr_playerbar_filling, 0, 0, 0, global.playerhp_percent * 2, 20, 18, hud_yoffset + 18);
    draw_text_outline(32, hud_yoffset + 37, "HP", 1, c_black, 10);
    draw_text_outline(117, hud_yoffset + 37, string(floor(global.playerhp)) + "/" + string(global.playerhp_max), 1, c_black, 10);
    
    // Draw the MP filling and text
    if(global.playermp_percent > 100) {
        global.playermp_percent = 100;
    }
    
    draw_sprite(spr_playerbar_bg, 1, 16, hud_yoffset + 46);
    draw_sprite_part(spr_playerbar_filling, 1, 0, 0, global.playermp_percent * 2, 20, 18, hud_yoffset + 48);
    draw_text_outline(32, hud_yoffset + 67, "MP", 1, c_black, 10);
    draw_text_outline(117, hud_yoffset + 67, string(floor(global.playermp)) + "/" + string(global.playermp_max), 1, c_black, 10);
    
    // Draw the XP filling and text
	if(global.xp_percent > 100) {
		global.xp_percent = 100;
    }
    
    draw_sprite(spr_playerbar_bg, 2, 16, hud_yoffset + 76);
    draw_sprite_part(spr_playerbar_filling, 2, 0, 0, global.xp_percent * 2, 20, 18, hud_yoffset + 78);
    draw_text_outline(32, hud_yoffset + 97, "XP", 1, c_black, 10);
    draw_text_outline(117, hud_yoffset + 97, string(global.xp) + "/" + string(global.xp_needed[global.xp_level]), 1, c_black, 10);
    
    draw_set_alpha(1);
    draw_set_color(c_white);
}

///global.Pause screen
var key_r = keyboard_check_pressed(ord("R"));
var key_esc = keyboard_check_pressed(vk_escape);

//Create a black overlay when the game is paused
if(global.Pause) {
    if(d_alpha_pause < 0.75) {
        d_alpha_pause += 0.075;
    }
    if(key_r && keyboard_check_pressed(vk_shift)) {
        game_restart();
    }
} else if(d_alpha_pause > 0) {
    d_alpha_pause -= 0.075;
}

// Draw the buttons
if(d_alpha_pause > 0) {
    draw_set_alpha(d_alpha_pause);
    draw_set_color(c_black);
    draw_rectangle(0, 0, __view_get(e__VW.WView, 0), __view_get(e__VW.HView, 0), false);
    
    draw_set_color(scr_cformat($FECB38));
    draw_set_font(fnt_pause0);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_alpha(d_alpha_pause * 2);
	
    switch(current_screen) {
        case("pause"): {
			draw_text(__view_get(e__VW.WView, 0) / 2, __view_get(e__VW.HView, 0) - 7 * (__view_get(e__VW.HView, 0) / 8), string_hash_to_newline("Game paused"));
			scr_pause_buttons();
			break;
		}
		case("stats"): {
			draw_text(__view_get(e__VW.WView, 0) / 2, __view_get( e__VW.HView, 0) - 7 * (__view_get(e__VW.HView, 0 ) / 8), string_hash_to_newline("Stats"));
			scr_gamestats_menu();
			break;
		}
        case("options1"): {
			draw_text(__view_get(e__VW.WView, 0) / 2, __view_get( e__VW.HView, 0) - 7 * (__view_get(e__VW.HView, 0) / 8), string_hash_to_newline("Options, page 1"));
			scr_options_buttons1();
			break;
		}
        case("options2"): {
			draw_text(__view_get(e__VW.WView, 0) / 2, __view_get( e__VW.HView, 0) - 7 * (__view_get( e__VW.HView, 0) / 8), string_hash_to_newline("Options, page 2"));
			scr_options_buttons2();
			break;
		}
        case("quit"): {
			draw_text(__view_get(e__VW.WView, 0) / 2, __view_get( e__VW.HView, 0) - 7 * (__view_get( e__VW.HView, 0) / 8), string_hash_to_newline("Go to the title screen?"));
			break;
		}
    }
    draw_set_alpha(1);
}

if(!global.Pause) {
    if(key_esc) {
        scr_pause_toggle();
    }
} else {
    if(key_esc && current_screen = "pause") {
        scr_pause_toggle();
    } else if(key_esc && current_screen != "pause") {
        current_screen = "pause";
        scr_zunsound(snd_click1);
    }
}