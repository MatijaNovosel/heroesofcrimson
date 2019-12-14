/// @description scr_enemy_move();
if (global.Pause || global.Sleep || global.eFreeze) || scr_status_find(status.paralyze, self) {exit;}

var real_spd, mod0, mod1;

if scr_status_find(status.spd_down, self)
mod0 = 0.5;
else
mod0 = 1;

if scr_status_find(status.spd_up, self)
mod1 = 1.5;
else
mod1 = 1;

real_spd = mspd * mod0 * mod1;

if !place_meeting(x+lengthdir_x(real_spd, mdir),y,obj_wall_par)
{
    x += lengthdir_x(real_spd, mdir);
}
else
if place_meeting(x+lengthdir_x(real_spd, mdir),y,obj_wall_par)
{
    while !place_meeting(x+sign(lengthdir_x(real_spd, mdir)),y,obj_wall_par)
    {
        x = round(x);
        x += sign(lengthdir_x(real_spd, mdir));
    }
    
    scr_round_tb(obj_wall_par, 20);
}

if !place_meeting(x,y+lengthdir_y(real_spd, mdir),obj_wall_par)
{
    y += lengthdir_y(real_spd, mdir);
}
else
if place_meeting(x,y+lengthdir_y(real_spd, mdir),obj_wall_par)
{
    while !place_meeting(x,y+sign(lengthdir_y(real_spd, mdir)),obj_wall_par)
    {
        y = round(y);
        y += sign(lengthdir_y(real_spd, mdir));
    }
    
    scr_round_lr(obj_wall_par, 20);
}
