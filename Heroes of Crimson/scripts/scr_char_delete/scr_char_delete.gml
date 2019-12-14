/// @description scr_char_delete(id);
/// @param id
char_id = argument0;

for(var i = 0; i < char_count_max; i++) {
    filename = global.Grid_char[# char_id, 5];
    if(file_exists(filename)) {
        file_delete(filename);
        exit;
    } else if(i == (char_count_max - 1)) {
        // Show an error when the last char slot has been reached and no file has been found
        show_error("Couldn't find the character file to delete.", false);
        exit;
    }
}