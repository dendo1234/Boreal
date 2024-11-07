/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
hp = 30
max_hp = 30
_colisao = layer_tilemap_get_id("tm_collision")
melee_dmg = 1
melee_cooldown = 0.5
melee_timer = 0
spd = 1
tempo = 0

x = 1180
y = 90

treme = 0
tempodano = 0
_is_pursuing = false

_damage_sprite_timer = 0
previous_hp = 0
_original_sprite = Bossandando;
_damage_animation_length = sprite_get_number(bosstomandodano) * sprite_get_speed(bosstomandodano);

sprite_vida = Sprite30