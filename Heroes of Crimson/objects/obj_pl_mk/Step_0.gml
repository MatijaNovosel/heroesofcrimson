/// @description  Do stuff every step
scr_pl_auto(sprite_still);

if(!global.playerControl) {
    exit;
}

// Movement & aiming
scr_pl_control();

//Status effect control and other things
scr_pl_manage();

// Shooting
if(!global.Mouse_in_invregion 
	and obj_inv.mouse_item == -1
	and max(global.Lhold, global.Autofire) 
	and shoot_cd == 0 
	and obj_inv.box[# 0, 0] != -1 
	and global.Item_info[# obj_inv.box[# 0, 0], 2] == item_type.sword) {
		scr_mk_fire(obj_inv.box[# 0, 0]);
}

// Interact with a loot container/portal when the player is close enough
scr_pl_cont_int();
scr_pl_portal_int();

// Draw a transparent sprite if the player has the 'invisible' status
scr_pl_invis_alpha();