/// @description  scr_sound(sound id, volume, min pitch, max pitch);
/// @param sound id
/// @param  volume
/// @param  min pitch
/// @param  max pitch
var snd, vol, min_p, max_p;
snd = audio_play_sound_on(global.sndEmitter, argument0, 0, false);

vol = argument1;
audio_sound_gain(snd, vol, 0);

min_p = argument2;
max_p = argument3;
audio_sound_pitch(snd, random_range(min_p, max_p));
