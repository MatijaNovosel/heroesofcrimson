/// @description  scr_status_enemy_step();
if (global.Pause || global.Sleep || global.eFreeze) {exit;}

var dec = 1;

for (var i = 0; i < status_count; i ++)
{
    if (status_time[i] > 0)
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
