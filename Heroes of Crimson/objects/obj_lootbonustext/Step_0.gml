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
    
    if lb_value = 0
    {
        if color = $FF3232
        {
            color = $FF9999;
        }
        else
        {
            color = $FF3232;
        }
    }
    else
    {
        if color = $ADFE46
        {
            color = $FFFFFF;
        }
        else
        {
            color = $ADFE46;
        }
    }
}

