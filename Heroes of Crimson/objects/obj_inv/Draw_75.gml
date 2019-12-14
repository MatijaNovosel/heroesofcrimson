/// @description Draw the inventory
var h;

scr_check_cont();

if(show_loot) {
    // Show the container cells
    h = height;
} else {
    // Hide the container cells
    h = height - 2;
}

// If the inventory is open
if(show_inventory) {
    for(var yy = 0; yy < h; yy++) {
        for(var xx = 0; xx < width; xx++) {
            // Temporary x and y values
            var tx = inv_x+(xx*(box_spacing+box_size));
            var ty = inv_y+(yy*(box_spacing+box_size));
            
            draw_set_alpha(1);
            draw_sprite(spr_cellborder, 0, tx, ty);
            
            // Draw a bag and accolade sprite to show the player which bag is selected
            if(xx == 0 and yy == 6) {
                draw_set_alpha(0.50);
                if(global.Current_cont != -1) {
                    draw_sprite(spr_accolades, global.Bag_rarity, tx - 10, ty);
                    draw_sprite(spr_bags_ui, global.Bag_rarity, tx - 40, ty + 15);
                }
                draw_set_alpha(1);
            }
            
            if(global.Debug_mode) {
                draw_text(32, 400 + 96, string_hash_to_newline("mouse id: " + string(mouse_item)));
                draw_text(32, 400 + 118, string_hash_to_newline("mouse count: " + string(mouse_count)));
            }
            
            if point_in_rectangle(global.View_mouse_x, global.View_mouse_y, tx, ty, tx+box_size, ty+box_size)
            {
            
                if box[# xx, yy] != -1 && mouse_item == -1
                {
                    inv_display_itembox(box[# xx, yy], xx, yy);
                }
                
                if global.Lclick
                {
                    // If the cell holds an item and the mouse doesn't, give the mouse the item and remove it from the cell
                    if box[# xx, yy] != -1 && mouse_item == -1
                    {
                        // If the cell class isn't 'any' and the cell class matches the item type, REMOVE the stat boosts
                        if (class[# xx, yy] != 0) && (class[# xx, yy] == global.Item_info[# box[# xx, yy], 2]) && (yy == 0)
                        {
                            inv_stat_remove(box[# xx, yy]);
                        }
                        
                        mouse_item = box[# xx, yy];
                        mouse_item_px = xx;
                        mouse_item_py = yy;
                        inv_remove_itemstack(xx, yy);
                        scr_zunsound_ui(snd_itemtake);
                    }
                    
                    // If the mouse holds an item and the cell doesn't, give the cell the item and remove it from the mouse
                    else if box[# xx, yy] == -1 && mouse_item != -1 && ((global.Item_info[# mouse_item, 2] == class[# xx, yy]) || class[# xx, yy] = 0)
                    {
                        // If the cell class isn't 'any' and the cell class matches the item type, ADD the stat boosts
                        if (class[# xx, yy] != 0) && (class[# xx, yy] == global.Item_info[# mouse_item, 2]) && (yy == 0)
                        {
                            inv_stat_equip(mouse_item);
                        }
                        
                        inv_add_itemstack(xx, yy, mouse_item, mouse_count);
                        mouse_item_px = -1;
                        mouse_item_py = -1;
                        scr_zunsound_ui(snd_itemmove);
                    }
                    
                    // If both the cell and the mouse hold an item each..
                    // Check if the items are the same, if so, stack the items into the cell
                    // Otherwise, swap the items
                    else if box[# xx, yy] != -1 && mouse_item != -1
                    {
                        // Are the items the same? Stack them
                        if box[# xx, yy] == mouse_item
                        {
                            inv_add_itemstack(xx, yy, mouse_item, mouse_count);
                            mouse_item_px = -1;
                            mouse_item_py = -1;
                            scr_zunsound_ui(snd_itemmove);
                        }
                        // Otherwise, swap them
                        else if box[# xx, yy] != mouse_item && (class[# xx, yy] == 0 || (class[# xx, yy] == global.Item_info[# mouse_item, 2]))
                        {
                            // If the cell class isn't 'any' and the cell class matches the item type, remove the old stats and add the new ones
                            if class[# xx, yy] != 0 && (class[# xx, yy] == global.Item_info[# box[# xx, yy], 2]) && (yy == 0)
                            {
                                inv_stat_remove(box[# xx, yy]);
                            }

                            if class[# xx, yy] != 0 && (class[# xx, yy] == global.Item_info[# mouse_item, 2]) && (yy == 0)
                            {
                                inv_stat_equip(mouse_item);
                            }
                            
                            mouse_item = inv_swap_itemtype(xx, yy, mouse_item);
                            mouse_count = inv_swap_itemquantity(xx, yy, mouse_count);
                            mouse_item_px = xx;
                            mouse_item_py = yy;
                            scr_zunsound_ui(snd_itemmove);
                        }
                    }
                }
                else if global.Rclick
                {
                    // Check if there is an item, if so, take only one of the stack
                    // If the mouse already has an item, check if the item is the same, if so, take one from the stack and add it to the mouse
                    if box[# xx, yy] != -1 && mouse_item == -1
                    {
                        // If the cell class isn't 'any' and the cell class matches the item type, REMOVE the stat boosts
                        if class[# xx, yy] != 0 && (class[# xx, yy] == global.Item_info[# box[# xx, yy], 2]) && (yy == 0)
                        {
                            inv_stat_remove(box[# xx, yy]);
                        }
                        
                        mouse_item = box[# xx, yy];
                        mouse_item_px = xx;
                        mouse_item_py = yy;
                        inv_remove_item(xx, yy);
                        scr_zunsound_ui(snd_itemtake);
                    }
                    else if box[# xx, yy] != -1 && mouse_item != -1
                    {
                        if box[# xx, yy] == mouse_item
                        {
                            if !global.Key_shift
                            {
                                mouse_item_px = xx;
                                mouse_item_py = yy;
                                inv_remove_item(xx, yy);
                                scr_zunsound_ui(snd_itemtake);
                            }
                            else if global.Key_shift
                            {
                                mouse_item_px = xx;
                                mouse_item_py = yy;
                                inv_remove_itemstack(xx, yy);
                                scr_zunsound_ui(snd_itemtake);
                            }
                        }
                        else
                        {
                            show_debug_message("These items are not the same and cannot be taken into the mouse stack.")
                            scr_zunsound_ui(snd_error);
                        }
                    }
                }
                
                draw_set_color(c_white);
                draw_set_halign(fa_left);
                draw_set_valign(fa_top);
                
                if global.Debug_mode
                {
                    draw_text(32, 400, string_hash_to_newline(box[# xx, yy]));
                    draw_text(32, 400+16, string_hash_to_newline("Cell id: " + string(xx) + " ; " + string(yy)));
                    
                    draw_text(32, 400+48, string_hash_to_newline("item id: " + string(box[# xx, yy])));
                    draw_text(32, 400+64, string_hash_to_newline("item count: " + string(count[# xx, yy])));
                }
                
                
                // Cell coloring * * * * * 
                // Highlight the selected cell
                draw_set_alpha(0.25);
                draw_set_color(c_white);
                draw_rectangle(tx, ty, tx+box_size-1, ty+box_size-1, false);
                draw_set_alpha(1);
            }
            else
            {
                // If there is a mouse item, drop it
                if global.Lclick && !global.Mouse_in_invregion && (mouse_item != -1)
                {
                    inv_drop_mouseitem();
                }
                
                // Cell coloring
                if yy < 6
                {
                    draw_set_alpha(0.25);
                    draw_set_color(c_black);
                }
                else if yy > 5
                {
                    draw_set_alpha(0.25);
                    switch global.Bag_rarity
                    {
                        case 0:     draw_set_color(scr_cformat($724528));
                                    break;
                        case 1:     draw_set_color(scr_cformat($1154B2));
                                    break;
                        case 2:     draw_set_color(scr_cformat($8C0E18));
                                    break;
                        case 3:     draw_set_color(scr_cformat($007246));
                                    break;
                        case 4:     draw_set_color(scr_cformat($460C7F));
                                    break;
                        case 5:     draw_set_color(scr_cformat($00767F));
                                    break;
                        default:    draw_set_color(scr_cformat($724528));
                                    break;
                    }
                }
                
                draw_rectangle(tx, ty, tx+box_size, ty+box_size, false);
                draw_set_alpha(1);
            }
            
            // Draw a silhouette if it's a class-specific cell and the mouse_item_px and y aren't the same as it
            // Draw an item if there is one in that cell
            if box[# xx, yy] == -1 && class[# xx, yy] != 0
            {
                if xx = mouse_item_px && yy = mouse_item_py
                {
                    draw_sprite(spr_itemsil, 0, tx, ty);
                }
                else
                {
                    draw_sprite(spr_itemsil, class[# xx, yy], tx, ty);
                }
            }
            else if box[# xx, yy] != -1
            {
                draw_sprite(spr_items_40px, box[# xx, yy], tx, ty);
            }
            
            //draw_sprite(spr_cellborder, 0, tx, ty);
            
            if (count[# xx, yy] > 1)
            {
                // Draw the item count
                draw_set_color(c_white);
                draw_set_halign(fa_left);
                draw_set_valign(fa_top);
                draw_set_font(fnt_itemcount);
                draw_text_outline(tx+3, ty+23, count[# xx, yy], 1, scr_cformat($000000), 10);
            }
        }
    }
    
    if mouse_item != -1
    {
        // Draw the mouse item at the cell it came from, but only if there is no item there at the moment
        if mouse_item_px != -1 && mouse_item_py != -1
        {
            // If loot is being shown OR the mouse_item_py is less than 6 when loot isn't shown
            if (!show_loot && mouse_item_py < 6) || show_loot
            {
                var tx2 = inv_x+(mouse_item_px*(box_spacing+box_size));
                var ty2 = inv_y+(mouse_item_py*(box_spacing+box_size));
                
                if box[# mouse_item_px, mouse_item_py] == -1
                {
                    draw_sprite_ext(spr_items_40px, mouse_item, tx2, ty2, 1, 1, 0, -1, 0.5);
                }
            }
            else if (!show_loot && mouse_item_py > 5)
            {
                mouse_item_px = -1;
                mouse_item_py = -1;
            }
        }
        
        // Draw the mouse item at the mouse position
        draw_sprite_ext(spr_items_40px, mouse_item, global.View_mouse_x - 20, global.View_mouse_y - 20, 1, 1, 0, -1, mouse_item_alpha);
        
        // Draw the mouse count at the mouse position
        if (mouse_count > 1)
        {
            draw_set_color(scr_cformat($FFCF3F));
            draw_set_halign(fa_left);
            draw_set_valign(fa_top);
            draw_set_font(fnt_itemcount);
            draw_text_outline(global.View_mouse_x-17, global.View_mouse_y-22, mouse_count, 1, scr_cformat($000000), 10);
        }
    }
}

// If the inventory is closed
else if !show_inventory
{
    // I probably just want to make the player drop the mouse item once the inv is closed, makes more sense, no?
    if mouse_item != -1
    {
        inv_drop_mouseitem();
    }
}

if instance_exists(obj_container) 
{
    if (global.Current_cont != -1)
    {
        for (i = 0; i < 4; i ++)
        {
            global.Current_cont.item[i] = box[# i, 6];
            global.Current_cont.item[i+4] = box[# i, 7];
            global.Current_cont.count[i] = count[# i, 6];
            global.Current_cont.count[i+4] = count[# i, 7];
        }
    }
}

if show_inventory
{
    if (!show_loot && point_in_rectangle(global.View_mouse_x, global.View_mouse_y, inv_x, inv_y, inv_x + 184, inv_y + 280))
    || (show_loot && point_in_rectangle(global.View_mouse_x, global.View_mouse_y, inv_x, inv_y, inv_x + 184, inv_y + 376))
    {
        global.Mouse_in_invregion = true;
    }
    else
    {
        global.Mouse_in_invregion = false;
    }
}
else if !show_inventory
{
    global.Mouse_in_invregion = false;
}

