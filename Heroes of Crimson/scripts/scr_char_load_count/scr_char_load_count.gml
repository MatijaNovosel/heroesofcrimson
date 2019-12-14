/// @description  scr_char_load_count();
var count = 0;

for(var i = 0; i < char_count_max; i++) {
    filename = scr_filename_str(i);
    if(file_exists(filename)) {
        count ++;
    }
}

return count;