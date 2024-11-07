/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

function change_room_gameover() {
	room_goto(rm_gameover)	
}

audio_play_sound(snd_aurora_morte,0,false,1,0,0.9)
call_later(1, time_source_units_seconds, change_room_gameover)
