/// @description scr_alist_spellbooks();
// Ice Sphere, level 1
var nr;
nr = 185;
Spell_info[# nr, 0] = 20;
Spell_info[# nr, 1] = 0.5;
Spell_info[# nr, 2] = 5;
Spell_info[# nr, 3] = 0;
Spell_info[# nr, 4] = 0;

Spell_dmg[# nr, 0] = 400;
Spell_dmg[# nr, 1] = 500;
Spell_dmg[# nr, 2] = 5;
Spell_dmg[# nr, 3] = 0;
Spell_dmg[# nr, 4] = 0;

/*
    TEMPLATE * * * * * 
// General
// Mana cost
Spell_info[nr, 0] = 1;

// Cast speed
Spell_info[nr, 1] = 1;

// Duration (in seconds)
Spell_info[nr, 2] = 0;

// Cooldown (in seconds)
Spell_info[nr, 3] = 0;

// Warm up (in seconds)
Spell_info[nr, 4] = 0;

// Damage
// Minimal damage
Spell_dmg[nr, 0] = 400;

// Maximal damage
Spell_dmg[nr, 1] = 500;

// Base crit chance
Spell_dmg[nr, 2] = 5;

// Piercing (0 = false, 1 = true)
Spell_dmg[nr, 3] = 500;

// Armor piercing (0 = false, 1 = true)
Spell_dmg[nr, 4] = 5;
