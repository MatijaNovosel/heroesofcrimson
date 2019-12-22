/// @description Player controls
scr_pl_keys();

// Level array
global.max_level = 20;
var xp_amount = 50;

for(var i = 0; i < global.max_level; i++) {
	global.xp_needed[i] = xp_amount;
	xp_amount *= 2;
}

/// Global variables
randomize();

// Set a variable that checks if the player can heal
global.healing_variable = 1;

// Set a variable that checks if the player has global.lifesteal or the blade of the Harkon Clan equipped
global.lifesteal = 0;
global.harkon_equipped = 0;
global.harkon_check = 0;

// Debug mode!
global.Debug_mode = false;

// Declare a variable that determines the player's level
global.xp_level = 1

// Declare a variable that determines the player's XP stat
global.xp = 0;
global.xp_total = 0;
global.xp_max = global.xp_needed[global.xp_level];
global.xp_percent = (global.xp / global.xp_max) * 100;

// Player stat totals (base stats + bonuses from equipment)
global.Total_life = 0;
global.Total_mana = 0;
global.Total_attack = 0;
global.Total_dexterity = 0;
global.Total_defense = 0;
global.Total_speed = 0;
global.Total_wisdom = 0;
global.Total_wealth = 0;
global.Total_luck = 0;

// Base stats
global.Base_life = 100;
global.Base_mana = 50;
global.Base_attack = 12;
global.Base_dexterity = 15;
global.Base_defense = 0;
global.Base_speed = 10;
global.Base_wisdom = 10;
global.Base_wealth = 5;
global.Base_luck = 8;

// Gear stats
global.Gear_life = 0;
global.Gear_mana = 0;
global.Gear_attack = 0;
global.Gear_dexterity = 0;
global.Gear_defense = 0;
global.Gear_speed = 0;
global.Gear_wisdom = 0;
global.Gear_wealth = 0;
global.Gear_luck = 0;

// Calculate the stat totals
scr_update_stat_total();

// Set up an enumerator for status conditions
scr_status_enum();

// Declare a variable that determines the player's HP stat
global.playerhp = global.Total_life;
global.playerhp_max = global.playerhp;
global.playerhp_percent = (global.playerhp / global.playerhp_max) * 100;

// Declare a variable that determines the player's MP stat
global.playermp = global.Total_mana;
global.playermp_max = global.playermp;
global.playermp_percent = (global.playermp / global.playermp_max) * 100;

// Set some variables that track the potion recovery
global.Life_amount = 0;
global.Life_left = 0;
global.Life_speed = 0;
global.Mana_amount = 0;
global.Mana_left = 0;
global.Mana_speed = 0;

// Set a variable for the wisdom regen
global.Wisdom_regen = 0;

// Determine a variable that checks what class the player has chosen
// global.playerClass = 0;

// Determine the player object (and weapon-, armor- and spellclasses; for the description box)
switch(global.playerClass) {
    case(0): {
		global.playerInstance = obj_pl_mage;
		break;
	}
    case(1): {
		global.playerInstance = obj_pl_hunter;
		break;
	}
    case(2): {
		global.playerInstance = obj_pl_mk;
		break;
	}
    default: {
		global.playerInstance = -1;
		break;
	}
}

// Set variables for the barrier buff
global.Barrier_hp = 0;
global.Barrier_hpmax = 0;
global.Barrier_time = 0;

// Check whether the player is being hit
global.Player_hit = false;

// Declare a variable that determines whether the player is alive or not
global.playerDead = false;

// Declare variables that track the player's old X and Y positions
global.old_playerX = 0;
global.old_playerY = 0;

// Two arrays that track the currently used spells and their cooldowns
// Spell cooldowns
global.Spell_cd[0,0] = 0;
global.Spell_cd[0,1] = -1;
global.Spell_cd[1,0] = 0;
global.Spell_cd[1,1] = -1;
global.Spell_cd[2,0] = 0;
global.Spell_cd[2,1] = -1;
global.Spell_cd[3,0] = 0;
global.Spell_cd[3,1] = -1;
global.Spell_cd[4,0] = 0;
global.Spell_cd[4,1] = -1;

// Ability preparation variables
global.Prep = 0;
global.Prep_max = -1;
global.Prep_check = false;
global.Prep_ready = false;

// Determines when items despawn
global.despawn_time = 60 * 300

// Check whether the player hovers over the inventory
global.Mouse_in_invregion = false;

// Determines when using the weapon/skill needs to be disabled
global.disableFire = false;

// Check what enemy has damaged you last
global.Last_hit_by = noone;

// Declare variables that check the last hit enemy (and boss)
global.enLasthit = 0;
global.bossLasthit = 0;

// Declare variables that determine the boss' HP/Lives and whether to show its hp bar
global.bossHP_show = false;
global.bossHP = 0;
global.bossHP_max = 0;
global.bossHP_percent = 0;
global.bossName = "Boss";
global.bossName_color = $FFFFFF;
global.attackName = "Attack"
global.bossLives = 0;
global.lootBonus = 0;
global.next_lootBonus = 0;
global.gear_lootBonus = 0;
global.playerHit = false;

// Declare variables for checking what slot is selected and what key selects it
global.SSSlot = 5; // Selected Skill Slot
global.old_SSSlot = 5;

// Declare a variable that checks whether to fire bullets automatically (weapon)
global.Autofire = false;

// Keep track of the loot container closest to the player
global.Current_cont = -1;
global.Last_cont = -1;
global.Bag_range = 15;
global.Bag_rarity = 0;

// Keep track of the portal closest to the player
global.Current_portal = -1;
global.Portal_range = 15;

// Declare a variable that calculates how fast the player regenerates HP/MP
global.hppersec = 0;
global.mppersec = 0;

// Declare variables for freezing/slowing the game
global.Pause = false;
global.Sleep = 0;
global.eFreeze = 0;
global.pFreeze = 0;
global.Slomo = 0;

// Declare a variable that determines whether the player is allowed to move or shoot
global.playerControl = true;

// Respawning system
global.respawnTrans = false; // Respawning transition
global.respawnTime = 0; // The amount of time the screen stays black until fading away

// Keep track of the mouse position, keeping the view in mind
global.View_mouse_x = mouse_x - __view_get(e__VW.XView, 0);
global.View_mouse_y = mouse_y - __view_get(e__VW.YView, 0);

// OPTIONS
// Smooth camera
global.smoothCam = true;

// Camera shaking
global.camShake = true;

// Sound emitter and volume
global.sndEmitter = audio_emitter_create();
global.sndVol = 0.25;
global.oldVol = global.sndVol;
audio_emitter_gain(global.sndEmitter, global.sndVol);

// Weapon sounds
global.wepsndOn = true;

// Particles
global.partOn = true;

// Indicators
global.indOn = true;

// Show hitbox permanent hitbox
global.permHitbox = false;

// Vsync
global.vsyncOn = true;
display_reset(0, true);

// Automatic respawning, OUTDATED
global.autoRespawn = false;

// Transparent projectiles
global.transProj = false;

// Sound overlapping RotMG-style, OUTDATED
global.sndOverlap = true;

// Draw shadows, RotMG-style
global.Draw_shadow = true;

// global.Sleep the game when certain events happen
global.sleepOn = true;

// Temporary variable listing
temp_dexterity = 0;
temp_attack = 0;
temp_speed = 0;
temp_wisdom = 0;

// Create variables to check if the player is wearing the Armor of divine faith
global.divine_faith = -1;
global.check_slot_divine = false;

/// Local variables
// Determine if a screen is open and if so, which one
screen[0] = "nothing"
screen[1] = "death"
screen[2] = "pause"
screen[3] = "stats"
screen[4] = "options1"
screen[5] = "quit"
screen[6] = "options2"

current_screen = screen[0];

// Draw alpha variable
d_alpha_death = 0;
d_alpha_pause = 0;
d_alpha_respawn = 0;

// Death screen related
xDes = __view_get(e__VW.WView, 0) / 2;
yDes = __view_get(e__VW.HView, 0) - 25;

text_x0 = __view_get(e__VW.WView, 0) / 2 + 800;
text_y0 = __view_get(e__VW.HView, 0) / 2 - 25;

text_x1 = __view_get(e__VW.WView, 0) / 2 - 800;
text_y1 = __view_get(e__VW.HView, 0) / 2 + 25;

text_x2 = __view_get(e__VW.WView, 0) / 2;
text_y2 = __view_get(e__VW.HView, 0) + 200;

// global.Pause menu cooldown
pause_cd = 0;

/// Global statistic variables
global.StatShotsFired = 0;
global.StatSkillUses = 0;

global.StatDamageDealt = 0;
global.StatDamageTaken = 0;

global.StatDeathCount = 0;
global.StatEnemyKills = 0;

global.StatPhasesCaptured = 0;
global.StatPhasesFailed = 0;

/// Bag drop sound list
global.Bag_sound[0] = snd_bagdrop0;
global.Bag_sound[1] = snd_bagdrop1;
global.Bag_sound[2] = snd_bagdrop2;
global.Bag_sound[3] = snd_bagdrop3;
global.Bag_sound[4] = snd_bagdrop4;
global.Bag_sound[5] = snd_bagdrop5;

/// Initialize an enumerator for enemy states
scr_enemy_states_init();

/// Global dungeon variables
global.Floor_current = undefined;
global.Floor_room_id = undefined;
global.Floor_name = undefined;
global.Floor_level = undefined;
global.Floor_mod = undefined;
global.Floor_mod_uniques = undefined;

enum f_mod {
    // No mod
    no_mod,
    // Bad mods, more common as you level up
    enemy_att_up,
    enemy_dex_up,
    enemy_proj_spd_up,
    enemy_death_buff_enemy,
    enemy_death_debuff_player,
    enemy_death_explode,
    enemy_debuff_immune,
    enemy_vampirism,
    enemy_sapping,
    more_traps,
    // Good mods, rare
    more_chests,
    // Special mods, very rare
    enemy_death_buff_player,
    infinite_mp,
}

global.Floor_mod_uniques = f_mod.infinite_mp;