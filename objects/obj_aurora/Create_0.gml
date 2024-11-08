/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


spd = 2
if (variable_global_exists("difficulty")) {
	max_hp = global.difficulty == DIFFICULTY.NORMAL ? 50 : 20
} else {
	max_hp = 50
}
	
hp = max_hp

fade_wait = 50
running_audio_id = -1

if (variable_global_exists("difficulty")) {	
	attack_rate_gun = global.difficulty == DIFFICULTY.NORMAL ? 20 : 30
} else {
	attack_rate_gun = 20
}

attack_wait = 10
attack_animation_timer = 0
attack_angle = 0

collision_tile_map = layer_tilemap_get_id("tm_collision")

enum WEAPON {
	NONE,
	GUN,
	SWORD
}

function aurora_set_basic_sprite(_weapon) {
	image_speed = 5
	switch _weapon {
		case WEAPON.NONE:
			return spr_aurora_running_front_left
		case WEAPON.GUN:
			return spr_aurora_running_gun
		case WEAPON.SWORD:
			return spr_aurora_running_front_left
	}
}

sprite_index = aurora_set_basic_sprite(weapon)


global._distancia_interacao = 16;
global.leu_o_livro = false;

previous_hp = hp
_damage_sprite_timer = 0
_damage_animation_length = 6
_original_sprite = sprite_index
