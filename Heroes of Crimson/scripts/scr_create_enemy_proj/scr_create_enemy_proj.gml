/// @description  scr_create_enemy_proj(x, y, obj id, dir, spd, life, dmg, ap, sprite, img index, img angle, img scale, rotation);
/// @param x
/// @param  y
/// @param  obj id
/// @param  dir
/// @param  spd
/// @param  life
/// @param  dmg
/// @param  ap
/// @param  sprite
/// @param  img index
/// @param  img angle
/// @param  img scale
/// @param  rotation
var xx, yy, bdir, bspd

// Where to spawn the projectile
xx = argument0;
yy = argument1;

// Which object to use as projectile
_obj = argument2;

// The projectile's direction, speed and lifespan
bdir = argument3;
bspd = argument4;
blife = argument5;

// The projectile's damage and armor piercing
var mod0, mod1;
if scr_status_find(status.att_down, self)
mod0 = 0.5;
else
mod0 = 1;

if scr_status_find(status.att_up, self)
mod1 = 1.5;
else
mod1 = 1;

bdmg = round(argument6 * mod0 * mod1);
b_ap = argument7;

// The projectile's graphics
bsprite = argument8;
b_img_index = argument9;
b_angle = argument10;
bscale = argument11;
brotate = argument12;

// Create the projectile
var _inst = instance_create(xx, yy, _obj);
_inst.master = enemy_name;
_inst.direction = bdir;
_inst.speed = bspd;
_inst.life = blife;

_inst.damage = bdmg;
_inst.armor_pierce = b_ap;

_inst.sprite_index = bsprite;
_inst.image_index = b_img_index;

switch(b_angle)
{
    case "dir":
        _inst.image_angle = bdir;
    break;
    
    case "dia":
        _inst.image_angle = bdir - 45;
    break;
    
    case "ran":
        _inst.image_angle = random(360);
    break;
    
    case "str":
        _inst.image_angle = 0;
    break;
}

_inst.image_xscale = bscale;
_inst.image_yscale = bscale;
_inst.rotation = brotate;
