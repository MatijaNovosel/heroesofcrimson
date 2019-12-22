/// @description scr_draw_menu_name();
var str;

switch(menu_current) {
    case(menu.main): {
        str = "Main menu";
        break;
	}
    case(menu.charlist): {
        str = "Character selection";
        break;
	}
    case(menu.charcreate): {
        str = "Character creation";
        break;
	}
    default: {
        exit;
        break;
	}
}

if(menu_current != menu.title) {
	/*
	
		draw_set_font(fnt_textlog);
        draw_set_color(global.Text_log[i, 1]);
        draw_set_alpha(global.Text_log[i, 3]);
        draw_set_halign(fa_left);
        draw_set_valign(fa_bottom);
        draw_text_outline(8, __view_get( e__VW.HView, 0 ) - 8 - (18 * i), string(global.Text_log[i, 0]), 1, c_black, 10);
	
	*/
    draw_set_font(fnt_menu_name);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_color(c_white);
	draw_text_outline(40, 20, string_hash_to_newline(string(str)), 1, c_black, 10);
}