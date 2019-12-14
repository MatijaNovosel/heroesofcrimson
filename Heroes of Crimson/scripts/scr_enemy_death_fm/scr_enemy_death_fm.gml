// When slain, give the player a random buff
if (global.Floor_mod[global.Floor_current] == f_mod.enemy_death_buff_player)
{
    var buff = choose(status.att_up, status.dex_up, status.spd_up);
    scr_status_inflict(buff, global.playerInstance, 300, 100);
}







/* OLD
// When slain, buff up to three other enemies 
if (global.Floor_mod[global.Floor_current] == f_mod.enemy_death_buff_enemy) && instance_exists(obj_enemy_par)
{
    var inst_count = instance_number(obj_enemy_par);
    var buff = choose(status.att_up, status.dex_up, status.spd_up);
    
    for (var i = 0; i < inst_count; i ++)
    {
        // Limit the buff to three enemies
        if (i == 3)
        {
            break;
        }
        
        instance_nearest_col(x, y, obj_enemy_par);
    }
}



// When slain, buff up to three other enemies 
if (global.Floor_mod[global.Floor_current] == f_mod.enemy_death_buff_enemy) && instance_exists(obj_enemy_par)
{
    var inst_count = instance_number(obj_enemy_par);
    var buff = choose(status.att_up, status.dex_up, status.spd_up);
    
    for (var i = 0; i < inst_count; i ++)
    {
        // Limit the buff to three enemies
        if (i == 3)
        {
            break;
        }
        
        var inst = instance_find(obj_enemy_par, i);
        if !collision_line(x, y, inst.x, inst.y, obj_wall_par, false, false)
        {
            with (inst)
            {
                scr_status_inflict(buff, self, 600, 100);
            }
        }
    }
}

// FLOOR MOD: Enemy Death Buff Player
if (global.Floor_mod[global.Floor_current] == f_mod.enemy_death_buff_player)
{
    var buff = choose(status.att_up, status.dex_up, status.spd_up);
    scr_status_inflict(buff, global.playerInstance, 300, 100);
}
