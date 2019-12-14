/// @description  scr_enbullet_auto();
// Stop the projectile's movement when called
if(global.Pause || global.Sleep || global.eFreeze) {
    if(old_spd == 0) {
        old_spd = speed;
    } else {
        speed = 0;
    }
} else if(!global.Pause && !global.Sleep && !global.eFreeze) {
    if(old_spd != 0) {
        speed = old_spd;
        old_spd = 0;
    }
    
    if(life > 0) {
        life--;
    } else if(life <= 0) {
        instance_destroy();
    }
}
