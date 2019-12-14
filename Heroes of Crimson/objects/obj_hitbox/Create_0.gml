alpha = 0;

if(!instance_exists(obj_camera)) {
    instance_create(obj_hitbox.x, obj_hitbox.y, obj_camera)
}

if(!instance_exists(obj_entity_load)) {
    instance_create(obj_hitbox.x, obj_hitbox.y, obj_entity_load)
}