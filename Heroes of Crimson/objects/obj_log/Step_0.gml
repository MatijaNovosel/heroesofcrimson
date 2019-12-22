/// @description  Fade the messages away after a time limit
for (i = 0; i < 5; i ++) {
    if (global.Text_log[i, 2] > 0) {
        global.Text_log[i, 2] --;
    } else if (global.Text_log[i, 2] == 0) {
        global.Text_log[i, 3] -= 0.05;
    }
}
