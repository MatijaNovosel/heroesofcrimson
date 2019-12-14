/// @description scr_plbullet_rotate(rotation);
/// @param rotation
if (global.Pause || global.Sleep || global.pFreeze) {
    exit;
}

rot = argument0;

if(global.Slomo) {
    image_angle += rot / 2;
} else {
    image_angle += rot;
}
