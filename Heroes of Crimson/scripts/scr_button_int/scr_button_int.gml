/// @description  scr_button_int(button id);
/// @param button id
var button_id = argument0;

switch(button_func[button_id]) {
    case(func.play):
        if(global.playerClass == -1) {
            audio_play_sound(snd_error, 0, 0);
            break;
        } else {
            audio_play_sound(snd_menu_next, 0, 0);
            room_goto(rm_start);
            break;
        }
    // Goto functions
    case(func.goto_main):
        scr_menu_create_main();
        audio_play_sound(snd_menu_next, 0, 0);
        break;
    case(func.goto_confirm_quit):
        audio_play_sound(snd_menu_next, 0, 0);
        game_end();
        break;
    case(func.goto_charlist):
        scr_menu_create_charlist();
        audio_play_sound(snd_menu_next, 0, 0);
        break;
    case(func.goto_charcreate):
        scr_menu_create_charcreate_s1();
        audio_play_sound(snd_menu_next, 0, 0);
        break;
    // Character creation & deletion
    case(func.charmake):
        scr_char_create();
        scr_menu_create_charlist();
        audio_play_sound(snd_menu_next, 0, 0);
        break;
    case(func.goto_chardelete):
        scr_menu_create_chardelete();
        audio_play_sound(snd_menu_next, 0, 0);
        break;
    case(func.pick_cleric):
        audio_play_sound(snd_menu_next, 0, 0);
        global.playerClass = 0;
        break; 
    case(func.pick_hunter):
        audio_play_sound(snd_menu_next, 0, 0);
        global.playerClass = 1;
        break;
    case(func.pick_mk):
        audio_play_sound(snd_menu_next, 0, 0);
        global.playerClass = 2;
        break;
    
    // Back
    case(func.go_back):
        audio_play_sound(snd_menu_back, 0, 0);
        switch(menu_current) {
            case(menu.charcreate):
            case(menu.chardelete):
                scr_menu_create_charlist();
                break;
            default:
                char_select = -1;
                scr_menu_create_main();
                break;
        } 
        break;
    case(func.go_next):
        switch(menu_current) {
            case(menu.chardelete):
                scr_char_delete(char_select);
                char_select = -1;
                scr_menu_create_charlist();
                audio_play_sound(snd_menu_chardelete, 0, 0);
                break;
            default:
                break;
        }
        break;
}
