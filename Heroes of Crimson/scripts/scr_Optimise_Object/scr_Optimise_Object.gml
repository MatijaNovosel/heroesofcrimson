/// @description scr_Optimise_Object(object);
/// @param object
var wall = argument0;
var obj = noone;

repeat (2)
{
with (wall)
    {
    obj = instance_place(x + 1, y, wall);
    if instance_exists(obj)
        {
        if (obj.sprite_height == sprite_height) && (obj.y == y) && (bbox_right + 1 = obj.bbox_left)
            {
            var bx = bbox_left;
            image_xscale = (sprite_width + obj.sprite_width) / initial_width;
            x = bx + xorigin * image_xscale;
            with (obj) instance_destroy();
            }
        }
    obj = instance_place(x - 1, y, wall);
    if instance_exists(obj)
        {
        if (obj.sprite_height == sprite_height) && (obj.y == y) && (obj.bbox_right + 1 == bbox_left)
            {
            image_xscale = (sprite_width + obj.sprite_width) / initial_width;
            x = obj.bbox_left + xorigin * image_xscale;
            with (obj) instance_destroy();
            }
        }
    } 
with (wall)
    {
    obj = instance_place(x, y + 1, wall);
    if instance_exists(obj)
        {
        if (obj.sprite_width == sprite_width) && (obj.x == x) && (bbox_bottom + 1 == obj.bbox_top)
            {
            var by = bbox_top;
            image_yscale = (sprite_height + obj.sprite_height) / initial_height;
            y = by + yorigin * image_yscale;
            with (obj) instance_destroy();
            }
        }   
    obj = instance_place(x, y - 1, wall);
    if instance_exists(obj)
        {
        if (obj.sprite_width = sprite_width) && (obj.x = x) && (obj.bbox_bottom + 1 = bbox_top)
            {
            image_yscale = (sprite_height + obj.sprite_height) / initial_height;
            y = obj.bbox_top + yorigin * image_yscale;
            with (obj) instance_destroy();
            }
        }
    }
}

