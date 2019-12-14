image_angle = direction

Scale -= 0.025
image_xscale = Scale
image_yscale = Scale

image_alpha -= 0.05
if image_alpha < 0.05
{
    instance_destroy();
}

