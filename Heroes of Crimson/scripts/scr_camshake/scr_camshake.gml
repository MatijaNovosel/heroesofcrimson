/// @description scr_camshake(EQ time, EQ level);
/// @param EQ time
/// @param  EQ level
if(global.camShake) {
    if(global.EQ_time < argument0) {
        global.EQ_time = argument0;    //How long does the shake last?
    }
    if(global.EQ_level < argument1) {
        global.EQ_level = argument1;   //How heavy is the shake?
    }
}
