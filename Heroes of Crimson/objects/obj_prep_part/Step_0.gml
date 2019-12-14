if rotate = 0
{
    image_angle += 1;
}
else
{
    image_angle -= 1;
}

image_alpha -= 0.05;
if image_alpha < 0.05
{
    instance_destroy();
}

