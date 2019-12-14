/// @description scr_set_fx(color 1, color 2, color 3, color 4, color 5, sleep, eq time, eq level);
/// @param color 1
/// @param  color 2
/// @param  color 3
/// @param  color 4
/// @param  color 5
/// @param  sleep
/// @param  eq time
/// @param  eq level
for (var i = 0; i < 5; i ++)
{
    hit_color[i] = scr_cformat(argument[i]);
}

sleep_wd = argument[5];
eq_time_wd = argument[6];
eq_level_wd = argument[7];
