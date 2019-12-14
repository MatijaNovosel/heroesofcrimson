if(global.Pause || global.Sleep){
    exit;
}

t += increment;

shift = amplitude * sin(t); //by converting increment to radians in the create event, we avoid having to convert t to radians every step.

//clone the movement from the object's speed and direction
xx += hspeed;
yy += vspeed;

//apply the shift
x = xx + lengthdir_x(shift, direction + 90);
y = yy + lengthdir_y(shift, direction + 90);
