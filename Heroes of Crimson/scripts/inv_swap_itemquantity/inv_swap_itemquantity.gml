/// @description inv_swap_itemquantity(x,y,quantity to add);
/// @param x
/// @param y
/// @param quantity to add
var xx = argument0;
var yy = argument1;
var add_quantity = argument2;

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
    // Get access to the removed quantity
    var remove_quantity = obj_inv.count[# xx, yy];

    // Replace the count with the new one
    obj_inv.count[# xx, yy] = add_quantity;
    
    // Return the removed item
    return(remove_quantity);
}
else if (item_id <= -1)
{
    // Our item id is -1 or less, that's an error
    show_error("The item id at x = "+string(xx)+"and y = "+string(yy)+" is less than -1!", false);
}

