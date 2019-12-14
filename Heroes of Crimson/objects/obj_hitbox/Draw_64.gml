// Necessary code. Needed for fade effect of hitbox.
if(not global.playerDead) {
    draw_sprite_ext(
		spr_hitbox,
		image_index,
		x - __view_get(e__VW.XView, 0),
		y - __view_get(e__VW.YView, 0),
		1, 1, image_angle, -1, alpha
	)
}