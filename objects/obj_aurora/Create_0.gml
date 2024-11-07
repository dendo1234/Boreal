/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


spd = 2
max_hp = 50
hp = max_hp

fade_wait = 50
running_audio_id = -1

attack_wait = 10

collision_tile_map = layer_tilemap_get_id("tm_collision")

enum WEAPON {
	NONE,
	GUN,
	SWORD
}

weapon = WEAPON.GUN


global._distancia_interacao = 16

if (variable_global_exists("aurora_x") && variable_global_exists("aurora_y")) {
    // Aplica a nova posição calculada
    x = global.aurora_x;
    y = global.aurora_y;
}