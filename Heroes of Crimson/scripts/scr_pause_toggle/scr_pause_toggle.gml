/// @description scr_pause_toggle();
if pause_cd = 0 && !global.playerDead && d_alpha_respawn = 0
{
    if !global.Pause
    {
        scr_zunsound(snd_pause);
        pause_cd = 15;
        current_screen = screen[2];
    }
    else
    {
        scr_zunsound(snd_pause);
        pause_cd = 15;
        current_screen = screen[0];
    }
    global.Pause = !global.Pause;
}
