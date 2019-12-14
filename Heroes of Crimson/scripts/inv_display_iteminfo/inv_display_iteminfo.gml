/// @description inv_display_iteminfo(item id);
/// @param item id
// See obj_inv
var output, item_id;
item_id = argument0;

// Line 0 - Item rarity draw_text_custom
switch global.Item_info[# item_id, 1]
{
    case 0: line[0] = "Common item"
            break;
    case 1: line[0] = "Uncommon item"
            break;
    case 2: line[0] = "Rare item"
            break;
    case 3: line[0] = "Epic item"
            break;
    case 4: line[0] = "Legendary item"
            break;
    case 5: line[0] = "Key item"
            break;
    default: line[0] = "Error, can't determine rarity!"
}

// Line 1 - Item type obj_inv
switch global.Item_info[# item_id, 2]
{
    case 0: line[1] = "Undefined"
            break;
    case 1: line[1] = "Accessory"
            break;
    case 2: line[1] = "Armor (light)"
            break;
    case 3: line[1] = "Armor (medium)"
            break;
    case 4: line[1] = "Armor (heavy)"
            break;
    case 5: line[1] = "Consumable"
            break;
    case 6: line[1] = "Weapon (staff)"
            break;
    case 7: line[1] = "Weapon (bow)"
            break;
    case 9: line[1] = "Weapon (sword)"
            break;
    case 10: line[1] = "Ability (spellbook)"
             break;
    default: line[1] = "Error, can't determine item type!"
}

// Line 2 - Maximum stacksize
line[2] = "Maximum stacksize: " + string(global.Item_info[# item_id, 3]);

output = line[0] + line[1] + line[2];
return(output);
