/// @description  Run behaviour scripts
scr_enemy_step();

// Determine the enemy's state
if (!global.Pause && !global.Sleep && !global.eFreeze)
{
    if !scr_enemy_see_player(chase_range, true)
    {
        if global.playerDead || ((track_x == -1) && (track_y == -1))
        {
            ai_state = state.idle;
            chase_range = base_chase_range;
        }
        else if (track_x != -1) && (track_y != -1)
        {
            ai_state = state.search;
        }
    }
    else
    {
        if scr_enemy_see_player(attack_range, true)
        {
            ai_state = state.attack;
            attack_range = base_attack_range + 75;
        }
        else if scr_enemy_see_player(chase_range, true)
        {
            ai_state = state.chase;
            attack_range = base_attack_range;
            chase_range = base_chase_range + 75;
        }
    }
}
else if (global.Pause || global.Sleep || global.eFreeze)
{
    ai_state = state.pause;
}

// Behave according to the current state
switch ai_state
{
    case state.idle:
        scr_enemy_cancel_tl(true, 0, 0);
        scr_enemy_idle_step(2, 30, 15);
    break;
    
    case state.chase:
        scr_enemy_run_tl(tl_skeletal_warrior);
        scr_track_player();
        scr_enemy_chase_step(2.75, DIR_PLAYER);
    break;
    
    case state.attack:
        scr_enemy_run_tl(tl_skeletal_warrior);
        scr_track_player();
        scr_enemy_attack_step(2.75, 25, 10);
    break;
    
    case state.search:
        scr_enemy_cancel_tl(true, 0, 0);
        scr_enemy_search_step(2.75);
    break;
    
    case state.pause:
        scr_enemy_cancel_tl(false, 0, image_index);
    break;
}

// Keep the enemy within the boundaries of the room
scr_clamp_pos();

