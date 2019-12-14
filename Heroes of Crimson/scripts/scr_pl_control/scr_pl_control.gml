/// @description scr_pl_control();
// Check where the mouse is relative to the player
mouse_dir_abs = point_direction(x,y,mouse_x,mouse_y);

// Determine the cardinal direction of the mouse relative to the player
if (mouse_dir_abs >= 315) || (mouse_dir_abs < 45)
{
    mouse_dir_card = 1; // right
}

if (mouse_dir_abs >= 45) && (mouse_dir_abs < 135)
{
    mouse_dir_card = 2; // up
}

if (mouse_dir_abs >= 135) && (mouse_dir_abs < 225)
{
    mouse_dir_card = 3; // left
}

if (mouse_dir_abs >= 225) && (mouse_dir_abs < 315)
{
    mouse_dir_card = 4; // down
}

// Move slower when shift is held down
if global.Key_shift
{
    mslow = 1;
} else {
    mslow = 0;
}

var mod1, mod2, mod3, mod4, mod5, mod6, mod7;

if mslow = 1
{
    mod1 = 0.5;
} else {
    mod1 = 1;
}

if scr_status_find(status.paralyze, global.playerInstance)
{
    mod2 = 0;
} else {
    mod2 = 1;
}

if scr_status_find(status.chill, global.playerInstance)
{
    mod3 = 0.7;
} else {
    mod3 = 1;
}

if scr_status_find(status.burn, global.playerInstance)
{
    mod4 = 1.5;
    global.playerhp -= scr_dot_calc(20);
} else {
    mod4 = 1;
    global.playerhp = global.playerhp;
}

if global.Slomo
{
    mod5 = 0.5;
} else {
    mod5 = 1;
}

if scr_status_find(status.spd_up, global.playerInstance)
{
    mod6 = 1.5;
} else {
    mod6 = 1;
}

if scr_status_find(status.spd_down, global.playerInstance)
{
    mod7 = 0.5;
} else {
    mod7 = 1;
}

mspeed = (2.5 + 5 * (global.Total_speed/75)) * mod1 * mod2 * mod3 * mod4 * mod5 * mod6 * mod7;

//Switch controls if the player is confused
if scr_status_find(status.confused, global.playerInstance){
    global.Key_up = keyboard_check(ord("S"));
    global.Key_left = keyboard_check(ord("D"));
    global.Key_down = keyboard_check(ord("W"));
    global.Key_right = keyboard_check(ord("A"));
    global.Key_shift = keyboard_check(vk_shift);
}else{
    global.Key_up = keyboard_check(ord("W"));
    global.Key_left = keyboard_check(ord("A"));
    global.Key_down = keyboard_check(ord("S"));
    global.Key_right = keyboard_check(ord("D"));
    global.Key_shift = keyboard_check(vk_shift);
}

// Determine the direction of movement
if global.Key_up
{
    if !global.Key_down
    {
        if global.Key_left && !global.Key_right
        {
            mdir = 135;
        }
        else if !global.Key_left && global.Key_right
        {
            mdir = 45;
        }
        else if (global.Key_left && global.Key_right) || (!global.Key_left && !global.Key_right)
        {
            mdir = 90;
        }
    }
}

if global.Key_down
{
    if !global.Key_up
    {
        if global.Key_left && !global.Key_right
        {
            mdir = 225;
        }
        else if !global.Key_left && global.Key_right
        {
            mdir = 315;
        }
        else if (global.Key_left && global.Key_right) || (!global.Key_left && !global.Key_right)
        {
            mdir = 270;
        }
    }
}

if (!global.Key_up && !global.Key_down) || (global.Key_up && global.Key_down)
{
    if global.Key_left && !global.Key_right
    {
        mdir = 180;
    }
    else if global.Key_right && !global.Key_left
    {
        mdir = 0;
    }
    else
    {
        mdir = -1;
    }
}

if (!global.Pause && !global.Sleep && !global.pFreeze && !global.playerDead)
{
    if (mdir != -1)
    {
        if !place_meeting(x+lengthdir_x(mspeed,mdir),y,obj_wall_par)// && !place_meeting(x+lengthdir_x(mspeed,mdir),y,obj_pwall)
        {
            x += lengthdir_x(mspeed,mdir);
        }
        else
        if place_meeting(x+lengthdir_x(mspeed,mdir),y,obj_wall_par)// || place_meeting(x+lengthdir_x(mspeed,mdir),y,obj_pwall)
        {
            while !place_meeting(x+sign(lengthdir_x(mspeed,mdir)),y,obj_wall_par)// && !place_meeting(x+sign(lengthdir_x(mspeed,mdir)),y,obj_pwall)
            {
                x = round(x);
                x += sign(lengthdir_x(mspeed,mdir));
            }
            
            scr_round_tb(obj_wall_par, 5);
        }
        
        if !place_meeting(x,y+lengthdir_y(mspeed,mdir),obj_wall_par)// && !place_meeting(x,y+lengthdir_y(mspeed,mdir),obj_pwall)
        {
            y += lengthdir_y(mspeed,mdir);
        }
        else
        if place_meeting(x,y+lengthdir_y(mspeed,mdir),obj_wall_par)// || place_meeting(x,y+lengthdir_y(mspeed,mdir),obj_pwall)
        {
            while !place_meeting(x,y+sign(lengthdir_y(mspeed,mdir)),obj_wall_par)// && !place_meeting(x,y+sign(lengthdir_y(mspeed,mdir)),obj_pwall)
            {
                y = round(y);
                y += sign(lengthdir_y(mspeed,mdir));
            }
            
            scr_round_lr(obj_wall_par, 5);
        }
    }
}
else
{
    mspeed = 0;
}

// Make sure the player stays within the room
scr_clamp_pos();

if !scr_status_find(status.paralyze, global.playerInstance)
{
    // Change image_face depending on what key has been pressed
    if global.Key_left
    {
        image_face_left = 1;    // Left
    }
    else
    {
        image_face_left = 0
    }
    if global.Key_right
    {
        image_face_right = 1;   // Right
    }
    else
    {
        image_face_right = 0
    }
    if global.Key_up
    {
        image_face_up = 1;      // Up
    }
    else
    {
        image_face_up = 0
    }
    if global.Key_down
    {
        image_face_down = 1;    //Down
    }
    else
    {
        image_face_down = 0;
    }
    
    // When the player isn't shooting..
    // Movement animation speed
    var mani = 0.05 + ((0.05 * (global.Total_speed/75)) * mod1 * mod2 * mod3 * mod4 * mod5);
    
    // Left and right walking animation
    if (image_face_left = 1) && (image_face_right != 1) && (shoot_cd = 0) && (mdir != -1)
    {
        sprite_index = sprite_walk_left;
        image_speed = mani;
    }
    if (image_face_left != 1) && (image_face_right = 1) && (shoot_cd = 0) && (mdir != -1)
    {
        sprite_index = sprite_walk_right;
        image_speed = mani;
    }
    
    // Up and down walking animation
    if (image_face_up = 1) && (image_face_down != 1) && (shoot_cd = 0) && (mdir != -1)
    {
        sprite_index = sprite_walk_up
        image_speed = mani;
    }
    if (image_face_up != 1) && (image_face_down = 1) && (shoot_cd = 0) && (mdir != -1)
    {
        sprite_index = sprite_walk_down
        image_speed = mani;
    }
    
    // Up-left, up-right walking animation
    if (image_face_left = 1) && (image_face_up = 1) && (image_face_right != 1) && (shoot_cd = 0) && (mdir != -1)
    {
        sprite_index = sprite_walk_left;
        image_speed = mani;
    }
    if (image_face_left != 1) && (image_face_up = 1) && (image_face_right = 1) && (shoot_cd = 0) && (mdir != -1)
    {
        sprite_index = sprite_walk_right;
        image_speed = mani;
    }
    
    // Down-left, down-right walking animation
    if (image_face_left = 1) && (image_face_down = 1) && (image_face_right != 1) && (shoot_cd = 0) && (mdir != -1)
    {
        sprite_index = sprite_walk_left;
        image_speed = mani;
    }
    if (image_face_left != 1) && (image_face_down = 1) && (image_face_right = 1) && (shoot_cd = 0) && (mdir != -1)
    {
        sprite_index = sprite_walk_right;
        image_speed = mani;
    }
}

// If both left and right are (not) being pressed, stay still in the last direction pressed
if (((image_face_left = 1) && (image_face_right = 1)) || ((image_face_left != 1) && (image_face_right != 1))) || scr_status_find(status.paralyze, global.playerInstance) && (shoot_cd == 0)
{
    if sprite_index = sprite_walk_left
    {
    sprite_index = sprite_still;
    image_index = 0;
    image_speed = 0;
    }
    if sprite_index = sprite_walk_right
    {
    sprite_index = sprite_still;
    image_index = 1;
    image_speed = 0;
    }
}

// If both up and down are (not) being pressed, stay still in the last direction pressed
if (((image_face_up = 1) && (image_face_down = 1)) || ((image_face_up != 1) && (image_face_down != 1))) || scr_status_find(status.paralyze, global.playerInstance) && (shoot_cd == 0)
{
    if sprite_index = sprite_walk_up
    {
    sprite_index = sprite_still;
    image_index = 2;
    image_speed = 0;
    }
    if sprite_index = sprite_walk_down
    {
    sprite_index = sprite_still;
    image_index = 3;
    image_speed = 0;
    }
}

// After the player stops shooting, revert to the stil sprite
if (sprite_index != sprite_still) && (shoot_cd == 0)
{
    if sprite_index = sprite_shoot_right //anim_index[0,0]
    {
        sprite_index = sprite_still;
        image_index = 1;
        image_speed = 0;
    }
    if sprite_index = sprite_shoot_left //anim_index[0,1]
    {
        sprite_index = sprite_still;
        image_index = 0;
        image_speed = 0;
    }
    if sprite_index = sprite_shoot_up //anim_index[0,2]
    {
        sprite_index = sprite_still;
        image_index = 2;
        image_speed = 0;
    }
    if sprite_index = sprite_shoot_down //anim_index[0,3]
    {
        sprite_index = sprite_still;
        image_index = 3;
        image_speed = 0;
    }
}

// After the player stops casting, revert to the stil sprite
if (sprite_index != sprite_still) && (cast_time < 1)
{
    if sprite_index = sprite_still && image_index = 0 //anim_index[0,4]
    {
        sprite_index = sprite_still;
        image_index = 0;
        image_speed = 0;
    }
    if sprite_index = sprite_still && image_index = 1
    {
        sprite_index = sprite_still;
        image_index = 1;
        image_speed = 0;
    }
    if sprite_index = sprite_still && image_index = 2
    {
        sprite_index = sprite_still;
        image_index = 2;
        image_speed = 0;
    }
    if sprite_index = sprite_still && image_index = 3
    {
        sprite_index = sprite_still;
        image_index = 3;
        image_speed = 0;
    }
}
