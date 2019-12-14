/// @description scr_char_reset();
for(var i = 0; i < char_count_max; i++) {
    // Name
    global.Grid_char[# i, 0] = "Untitled " + string(i);
    // Class
    global.Grid_char[# i, 1] = 0;
    // Level
    global.Grid_char[# i, 2] = 1;
    // XP
    global.Grid_char[# i, 3] = 0;
    // Game mode (0 = standard, 1 = hardcore, 2 = wizard)
    global.Grid_char[# i, 4] = 0;
    // Assigned save file
    global.Grid_char[# i, 5] = -5;
}