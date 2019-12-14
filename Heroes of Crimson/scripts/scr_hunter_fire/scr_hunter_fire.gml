/// @description scr_mage_fire(weapon id);
/// @param weapon id
// Determine what weapon's stats to use
var weapon_id, att_spd, proj_spd, proj_type, proj_id;
weapon_id = argument0;
att_spd = global.Weapon_stats[# weapon_id, 2];
proj_spd = global.Weapon_stats[# weapon_id, 4];
proj_type = global.Weapon_stats[# weapon_id, 8];

// Apply a cooldown
shoot_cd = scr_dex_calc(att_spd);
ssft = shoot_cd / 2;

// Play the weapon's sound
if(global.wepsndOn) {
    scr_sound(global.Weapon_av[# weapon_id, 1], 0.75, 0.75, 1.25);
}

// Create the projectile and set its variables
var i;
switch(weapon_id) {
    case(78): {
		scr_create_pl_proj(x, y, global.Weapon_stats[# weapon_id, 9], weapon_id, mouse_dir_abs - 10, 1);
        scr_create_pl_proj(x, y, global.Weapon_stats[# weapon_id, 9], weapon_id, mouse_dir_abs + 10, 1);
        scr_create_pl_proj(x, y, global.Weapon_stats[# weapon_id, 9], weapon_id, mouse_dir_abs + 0, 1);
        break;
	}
    case(80): {    
		scr_create_pl_proj(x, y, global.Weapon_stats[# weapon_id, 9], weapon_id, mouse_dir_abs - 10, 1);
		scr_create_pl_proj(x, y, global.Weapon_stats[# weapon_id, 9], weapon_id, mouse_dir_abs + 10, 1);
		break;
	}         
    case(86): { 
		for(i = 0; i < 7; i++) {
			var arc = 3.5;
            scr_create_pl_proj(x, y, global.Weapon_stats[# weapon_id, 9], weapon_id, mouse_dir_abs + (i * arc) - (3 * arc), 0.5);
		}
		break;
	}        
    case(87): { 
		for(i = 0; i < 10; i++) {
			var arc = 7.5;
            scr_create_pl_proj(x, y, global.Weapon_stats[# weapon_id, 9], weapon_id, mouse_dir_abs + (i * arc) - (4.5 * arc), 0.33);
		}
        break;
	}
    case(88): {     
		scr_create_pl_proj(x, y, global.Weapon_stats[# weapon_id, 9], weapon_id, mouse_dir_abs - 8, 1);
        scr_create_pl_proj(x, y, global.Weapon_stats[# weapon_id, 9], weapon_id, mouse_dir_abs - 4, 1);
        scr_create_pl_proj(x, y, global.Weapon_stats[# weapon_id, 9], weapon_id, mouse_dir_abs + 4, 1);
        scr_create_pl_proj(x, y, global.Weapon_stats[# weapon_id, 9], weapon_id, mouse_dir_abs + 8, 1);
        break;
	}         
    default: {
		scr_create_pl_proj(x, y, global.Weapon_stats[# weapon_id, 9], weapon_id, mouse_dir_abs, 1);
        break;
	}
}

// Animate the player firing
switch(mouse_dir_card) {
    case(1): {
	    image_index = 0;
	    sprite_index = sprite_shoot_right;
	    image_speed = scr_animspeed();
	    break;
	}
    case(2): {
	    image_index = 0;
	    sprite_index = sprite_shoot_up;
	    image_speed = scr_animspeed();
	    break;
	}
    case(3): {
	    image_index = 0;
	    sprite_index = sprite_shoot_left;
	    image_speed = scr_animspeed();
	    break;
	}
    case(4): {
	    image_index = 0;
	    sprite_index = sprite_shoot_down;
	    image_speed = scr_animspeed();
	    break;
	}
}