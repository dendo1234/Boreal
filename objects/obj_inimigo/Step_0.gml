/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if (hp <= 0) {
	instance_destroy()
	return
}

var _dt = delta_time / 1000000

if (melee_timer > 0)	melee_timer -= _dt
