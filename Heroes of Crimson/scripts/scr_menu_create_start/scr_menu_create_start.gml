/// @description  scr_menu_create_start();

scr_button_create(
    0, 
    (__view_get(e__VW.WView, 0) div 2) - 100, 
    __view_get(e__VW.HView, 0) - 80, 
    global.Button_width, 
    global.Button_height, 
    "Start", 
    func.goto_main, 
    spr_button
);

button_total = 1;