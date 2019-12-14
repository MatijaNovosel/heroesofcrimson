/// @description  scr_status_getimage(status id);
/// @param status id
// Determine which subimage belongs to which status
// See spr_statusicons
var status_id = argument0;

switch status_id
{
    // Re-/degeneration
    case status.healing:
        return (4);
    break;
    
    case status.burn:
        return (19);
    break;
    
    case status.poison:
        return (14);
    break;
    
    // Defense
    case status.invin1:
        return (5);
    break;
    
    case status.invin2:
        return (0);
    break;
    
    case status.grace_period:
        return (5);
    break;
    
    case status.invis:
        return (35);
    break;
    
    case status.barrier:
        return (8);
    break;
    
    case status.armor_break:
        return (7);
    break;
    
    case status.fatal:
        return (15);
    break;
    
    // Offense
    case status.att_up:
        return (1);
    break;
    
    case status.att_down:
        return (11);
    break;
    
    case status.dex_up:
        return (2);
    break;
    
    case status.dex_down:
        return (12);
    break;
    
    // Mobility
    case status.spd_up:
        return (3);
    break;
    
    case status.spd_down:
        return (13);
    break;
    
    case status.paralyze:
        return (20);
    break;
    
    case status.beckon:
        return (22);
    break;
    
    case status.confused:
        return (26);
    break;
    
    // Magic
    case status.silence:
        return (17);
    break;
    
    case status.mshield:
        return (6);
    break;
    
    // Other
    case status.blind:
        return (16);
    break;
    
    case status.rich:
        return (23);
    break;
    
    case status.summon:
        return (9);
    break;
    
    case status.bleed:
        return(27);
    break;
    
    case status.crit_up:
        return(28);
    break;
    
    case status.chill:
        return(29);
    break;
    
    case status.corrosion:
        return(30);
    break;
    
    case status.divine:
        return(32);
    break;
    
    case status.inaccurate:
        return(34);
    break;
    
    case status.sick:
        return(37);
    break;
    
    case status.frozen:
        return(18);
    break;
    
    case status.mark:
        return(10);
    break;
    
    case status.vampire:
        return(39);
    break;
    
    case status.stun:
        return(38);
    break;
    
    case status.focus:
        return(33);
    break;
    
    case status.sheep:
        return(36);
    break;
}
