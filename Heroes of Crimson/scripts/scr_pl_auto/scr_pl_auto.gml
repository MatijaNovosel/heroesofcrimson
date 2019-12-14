/// @description scr_pl_auto(sprite when respawning);
/// @param sprite when respawning
if(obj_control.d_alpha_respawn > 0) {
    sprite_index = argument0;
    image_index = 0;
    image_speed = 0;
}

// Update status conditions
scr_status_player_step();

// Stop animating when paused
if(global.Pause or global.Sleep and image_index != sprite_shoot_left and image_index != sprite_shoot_right and image_index != sprite_shoot_up and image_index != sprite_shoot_down) {
    image_speed = 0;
}

if(global.playerDead) {
    scr_pl_death(sprite_still);
}

// Do stuff when the game isn't paused and the player is alive
if(!global.Pause and !global.Sleep and !global.playerDead) {
    // Invincibility frames
    if(iframe > 0) {
        iframe --;
        image_alpha = 0.5;
    } else if(iframe == 0) {
        image_alpha = 1;
    }
    
    // Shooting cooldown
    if(shoot_cd > 0) {
        if(global.Slomo) {
			shoot_cd -= 1;
		} else {
			shoot_cd -= 2;
		}
    }
    
    if(shoot_cd < 0) {
        shoot_cd = 0;
    }
    
    // Mana regen (wisdom)
    if(global.playermp < global.playermp_max and !scr_status_find(status.silence, global.playerInstance)) {
        global.playermp += scr_wis_regen_calc();
    } else if(global.playermp > global.playermp_max) {
        global.playermp = global.playermp_max;
    }
}

// Isometric effect
depth = -y;