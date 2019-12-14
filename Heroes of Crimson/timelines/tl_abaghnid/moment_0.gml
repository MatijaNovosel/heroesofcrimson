var bullet_count = 3;
var arc = 15;
for (var i = 0; i < bullet_count; i ++)
{
    scr_create_enemy_proj(x, y, obj_enemy_bullet1, DIR_PLAYER + (i * arc) - scr_shotgun_arc(arc, bullet_count), 10, 120, -1, 0, spr_4pstar, 5, "dia", 3, false);
}

scr_create_enemy_proj(x, y, obj_enemy_bullet0, DIR_PLAYER, 8, 90, 30, 0, spr_magicdart, 7, "dia", 4, false);

