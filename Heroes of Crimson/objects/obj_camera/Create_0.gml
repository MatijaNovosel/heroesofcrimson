/// @description Declare a variable that checks whether the view needs some shakin'
global.EQ_time = 0;
global.EQ_level = 0;

// Move the view to the player immediately
if(instance_exists(global.playerInstance)) {
    x = round(global.playerInstance.x);
    y = round(global.playerInstance.y);
    __view_set(e__VW.XView, 0, x - (__view_get(e__VW.WView, 0) / 2));
    __view_set(e__VW.YView, 0, y - (__view_get(e__VW.HView, 0) / 2));
}