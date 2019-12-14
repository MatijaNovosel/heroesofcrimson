Scale -= 0.05;
image_xscale = Scale;
image_yscale = Scale;

image_alpha -= 0.025;
if image_alpha < 0.05
{
    instance_destroy();
}

