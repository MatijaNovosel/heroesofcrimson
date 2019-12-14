/// @description scr_pl_death(stil sprite);
/// @param stil sprite
if dead == 0
{
    dead = 1;
    
    global.Sleep = 60;
    scr_zunsound(snd_player_predeath);
    instance_create(x, y, obj_flash_fx);
}

// Shake the player when dead
if dead == 1
{
    shake_x = x + irandom_range(-2, 2);
    shake_y = y + irandom_range(-2, 2);
}

if !global.Sleep
{
    if dead == 1
    {
        dead = 2;
        
        instance_create(x, y, obj_gravestone);
        
        // Check if the enemy name starts with a vowel
        var _str1 = global.Last_hit_by;
        var _str2 = ", slain by a "
        switch string_char_at(_str1, 0)
        {
            case "a": case "A":
            case "e": case "E":
            case "i": case "I":
            case "o": case "O":
            case "u": case "U":
                _str2 = ", slain by an "
            break;
        }
        
        scr_message_add("RIP! You died at level " + string(global.xp_level) + string(_str2) + string(global.Last_hit_by) + ".", global.logcol_error);
        scr_status_init();
        scr_pl_death_fx();
        
        sprite_index = argument0;
        image_index = 0;
        image_speed = 0;

        audio_stop_sound(snd_low_hp);
    }
}
