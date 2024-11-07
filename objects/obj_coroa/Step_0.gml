/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

var _distance = distance_to_object(obj_aurora)

if ((keyboard_check(vk_delete) or keyboard_check(ord("E"))) and _distance < global._distancia_interacao) {
	
	if (!instance_exists(obj_magic_book)) {
		tilemap_set(tm_props, 0, 47, 120)
		tilemap_set(tm_props, 0, 48, 120)
		tilemap_set(tm_props, 0, 49, 120)
		tilemap_set(tm_props, 0, 50, 120)
	
		tilemap_set(tm_collision, 0, 47, 120)
		tilemap_set(tm_collision, 0, 48, 120)
		tilemap_set(tm_collision, 0, 49, 120)
		tilemap_set(tm_collision, 0, 50, 120)

	}
	instance_destroy(seta)
	instance_destroy()
}

