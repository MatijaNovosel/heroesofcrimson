/// @description scr_charbutton_str(char id);
/// @param char id
var char_id, str, line0, line1, line2, line3;
char_id = argument0;

line0 = string(global.Grid_char[# char_id, 0]);
line1 = scr_class_str(char_id);
line2 = "Level " + string(global.Grid_char[# char_id, 2]);
line3 = " (" + string(global.Grid_char[# char_id, 5]) + ")";
// line3 = scr_playmode_str(char_id);

str = line0 + ", the " + line1 + "#" + line2 + line3; // + " (" + line3 + ")";
return str;

// NOTE: Add line 3 later when saving is fixed!
