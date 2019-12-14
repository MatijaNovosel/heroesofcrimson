/// @description  scr_menu_create_main();
var i = 0;

scr_button_create(
    i++, 
    40 + offset_x, 
    80 + offset_y, 
    global.Button_width, 
    global.Button_height, 
    "Play", 
    func.goto_charlist, 
    spr_button
);

scr_button_create(
    i++, 
    40 + offset_x, 
    80 + (i * 48) + offset_y, 
    global.Button_width, 
    global.Button_height, 
    "Statistics", 
    func.goto_statistics, 
    spr_button_red
);

scr_button_create(
    i++, 
    40 + offset_x, 
    80 + (i * 48) + offset_y, 
    global.Button_width, 
    global.Button_height, 
    "Options", 
    func.goto_options, 
    spr_button_red
);

scr_button_create(
    i++, 
    40 + offset_x, 
    80 + (i * 48) + offset_y, 
    global.Button_width, 
    global.Button_height, 
    "Credits", 
    func.goto_credits, 
    spr_button_red
);

scr_button_create(
    i++, 
    40 + offset_x, 
    80 + (i * 48) + offset_y, 
    global.Button_width, 
    global.Button_height, 
    "Donate", 
    func.goto_donate, 
    spr_button_red
);

scr_button_create(
    i++, 
    40 + offset_x, 
    __view_get( e__VW.HView, 0 ) - 80, 
    global.Button_width, 
    global.Button_height, 
    "Exit game", 
    func.goto_confirm_quit, 
    spr_button
);

button_total = i;
menu_current = menu.main;