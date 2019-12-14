/// @description  Fading effect
var inst = instance_create(x, y, obj_barrier_fade);

if(global.Barrier_hp < 1) {
    inst.image_blend = scr_cformat($FF0000);
} else if(global.Barrier_hp > 0) {
    inst.image_blend = self.image_blend;
}

inst.image_alpha = self.image_alpha;
inst.scale = self.scale;