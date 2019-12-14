/// @description  scr_track_player();
if instance_exists(global.playerInstance) && (!global.Pause && !global.Sleep && !global.eFreeze && !global.playerDead)
{
    track_x = global.playerInstance.x;
    track_y = global.playerInstance.y;
    
    // Search the last seen location for up to 10 seconds, then revert another (likely idle) state
    track_time = 600;
}
