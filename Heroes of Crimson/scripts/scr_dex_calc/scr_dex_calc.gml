/// @description scr_dex_calc(RoF in %);
/// @param RoF in %
var delay, mod_1, mod_2;

if(instance_exists(global.playerInstance)) {
    // Attack speed modifiers from status conditions
    if(scr_status_find(status.dex_up, global.playerInstance)){
        mod_1 = 0.75;
    } else {
        mod_1 = 1;
    }
    
    if(scr_status_find(status.dex_down, global.playerInstance)){
        mod_2 = 2;
    } else {
        mod_2 = 1;
    }
    
    if(scr_status_find(status.chill, global.playerInstance)){
        mod_1 = 1.5;
    } else {
        mod_1 = 1;
    }
    
    delay = mod_1 * mod_2 * (60 / ((global.Total_dexterity / 25) + 1)) * (1 / argument0);
} else {
    delay = (60 / ((global.Total_dexterity / 25) + 1)) * (1 / argument0);
}

return delay;
