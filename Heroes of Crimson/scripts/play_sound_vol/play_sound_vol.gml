/// @description  play_sound_vol(sound id, volume)
/// @param sound id
/// @param  volume
var snd, vol;

// Set the volume relative to the global sound volume, then play the sound
snd = audio_play_sound_on(global.sndEmitter, argument0, 0, false);
vol = argument1;
audio_sound_gain(snd, temp_vol, 0);
