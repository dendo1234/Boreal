/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// barra de vida

if (!instance_exists(obj_esqueleto_boss)){
	instance_destroy()
return
}
if (obj_esqueleto_boss.hp < 22 and obj_esqueleto_boss.hp >= 15){
	sprite_index = Sprite30_1
	
}
if (obj_esqueleto_boss.hp < 15 and obj_esqueleto_boss.hp >= 10){
	sprite_index = Sprite30_2
	
}
if (obj_esqueleto_boss.hp < 10 and obj_esqueleto_boss.hp >= 4){
	sprite_index = Sprite30_3
	
}
if (obj_esqueleto_boss.hp < 4 and obj_esqueleto_boss.hp >= 0){
	sprite_index = Sprite30_4
	
}

x = obj_esqueleto_boss.x - 25
y = obj_esqueleto_boss.y - 45

if (!audio_is_playing(music_audio_id2)) {
    // Reproduzir a música e armazenar o ID do áudio
    music_audio_id2 = audio_play_sound(snd_esqueleto_ts, 0, true);
    
    // Ajustar o volume da música
    var _volume = 0.1; // Defina o volume desejado (0.0 a 1.0)
    var _time = 0; // Tempo em milissegundos para a transição de volume, use 0 para alteração imediata
    audio_sound_gain(music_audio_id2, _volume, _time);
}
