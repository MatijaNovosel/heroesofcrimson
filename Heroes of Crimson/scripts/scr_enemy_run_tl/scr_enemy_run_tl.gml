/// @description  scr_enemy_run_tl(timeline id);
/// @param timeline id
var tl_id = argument0;

var mod0, mod1, mod2;
if scr_status_find(status.dex_up, self)
mod0 = 1.5;
else
mod0 = 1;

if scr_status_find(status.dex_down, self)
mod1 = 0.5;
else
mod1 = 1;

timeline_speed = 1 * mod0 * mod1;

if (!global.Pause && !global.Sleep && !global.eFreeze && !global.playerDead)
{
    timeline_running = true;
    timeline_index = tl_id;
    
    if old_tl_pos != -1
    {
        timeline_position = old_tl_pos;
        old_tl_pos = -1;
    }
}
else if (global.Pause || global.Sleep || global.eFreeze || global.playerDead)
{
    old_tl_pos = timeline_position;
    timeline_running = false;
}
