/// @description  scr_char_load_single();
var char_file, char_slot, filename, load_count;

// Find the first available character slot
for(var i = 0; i < char_count_max; i++) {
    if(global.Grid_char[# i, 5] == -5) {
        char_slot = i;
        break;
    } else if(i = (char_count_max - 1)) {
        // Show an error when the last char slot has been reached
        show_error("Tried to load a character, but there is no more space!", false);
        exit;
    }
}

// Find the first available character file
for(var i = 0; i < char_count_max; i++) {
    filename = scr_filename_str(i);
	// (ds_list_find_value(List_char_files, i) != filename)
    if(file_exists(filename) and ds_list_find_index(List_char_files, filename) == -1) {
        // We've found a character file and select it
        char_file = i;
        // Add it to the exclusion list
        ds_list_add(List_char_files, string(filename));
        break;
    } else if(i = (char_count_max - 1)) {
        // Show an error when the last char file has been reached
        show_debug_message("Tried to load a character, but there are no character files.");
        exit;
    }
}

// Load the character data
filename = scr_filename_str(char_file);
if(file_exists(filename)) {
    ini_open(filename)
        global.Grid_char[# char_slot, 0] = ini_read_string("Character", "Name", "Error_name");
        global.Grid_char[# char_slot, 1] = ini_read_real("Character", "Class", 0);
        global.Grid_char[# char_slot, 2] = ini_read_real("Character", "Level", 0);
        global.Grid_char[# char_slot, 3] = ini_read_real("Character", "XP", 0);
        global.Grid_char[# char_slot, 4] = ini_read_real("Character", "Gamemode", 0);
    ini_close();
    // Show what file was loaded to obtain the data
    global.Grid_char[# char_slot, 5] = filename;
    char_pointer[char_slot] = char_slot;
    char_count ++;
}