/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if (irandom(1)) {
	turn_speed = 3
} else {
	turn_speed = -3
}

call_later(3, time_source_units_seconds, function(){ instance_destroy() });


tm_collision = -1
if (layer_exists("tm_collision")) tm_collision = layer_tilemap_get_id("tm_collision")

