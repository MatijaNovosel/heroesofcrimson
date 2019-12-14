/// @description scr_pl_invis_alpha();
// If the player is invisible, make its sprite transparent

if scr_status_find(status.invis, global.playerInstance)
{
    image_alpha = 0.5;
}
else if image_alpha != 1
{
    image_alpha = 1;
}
