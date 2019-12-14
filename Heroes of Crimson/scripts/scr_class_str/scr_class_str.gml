/// @description scr_class_str(class id);
/// @param class id
var class_id = argument0;
var class_str;

switch global.Grid_char[# class_id, 1]{
    case(0):
        class_str = "Cleric";
        break;
    case(1):
        class_str = "Hunter";
        break;
    case(2):
        class_str = "Magic Knight";
        break;
    default:
        class_str = "Error(class)"
        break;
}

return class_str;
