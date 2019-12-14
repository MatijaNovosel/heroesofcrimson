/// @description Follow the player
if(instance_exists(global.playerInstance)) {
    x = round(global.playerInstance.x);
    y = round(global.playerInstance.y);
}

scr_camera();