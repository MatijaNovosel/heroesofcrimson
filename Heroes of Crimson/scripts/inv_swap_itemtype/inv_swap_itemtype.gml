/// @description inv_swap_itemtype(x,y,item to add);
/// @param x
/// @param y
/// @param item to add
var xx = argument0;
var yy = argument1;
var add_item = argument2;

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
    // Get access to the removed item
    var remove_item = obj_inv.box[# xx, yy];

    // Replace the item with the new one
    obj_inv.box[# xx, yy] = add_item;
    
    // Return the removed item
    return(remove_item);
}
else if (item_id <= -1)
{
    // Our item id is -1 or less, that's an error
    show_error("The item id at x = "+string(xx)+"and y = "+string(yy)+" is less than -1!", false);
}

