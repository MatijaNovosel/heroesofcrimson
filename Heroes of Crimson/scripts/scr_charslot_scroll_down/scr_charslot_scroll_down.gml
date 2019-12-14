/// @description scr_charslot_scroll_down();
var temp_pointer = char_pointer[char_count - 1];

for(var i = char_count - 1; i >= 0; i--) {
    if(i > 0) {
        char_pointer[i] = char_pointer[i - 1];
    } else if(i == 0) {
        char_pointer[i] = temp_pointer;
    }
}