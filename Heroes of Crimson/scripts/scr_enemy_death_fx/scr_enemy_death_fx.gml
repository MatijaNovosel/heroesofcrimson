/// @description  scr_enemy_death_fx();
if (hp <= 0) && (global.partOn)
{
    // Death particles
    for (i = 0; i < 12; i += 1)
    {
        var pbit = instance_create(x, y, obj_pixelbit);
        pbit.direction = random(360);
        pbit.speed = random_range(2, 5);
        pbit.PBColorX = choose(hit_color[0], hit_color[1], hit_color[2], hit_color[3], hit_color[4]);
    }
}
