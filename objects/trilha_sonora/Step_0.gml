// Verificar se estamos na sala especificada
if (room == rm_fantasma) {
    // Verificar se a música não está tocando
    if (!audio_is_playing(music_audio_id)) {
        // Reproduzir a música e armazenar o ID do áudio
        music_audio_id = audio_play_sound(snd_fantasma_ts, 0, true);
        
        // Ajustar o volume da música
        var _volume = 0.07; // Defina o volume desejado (0.0 a 1.0)
        var _time = 0; // Tempo em milissegundos para a transição de volume, use 0 para alteração imediata
        audio_sound_gain(music_audio_id, _volume, _time);
    }
} else {
    // Parar a música se sairmos da sala
    if (audio_is_playing(music_audio_id)) {
        audio_stop_sound(music_audio_id);
    }
}

if (room == Aranha) {
    // Verificar se a música não está tocando
    if (!audio_is_playing(music_audio_id2)) {
        // Reproduzir a música e armazenar o ID do áudio
        music_audio_id2 = audio_play_sound(snd_aranha_ts, 0, true);
        
        // Ajustar o volume da música
        var _volume = 0.07; // Defina o volume desejado (0.0 a 1.0)
        var _time = 0; // Tempo em milissegundos para a transição de volume, use 0 para alteração imediata
        audio_sound_gain(music_audio_id2, _volume, _time);
    }
} else if ( room != Aranha) {
	audio_stop_sound(music_audio_id2);
    
}

if (room == rm_esqueleto) {
    // Verificar se a música não está tocando
    if (!audio_is_playing(music_audio_id3)) {
        // Reproduzir a música e armazenar o ID do áudio
        music_audio_id3 = audio_play_sound(snd_esqueleto_ts, 0, true);
        
        // Ajustar o volume da música
        var _volume = 0.07; // Defina o volume desejado (0.0 a 1.0)
        var _time = 0; // Tempo em milissegundos para a transição de volume, use 0 para alteração imediata
        audio_sound_gain(music_audio_id3, _volume, _time);
    }
} else {
    // Parar a música se sairmos da sala
    if (audio_is_playing(music_audio_id3)) {
        audio_stop_sound(music_audio_id3);
    }
}


