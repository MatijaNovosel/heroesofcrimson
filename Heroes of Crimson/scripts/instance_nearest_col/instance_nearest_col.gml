/// @description  instance_nearest_col( x, y, obj);
/// @param  x
/// @param  y
/// @param  obj
///
/// Finds the furthest instance from the x and y coordinate within the given radius

var _x, _y, _obj, _radius, _inst, _list, _num;

_x = argument0;
_y = argument1;
_obj = argument2;
_inst = noone;
_num = instance_number(_obj);

// First, make a list of all instances of the given type
for (var i = 0; i < _num; i++ )
    _list[i] = instance_find(_obj, i);

// Then, deactivate all instances outside the given radius
for (var i = 0; i < _num; i++ )
{
    if (_list[i])
    && !collision_line(_x, _y, _list[i].x, _list[i].y, obj_wall_par, false, true)
        instance_deactivate_object(_list[i]);
}

// Then find the furthest instance that is still activated
_inst = instance_nearest(_x, _y, _obj);

var buff = choose(status.att_up, status.dex_up, status.spd_up);

// Finally, activate all instances we just deactivated.
for (var i = 0; i < _num; i++ )
{
    if (_list[i])
        with (_list[i])
        {
            scr_status_inflict(buff, self, 600, 100);
        }
}

// And return the value
return _inst;
