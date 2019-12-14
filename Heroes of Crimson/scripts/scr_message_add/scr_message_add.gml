/// @description  scr_message_add(message, color);
/// @param message
/// @param  color
// Shift the messages up one space
for(i = 24; i > 0; i--) {
    global.Text_log[i, 0] = global.Text_log[i - 1, 0];
    global.Text_log[i, 1] = global.Text_log[i - 1, 1];
}

for(i = 4; i > 0; i--) {
    global.Text_log[i, 2] = global.Text_log[i - 1, 2];
    global.Text_log[i, 3] = global.Text_log[i - 1, 3];
}

// Set the message, the color, the time and the alpha
global.Text_log[0, 0] = argument0;
global.Text_log[0, 1] = argument1;
global.Text_log[0, 2] = 300;
global.Text_log[0, 3] = 1;

// Play a message notification sound
scr_zunsound(snd_message);

/*

    COLOR LEGEND
    global.logcol_neutral = c_white;
    global.logcol_error = scr_cformat($FF3F4F);
    global.logcol_notice = scr_cformat($FFCF3F);
    global.logcol_warning = scr_cformat($FF5400);
    global.logcol_grats = scr_cformat($9FFF3F);
    global.logcol_special = scr_cformat($B266FF);
    global.logcal_debug = scr_cformat($A5E1FF);

*/
