/// @description  global.Sleep
if(global.Debug_mode) {
    if(mouse_check_button(mb_middle)) {
        global.Sleep = 5;
    }
    if(keyboard_check_pressed(ord("I"))) {
        var status_effect = get_integer("Enter the status effect ID: ", 0);
        switch(status_effect) {
            case(0): {
				status_effect = status.healing;
				break;
			}
            case(1): {
				status_effect = status.burn;
				break;
			}
            case(2): {
				status_effect = status.poison;
				break;
			}
            case(3): {
				status_effect = status.invin1;
				break;
			}
            case(4): {
				status_effect = status.invin2;
				break;
			}
            case(5): {
				status_effect = status.grace_period;
				break;
			}
            case(6): {
				status_effect = status.invis;
				break;
			}
            case(7): {
				status_effect = status.barrier;
				break;
			}
            case(8): {
				status_effect = status.armor_break;
				break;
			}
            case(9): {
				status_effect = status.fatal;
				break;
			}
            case(10): {
				status_effect = status.att_up;
				break;
			}
            case(11): {
				status_effect = status.att_down;
				break;
			}
            case(12): {
				status_effect = status.dex_up;
				break;
			}
            case(13): {
				status_effect = status.dex_down;
				break;
			}
            case(14): {
				status_effect = status.crit_up;
				break;
			}
            case(15): {
				status_effect = status.spd_up;
				break;
			}
            case(16): {
				status_effect = status.spd_down;
				break;
			}
            case(17): {
				status_effect = status.paralyze;
				break;
			}
            case(18): {
				status_effect = status.beckon;
				break;
			}
            case(19): {
				status_effect = status.confused;
				break;
			}
            case(20): {
				status_effect = status.silence;
				break;
			}
            case(21): {
				status_effect = status.mshield;
				break;
			}
            case(22): {
				status_effect = status.blind;
				break;
			}
            case(23): {
				status_effect = status.rich;
				break;
			}
            case(24): {
				status_effect = status.summon;
				break;
			}
            case(25): {
				status_effect = status.mark;
				break;
			}
            case(26): {
				status_effect = status.chill;
				break;
			}
            case(27): {
				status_effect = status.frozen;
				break;
			}
            case(28): {
				status_effect = status.divine;
				break;
			}
            case(29): {
				status_effect = status.corrosion;
				break;
			}
            case(30): {
				status_effect = status.bleed;
				break;
			}
            case(31): {
				status_effect = status.inaccurate;
				break;
			}
            case(32): {
				status_effect = status.sick;
				break;
			}
            case(33): {
				status_effect = status.stun;
				break;
			}
            case(34): {
				status_effect = status.vampire;
				break;
			}
            case(35): {
				status_effect = status.focus;
				break;
			}
            case(36): {
				status_effect = status.sheep;
				break;
			}
            default: {
				break;
			}
        }
        scr_status_inflict(status_effect, global.playerInstance, 180 * 2, 100);
    }
}

/// Track the previous player x/y
if(instance_exists(global.playerInstance)) {
    global.old_playerX = global.playerInstance.x;
    global.old_playerY = global.playerInstance.y;
}