/// @description scr_create_pl_proj(x, y, proj type, weapon id, direction, volume);
/// @param x
/// @param y
/// @param proj type
/// @param weapon id
/// @param direction
/// @param volume

var proj_id = instance_create(argument0, argument1, argument2);
var weapon_id = argument3;

with(proj_id) {
    // Set the damage value by picking a random whole number between the minimum and maximum damage
    damage = irandom_range(global.Weapon_stats[# weapon_id, 0], global.Weapon_stats[# weapon_id, 1]);
	
    // Set the crit chance
    crit = scr_crit_calc(weapon_id);
	
    // Set the projectile direction
    direction = argument4;
	
    // Set the projectile speed, save the speed stat when time is slowed/frozen
    speed = global.Weapon_stats[# weapon_id, 4];
    old_spd = 0;
	
    // Set the projectile life
    life = global.Weapon_stats[# weapon_id, 5] * 60;
	
    // Does the projectile hit multiple targets?
    pierce = global.Weapon_stats[# weapon_id, 6];
	
    // Set variables to make the pierce effect work
    hitList[0] = 0;
    numHit = 0;
	
    // Does the projectile ignore defense?
    armor_pierce = global.Weapon_stats[# weapon_id, 7];
	
	// Set the projectile sprite index
	if(weapon_id == 86) {
		// Azure bow
		image_index = choose(17, 18, 19, 20, 21);	
	} else {
		sprite_index = global.Weapon_av[# weapon_id, 0];		
	}
	
    // Set the projectile image index
    image_index = global.Weapon_av[# weapon_id, 2];
	
    // Set the projectile image speed, save the image speed when time is slowed/frozen
    image_speed = global.Weapon_av[# weapon_id, 3];
    ani_spd_create = image_speed;
    old_ani_spd = 0;
	
    // Set the projectile image scale
    image_xscale = global.Weapon_av[# weapon_id, 4];
    image_yscale = global.Weapon_av[# weapon_id, 4];
	
    // Set the projectile sprite direction
    if(global.Weapon_av[# weapon_id, 5] == "dir") {
        image_angle = direction;
	} else if(global.Weapon_av[# weapon_id, 5] == "dia") {
        image_angle = direction - 45;
    } else if(global.Weapon_av[# weapon_id, 5] == "ran") {
        image_angle = irandom(360);
    } else {
        image_angle = global.Weapon_av[# weapon_id, 5];
    }

    // Set the sound volume for this projectile
    temp_vol = argument5;
    
    // Make the projectile transparant if its enabled in the options (make this a customizable value)
    if(global.transProj) {
        image_alpha = 0.33;
    }
}