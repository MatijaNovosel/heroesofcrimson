/// @description  scr_char_load_list();
var char_file_count = scr_char_load_count();

// Reset the list
char_count = 0;
scr_char_reset();

for(var i = 0; i < char_file_count; i++) {
    scr_char_load_single();
}

// Clear the list of loaded character files
ds_list_clear(List_char_files);