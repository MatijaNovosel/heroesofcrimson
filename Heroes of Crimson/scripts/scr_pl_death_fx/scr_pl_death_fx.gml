/// @description scr_pl_death_fx();
scr_camshake(20, 20);
scr_zunsound(snd_player_death);

//Explode into pixel bits
if global.partOn
{
    for (i = 0; i < 17; i += 1)
    {
        var _obj = instance_create(x,y,obj_pixelbit);
        _obj.PBColorX = choose(PBColor1,PBColor2,PBColor3);
        _obj.speed = random_range(3, 5);
        _obj.direction = random(360);
    }
}
