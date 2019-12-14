/// @description scr_crit_calc_spell(spell id);
/// @param spell id
// Formula
// Spell crit chance * (1 + (luck / 10)) = crit chance
var spell_id, spell_crit, luck, chance;
spell_id = argument0;
spell_crit = Spell_dmg[# spell_id, 2];
luck = global.Total_luck;

chance = spell_crit * (1 + (luck / 10));
if(chance > 100){
    chance = 100;
}

return(chance);
