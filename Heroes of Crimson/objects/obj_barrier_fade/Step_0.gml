if(global.Pause || global.Sleep) {
	exit;
}

image_alpha -= 0.025;
scale += 0.025;
image_xscale = scale;
image_yscale = scale;

if(image_alpha < 0) {
	instance_destroy();
}