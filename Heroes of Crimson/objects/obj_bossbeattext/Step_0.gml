lifespan -= 1;
if lifespan < 1
{
    alpha -= 0.05;
}

if alpha < 0.05
{
    instance_destroy();
}

color_timer -= 1;
if color_timer = 0
{
    color_timer = 18;

    if color = $FECB38
    {
        color = $FFFFFF;
    }
    else
    {
        color = $FECB38;
    }
}

