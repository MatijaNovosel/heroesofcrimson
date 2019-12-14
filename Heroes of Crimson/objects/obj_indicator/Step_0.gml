// Stay relative to the assigned object
draw_x = x;
draw_y = y;

// Fade out
if lifetime <= 40
alpha -= 0.025;

// Slow down
if vspeed < 0
{
    vspeed += 0.2
}

// Destroy self when lifetime = 0
if lifetime > 0
{
    lifetime -= 1;
}    
if lifetime < 1
{
    instance_destroy()
}

// Draw self behind the newer indicator instances
depth += 1;