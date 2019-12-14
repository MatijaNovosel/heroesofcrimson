/// @description  scr_status_player_step();
if (global.Pause || global.Sleep || global.pFreeze) {exit;}

if scr_status_find(status.grace_period, self) && ((mdir != -1) || (shoot_cd != 0))
{
    scr_status_remove(status.grace_period, self);
}

// If you have at least one status effect, generate particles
if global.partOn && (status_id[0] != -1)
{
    status_part_time --;
    if status_part_time <= 0
    {
        status_part_time = 30;
        
        // Create particles
        if scr_status_find(status.att_up, self)
        {
            scr_spawnradius(x, y, 32, 0, obj_part_attup0);
        }
        
        if scr_status_find(status.dex_up, self)
        {
            scr_spawnradius(x, y, 32, 0, obj_part_dexup0);
        }
        
        if scr_status_find(status.spd_up, self)
        {
            scr_spawnradius(x, y, 32, 0, obj_part_spdup0);
        }
        
        if scr_status_find(status.burn, self)
        {
            scr_spawnradius(x, y, 32, 0, obj_part_burn0);
        }
        
        if scr_status_find(status.poison, self)
        {
            scr_spawnradius(x, y, 32, 0, obj_part_poison0);
        }
        
        if scr_status_find(status.spd_down, self)
        {
            scr_spawnradius(x, y, 32, 0, obj_part_slow0);
        }
        
        if scr_status_find(status.confused, self)
        {
            scr_spawnradius(x, y, 32, 0, obj_part_confused0);
        }
        
        if scr_status_find(status.chill, self)
        {
            scr_spawnradius(x, y, 32, 0, obj_part_chill0);
        }
    }
}

var dec = 1;

for (var i = 0; i < global.Max_status; i ++)
{
    if (status_time[i] > 0) && (status_id[i] != status.grace_period)
    {
        status_time[i] -= dec;
    }
    else if (status_time[i] < 0)
    {
        status_time[i] = 0;
    }
    else if (status_time[i] == 0)
    {
        if (status_id[i] != -1)
        {
            status_count --;
            status_id[i] = -1;
            
            scr_status_shift(i);
        }
    }
}
