if(global.Pause || global.Sleep) {
	exit;
}

barrier_color = (global.Barrier_hp / global.Barrier_hpmax) * 130;
image_blend = make_colour_hsv(barrier_color, 245, 245);

// Visual
if(global.Barrier_hp > 0) {
    // Wave motion
    if(global.Slomo) {
		t += increment/2;
	} else {
		t += increment;
	}
	
    image_alpha = 0.75 + amplitude * sin(t);

    // Image scaling
    if(global.Player_hit) {
        scale += 0.25;
    }
    
    scale = clamp(scale, 0, 1.25);
    
    if(scale > 1) {
        scale -= 0.025;
    }
    
    image_xscale = scale;
    image_yscale = scale;
}