/// @description scr_charslot_scroll_up();
var temp_pointer = char_pointer[0];

for(var i = 0; i < char_count; i++) {
    if(i < char_count - 1) {
        char_pointer[i] = char_pointer[i + 1];
    } else if(i == char_count - 1) {
        char_pointer[i] = temp_pointer;
    }
}