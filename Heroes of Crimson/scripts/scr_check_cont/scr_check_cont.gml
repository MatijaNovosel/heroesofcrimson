if(instance_exists(obj_container) and global.Current_cont != -1) {
    // Update the container cells
    box[# 0, 6] = global.Current_cont.item[0];
    box[# 1, 6] = global.Current_cont.item[1];
    box[# 2, 6] = global.Current_cont.item[2];
    box[# 3, 6] = global.Current_cont.item[3];
    box[# 0, 7] = global.Current_cont.item[4];
    box[# 1, 7] = global.Current_cont.item[5];
    box[# 2, 7] = global.Current_cont.item[6];
    box[# 3, 7] = global.Current_cont.item[7];
    
    count[# 0, 6] = global.Current_cont.count[0];
    count[# 1, 6] = global.Current_cont.count[1];
    count[# 2, 6] = global.Current_cont.count[2];
    count[# 3, 6] = global.Current_cont.count[3];
    count[# 0, 7] = global.Current_cont.count[4];
    count[# 1, 7] = global.Current_cont.count[5];
    count[# 2, 7] = global.Current_cont.count[6];
    count[# 3, 7] = global.Current_cont.count[7];
}