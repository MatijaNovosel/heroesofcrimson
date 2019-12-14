/// @description  Fire multiple times
if (tl_ammo > 0)
{
    tl_ammo --;

    scr_create_enemy_proj(x, y, obj_enemy_bullet0, DIR_PLAYER + random_range(-5, 5), 12, 30, 20, false, spr_magicdart, choose(3, 4), "dia", 3, 0);
    image_index = 0;
    scr_sound(snd_eatk_zap1, 0.5, 0.75, 1.25);
    
    timeline_position -= 9;
}

