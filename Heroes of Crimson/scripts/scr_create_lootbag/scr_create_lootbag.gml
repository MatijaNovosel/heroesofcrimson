/// @description  scr_create_lootbag(x, y);
/// @param x
/// @param  y
var _obj, _x, _y, _lootcount;

// Determine how many items should be dropped (if at all)
_lootcount = scr_roll_itemq(bag_drop_chance, seq_drop_chance);

// Roll the items
if (_lootcount > 0)
{
    _x = argument0;
    _y = argument1;

    // Create the loot bag and set its variables
    _obj = instance_create(_x, _y, obj_lootbag);

    for (i = 0; i < _lootcount; i ++)
    {
        _obj.item[i] = scr_roll_itemid();
        _obj.count[i] = 1;
    }
    
    // Set the bag rarity
    _obj.rarity = loot_rarity;
    
    // Set the sprite
    _obj.image_index = loot_rarity;
    
    // Play a sound
    scr_zunsound(global.Bag_sound[loot_rarity]);
    
    // Show an in-game message when a legendary item drops
    if (loot_rarity == 4)
    {
        for (var i = 0; i < irandom_range(8, 12); i ++)
        {
            instance_create(_x, _y, obj_leg_sparkle_part);
        }
        
        var str = choose("Lucky you!", "What's in the bag?", "What could that be?")
        scr_message_add(str, global.logcol_special);
    }
}
else
{
    exit;
}
