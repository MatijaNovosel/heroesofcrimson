/*scr_mag_spell();
var space_hold = keyboard_check(vk_space);
var space_rel = keyboard_check_released(vk_space);
var space_press = keyboard_check_pressed(vk_space);
var spell_id = global.inventory[global.SSSlot];

scr_spell_auto();

if !global.disableFire
{
    if spell_id != -1 && global.playermp >= SpellData[spell_id,0] && global.Spell_cd[global.SSSlot-5,0] < 1 && cast_time = 0 && status_silence = 0
    {
        // Prepare the spell
        scr_spell_charge(space_hold);
        
        // Unleash a prepared spell when the conditions are met
        // Spells that require preperation
        
        if global.Prep_max != -1 && space_rel && global.Prep_ready
        {
            if spell_id = 80 && !place_meeting(mouse_x,mouse_y,obj_wall)
            {
                scr_spell_cast();
                instance_create(mouse_x,mouse_y,obj_pl_aoe0a);
            }
        }
        
        // Spells that don't require preperation
        else
        if space_press
        {
            if spell_id = 81 && !place_meeting(mouse_x,mouse_y,obj_wall)
            {
                scr_spell_cast();
                scr_zunsound(snd_expl_arcane4);
                scr_camshake(2,4);
                scr_circle_create_move(mouse_x,mouse_y,20,0,obj_pl_sblast0,12,0);
            }
        }
    }
    else
    scr_spell_error(space_press,space_rel);
}

if cast_time > 0
scr_cast_sprite(spr_mag_cast);
