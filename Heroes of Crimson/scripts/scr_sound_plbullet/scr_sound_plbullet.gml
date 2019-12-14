/// @description scr_sound_plbullet(sound id);
/// @param sound id
if !global.sndOverlap
{
    // Play on the global emitter while cutting of the previous play
    audio_stop_sound(argument0);
    audio_play_sound_on(global.sndEmitter, argument0, 0, false);
    audio_sound_pitch(snd, random_range(0.9, 1.1));
}
else
{
    // Set the volume relative to the global sound volume, then play the sound
    var snd = audio_play_sound_on(global.sndEmitter, argument0, 0, false);
    audio_sound_gain(snd, temp_vol, 0);
    audio_sound_pitch(snd, random_range(0.9, 1.1));
}
