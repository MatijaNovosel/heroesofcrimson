/// @description scr_gamemode_str(char id);
/// @param char id
var char_id = argument0;
var str_gamemode;

switch(global.Grid_char[# char_id, 4]) {
    case(0):
        str_gamemode = "Standard mode";
        break;
    case(1):
        str_gamemode = "Hardcore mode";
        break;
    case(2):
        str_gamemode = "Wizard mode";
        break;
    default:
        str_gamemode = "Error (playmode)";
        break;
}

return str_gamemode;
