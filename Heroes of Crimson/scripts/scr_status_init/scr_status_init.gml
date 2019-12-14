/// @description  scr_status_init();
// Create slots to hold the status conditions
for (var i = 0; i < global.Max_status; i ++)
{
    status_id[i] = -1;
    status_time[i] = 0;
}

// Keep track of how many status conditions a character has
status_count = 0;
