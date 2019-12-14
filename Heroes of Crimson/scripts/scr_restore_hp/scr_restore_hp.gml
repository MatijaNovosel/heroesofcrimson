/// @description scr_restore_hp(amount, sound, x, y);
/// @param amount
/// @param  sound
/// @param  x
/// @param  y
var amount, snd, xx, yy;
amount = argument0;
snd = argument1;
xx = argument2;
yy = argument3;

// Note: check for global.playerDead
// If the amount of healing doesn't surpass the max HP
if amount > 0 && global.playerhp + amount <= global.playerhp_max
{
    scr_ind_create(global.playerInstance.x, global.playerInstance.bbox_top, "+" + string(amount) + " HP", $9FFF3F, -5);
}

// If the amount of healing DOES surpass the max hp
else if amount > 0 && global.playerhp < global.playerhp_max
{
    scr_ind_create(global.playerInstance.x, global.playerInstance.bbox_top, "+" + string(abs(global.playerhp_max - global.playerhp)) + " HP", $9FFF3F, -5);
}

for(i = 0; i < amount; i++)
{
    if global.playerhp < global.playerhp_max
    {
        global.playerhp ++;
    }
    else
    {
        break;
    }
}
