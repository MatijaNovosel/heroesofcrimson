/// @description  Debug keys
if(keyboard_check_pressed(ord("R"))) {
    game_restart();
}

if(keyboard_check_pressed(ord("S"))) {
    if(room_speed == 60) {
        room_speed = 10
    }
}

__background_set(e__BG.X, 0, __background_get(e__BG.X, 0) - (0.5));
__background_set(e__BG.Y, 0, __background_get(e__BG.Y, 0) + (0.5));

/// Scroll through the characters
if(menu_current != menu.charlist or char_count <= char_display_count) {
    exit;
}

if(mouse_wheel_down()) {
    scr_charslot_scroll_down();
} else if(mouse_wheel_up()) {
    scr_charslot_scroll_up();
}