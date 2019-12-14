/// @description  scr_char_create_save(char id);
/// @param char id
var character_id, filename
character_id = argument0;

for(var i = 0; i < char_count_max; i++) {
    filename = scr_filename_str(i);
    if(!file_exists(filename)) {
        // We've determine the filename, write this data
        global.Grid_char[# character_id, 5] = string(filename);
        // Found an empty space, save the character here
        ini_open(filename)
            ini_write_string("Character", "Name", string(global.Grid_char[# character_id, 0]));
            ini_write_real("Character", "Class", global.Grid_char[# character_id, 1]);
            ini_write_real("Character", "Level", global.Grid_char[# character_id, 2]);
            ini_write_real("Character", "XP", global.Grid_char[# character_id, 3]);
            ini_write_real("Character", "Gamemode", global.Grid_char[# character_id, 4]);
            ini_write_string("Character", "Filename", string(filename));
        ini_close();
        exit;
    }
}

// If there isn't space, show an error message
show_error("All save slots have been occupied! The game cannot save.", false);