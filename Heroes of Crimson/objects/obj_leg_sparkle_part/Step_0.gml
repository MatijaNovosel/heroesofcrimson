Scale -= 0.05;
image_xscale = Scale;
image_yscale = Scale;

if Scale < 0.05
{
    instance_destroy();
}

