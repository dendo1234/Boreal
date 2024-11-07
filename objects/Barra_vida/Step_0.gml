/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// barra de vida

if (!instance_exists(Boss)){
	instance_destroy()
return
}
if (Boss.hp < 22 and Boss.hp >= 15){
	sprite_index = Sprite30_1
	
}
if (Boss.hp < 15 and Boss.hp >= 10){
	sprite_index = Sprite30_2
	
}
if (Boss.hp < 10 and Boss.hp >= 4){
	sprite_index = Sprite30_3
	
}
if (Boss.hp < 4 and Boss.hp >= 0){
	sprite_index = Sprite30_4
	
}

x = Boss.x - 20
y = Boss.y - 40

if (!audio_is_playing(music_audio_id)) {
    // Reproduzir a música e armazenar o ID do áudio
    music_audio_id = audio_play_sound(snd_aranha_ts, 0, true);
    
    // Ajustar o volume da música
    var _volume = 0.1; // Defina o volume desejado (0.0 a 1.0)
    var _time = 0; // Tempo em milissegundos para a transição de volume, use 0 para alteração imediata
    audio_sound_gain(music_audio_id, _volume, _time);
}
