global.logcol_neutral = c_white;
global.logcol_error = scr_cformat($FF3F4F);
global.logcol_notice = scr_cformat($FFCF3F);
global.logcol_warning = scr_cformat($FFAA00);
global.logcol_grats = scr_cformat($9FFF3F);
global.logcol_special = scr_cformat($B266FF);
global.logcal_debug = scr_cformat($00E5E5);

for(i = 0; i < 25; i++) {
    global.Text_log[i, 0] = -1; // The message
    global.Text_log[i, 1] = -1; // The color of the message
    global.Text_log[i, 2] = -1; // The time the message stays on the screen
    global.Text_log[i, 3] = -1; // The alpha of the message
}