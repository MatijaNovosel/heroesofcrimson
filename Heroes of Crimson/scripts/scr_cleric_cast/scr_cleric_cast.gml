/// @description scr_cleric_cast
var pl, px, py, skill_id, skill_cost, skill_dur;

pl = global.playerInstance;
px = global.playerInstance.x;
py = global.playerInstance.y;
skill_id = obj_inv.box[# 1, 0];
skill_cost = global.Skill_stats[# skill_id, 0];
skill_dur = global.Skill_stats[# skill_id, 1];

if skill_id != -1 && !scr_status_find(status.silence, self) && !global.Mouse_in_invregion
{
    if global.playermp >= skill_cost
    {
        // Heal
        if (skill_id == 190)
        {
            var hp = global.Skill_stats[# skill_id, 5];
            
            global.playermp -= skill_cost;
            
            scr_restore_hp(hp, snd_hpdrink, px, py);
            scr_zunsound(snd_spell_heal);
            scr_circle_create_move(px, py, 12, 15, obj_heal_sparkle, 4, 0);
        }
    }
    else
    {
        scr_zunsound_ui(snd_error);
    }
}
else
{
    scr_zunsound_ui(snd_error);
}
