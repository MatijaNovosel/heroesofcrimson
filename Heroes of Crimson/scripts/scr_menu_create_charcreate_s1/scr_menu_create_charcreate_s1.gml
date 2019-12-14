/// @description  scr_menu_create_charcreate_s1();
var i = 0;

scr_button_create(
    i++, 
    40, 
    __view_get( e__VW.HView, 0 ) - 80, 
    global.Button_width, 
    global.Button_height, 
    "Back", 
    func.go_back, 
    spr_button
);

scr_button_create(
    i++, 
    __view_get( e__VW.WView, 0 ) - 240, 
    __view_get( e__VW.HView, 0 ) - 80, 
    global.Button_width, 
    global.Button_height, 
    "Create character", 
    func.charmake, 
    spr_button
);

scr_button_create(
    i++, 
    __view_get( e__VW.WView, 0 ) - 240, 
    __view_get( e__VW.HView, 0 ) - 450, 
    global.Button_width, 
    global.Button_height, 
    "Cleric", 
    func.pick_cleric, 
    spr_button
);

scr_button_create(
    i++, 
    __view_get( e__VW.WView, 0 ) - 240 * 2 - 20, 
    __view_get( e__VW.HView, 0 ) - 450, 
    global.Button_width, 
    global.Button_height, 
    "Magic Knight", 
    func.pick_mk, 
    spr_button
);

scr_button_create(
    i++, 
    __view_get( e__VW.WView, 0 ) - 240 * 3 - 40, 
    __view_get( e__VW.HView, 0 ) - 450, 
    global.Button_width, 
    global.Button_height, 
    "Hunter", 
    func.pick_hunter, 
    spr_button
);

button_total = i;
menu_current = menu.charcreate;
