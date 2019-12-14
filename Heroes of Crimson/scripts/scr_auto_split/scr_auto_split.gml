/// @description  scr_auto_split();
var temp_part_total, temp_split_total, old_part_id, new_part_id;

temp_part_total = 1;
for (var i = 0; i < iterations; i ++)
{
    temp_part_total *= 2;
    temp_split_total = temp_part_total div 2;
    
    for (var a = 0; a < temp_split_total; a ++)
    {
        old_part_id = a;
        new_part_id = a + temp_split_total;
        scr_split_part(old_part_id, new_part_id);
    }
    
    current_iteration ++;
}

