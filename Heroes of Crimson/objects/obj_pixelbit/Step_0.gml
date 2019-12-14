image_xscale = Scale
image_yscale = Scale

if(Fade = 1) {
    Scale -= 0.05
    if(Scale < 0.05) {
        instance_destroy();
    }
}

// Isometric effect
depth = -y;