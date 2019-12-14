window_set_caption("Heroes of Crimson")

/// @description  Initialize some variables
scr_menu_init();

// Initialize the start menu
scr_menu_create_start();

// Initialize the character slots
scr_char_init();

// Create some pointer variables
for(var i = 0; i < char_count_max; i++) {
    char_pointer[i] = i;
}

global.playerClass = -1;