//Scale -= 0.05;
image_xscale = Scale;
image_yscale = Scale;

image_angle += 2;

image_alpha -= 0.05;
if image_alpha < 0.05
{
    instance_destroy();
}

if vspeed < 0
{
    vspeed += 0.01;
}

