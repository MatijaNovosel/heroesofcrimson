/// @description Keyboard shortcuts

// Toggle the inventory on/off
if(global.Key_inv) {
    show_inventory = !show_inventory;
}

// Allow the player to swap his weapon/ability
if(global.Key_swap_weapon) {
    if(box[# 0, 1] != -1 and class[# 0, 0] == global.Item_info[# box[# 0, 1], 2]) {
        // Remove the stats in [0, 0], then change the item, then add the stats of the new item in [0, 0]
        // Save the old [0, 0] to a temporary var, then put it in [0, 1]
        var temp_id = box[# 0, 0];
        var temp_count = count[# 0, 0];
        if(box[# 0, 0] != -1) {
            inv_stat_remove(box[# 0, 0]);
        }
        // Switch secondary wep to primary slot
        box[# 0, 0] = box[# 0, 1];
        count[# 0, 0] = count[# 0, 1];
        inv_stat_equip(box[# 0, 0]);
        // Switch old primary wep to secondary slot
        box[# 0, 1] = temp_id;
        count[# 0, 1] = temp_count;
        scr_message_add("You wield your " + string(global.Item_info[# box[# 0, 0], 0]) + ".", global.logcol_neutral);
    } else {
        scr_message_add("You do not have secondary weapon at the ready.", global.logcol_error);
    }
}

// DEBUG: spawn in items
if(keyboard_check_pressed(ord("P"))) {
    var itemz = floor(get_integer("Enter the id of the requested item.", 0));
    itemz = clamp(itemz, 0, item_total - 1);
    scr_message_add("Spawned in a " + string(global.Item_info[# itemz, 0]) + ".", global.logcal_debug);
    
    var cont = instance_create(global.playerInstance.x, global.playerInstance.y, obj_lootbag);
    with(cont) {
        scr_zunsound(snd_bagdrop4);
        item[0] = itemz;
        count[0] = 1;
        rarity = 3;
        image_index = rarity;
    }
}

// Consumables

// Drink a potion if its in the appropriate slot
if(global.Key_use_cons0) {
    scr_use_consumable();
}

/// Mouse item alpha
if(show_inventory) {
    if(mouse_item_alpha > 0.75) {
        mouse_item_alpha_state = 0;
    } else if(mouse_item_alpha < 0.25) {
        mouse_item_alpha_state = 1;
    }
    if(mouse_item_alpha_state == 1) {
        mouse_item_alpha += 0.025;
    } else if(mouse_item_alpha_state == 0) {
        mouse_item_alpha -= 0.025;
    }
}

/// Determine when to show the inventory and its loot cells
if(!global.playerDead) {
    if(global.Current_cont != -1) {
        show_loot = true;
    } else if(global.Current_cont == -1) {
        show_loot = false;
    }
} else  {
    if(show_inventory) {
        show_inventory = false;
    }
    if(show_loot) {
        show_loot = false;
    }
}