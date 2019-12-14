/// @description  inv_pickup_item(item);
/// @param item
var add_item = argument0;

// Check for an existing item in inventory
for (yy = 0; yy < obj_inv.height; yy ++)
{
    for (xx = 0; xx < obj_inv.width; xx ++)
    {
        if obj_inv.box[# xx, yy] = add_item
        {
            // Add to the count
            obj_inv.count[# xx, yy] ++;
            
            return(true);
        }
    }
}

// Check for an empty slot in inventory
for (yy = 0; yy < obj_inv.height; yy ++)
{
    for (xx = 0; xx < obj_inv.width; xx ++)
    {
        if obj_inv.box[# xx, yy] = -1
        {
            obj_inv.box[# xx, yy] = add_item;
            
            // Add to the count
            obj_inv.count[# xx, yy] ++;
            
            return(true);
        }
    }
}

// Show debug message
show_debug_message("The inventory is full.");

