/// @description  Fire 3 times
mspd = 0;

if tl_ammo > 0
{
    scr_create_enemy_proj(x, y, obj_enemy_bullet2, DIR_PLAYER, 10, 180, 15, false, spr_firebolt, 5, "dia", 4, 0);
    image_index = 1;
    scr_sound(snd_eatk_water1, 0.5, 0.75, 1.25);
    
    tl_ammo --;
    timeline_position -= 10;
}

