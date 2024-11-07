/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

function change_room_gameover() {
	room_goto(rm_gameover)	
}


call_later(2, time_source_units_seconds, change_room_gameover)
