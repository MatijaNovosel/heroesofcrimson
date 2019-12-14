/// @description  Prepare the dungeon creation proces
var floor_count = 1;

// Start the player at the bottom floor
global.Floor_current = 0;

for(var i = 0; i < floor_count; i++) {
    // Create the floor room, set its name and assign a modifier
    global.Floor_room_id[i] = room_add();
    global.Floor_name[i] = "Hidden Treasure Trove"
    global.Floor_mod[i] = f_mod.no_mod;
    
    // Configure the room settings
    room_set_height(global.Floor_room_id[i], 8000);
    room_set_width(global.Floor_room_id[i], 8000);
    room_set_persistent(global.Floor_room_id[i], false);
    room_set_view(global.Floor_room_id[i], 0, true, 0, 0, 800, 600, 0, 0, 800, 600, 32, 32, 2, 2, obj_camera);
    room_set_view_enabled(global.Floor_room_id[i], true);
    room_set_background_colour(global.Floor_room_id[i], scr_cformat($331F0C), true);
    
    // Clear the room, then create a dungeon generator to create the floor
    room_instance_add(global.Floor_room_id[i], 0, 0, obj_dgen_treasure);
}

// Goto the newly made floor
room_goto(global.Floor_room_id[0]);