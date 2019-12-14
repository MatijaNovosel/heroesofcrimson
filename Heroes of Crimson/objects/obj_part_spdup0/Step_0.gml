Scale -= 0.05;
image_xscale = Scale;
image_yscale = Scale;

if Rotate_dir
{
    image_angle += Rotate_amount;
}
else
{
    image_angle -= Rotate_amount;
}

image_alpha -= 0.05;
if image_alpha < 0.05
{
    instance_destroy();
}

