/// @description  scr_status_find(status to find, object to check);
/// @param status to find
/// @param  object to check
var status_find = argument0;
var target_obj = argument1;

for (var i = 0; i < global.Max_status; i ++)
{
    if (target_obj.status_id[i] == status_find)
    {
        return (true);
    }
    else if (i == global.Max_status - 1)
    {
        return (false);
    }
}
