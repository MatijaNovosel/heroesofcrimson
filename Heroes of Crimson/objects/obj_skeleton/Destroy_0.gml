/// @description  Give XP and drop loot when killed
scr_enemy_death();
scr_enemy_death_fx();

instance_create(x, y, choose(obj_portal_d0, obj_portal_d1));