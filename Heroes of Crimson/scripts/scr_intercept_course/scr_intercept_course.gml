/// @description scr_intercept_course(origin,target,pspeed);
/// @param origin
/// @param target
/// @param pspeed
//
//  Returns the course direction required to hit a moving target
//  at a given projectile speed, or (-1) if no solution is found.
//
//      origin      instance with position (x,y), real
//      target      instance with position (x,y) and (speed), real
//      speed       speed of the projectile, real

var origin,target,tspeed,tdir,pspeed,dir,alpha,phi,beta;
origin = argument0;
target = argument1;
pspeed = argument2;
tspeed = global.playerInstance.mspeed;
tdir = global.playerInstance.mdir;

dir = point_direction(origin.x,origin.y,target.x,target.y);
alpha = tspeed / pspeed;
phi = degtorad(tdir - dir);
beta = alpha * sin(phi);
if (abs(beta) >= 1)
{
    return point_direction(origin.x,origin.y,target.x,target.y);
}
dir += radtodeg(arcsin(beta));

return dir;
