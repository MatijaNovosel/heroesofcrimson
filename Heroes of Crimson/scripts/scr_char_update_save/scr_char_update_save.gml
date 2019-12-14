/// @description  scr_char_update_save(char id);
/// @param char id
var a, filename
a = argument0;

filename = string(global.Grid_char[# a, 5]);
if(file_exists(filename)) {
    // Found an empty space, save the character here
    ini_open(filename)
        ini_write_string("Character", "Name", string(global.Grid_char[# a, 0]));
        ini_write_real("Character", "Class", global.Grid_char[# a, 1]);
        ini_write_real("Character", "Level", global.Grid_char[# a, 2]);
        ini_write_real("Character", "XP", global.Grid_char[# a, 3]);
        ini_write_real("Character", "Gamemode", global.Grid_char[# a, 4]);
    ini_close();
    exit;
} else {
    // If the save file hasn't been found, something went wrong
    show_error("Tried to save, but the game couldn't find a save file!", false);
}