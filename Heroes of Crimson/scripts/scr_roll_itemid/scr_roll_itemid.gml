/// @description  scr_roll_itemid();
// Apply the wealth stat, item rarity and rich buff to make rare items more common
show_debug_message("Applying wealth stat and item rarity factor");
var item_weight, base_weight, rarity_factor, rich_buff;
for (var i = 0; i <= unique_item_count; i ++)
{
    /*
        Formula for applying weight/rarity/rich:
        Base weight * (1 + ((wealth / 25) * (rarity) * (rich buff))
    */
    
    base_weight = lt_data[i, 1];
    rarity_factor = lt_data[i, 2];
    
    if scr_status_find(status.rich, global.playerInstance)
    {
        rich_buff = 1.5;
    }
    else
    {
        rich_buff = 1;
    }
    
    item_weight[i] = round( base_weight * (1 + ((global.Total_wealth / 50) * (rarity_factor) * (rich_buff))));
}
show_debug_message("Last item range = " + string(item_weight[unique_item_count]));

// Set the range equal to the weight of an item and the ranges before it
show_debug_message("Setting item ranges..");
var range;
for (var i = 0; i <= unique_item_count; i ++)
{
    if (i == 0)
    {
        range[i] = item_weight[i];
    }
    else if (i > 0)
    {
        range[i] = range[i - 1] + item_weight[i];
    }
}

// Calculate the total weight for all items combined
var total_weight = range[unique_item_count];
show_debug_message("Calculating total item weight.. " + string(total_weight));

// Generate a random number using the total weight
var rng = irandom(total_weight);
show_debug_message("Generating number.. " + string(rng));

// Check what range the number falls into, then return the given item ID
for (var i = 0; i <= unique_item_count; i ++)
{
    if (rng <= range[i])
    {
        if (global.Item_info[# lt_data[i, 0], 1] > loot_rarity)
        {
            loot_rarity = global.Item_info[# lt_data[i, 0], 1];
        }
        
        show_debug_message("Returning item ID.. " + string(lt_data[i, 0]));
        return(lt_data[i, 0]);
    }
}

/* OLD WEIGHT MULTIPLIER FORMULA
item_weight[i] = round((lt_data[i, 1]) * (1 + ( (global.Total_wealth / 25) * (rarity_factor) )));
