/// @description  scr_menu_create_charlist();
var i = 0;

scr_char_load_list();

for(var a = 0; a < char_count; a++) {
    // Create character buttons
    scr_charbutton_create(i, 40 + offset_x, 80 + (i * 64) + offset_y);
    i++;
}

scr_button_create(i, __view_get(e__VW.WView, 0) - (global.Button_width div 2) - 90, 400, (global.Button_width div 2), global.Button_height, "Delete", func.goto_chardelete, spr_button2);
i++;

scr_button_create(i, 40 + offset_x, __view_get(e__VW.HView, 0) - 80, global.Button_width, global.Button_height, "Back", func.go_back, spr_button);
i++;

scr_button_create(i, (__view_get(e__VW.WView, 0) div 2) - 100, __view_get(e__VW.HView, 0) - 80, global.Button_width, global.Button_height, "Create a character", func.goto_charcreate, spr_button);
i++;

if(global.playerClass == -1) {
    scr_button_create(i, __view_get(e__VW.WView, 0) - global.Button_width - 40, __view_get(e__VW.HView, 0) - 80, global.Button_width, global.Button_height, "Play", func.play, spr_button_red);
    i++;
} else {
    scr_button_create(i, __view_get(e__VW.WView, 0) - global.Button_width - 40, __view_get(e__VW.HView, 0) - 80, global.Button_width, global.Button_height, "Play", func.play, spr_button_green);
    i++;
}

button_total = i;
menu_current = menu.charlist;