	/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

function change_room() {
	room_goto(rm_gameover)
}

if (hp <= 0) {
	//perdeu
	call_later(3, time_source_units_seconds,change_room)

	instance_destroy()

	return
}

if (!instance_exists(obj_aurora)) return

if ((keyboard_check_pressed(ord("E")) or keyboard_check_pressed(vk_delete)) and distance_to_object(obj_aurora) < global._distancia_interacao) {
	//venceu
	room_goto(rm_win)
	
}