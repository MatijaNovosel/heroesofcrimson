/// @description scr_charpanel_str(char id);
/// @param char id
var char_id, str, line0, line1, line2;
char_id = argument0;

line0 = "Level " + string(global.Grid_char[# char_id, 2]);
line1 = "XP " + string(global.Grid_char[# char_id, 3]);
line2 = scr_gamemode_str(char_id);

str = line0 + "#" + line1 + "#" + line2;
return str;
