/*  Precision Aiming System
    By Jordan Robinson
    This script takes 3 arguments (a target id, projectile speed and accurate boolean), then returns the appropriate angle to shoot the projectile in order to ensure a hit.*/

var target              = argument0;                                                            //Instance or object id that we want to aim at.
var projectile_speed    = argument1;                                                            //Speed of the projectile in pixels / step.
var accurate            = argument2;                                                            //A boolean, false = approximate, true = accurate

if(instance_exists(target))
{
    var target_px, target_py, target_cx, target_cy;
    with(target)                                                                                //Get the current and previous position of the target.
    {
        target_px = xprevious;
        target_py = yprevious;
        target_cx = x;
        target_cy = y;
    }
    var target_speed            = point_distance(target_px, target_py, target_cx, target_cy);   //Get the velocity components of the target.
    var target_direction        = point_direction(target_px, target_py, target_cx, target_cy);
    var distance_from_target    = point_distance(target_cx, target_cy, x, y);                   //Distance and direction FROM the target. From is important.
    var angle_from_target       = point_direction(target_cx, target_cy, x, y);
    var time_to_intercept = -1;                                                                 //How long it will take to make an intercept in game steps.
                                                                                                //If this is still -1 at the end of the script, an intercept is not possible.
    switch(accurate)
    {
        case false: //Approximate the intercept based on how long it will take the bullet to reach the current position
                    time_to_intercept = distance_from_target / projectile_speed;
                    var xx = target_cx + lengthdir_x(target_speed * time_to_intercept, target_direction);   //Find the position of the intercept
                    var yy = target_cy + lengthdir_y(target_speed * time_to_intercept, target_direction);
                    return point_direction(x, y, xx, yy);
                    break;
        
        case true:  //Calculate the intercept using quadratics
                    var a, b, c;                                                                                //Components of the algorithm
                    
                    a = sqr(projectile_speed) - sqr(target_speed);
                    
                    b = 2 * dot_product(lengthdir_x(distance_from_target, angle_from_target),                   //2 * dot_product of distance-and-direction to target and target velocity.
                                        lengthdir_y(distance_from_target, angle_from_target), 
                                        lengthdir_x(target_speed, target_direction), 
                                        lengthdir_y(target_speed, target_direction));
                    
                    c = -sqr(distance_from_target);
                    
                    
                    if(a == 0)
                    {                                                                                           //In the event that a = 0, then the problem is no longer a quadratic.
                        time_to_intercept = -c / b;
                    }
                    else
                    {
                        var d = sqr(b) - 4 * a * c;                                                             //This is the discriminator of the quadratic.
                                                                                                                //We can only have an intercept if this is >= 0.
                        if(d >= 0)
                        {
                            var time_1  = (-b + sqrt(d)) / (2 * a);
                            var time_2  = (-b - sqrt(d)) / (2 * a);
                            
                            var minimum = min(time_1, time_2);                                                  //Find minimum positive value. This will be our time to intercept.
                            var maximum = max(time_1, time_2);                                                  //If both values are negative, there is no possible intercept.
                            
                            if(minimum >= 0)
                            {
                                time_to_intercept = minimum;
                            }
                            else if(maximum >= 0)
                            {
                                time_to_intercept = maximum;
                            }
                        }
                    }
                    
                    if(time_to_intercept >= 0)                                                                  //Final check to make sure the time to intercept is valid
                    {
                        var xx = target_cx + lengthdir_x(target_speed * time_to_intercept, target_direction);   //Find the position of the intercept
                        var yy = target_cy + lengthdir_y(target_speed * time_to_intercept, target_direction);
                        
                        return point_direction(x, y, xx, yy);
                    }
                    break;                                                                                      //This will allow the user to know if a hit is not possible, and thus do something else.
    }
}
return -1;                                                                                                  //If there was no intercept possible, we will return -1.
