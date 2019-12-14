/// @description  Fire
mspd = 0;

if tl_ammo > 0
{
    tl_ammo --;
    
    var arc = 15;
    var bullet_count = 5;
    for (i = 0; i < bullet_count; i ++)
    {
        scr_create_enemy_proj(x, y, obj_enemy_bullet1, DIR_PLAYER + (i * arc) - scr_shotgun_arc(arc, bullet_count), 9, 180, 20, false, spr_firebolt, 1, "dia", 4, 0);
    }
    
    image_index = 1;
    scr_sound(snd_eatk_fire1, 1, 0.75, 1.25);
}

