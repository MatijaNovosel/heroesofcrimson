/// @description  Destroy unused data structures and emitters
if(audio_emitter_exists(global.sndEmitter)) {
	audio_emitter_free(global.sndEmitter);
}