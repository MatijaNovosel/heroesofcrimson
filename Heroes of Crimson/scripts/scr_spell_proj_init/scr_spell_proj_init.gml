/// @description scr_spell_proj_init(ability id, img spd, img scale, vol):
/// @param ability id
/// @param  img spd
/// @param  img scale
/// @param  vol
var spell_id = argument0;

// Set the damage
damage = irandom_range(Spell_dmg[# spell_id, 0], Spell_dmg[# spell_id, 1]);
//damage = irandom_range(400, 500);

// Set the crit chance
crit = scr_crit_calc_spell(spell_id);

// Armor piercing
armor_pierce = Spell_dmg[# spell_id, 4];

// Set the lifetime
life = Spell_info[# spell_id, 2] * 120;

// Save the speed stat when time is slowed/frozen
old_spd = 0;

// Set the image speed, save the image speed when time is slowed/frozen
image_speed = argument1;
ani_spd_create = image_speed;
old_ani_spd = 0;

// Set the image scale
image_xscale = argument2;
image_yscale = argument2;

// Set the sound volume for this projectile
temp_vol = argument3;

// Make the projectile transparant if its enabled in the options (make this a customizable value)
if(global.transProj) {
    image_alpha = 0.33;
}
