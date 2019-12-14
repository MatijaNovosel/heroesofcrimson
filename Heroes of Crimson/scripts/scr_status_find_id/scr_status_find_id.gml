/// @description  scr_status_find_id(status to find, object to check);
/// @param status to find
/// @param  object to check
/* Unlike scr_status_find, which checks if a status condition is present at all,
this script returns the slot the status condition was found in */
var status_find = argument0;
var target_obj = argument1;

for (var i = 0; i < global.Max_status; i ++)
{
    if (target_obj.status_id[i] == status_find)
    {
        return (i);
    }
    else
    {
        return (-1);
    }
}
