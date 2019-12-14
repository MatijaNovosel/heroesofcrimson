/// @description inv_drop_mouseitem();
var xx = global.playerInstance.x;
var yy = global.playerInstance.y;

scr_zunsound(snd_bagdrop0);
var bag = instance_create(xx, yy, obj_lootbag);

bag.item[0] = mouse_item;
bag.count[0] = mouse_count;
bag.rarity = 0;

mouse_item = -1;
mouse_count = 0;
