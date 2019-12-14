/// @description  scr_status_inflict(status, target, duration, chance);
/// @param status
/// @param  target
/// @param  duration
/// @param  chance
if (global.Pause || global.Sleep) {
    exit;
}

var inf_status, target, duration, chance, show_text;
inf_status = argument0; // Status to inflict
target = argument1;     // Target for the status
duration = argument2;   // How long the status lasts
chance = argument3;     // Chance for the status to be inflicted

for (var i = 0; i < global.Max_status; i ++)
{
    if (target.status_id[i] == inf_status)
    {
        if (duration > target.status_time[i])
        {
            target.status_time[i] = duration;
            // scr_zunsound(sound_id);
        }
        exit;
    }
}

for (var i = 0; i < global.Max_status; i ++)
{
    if (target.status_id[i] == -1)
    {
        target.status_id[i] = inf_status;
        target.status_time[i] = duration;
        target.status_count ++;
        
        var min_p, max_p, fnt_col;
        min_p = 0.9;
        max_p = 1.1;
        fnt_col = scr_cformat($FF3F4F);
        
        switch inf_status
        {
            case status.burn:
                scr_junsound(snd_status_burned, 1, min_p, max_p);
                scr_ind_create(target.x, target.bbox_top, "Burning!", $F44242, -5);
            break;
            
            case status.poison:
                scr_junsound(snd_status_poisoned, 1, min_p, max_p);
                scr_ind_create(target.x, target.bbox_top, "Poisoned!", $8E1386, -5);
            break;
            
            case status.silence:
                scr_junsound(snd_status_silenced, 1, min_p, max_p);
                scr_ind_create(target.x, target.bbox_top, "Silenced!", $FFFFFF, -5);
            break;
            
            case status.confused:
                scr_junsound(snd_status_silenced, 1, min_p, max_p);
                scr_ind_create(target.x, target.bbox_top, "Confused!", $FFFFFF, -5);
            break;
            
            case status.spd_down:
                scr_junsound(snd_status_slowed, 1, min_p, max_p);
                scr_ind_create(target.x, target.bbox_top, "Slowed!", $0E4211, -5);
            break;
            
            case status.blind:
                scr_junsound(snd_status_blinded, 1, min_p, max_p);
                scr_ind_create(target.x, target.bbox_top, "Blind!", $3F3D39, -5);
            break;
            
            case status.att_up:
                scr_junsound(snd_status_buff0, 1, min_p, max_p);
                scr_ind_create(target.x, target.bbox_top, "Enraged!", $BA1D86, -5);
            break;
            
            case status.dex_up:
                scr_junsound(snd_status_buff0, 1, min_p, max_p);
                scr_ind_create(target.x, target.bbox_top, "Frenzy!", $F45C41, -5);
            break

            case status.spd_up:
                scr_junsound(snd_status_buff0, 1, min_p, max_p);
                scr_ind_create(target.x, target.bbox_top, "Swiftness!", $42F4D7, -5);
            break;
            
            case status.fatal:
                scr_junsound(snd_status_silenced, 1, min_p, max_p);
                scr_ind_create(target.x, target.bbox_top, "Sudden death!", $3F3D39, -5);
            break;
            
            case status.armor_break:
                scr_junsound(snd_status_silenced, 1, min_p, max_p);
                scr_ind_create(target.x, target.bbox_top, "Armor broken!", $684913, -5);
            break;
            
            case status.paralyze:
                scr_junsound(snd_status_silenced, 1, min_p, max_p);
                scr_ind_create(target.x, target.bbox_top, "Paralyzed!", $DBF709, -5);
            break;
            
            case status.att_down:
                scr_junsound(snd_status_silenced, 1, min_p, max_p);
                scr_ind_create(target.x, target.bbox_top, "Weak!", $CEC8C0, -5);
            break;
            
            case status.dex_down:
                scr_junsound(snd_status_silenced, 1, min_p, max_p);
                scr_ind_create(target.x, target.bbox_top, "Dazed!", $E88C14, -5);
            break;
            
            case status.invin1:
                scr_junsound(snd_status_silenced, 1, min_p, max_p);
                scr_ind_create(target.x, target.bbox_top, "Invulnerable!", $4693AF, -5);
            break;
            
            case status.invis:
                scr_junsound(snd_status_silenced, 1, min_p, max_p);
                scr_ind_create(target.x, target.bbox_top, "Invisible!", $8B9396, -5);
            break;
            
            case status.barrier:
                scr_junsound(snd_status_silenced, 1, min_p, max_p);
                scr_ind_create(target.x, target.bbox_top, "Barrier!", $233FA3, -5);
            break;
            
            case status.crit_up:
                scr_junsound(snd_status_silenced, 1, min_p, max_p);
                scr_ind_create(target.x, target.bbox_top, "Bloodlust!", $FA8072, -5);
            break;
            
            case status.beckon:
                scr_junsound(snd_status_silenced, 1, min_p, max_p);
                scr_ind_create(target.x, target.bbox_top, "Beckoned!", $1CB7DB, -5);
            break;
            
            case status.mshield:
                scr_junsound(snd_status_silenced, 1, min_p, max_p);
                scr_ind_create(target.x, target.bbox_top, "Mana shield!", $DB43C9, -5);
            break;
            
            case status.rich:
                scr_junsound(snd_status_silenced, 1, min_p, max_p);
                scr_ind_create(target.x, target.bbox_top, "Rich!", $EDB90E, -5);
            break;
            
            case status.healing:
                scr_junsound(snd_status_silenced, 1, min_p, max_p);
                scr_ind_create(target.x, target.bbox_top, "Regeneration!", $4DBC21, -5);
            break;
            
            case status.mark:
                scr_junsound(snd_status_silenced, 1, min_p, max_p);
                scr_ind_create(target.x, target.bbox_top, "Marked!", $CC1212, -5);
            break;
            
            case status.chill:
                scr_junsound(snd_status_silenced, 1, min_p, max_p);
                scr_ind_create(target.x, target.bbox_top, "Chilled!", $81E1EA, -5);
            break;
            
            case status.frozen:
                scr_junsound(snd_status_silenced, 1, min_p, max_p);
                scr_ind_create(target.x, target.bbox_top, "Time frozen!", $FFFFFF, -5);
            break;
            
            case status.divine:
                scr_junsound(snd_status_silenced, 1, min_p, max_p);
                scr_ind_create(target.x, target.bbox_top, "Divine bastion!", $FFEC47, -5);
            break;
            
            case status.corrosion:
                scr_junsound(snd_status_silenced, 1, min_p, max_p);
                scr_ind_create(target.x, target.bbox_top, "Corrosion!", $60185E, -5);
            break;
            
            case status.bleed:
                scr_junsound(snd_status_silenced, 1, min_p, max_p);
                scr_ind_create(target.x, target.bbox_top, "Bleeding!", $CE1C1C, -5);
            break;
            
            case status.inaccurate:
                scr_junsound(snd_status_silenced, 1, min_p, max_p);
                scr_ind_create(target.x, target.bbox_top, "Inaccurate!", $345CAD, -5);
            break;
            
            case status.sick:
                scr_junsound(snd_status_silenced, 1, min_p, max_p);
                scr_ind_create(target.x, target.bbox_top, "Sick!", $FFFFFF, -5);
            break;
            
            case status.stun:
                scr_junsound(snd_status_silenced, 1, min_p, max_p);
                scr_ind_create(target.x, target.bbox_top, "Stunned!", $FFBF00, -5);
            break;
            
            case status.vampire:
                scr_junsound(snd_status_silenced, 1, min_p, max_p);
                scr_ind_create(target.x, target.bbox_top, "Vampirism!", $AF0303, -5);
            break;
            
            case status.focus:
                scr_junsound(snd_status_silenced, 1, min_p, max_p);
                scr_ind_create(target.x, target.bbox_top, "Focused!", $607AC4, -5);
            break;
            
            case status.sheep:
                scr_junsound(snd_status_silenced, 1, min_p, max_p);
                scr_ind_create(target.x, target.bbox_top, "Polymorphed!", $E5D5D5, -5);
            break;
        }
        
        break;
    }
}
