/// @description  Shake!
if(!global.Pause && !global.Sleep) {
    if(global.EQ_time > 0) {
        global.EQ_time -= 1;
    } else {
        global.EQ_level = 0;
    }
}