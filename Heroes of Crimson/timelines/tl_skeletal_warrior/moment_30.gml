/// @description  Fire and animate
var arc = 15;
var bullet_count = 3;
for (i = 0; i < bullet_count; i ++)
{
    scr_create_enemy_proj(x, y, obj_enemy_bullet0, DIR_PLAYER + (i * arc) - scr_shotgun_arc(arc, bullet_count), 12, 10, 15, false, spr_line, 10, "dir", 4, 0);
}

image_index = 1;
scr_sound(snd_eatk_sword1, 0.75, 0.75, 1.25);

