/// @description  inv_draw_iteminfo(item id);
/// @param item id
// Determine what text to draw * * * * *
var item_id;
item_id = argument0;

// Line 0 - Item rarity draw_text_custom
switch global.Item_info[# item_id, 1]
{
    case 0: line[0, 0] = "Common item"
            break;
    case 1: line[0, 0] = "Uncommon item"
            break;
    case 2: line[0, 0] = "Rare item"
            break;
    case 3: line[0, 0] = "Epic item"
            break;
    case 4: line[0, 0] = "Legendary item"
            break;
    case 5: line[0, 0] = "Key item"
            break;
    default: line[0, 0] = "Error, can't determine rarity!"
}

// Line 1 - Item type obj_inv
switch global.Item_info[# item_id, 2]
{
    case 0: line[0, 1] = "Undefined"
            break;
    case 1: line[0, 1] = "Accessory"
            break;
    case 2: line[0, 1] = "Armor (light)"
            break;
    case 3: line[0, 1] = "Armor (medium)"
            break;
    case 4: line[0, 1] = "Armor (heavy)"
            break;
    case 5: line[0, 1] = "Consumable"
            break;
    case 6: line[0, 1] = "Weapon (staff)"
            break;
    case 7: line[0, 1] = "Weapon (bow)"
            break;
    case 9: line[0, 1] = "Weapon (sword)"
            break;
    case 10: line[0, 1] = "Ability (spellbook)"
             break;
    default: line[0, 1] = "Error, can't determine item type!"
}

// Line 2 - Maximum stacksize
line[0, 2] = "Maximum stacksize: " + string(global.Item_info[# item_id, 3]);

// Draw the text * * * * *
if global.Item_info[# item_id, 1] == 5
{
    draw_set_color(scr_cformat($A5E1FF));
}
else if global.Item_info[# item_id, 1] < 5
{
    draw_set_color(scr_cformat($FFCF3F));
}

draw_text_ext(inv_x - 315, inv_y + 47, string_hash_to_newline(line[0, 0]), 18, 285);

draw_set_color(scr_cformat(c_white));
draw_text_ext(inv_x - 315, inv_y + 47 + 18, string_hash_to_newline(line[0, 1]), 18, 285);
draw_text_ext(inv_x - 315, inv_y + 47 + 36, string_hash_to_newline(line[0, 2]), 18, 285);

var height;
height = 36 + 18;
return(height);
