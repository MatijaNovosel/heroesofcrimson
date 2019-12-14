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
        if scr_enemy_see_player(chase_range, true)
        {
            ai_state = state.chase;
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
    break;
    
    case state.chase:
        scr_enemy_run_tl(tl_abaghnid);
        scr_track_player();
        scr_enemy_burst_step(DIR_PLAYER, 8, 5, 50, 0.25);
        if mspd >= 3
        {
            image_index = 1;
        }
        else
        {
            image_index = 0;
        }
 
    break;
    
    case state.search:
        scr_enemy_cancel_tl(true, 0, 0);
        scr_enemy_bs_step(6, 10, 30, 0.25);
    break;
    
    case state.pause:
        scr_enemy_cancel_tl(false, 0, image_index);
    break;
}

// Keep the enemy within the boundaries of the room
scr_clamp_pos();

