/// @description  scr_status_shift(starting pos);
/// @param starting pos
for (var i = argument0; i < global.Max_status; i ++)
{
    if (i < global.Max_status - 1)
    {
        if (status_id[i + 1] != -1)
        {
            status_id[i] = status_id[i + 1];
            status_time[i] = status_time[i + 1];
            status_id[i + 1] = -1;
            status_time[i + 1] = 0;
        }
    }
}
