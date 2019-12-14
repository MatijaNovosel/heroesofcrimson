/// @description  scr_char_init();
char_count = 0;
char_count_max = 10;
char_prop_max = 6;

global.Grid_char = ds_grid_create(char_count_max, char_prop_max);
ds_grid_clear(global.Grid_char, -1);

List_char_files = ds_list_create();

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