dir = point_direction(x,y,global.playerInstance.x,global.playerInstance.y);
motion_add(dir,0.3);

if scale > 0
{
    scale -= 0.25;
}
else
{
    scale = 0;
}
image_xscale = scale;
image_yscale = scale;

if image_alpha < 1
{
    image_alpha += 0.2;
}

if lifespan > 0
{
    if global.Slomo
    lifespan -= 1;
    else
    lifespan -= 2;
}
else
{
    instance_destroy();
}

