/// @description  scr_menu_init();
// * * * * * Create an enumerator for the menu screens
enum menu {
    // Title
    title,
    // Main
    main,
    charlist,
        charcreate,
        chardelete,
    statistics,
    options,
    credits,
    donate,
    // Quit
    confirm_quit,
}

// * * * * * Create an enumerator for the button functions
enum func {
    goto_main,
    goto_charlist,
        goto_charcreate,
        goto_chardelete,
        charselect,
        charmake,
        pick_mk,
        pick_cleric,
        pick_hunter,
        play,
    goto_statistics,
    goto_options,
    goto_credits,
    goto_donate,
    goto_reddit,
    
    goto_confirm_quit,
    
    go_back,
    go_next,
}

// * * * * * Buttons
// Determine the size and placement of the buttons
offset_x = 0;
offset_y = 0;

global.Button_width = 200;
global.Button_height = 40;
global.Button_dis = 60;

global.Charbutton_width = 400;
global.Charbutton_height = 60;
global.Charbutton_dis = 80;

// Track the selected button
button_total = -1;
button_select = -1;
hover_select = -1;

// * * * * * Character buttons buttons
// Declare some variables
char_count_max = 10; // How many characters the game can store at max
char_display_count = 6; // How many characters to display per 'page'
char_scroll_dir = -1; // Scrolling direction
char_scroll_y = 0; // Scrolling y value
char_select = -1; // Which character is selected?

// Track the current menu screen
menu_current = menu.title;

// Font colors
menu_color_neutral = c_white;
menu_color_hover = scr_cformat($FFCF3F);
menu_color_click = scr_cformat($00E5E5);