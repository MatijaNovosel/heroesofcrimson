/// @description scr_plbullet_auto();
// Freeze the bullet in movement
if(global.Pause || global.Sleep || global.pFreeze) {
    if(!old_spd) {
        old_spd = speed;
    } else {
        speed = 0;
    }
} else {
    if(old_spd){
        speed = old_spd;
        old_spd = 0;
    }
}
    
// Slow the bullet in speed when timeSlow
/*else
if timeSlow
{
    if old_spd = 0
    {
        old_spd = speed;
    }
    
    speed = old_spd/2;
}*/


// Destroy the bullet after lifespan hits 0
if(!global.Pause && !global.Sleep) {
    if(life > 0){
        life--;
    } else {
        instance_destroy();
    }
}

// Fake 3D
depth = -y;
