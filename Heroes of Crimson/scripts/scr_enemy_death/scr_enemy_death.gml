/// @description  scr_enemy_death
if (hp <= 0)
{
    // Notify the player when they've cleared the current area
    global.Alive_enemy_count --;
    if (global.Alive_enemy_count == 0)
    {
        scr_message_add("You've slain all the enemies in this area!", global.logcol_grats);
    }
    
    // Reward the player only if they don't have a grace period active
    if !scr_status_find(status.grace_period, global.playerInstance)
    {
        // Give the player XP for slaying this enemy
        if (xp_value > 0)
        {
            for (i = 0; i < xp_value; i ++)
            {
                global.xp ++;
                global.xp_total ++;
            }
            scr_ind_create(global.playerInstance.x, global.playerInstance.bbox_top, "+" + string(xp_value) + " XP", $42F44B, -5);
        }
        
        // Drop loot
        scr_create_lootbag(x, y);
    }
}
