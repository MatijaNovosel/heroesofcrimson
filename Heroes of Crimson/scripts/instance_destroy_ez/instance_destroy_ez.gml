/// @description instance_destroy_ez(instance to destroy);
/// @param instance to destroy
// Check if the instance exists, then destroy it
// Replacement for the standard instant_destroy if an instance needs to destroy another instance

var inst = argument0;
if instance_exists(inst)
{
    with(inst)
    {
        instance_destroy();
    }
}
