Scale -= 0.025;
image_xscale = Scale;
image_yscale = Scale;

image_alpha -= 0.025;
if image_alpha < 0.025
{
    instance_destroy();
}

if speed > 0
speed -= 0.05;

depth = -y;

