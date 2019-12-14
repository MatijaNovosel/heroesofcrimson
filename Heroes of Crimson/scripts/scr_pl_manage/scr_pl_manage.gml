/// @description scr_pl_manage();

if(scr_status_find(status.sick, global.playerInstance) || scr_status_find(status.poison, global.playerInstance)){
    global.healing_variable = 0;
}else{
    global.healing_variable = 1;
}

if(scr_status_find(status.vampire, global.playerInstance)){
    global.lifesteal = 1;
}else{
    global.lifesteal = 0;
}

if(scr_status_find(status.stun, global.playerInstance)|| scr_status_find(status.sheep, global.playerInstance)){
    global.disableFire = true;
}else{
    global.disableFire = false;
}

if(scr_status_find(status.poison, global.playerInstance)){
    if(scr_status_find(status.invin1, global.playerInstance)){
        global.playerhp = global.playerhp;
    }else{
        global.playerhp -= scr_dot_calc(20);
    }
} else {
    global.playerhp = global.playerhp;
}

if(scr_status_find(status.bleed, global.playerInstance)){
    if(scr_status_find(status.invin1, global.playerInstance)){
        global.playerhp = global.playerhp;
    }else{
        global.playerhp -= scr_dot_calc(20);
    }
} else {
    global.playerhp = global.playerhp;
}

if(scr_status_find(status.healing, global.playerInstance)){
    if(global.healing_variable == 1){
        global.playerhp += scr_hp_regen_calc(20);
    }else{
        global.playerhp = global.playerhp;
    }
} else {
    global.playerhp = global.playerhp;
}

//Check if the player has the armor of divine faith equipped

if(obj_inv.box[# 2, 0] == 182){
    global.check_slot_divine = true;
}else{
    global.check_slot_divine = false;
}

if(global.check_slot_divine == true){
    scr_status_inflict(status.divine, global.playerInstance, 99999*99, 100);
    global.divine_faith = true;
}

if(global.check_slot_divine == false && global.divine_faith == true){
    scr_status_remove(status.divine, global.playerInstance);
    global.divine_faith = false;
}

//Check if the player has the Sword of Harkon equipped

if(obj_inv.box[# 0, 0] == 120){
    global.harkon_equipped = 1;
}else{
    global.harkon_equipped = 0;
}

if(global.harkon_equipped == 1){
    scr_status_inflict(status.vampire, global.playerInstance, 99999*99, 100);
    global.harkon_check = 1;
}

if(global.harkon_equipped == 0 && global.harkon_check == 1){
    scr_status_remove(status.vampire, global.playerInstance);
    global.harkon_check = 0;
}

