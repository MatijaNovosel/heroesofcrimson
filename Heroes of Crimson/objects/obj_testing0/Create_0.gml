// Configure the room settings
room_set_persistent(rm_testing, false);
room_set_view_enabled(rm_testing, true);
room_set_view(rm_testing, 0, true, 0, 0, 800, 600, 0, 0, 800, 600, 32, 32, 2, 2, obj_camera);
room_set_background_colour(rm_testing, scr_cformat($091526), true);

room_goto(rm_testing);