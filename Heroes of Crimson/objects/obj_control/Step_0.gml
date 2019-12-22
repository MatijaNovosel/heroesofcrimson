/// @description Global variables
// Constanty update the HP, MP and XP %s

global.playerhp_percent = (global.playerhp / global.playerhp_max) * 100
global.playermp_percent = (global.playermp / global.playermp_max) * 100
global.xp_percent = (global.xp / global.xp_max) * 100

// Update the stat totals
scr_update_stat_total();

if(!global.Pause && global.Sleep > 0) {
    global.Sleep --;
}

if(!global.playerDead && global.playerhp <= 0) {
    global.playerDead = true;
} else {
	if(global.playerDead && global.playerhp > 0) {
		global.playerhp = 0;
	}
}

// Level up when enough XP is gained, give +1 to some/all stats, fill the hp/mp bar, show level up text
if(global.xp >= global.xp_max) {
    global.xp_level += 1
    global.xp_max = global.xp_needed[global.xp_level];
    global.xp -= global.xp_needed[global.xp_level - 1];
    global.playerhp = global.playerhp_max
    global.playermp = global.playermp_max
    
    temp_dexterity = irandom_range(2, 6);
    global.Base_dexterity += temp_dexterity;
    
    temp_speed = irandom_range(0, 4);
    global.Base_speed += temp_speed;
    
    temp_attack = irandom_range(2, 6);
    global.Base_attack += temp_attack;
    
    temp_wisdom = irandom_range(0, 4);
    global.Base_wisdom += temp_wisdom;
    
    scr_zunsound(snd_levelup);
    scr_message_add("Congratulations! You've reached experience level " + string(global.xp_level) + ".", global.logcol_grats);
    scr_message_add("Gained +" + string(temp_dexterity) + " DEX, +" + string(temp_attack) + " ATT, +" + string(temp_speed) + " SPD, +" + string(temp_wisdom) + " WIS." , global.logcol_grats);
    scr_ind_create(global.playerInstance.x, global.playerInstance.bbox_top, "Level up!", $42F44B, -5);
    
    temp_attack = 0;
    temp_speed = 0;
    temp_wisdom = 0;
    temp_dexterity = 0;
}

// Life recovery
if(global.Life_left > 0 && global.playerhp < global.playerhp_max) {
    global.playerhp += global.Life_speed;
    global.Life_left -= global.Life_speed;
} else {
    global.playerhp += global.Life_left;
    global.Life_amount = 0;
    global.Life_left = 0;
    global.Life_speed = 0;
}

// Mana recovery
if(global.Mana_left > 0 && global.playermp < global.playermp_max) {
    global.playermp += global.Mana_speed;
    global.Mana_left -= global.Mana_speed;
} else {
    global.playermp += global.Mana_left;
    global.Mana_amount = 0;
    global.Mana_left = 0;
    global.Mana_speed = 0;
}

// Don't go past the max (hp/mp)
if(global.playerhp > global.playerhp_max) {
    global.playerhp = global.playerhp_max
}

if(global.playermp > global.playermp_max) {
    global.playermp = global.playermp_max
}

// Don't drop the hp stat below 0
if(global.playerhp < 0) {
    global.playerhp = 0
}

// Don't drop the mp stat below 0
if(global.playermp < 0) {
    global.playermp = 0
}

// Make sure the barrier hp doesn't go below 0 and count down the barrier time
if(global.Barrier_hp < 0) {
    global.Barrier_hp = 0;
}

if(global.Barrier_hp > 0) {
    if(global.Slomo) {
        global.Barrier_time -= 1;
    } else {
        global.Barrier_time -= 2;
    }
}

// Check whether the player is being hit
if(global.Player_hit) {
    global.Player_hit = false;
}

// View based mouse_x and mouse_y; these make sure mouse_x and mouse_y don't get influenced by the position of the view
global.View_mouse_x = mouse_x - __view_get(e__VW.XView, 0);
global.View_mouse_y = mouse_y - __view_get(e__VW.YView, 0);

// Keep the sound volume between 0 and 1
global.sndVol = clamp(global.sndVol, 0, 1);
audio_emitter_gain(global.sndEmitter,global.sndVol);

/// Check whether the player is allowed be controlled
if(!global.Pause && !global.Sleep && !global.pFreeze && !global.playerDead && d_alpha_respawn = 0) {
    global.playerControl = true;
} else {
    global.playerControl = false;
}

/// Player controls & debug
scr_pl_keys();

// Toggle debug mode
if(Key_debug) {
	global.Debug_mode = !global.Debug_mode;
}

// Restart
if(keyboard_check_pressed(ord("R"))) {
    game_restart();
}

/// Count down the pausing cooldown
if(!global.playerDead) {
    if(pause_cd > 0) {
        pause_cd -= 1;
    }
    if(pause_cd < 0) {
        pause_cd = 0;
    }
} else {
    pause_cd = 0;
}

///Exit the event if the game is paused
if(global.Pause || global.Sleep) {
    exit;
}

///global.Autofire hotkey
if(global.Key_autofire) {
    if(!global.Autofire) {
        if(obj_inv.box[# 0, 0] == -1) {
            scr_message_add("You can't enable autofire without a weapon.", global.logcol_error);
        } else {
            scr_message_add("Turned on autofire.", global.logcol_neutral);
            global.Autofire = !global.Autofire;
        }
    } else {
        scr_message_add("Turned off autofire.", global.logcol_neutral);
        global.Autofire = !global.Autofire;
    }
}