/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if (irandom(1)) {
	turn_speed = 3
} else {
	turn_speed = -3
}

call_later(3, time_source_units_seconds, function(){ instance_destroy() });


