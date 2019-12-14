/// @description inv_add_item(x,y,item);
/// @param x
/// @param y
/// @param item
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

if (item_id == -1)
{
    // Add the item
    obj_inv.box[# xx, yy] = add_item;
    
    // Add 1 to the count
    obj_inv.count[# xx, yy] ++;
    
    // Return back out
    return(true);
}
else if (item_id > -1)
{
    // There is already an item here
    // So, is the item we're adding the same?
    if obj_inv.box[# xx, yy] = add_item
    {
        // Add 1 to the count
        obj_inv.count[# xx, yy] ++;
        
        return(true);
    }
    else
    {
        show_debug_message("There's already an item there.");
        return(false);
    }
}
else if (item_id < -1)
{
    // Our item id is less than -1, that's an error
    show_error("The item id at x = "+string(xx)+"and y = "+string(yy)+" is less than -1!", false);
}

