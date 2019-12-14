/// @description scr_create_loot_cont(x, y, container object, sound, rarity);
/// @param x
/// @param  y
/// @param  container object
/// @param  sound
/// @param  rarity
var cont, xx, yy, object, snd;
xx = argument0;
yy = argument1;
object = argument2;
snd = argument3;

cont = instance_create(xx, yy, object);
with(cont)
{
    rarity = argument4; //Not to be paired with var! This variable needs to stay :)
    
    scr_zunsound(global.bagsound[rarity]);
    image_index = rarity;
}
