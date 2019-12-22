/// @description  Draw the menus
// Track whether the mouse button is pressed
var lclick = mouse_check_button_pressed(mb_left);
var lrel = mouse_check_button_released(mb_left);

draw_set_alpha(1);

// Draw the name of the menu
scr_draw_menu_name();

// Draw all the buttons
// Basic buttons
for(var i = 0; i < button_total; i++) {
    if((button_func[i] != func.charselect and button_func[i] != func.goto_chardelete) or (button_func[i] == func.goto_chardelete and char_select != -1)) {
        draw_set_font(fnt_menu_button);
        draw_set_halign(fa_center);
        draw_set_valign(fa_middle);
    
        // Draw the button's border
        draw_sprite(button_spr[i], 0, button_x[i], button_y[i]);
        
        // Hover over the button
        if(point_in_rectangle(mouse_x, mouse_y, button_x[i], button_y[i], button_x[i] + button_w[i], button_y[i] + button_h[i])) {
            if(hover_select != i) {
                hover_select = i;
                audio_play_sound(snd_menu_hover, 0, 0);
            }
            // Push the button
            if(lclick) {
                button_select = i;
                audio_play_sound(snd_menu_clickhold, 0, 0);
            }
            if(button_select == i) {
                draw_sprite(button_spr[i], 3, button_x[i], button_y[i]);
                draw_set_color(menu_color_click);
                // Release the button and perform an action
                if(lrel) {
                    button_select = -1;
                    scr_button_int(i);
                }
            } else {
                draw_sprite(button_spr[i], 2, button_x[i], button_y[i]);
                draw_set_color(menu_color_hover);
            }
        } else {
            if((hover_select != -1) and (!point_in_rectangle(mouse_x, mouse_y, button_x[hover_select], button_y[hover_select], button_x[hover_select] + button_w[hover_select], button_y[hover_select] + button_h[hover_select]))) {
                button_select = -1;
                hover_select = -1;
            }
            draw_sprite(button_spr[i], 1, button_x[i], button_y[i]);
            draw_set_color(menu_color_neutral);
        }
        // Draw the button's text
        draw_text_outline((button_x[i] + button_x[i] + button_w[i]) div 2, (button_y[i] + button_y[i] + button_h[i]) div 2, string_hash_to_newline(button_text[i]), 1, c_black, 10);
    }
}

// Char list
if(menu_current == menu.charlist) {
    for(var i = 0; i < char_display_count; i++) {
        if(button_func[i] == func.charselect) {
            draw_sprite(button_spr[i], 0, button_x[i], button_y[i] + char_scroll_y);
            // Hover over the button
            if(point_in_rectangle(mouse_x, mouse_y, button_x[i], button_y[i], button_x[i] + button_w[i], button_y[i] + button_h[i])) {
                if(hover_select != i) {
                    hover_select = i;
                    audio_play_sound(snd_menu_hover, 0, 0);
                }
                // Push the button
                if(lclick) {
                    button_select = i;
                    audio_play_sound(snd_menu_clickhold, 0, 0);
                }
                if(button_select == i) {
                    if(char_select != char_pointer[i]) {
                        draw_sprite(button_spr[i], 3, button_x[i], button_y[i] + char_scroll_y);
                        draw_set_color(menu_color_hover);
                    }
                    // Select a character
                    if(lrel) {
                        button_select = -1;
                        audio_play_sound(snd_menu_next, 0, 0);
                        char_select = char_pointer[i];
                    }
                } else {
                    draw_sprite(button_spr[i], 2, button_x[i], button_y[i] + char_scroll_y);
                    draw_set_color(menu_color_hover);
                }
            } else {
                if((hover_select != -1) and !point_in_rectangle(mouse_x, mouse_y, button_x[hover_select], button_y[hover_select], button_x[hover_select] + button_w[hover_select], button_y[hover_select] + button_h[hover_select])) {
                    button_select = -1;
                    hover_select = -1;
                }
                draw_sprite(button_spr[i], 1, button_x[i], button_y[i] + char_scroll_y);
                draw_set_color(menu_color_neutral);
            }
            
            if(char_select == char_pointer[i]) {
                draw_sprite(button_spr[i], 4, button_x[i], button_y[i] + char_scroll_y);
                draw_set_color(menu_color_click);
            }
            
            // Draw the button's text
            draw_set_font(fnt_menu_charbutton);
            draw_set_halign(fa_right);
            draw_set_valign(fa_top);
                    
            // Draw the character icon
            if(global.Grid_char[# char_pointer[i], 1] == 0) {
                 draw_sprite(spr_charicon, 1, button_x[i] + 5, button_y[i] + 5 + char_scroll_y);
            } else if(global.Grid_char[# char_pointer[i], 1] == 1) {
                draw_sprite(spr_charicon, 2, button_x[i] + 5, button_y[i] + 5 + char_scroll_y);
            } else {
                draw_sprite(spr_charicon, 3, button_x[i] + 5, button_y[i] + 5 + char_scroll_y);
            }
			
            var str = scr_charbutton_str(char_pointer[i]);
            draw_text_outline(button_x[i] + 385, button_y[i] + 10 + char_scroll_y, string_hash_to_newline(str), 1, c_black, 10);
        }
    }

    // Draw a panel displaying info about the selected character
    if(char_select != -1) {
        // Draw the panel and class icon
        var selected_class = global.Grid_char[# char_pointer[i], 1];
        draw_sprite(spr_charpanel, 0, __view_get(e__VW.WView, 0) - 40, 80);
        draw_sprite(spr_charicon, selected_class + 1, __view_get(e__VW.WView, 0) - 220, 100);
        
        draw_set_font(fnt_menu_charname);
        draw_set_halign(fa_center);
        draw_set_valign(fa_top);
        draw_set_color(menu_color_neutral);
        
        // Draw the character name
        draw_text_outline(__view_get(e__VW.WView, 0) - 110, 100, string_hash_to_newline(string(global.Grid_char[# char_select, 0])), 1, c_black, 10);
        
        draw_set_font(fnt_menu_charinfo);
        
        // Draw the character class
        var str = scr_class_str(char_select);
        draw_text_outline(__view_get( e__VW.WView, 0 ) - 110, 120, string_hash_to_newline(string(str)), 1, c_black, 10);
        
        draw_set_halign(fa_left);
        draw_set_valign(fa_top);
        
        // Draw items for the current class
        
        // Weapon
        draw_sprite(spr_charitem, 0, __view_get(e__VW.WView, 0) - 240 + 6 + (0 * 48), 160);
        // Magic knight, Archer, Cleric - 50, 70 and 110
        switch(selected_class) {
            case(0): {
                draw_sprite(spr_items_40px, 50, __view_get(e__VW.WView, 0) - 240 + 8 + (0 * 48), 162);
                break;
			}
            case(1): {
                draw_sprite(spr_items_40px, 70, __view_get(e__VW.WView, 0) - 240 + 8 + (0 * 48), 162);
                break;
			}
            case(2): {
                draw_sprite(spr_items_40px, 110, __view_get(e__VW.WView, 0) - 240 + 8 + (0 * 48), 162);
                break;
			}
            default: {
                break;
			}
        }
        
        // Ability (placeholder)
        draw_sprite(spr_charitem, 0, __view_get(e__VW.WView, 0) - 240 + 6 + (1 * 48), 160);
        draw_sprite(spr_itemsil, 10, __view_get(e__VW.WView, 0) - 240 + 8 + (1 * 48), 162);
        
        // Armor
        draw_sprite(spr_charitem, 0, __view_get(e__VW.WView, 0) - 240 + 6 + (2 * 48), 160);
        switch(selected_class){
            case(0): {
                draw_sprite(spr_itemsil, 2, __view_get(e__VW.WView, 0) - 240 + 8 + (2 * 48), 162);
                break;
			}
            case(1): {
				draw_sprite(spr_itemsil, 3, __view_get(e__VW.WView, 0) - 240 + 8 + (2 * 48), 162);
                break;
			}
            case(2): {
                draw_sprite(spr_itemsil, 4, __view_get(e__VW.WView, 0) - 240 + 8 + (2 * 48), 162);
                break;
			}
            default: {
                break;
			}
        }
        
        // Ring
        draw_sprite(spr_charitem, 0, __view_get(e__VW.WView, 0) - 240 + 6 + (3 * 48), 160);
        draw_sprite(spr_itemsil, 1, __view_get(e__VW.WView, 0) - 240 + 8 + (3 * 48), 162);
        
        // Draw the rest of the information
        var str = scr_charpanel_str(char_select);
        draw_text(__view_get(e__VW.WView, 0) - 220, 220, string_hash_to_newline(str));
    }
}

// Char creation
draw_set_alpha(1);

if(menu_current == menu.charcreate) {
    draw_set_color(menu_color_neutral);
    draw_set_halign(fa_center);
    draw_set_valign(fa_bottom);
    draw_text_outline(__view_get(e__VW.WView, 0) div 2, __view_get(e__VW.HView, 0) div 2 - 25, string_hash_to_newline("Enter the character name: "), 1, c_black, 10);
    draw_text_outline(__view_get(e__VW.WView, 0) div 2, __view_get(e__VW.HView, 0) div 2 - 205, string_hash_to_newline("Select your character: "), 1, c_black, 10);
    draw_set_alpha(0.5);
    draw_set_color(c_black);
    draw_rectangle((__view_get(e__VW.WView, 0) div 2) - 100, (__view_get(e__VW.HView, 0) div 2), (__view_get(e__VW.WView, 0) div 2) + 100, (__view_get(e__VW.HView, 0) div 2) + 50, false);
}

// Char deletion
draw_set_alpha(1);

if(menu_current == menu.chardelete) {
    draw_set_color(menu_color_neutral);
    draw_set_halign(fa_center);
    draw_set_valign(fa_bottom);
    var name = global.Grid_char[# char_select, 0];
    var class = scr_class_str(char_select);
    draw_text_outline(
		__view_get(e__VW.WView, 0) div 2, 
		(__view_get(e__VW.HView, 0) div 2) - 40, 
		string_hash_to_newline("Are you SURE you want to delete#" + string(name) + ", the " + string(class) + "?"), 
		1, 
		c_black, 
		10
	);
}

/// DEBUG STUFF

/*

	draw_set_halign(fa_right);
	draw_set_valign(fa_top);
	draw_set_color(c_yellow);
	draw_text(__view_get( e__VW.WView, 0 ) - 10, 10, string_hash_to_newline("Button select: " + string(button_select)
	+ "#Current screen: " + string(menu_current)
	+ "#Hover select: " + string(hover_select)
	+ "#Char count: " + string(char_count)));

*/