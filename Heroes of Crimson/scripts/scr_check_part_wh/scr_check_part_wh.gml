/// @description scr_check_part_wh(part width, part height);
/// @param part width
/// @param  part height
// This script checks whether a partition's width or height is bigger
var pwidth, pheight;
pwidth = argument0;
pheight = argument1;

if (pwidth > pheight)
{
    return(0);
}
else if (pwidth < pheight)
{
    return(1);
}
else if (pwidth == pheight)
{
    return(irandom(1));
}

