/// @description scr_respawn();
// Check scr_pl_death for more options
// Reset player variables and jump to spawn

global.playerhp = global.playerhp_max;
global.playermp = global.playermp_max;
global.playerInstance.shoot_cd = 0;
global.playerInstance.wis_cd = 0;

with(global.playerInstance) {
    scr_status_init();
}

global.playerDead = false;
global.playerInstance.x = obj_pl_spawner.x;
global.playerInstance.y = obj_pl_spawner.y;

// Reset the position of the camera
obj_camera.x = obj_pl_spawner.x;
obj_camera.y = obj_pl_spawner.y;
__view_set( e__VW.XView, 0, obj_camera.x - (__view_get( e__VW.WView, 0 )/2) );
__view_set( e__VW.YView, 0, obj_camera.y - (__view_get( e__VW.HView, 0 )/2) );

// Clear all bullets
if instance_exists(obj_enemy_bullet_par)
with(obj_enemy_bullet_par){instance_destroy();}

// Destroy the phase clear text objects
if instance_exists(obj_lootbonustext)
with(obj_lootbonustext){instance_destroy();}

if instance_exists(obj_bossbeattext)
with(obj_bossbeattext){instance_destroy();}

// Destroy all loot bags
if instance_exists(obj_lootbag)
with(obj_lootbag){instance_destroy();}

// Reset the variables for the death screen
d_alpha_death = 0;

xDes = __view_get( e__VW.WView, 0 )/2;
yDes = __view_get( e__VW.HView, 0 )-25;

text_x0 = __view_get( e__VW.WView, 0 )/2+800;
text_y0 = __view_get( e__VW.HView, 0 )/2-25;

text_x1 = __view_get( e__VW.WView, 0 )/2-800;
text_y1 = __view_get( e__VW.HView, 0 )/2+25;

text_x2 = __view_get( e__VW.WView, 0 )/2;
text_y2 = __view_get( e__VW.HView, 0 )+200;

current_screen = screen[0];

// Reset the last hit enemy
global.enLasthit = 0;
global.bossLasthit = 0;
global.Last_hit_by = noone;

// Hide the boss' HP bar
global.bossHP_show = false;

// Disable auto fire
AutofireW = false;
