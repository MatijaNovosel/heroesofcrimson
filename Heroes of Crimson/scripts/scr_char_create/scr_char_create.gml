/// @description  scr_char_create();
var char_slot;

/*

    NOTE!
    IN-GAME CHARACTER SLOTS CAN DIFFER IN ORDER FROM THE FILE LIST! This is normal.

*/

if(char_count < char_count_max) {
    // Find the first available character slot
    for(var i = 0; i < char_count_max; i++) {
        if(global.Grid_char[# i, 5] == -5) {
            char_slot = i;
            break;
        } else if(i == (char_count_max - 1)) {
            // Show an error when the last char slot has been reached
            show_error("Tried to create a character, but there is no more space!", false);
            exit;
        }
    }
    
    // Let the player enter some variables
    var name, class, gamemode;
    name = "Player " + string(char_slot);
    class = global.playerClass;
    gamemode = 0;
    
    // Write the character's data
    global.Grid_char[# char_slot, 0] = string(name);
    global.Grid_char[# char_slot, 1] = global.playerClass;
    global.Grid_char[# char_slot, 2] = 1;
    global.Grid_char[# char_slot, 3] = 0;
    global.Grid_char[# char_slot, 4] = gamemode;
    
    scr_char_create_save(char_slot);
}
