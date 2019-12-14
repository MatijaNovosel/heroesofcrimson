/// @description  inv_draw_statname(stat number);
/// @param stat number
// This script checks which stat is to be displayed and returns this string
var a = argument0;
switch a
{
    case 0: stat_name = " Life";
            break;
    case 1: stat_name = " Mana";
            break;
    case 2: stat_name = " Attack";
            break;
    case 3: stat_name = " Dexterity";
            break;
    case 4: stat_name = " Defense";
            break;
    case 5: stat_name = " Speed";
            break;
    case 6: stat_name = " Wisdom";
            break;
    case 7: stat_name = " Wealth";
            break;
    case 8: stat_name = " Luck";
            break;
    default: stat_name = " Undefined!";
            break;
}

return(stat_name);
