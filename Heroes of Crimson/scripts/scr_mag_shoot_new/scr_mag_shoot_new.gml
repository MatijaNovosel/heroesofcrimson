/*/scr_pl_shoot(Right shooting sprite, up, left, down);
//Shoot when there is no cooldown active/inv slot highlighted
//See obj_control for weaponData, see scr_itemlist for item data
var lclick = max(AutofireW,mouse_check_button(mb_left));
var equip = global.inventory[0];

if equip != -1 && global.itda[equip,0] = "staff" && lclick && shoot_cd < 1 && !global.disableFire && cast_time < 1
{
    scr_dex_calc(weaponData[equip,5]);
    
    if global.wepsndOn
    scr_zunsound(weaponData[equip,10]);
    
    if global.inventory[0] != 70
    {
        btype = 1;
        action_create_object_motion(weaponData[equip,3],x,y,weaponData[equip,4],mouse_dir_abs);
        btype = -1;
        action_create_object_motion(weaponData[equip,3],x,y,weaponData[equip,4],mouse_dir_abs);
    }
    
    // If Flamedancer's Delight is equipped
    if global.inventory[0] = 70
    {
        if mslow
        {
            action_create_object_motion (obj_pl_blast11a,x + lengthdir_x(6, mouse_dir_abs+90),y + lengthdir_y(6, mouse_dir_abs+90),24,mouse_dir_abs);
            action_create_object_motion (obj_pl_blast11a,x + lengthdir_x(18, mouse_dir_abs+90),y + lengthdir_y(18, mouse_dir_abs+90),24,mouse_dir_abs);
            action_create_object_motion (obj_pl_blast11a,x + lengthdir_x(-6, mouse_dir_abs+90),y + lengthdir_y(-6, mouse_dir_abs+90),24,mouse_dir_abs);
            action_create_object_motion (obj_pl_blast11a,x + lengthdir_x(-18, mouse_dir_abs+90),y + lengthdir_y(-18, mouse_dir_abs+90),24,mouse_dir_abs);
        }
        else
        {
            btype = 1;
            action_create_object_motion (obj_pl_blast11b,x + lengthdir_x(6, mouse_dir_abs+90),y + lengthdir_y(6, mouse_dir_abs+90),weaponData[equip,4],mouse_dir_abs);
            btype = -1;
            action_create_object_motion (obj_pl_blast11b,x + lengthdir_x(-6, mouse_dir_abs+90),y + lengthdir_y(-6, mouse_dir_abs+90),weaponData[equip,4],mouse_dir_abs);
        }
    }
    
    switch mouse_dir_card
    {
        case 1:
        image_index = 0;
        sprite_index = argument0;
        image_speed = scr_animspeed();
        break;
        
        case 2:
        image_index = 0;
        sprite_index = argument1;
        image_speed = scr_animspeed();
        break;
        
        case 3:
        image_index = 0;
        sprite_index = argument2;
        image_speed = scr_animspeed();
        break;
        
        case 4:
        image_index = 0;
        sprite_index = argument3;
        image_speed = scr_animspeed();
        break;
    }
}

// Tick down the shooting cooldown timer
if shoot_cd > 0
{
    if timeSlow
    shoot_cd -= 1;
    else
    shoot_cd -= 2;
}

if shoot_cd < 0
{
    shoot_cd = 0;
}
