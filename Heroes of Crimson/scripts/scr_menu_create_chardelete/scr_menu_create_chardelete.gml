/// @description  scr_menu_create_chardelete();
var i = 0;

scr_button_create(
    i++, 
    (__view_get( e__VW.WView, 0 ) div 2) - 220, 
    (__view_get( e__VW.HView, 0 ) div 2) - 20, 
    global.Button_width, 
    global.Button_height, 
    "Cancel", 
    func.go_back, 
    spr_button
);

scr_button_create(
    i++, 
    (__view_get( e__VW.WView, 0 ) div 2) + 20, 
    (__view_get( e__VW.HView, 0 ) div 2) - 20, 
    global.Button_width, 
    global.Button_height, 
    "Delete", 
    func.go_next, 
    spr_button
);

button_total = i;
menu_current = menu.chardelete;

/*
scr_button_create(i, (view_wview[0] div 2) - 220, (view_hview[0] div 2) - 20, global.Button_width, global.Button_height, "No!", func.go_back, spr_button);
i ++;

scr_button_create(i, (view_wview[0] div 2) + 20, (view_hview[0] div 2) - 20, global.Button_width, global.Button_height, "Yes!", func.go_next, spr_button);
i ++;
