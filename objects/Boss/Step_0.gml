/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();
if (!instance_exists(obj_aurora)) return

// Movimentação
if (_is_pursuing) {
    _is_pursuing = false;
}

var _distance = point_distance(x, y, obj_aurora.x, obj_aurora.y);

if (_distance < 400 || _is_pursuing) {
    if (tempo > 0 and tempo <= 300) {
        y += 0.7;
    }

    if (tempo > 300 and tempo <= 340) {
        if (tempo % 2 == 0) {
            x -= 3;
        } else {
            x += 3;
        }
    }
    if (tempo > 340 and tempo <= 380) {
        y += 2.2;
    }
    if (tempo > 380 and tempo <= 540) {
        y -= 2;
    }

    var _attribute = {
        speed: 6,
        direction: point_direction(x, y, obj_aurora.x, obj_aurora.y),
        image_angle: point_direction(x, y, obj_aurora.x, obj_aurora.y),
        image_xscale: 1,
        image_yscale: 1
    }
    if (tempo > 340 and tempo <= 540) {
        var _attribute2 = {
            speed: 6,
            direction: point_direction(x, y, obj_aurora.x, obj_aurora.y) + random_range(10, 25),
            image_angle: point_direction(x, y, obj_aurora.x, obj_aurora.y),
            image_xscale: 1,
            image_yscale: 1
        }
        if (tempo % 40 == 0) {
            instance_create_depth(x, y, -10, obj_veneno, _attribute);
            instance_create_depth(x, y, -10, obj_veneno, _attribute2);
            instance_create_depth(x, y, -10, obj_veneno, _attribute2);
            instance_create_depth(x, y, -10, obj_veneno, _attribute2);
        }
    }

    if (tempo > 0 and tempo <= 300) {
        if (tempo % 40 == 0) {
            instance_create_depth(x, y, -10, obj_veneno, _attribute);
        }
    }

    // verificar colisão com movimento em direção ao alvo
    tempo += 1;
    if (tempo == 540) {
        tempo = 0;
    }
}

// Tomando dano
if (previous_hp > hp) {
    // Guardar o sprite original
    _original_sprite = sprite_index;
    
    // Trocar para o sprite de dano
    sprite_index = bosstomandodano;
    _damage_sprite_timer = _damage_animation_length; // Duração em frames da animação de dano
    image_xscale = -0.7; // Inverter e escalar o sprite de dano no eixo X
    image_yscale = 0.7;  // Escalar o sprite de dano no eixo Y
}

previous_hp = hp; // Atualizar o valor de hp anterior

// Redefinir sprite após o temporizador expirar
if (_damage_sprite_timer > 0) {
    _damage_sprite_timer -= 1;
    if (_damage_sprite_timer == 0) {
        sprite_index = _original_sprite; // Retornar ao sprite original
    }
}
// barra de vida
if (hp < 32 and hp >= 25){
	sprite_vida = Sprite30_1
	
}
if (hp < 25 and hp >= 15){
	sprite_vida = Sprite30_2
	
}
if (hp < 15 and hp >= 8){
	sprite_vida = Sprite30_3
	
}
if (hp < 8 and hp >= 0){
	sprite_vida = Sprite30_4
	
}


