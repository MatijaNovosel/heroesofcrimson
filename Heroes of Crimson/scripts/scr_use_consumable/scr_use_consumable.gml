var cons_id, heal, sound;
cons_id = box[# 2, 1];
sound = snd_hpdrink;

if(cons_id != -1) {
    // Health and mana
    if(global.Cons_stats[# cons_id, 0] > 0 and global.Cons_stats[# cons_id, 1] > 0) {
        if(global.playerhp == global.playerhp_max and global.playermp == global.playermp_max) {
            scr_message_add("Your HP and MP are already full.", global.logcol_error);
            exit;
        }
        scr_zunsound_ui(sound);
        heal = global.Cons_stats[# cons_id, 0];
        for(i = 0; i < heal; i++) {
            global.playerhp++;
            if(global.playerhp > global.playerhp_max) {
                global.playerhp = global.playerhp_max;
                break;
            }
        }
        heal = global.Cons_stats[# cons_id, 1];
        for(i = 0; i < heal; i++) {
            global.playermp++;
            if(global.playermp > global.playermp_max) {
                global.playermp = global.playermp_max;
                break;
            }
        }
	} else if(global.Cons_stats[# cons_id, 0] > 0 and global.Cons_stats[# cons_id, 1] == 0) { // Health
        if(global.playerhp == global.playerhp_max) {
            scr_message_add("Your HP is already full.", global.logcol_error);
            exit;
        }
        scr_zunsound_ui(sound);
        heal = global.Cons_stats[# cons_id, 0];
        for(i = 0; i < heal; i++) {
            global.playerhp++;
            if(global.playerhp > global.playerhp_max) {
                global.playerhp = global.playerhp_max;
                break;
            }
        }
    } else if(global.Cons_stats[# cons_id, 0] == 0 and global.Cons_stats[# cons_id, 1] > 0) { // Mana
        if(global.playermp == global.playermp_max) {
            scr_message_add("Your MP is already full.", global.logcol_error);
            exit;
        }
        scr_zunsound_ui(sound);
        heal = global.Cons_stats[# cons_id, 1];
        for(i = 0; i < heal; i++) {
            global.playermp++;
            if(global.playermp > global.playermp_max) {
                global.playermp = global.playermp_max;
                break;
            }
        }
    }
    inv_delete_item(2, 1);
} else if(cons_id == -1) {
    scr_message_add("You do not have a consumable at the ready.", global.logcol_error);
    exit;
}