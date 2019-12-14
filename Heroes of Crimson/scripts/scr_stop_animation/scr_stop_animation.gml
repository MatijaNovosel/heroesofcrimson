/// @description  scr_stop_animaton();
// This script stops/slows down the animation when called
if (global.Pause || !global.Sleep)
{
    if old_ani_spd = 0
    {
        old_ani_spd = image_speed;
    }
    else
    {
        image_speed = 0;
    }
}
/*else
if timeSlow
{
    if old_ani_spd = 0
    {
        old_ani_spd = image_speed;
    }
    
    image_speed = old_ani_spd/2;
}*/
else
if old_ani_spd != 0
{
    image_speed = old_ani_spd;
    old_ani_spd = 0;
}
