/// @description scr_wepapscalc(item id);
/// @param item id
// RoF = Rate of Fire
// BPS = Bullets Per Shot (ex. Reimu's Gohei fires 2 bullets per click) obj_inv
var item_id, AttackDelay, DPS1, DPS2;
item_id = argument0;

AttackDelay = scr_dex_calc(global.Weapon_stats[# item_id, 2]);    // Delay between shot calc
APS = (120 / AttackDelay);                                  // DPS before BPS modifier

return APS;                                                 // Return the final value
