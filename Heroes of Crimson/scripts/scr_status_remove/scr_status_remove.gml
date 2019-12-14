/// @description  scr_status_remove(status to remove, object);
/// @param status to remove
/// @param  object
var status_find = argument0;
var target_obj = argument1;

for (var i = 0; i < global.Max_status; i ++)
{
    if (target_obj.status_id[i] == status_find)
    {
        status_count --;
        status_id[i] = -1;
        status_time[i] = 0;
        
        scr_status_shift(i);
    }
}
