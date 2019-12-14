/// @description inv_remove_itemstack(x,y);
/// @param x
/// @param y
var xx = argument0;
var yy = argument1;

// Check for out-of-range
if xx != median(0, xx, obj_inv.width-1) && yy != median(0, yy, obj_inv.height-1)
{
    show_debug_message("The x and y are outside of the range.");
    exit;
}

// Get the item id
var item_id = obj_inv.box[# xx, yy];

if (item_id > -1)
{
    var max_stacksize = global.Item_info[# item_id, 3];
    
    // If the count is higher than 0, take 1 from the count
    // till the mouse stacksize is maxed
    for (i = 0; i < max_stacksize; i ++)
    {
        if (obj_inv.count[# xx, yy] > 0) && (mouse_count < max_stacksize)
        {
            // Add one to the stack and remove one from the mouse
            obj_inv.count[# xx, yy] --;
            mouse_count ++;
        }
        else
        {
            // If the max stacksize has been reached, abort the action
            break;
        }
    }
    
    // Get access to the removed item
    var remove_item = obj_inv.box[# xx, yy];

    // Check for last item
    if (obj_inv.count[# xx, yy] == 0)
    {
        // Set item box to none
        obj_inv.box[# xx, yy] = -1;
    }
    
    // Return the removed item
    return(remove_item);
}
else if (item_id = -1)
{
    show_debug_message("There's was no item at this location.");
    return(-1);
}
else
{
    // Our item id is less than -1, that's an error
    show_error("The item id at x = "+string(xx)+"and y = "+string(yy)+" is less than -1!", false);
}

