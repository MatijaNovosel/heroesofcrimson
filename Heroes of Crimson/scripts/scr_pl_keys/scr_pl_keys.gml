/// @description scr_pl_keys();

// Debug mode
Key_debug = keyboard_check_pressed(ord("O"));

// Clicking
global.Lclick = max(mouse_check_button_pressed(mb_left), keyboard_check(ord("C")));
global.Lhold = mouse_check_button(mb_left);
global.Rclick = mouse_check_button_pressed(mb_right);
global.Mclick = mouse_check_button_pressed(mb_middle);

// Spell
global.Key_space = keyboard_check_pressed(vk_space);

// Inventory
global.Key_inv = keyboard_check_pressed(ord("E"));
global.Key_swap_weapon = keyboard_check_pressed(ord("Q"));
global.Key_swap_ability = keyboard_check_pressed(ord("Q"));
global.Key_use_cons0 = keyboard_check_pressed(ord("1"));
global.Key_use_cons1 = keyboard_check_pressed(ord("2"));

// Movement
global.Key_up = keyboard_check(ord("W"));
global.Key_left = keyboard_check(ord("A"));
global.Key_down = keyboard_check(ord("S"));
global.Key_right = keyboard_check(ord("D"));
global.Key_shift = keyboard_check(vk_shift);

// global.Autofire
global.Key_autofire = keyboard_check_pressed(ord("X"));

// Interacting
global.Key_interact = keyboard_check_pressed(vk_enter);

// global.Pause
global.Key_escape = keyboard_check_pressed(vk_escape);