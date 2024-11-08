/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


if ((keyboard_check_pressed(ord("E")) or keyboard_check_pressed(vk_delete)) and room_e != -1) {
	room_goto(room_e)	
}

if ((keyboard_check_pressed(ord("F"))) and room_e != -1) {
	room_goto(room_f)	
}
if ((keyboard_check_pressed(vk_escape)) and room_e != -1) {
	game_end()	
}

if (keyboard_check_pressed(ord("G"))) {
	global.difficulty = DIFFICULTY.HARD
	room_goto(room_f)	
}

