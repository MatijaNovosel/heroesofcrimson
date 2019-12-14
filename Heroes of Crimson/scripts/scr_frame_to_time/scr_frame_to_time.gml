/// @description scr_frame_to_time(time in frames)
/// @param time in frames
// 60 = 1 second
var input = argument0;
var output1 = input / 60;
var output2;

if output1 == round(output1) // If it's an integer
{
    output2 = string_format(output1, 0, 0);
}
else if output1 != round(output1) // If it's a decimal
{
    output2 = string_format(output1, 0, 2);
}
return(output2);
