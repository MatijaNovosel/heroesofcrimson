/// @description scr_att_calc(weapon dmg);
/// @param weapon dmg
var dmg = 0, mod_1, mod_2;

if(instance_exists(global.playerInstance)) {
    // Damage modifiers from status conditions
    if(scr_status_find(status.att_up, global.playerInstance)) {
        mod_1 = 1.5;
    } else {
        mod_1 = 1;
    }
    
    if(scr_status_find(status.att_down, global.playerInstance)) {
        mod_2 = 0.5;
    } else {
        mod_2 = 1;
    }
    
    if(scr_status_find(status.corrosion, global.playerInstance)) {
        mod_2 = 0.6;
    } else {
        mod_2 = 1;
    }
    
    dmg = round(mod_1 * mod_2 * argument0 * ((global.Total_attack / 50) + 1));
} else {
    dmg = round(argument0 * ((global.Total_attack / 50) + 1));
}

return dmg;
