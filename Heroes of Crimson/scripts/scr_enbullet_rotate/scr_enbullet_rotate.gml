/// @description scr_enbullet_rotate(rotation);
/// @param rotation
if(global.Pause || global.Sleep || global.eFreeze) {
    exit;
}

var rotation = argument0;
image_angle += rotation;
