/// @description  scr_pl_draw();
if(dead == 0) {
    // Draw the player normally
    draw_shadow_auto(sprite_still);
    draw_self();
    
    // Make the player glow red when taking damage
    if(iframe != 0) {
        draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_red, (iframe / 45));
    }
} else if(dead == 1) {
    // Shake the player sprite when dying
    draw_shadow_auto(sprite_index);
    draw_sprite(sprite_index, image_index, x + irandom_range(-2, 2), y + irandom_range(-2, 2));
}