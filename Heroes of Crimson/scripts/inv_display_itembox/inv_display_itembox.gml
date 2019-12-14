/// @description inv_display_itembox(item, current x, current y);
/// @param item
/// @param  current x
/// @param  current y
var item_id, item_rarity, name_color, cx, cy;
item_id = argument0;
cx = argument1;
cy = argument2;

// Determine the color of the font of the name, dependant on the item rarity value
item_rarity = global.Item_info[# item_id, 1];

switch item_rarity
{
    case 0: // Common
            name_color = scr_cformat($FFFFFF);
            break;
    case 1: // Uncommon
            name_color = scr_cformat($FFFFFF);
            break;
    case 2: // Rare
            name_color = scr_cformat($FFFFFF);
            break;
    case 3: // Epic
            name_color = scr_cformat($FFFFFF);
            break;
    case 4: // Legendary
            name_color = scr_cformat($FFFFFF);
            break;
    case 5: // Key item
            name_color = scr_cformat($FFFFFF);
            break;
}

// Draw the item name box
if(item_rarity == 4){
    draw_sprite(spr_itemnamebox_legendary, -1, inv_x-6, inv_y-2);
    image_speed = 0.2;
}else{
    draw_sprite(spr_itemnamebox, item_rarity, inv_x-6, inv_y-2);
}
draw_set_halign(fa_center);
draw_set_valign(fa_top);

// Draw the item name itself
draw_set_color(name_color);
draw_set_font(fnt_itemname);
draw_text_outline(inv_x-160, inv_y+10, string(global.Item_info[# item_id, 0]), 1, c_black, 10);

// Draw the item icon (30 px)
draw_sprite(spr_items_30px, item_id, inv_x-302, inv_y+20);

// Draw the description box
draw_set_font(fnt_itemdesc);

// Set the string, depending on the item type
var str;
switch global.Item_info[# item_id, 2]
{
    /*case item_type.cons:    str = inv_display_iteminfo(item_id) + inv_display_consstats(item_id) + inv_display_itemdesc(item_id);
                            break;
    case item_type.staff:   str = inv_display_iteminfo(item_id) + inv_display_weaponstats(item_id) + inv_display_itemstats(item_id) + inv_display_itemdesc(item_id);
                            break;
    case item_type.bow:     str = inv_display_iteminfo(item_id) + inv_display_weaponstats(item_id) + inv_display_itemstats(item_id) + inv_display_itemdesc(item_id);
                            break;
    case item_type.spellbook: str = inv_display_iteminfo(item_id) + inv_display_skillstats(item_id) + inv_display_itemstats(item_id) + inv_display_itemdesc(item_id);
                            break;*/
    default:                str = inv_display_iteminfo(item_id) + inv_display_itemstats(item_id) + inv_display_itemdesc(item_id);
                            break;
}

// Calculate the height of the string
var h;
switch global.Item_info[# item_id, 2]
{
    case item_type.staff:
    case item_type.bow:
    case item_type.dagger:
    case item_type.sword:
        h = 48;
        h += inv_calc_weaponstats(item_id, h);
        
        if inv_item_has_stats(item_id)
        {
            h += inv_calc_itemstats(item_id, h);
        }
        
        if global.Item_info[# item_id, 4] != -1
        {
            h += inv_calc_itemdesc(item_id, h);
        }
    break;
    
    case item_type.cons:
        h = 48;
        h += inv_calc_consinfo(item_id, h);

        if global.Item_info[# item_id, 4] != -1
        {
            h += inv_calc_itemdesc(item_id, h);
        }
    break;
                            
    default:
        h = 48;

        if inv_item_has_stats(item_id)
        {
            h += inv_calc_itemstats(item_id, h);
        }
        
        if global.Item_info[# item_id, 4] != -1
        {
            h += inv_calc_itemdesc(item_id, h);
        }
    break;
}

var hstr = h + 5;

// Draw the background of the box
draw_set_color(c_black);
draw_set_alpha(0.5);
draw_rectangle(inv_x-325, inv_y+41, inv_x-8, inv_y+41+10+hstr, false);

// Draw the borders of the box
draw_set_color(scr_cformat($191919));
draw_set_alpha(1);
draw_roundrect_ext(inv_x-325, inv_y+41,  inv_x-9, inv_y+41+10+hstr, 6, 6, true);
draw_roundrect_ext(inv_x-326, inv_y+40,  inv_x-8, inv_y+42+10+hstr, 6, 6, true);

// Draw the description text
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_itemdesc);

var line_offsetx, line_offsety;
line_offsetx = inv_x - 6;
line_offsety = inv_y + 47;

if (cy > 0)
{
    // Compare the item with the equipped one
    var h;
    switch global.Item_info[# item_id, 2]
    {
        // Weapons
        case item_type.staff:
        case item_type.bow:
        case item_type.dagger:
        case item_type.sword:
            h = inv_draw_iteminfo(item_id);
            draw_sprite(spr_sepline, 0, line_offsetx, line_offsety + h);
            h += inv_comp_weaponstats(item_id, h);
            draw_sprite(spr_sepline, 0, line_offsetx, line_offsety + h);
            
            if inv_item_has_stats(item_id)
            {
                h += inv_comp_itemstats(item_id, h, cy);
            }
            
            if global.Item_info[# item_id, 4] != -1
            {
                draw_sprite(spr_sepline, 0, line_offsetx, line_offsety + h);
                h += inv_draw_itemdesc(item_id, h);
            }
        break;
        
        // Consumables
        case item_type.cons:
            h = inv_draw_iteminfo(item_id);
            draw_sprite(spr_sepline, 0, line_offsetx, line_offsety + h);
            h += inv_draw_consinfo(item_id, h);
            
            if global.Item_info[# item_id, 4] != -1
            {
                draw_sprite(spr_sepline, 0, line_offsetx, line_offsety + h);
                h += inv_draw_itemdesc(item_id, h);
            }
        break;
        
        // Default (armor, accessories)
        default:
            h = inv_draw_iteminfo(item_id);
            draw_sprite(spr_sepline, 0, line_offsetx, line_offsety + h);
            
            if inv_item_has_stats(item_id)
            {
                h += inv_comp_itemstats(item_id, h, cy);
            }
            
            if global.Item_info[# item_id, 4] != -1
            {
                draw_sprite(spr_sepline, 0, line_offsetx, line_offsety + h);
                h += inv_draw_itemdesc(item_id, h);
            }
        break;
    }
}
else if (cy == 0)
{
    // Show the stats of the equipped item
    var h;
    switch global.Item_info[# item_id, 2]
    {
        // Weapons
        case item_type.staff:
        case item_type.bow:
        case item_type.dagger:
        case item_type.sword:
            h = inv_draw_iteminfo(item_id);
            draw_sprite(spr_sepline, 0, line_offsetx, line_offsety + h);
            h += inv_draw_weaponstats(item_id, h);
            draw_sprite(spr_sepline, 0, line_offsetx, line_offsety + h);
            
            if inv_item_has_stats(item_id)
            {
                h += inv_draw_itemstats(item_id, h);
            }
            
            if global.Item_info[# item_id, 4] != -1
            {
                draw_sprite(spr_sepline, 0, line_offsetx, line_offsety + h);
                h += inv_draw_itemdesc(item_id, h);
            }
        break;
        
        // Default (armor, accessories)               
        default:                
            h = inv_draw_iteminfo(item_id);
            draw_sprite(spr_sepline, 0, line_offsetx, line_offsety + h);
            
            if inv_item_has_stats(item_id)
            {
                h += inv_draw_itemstats(item_id, h);
            }
            
            if global.Item_info[# item_id, 4] != -1
            {
                draw_sprite(spr_sepline, 0, line_offsetx, line_offsety + h);
                h += inv_draw_itemdesc(item_id, h);
            }
        break;
    }
}
