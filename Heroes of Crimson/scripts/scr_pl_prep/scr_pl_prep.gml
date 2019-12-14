/// @description scr_pl_prep(time needed to prepare skill use);
/// @param time needed to prepare skill use
if prep_time < argument0
{
    //prep_time += 1*((global.playerdex/50)+1);
}

if prep_time > argument0
{
    prep_time = argument0;
}

if prep_time = argument0 && prep_notification = 0
{
    scr_zunsound(snd_prep_ready);
    for (i = 0; i < 8; i += 1)
    {
        instance_create(x,y,obj_prep_part);
    }
    prep_notification = 1;
}
