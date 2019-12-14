/// @description scr_wepdpscalc(item id);
/// @param item id
//RoF = Rate of Fire
//BPS = Bullets Per Shot (ex. Reimu's Gohei fires 2 bullets per click) obj_inv
var item_id, AverageDmg, AttackPower, AttackDelay, DPS1, DPS2;
item_id = argument0;

AverageDmg = (global.Weapon_stats[# item_id, 0] + global.Weapon_stats[# item_id, 1]) /2;
AttackPower = scr_att_calc(AverageDmg);                         //Damage Per Shot calc
AttackDelay = scr_dex_calc(global.Weapon_stats[# item_id, 2]);         //Delay between shot calc
DPS1 = (AttackPower * (120 / AttackDelay));                     //DPS before BPS modifier
DPS2 = (DPS1 * global.Weapon_stats[# item_id, 3]);                     //Final DPS output at 0 def, modified by BPS

return DPS1;                                                    //Return the final value
