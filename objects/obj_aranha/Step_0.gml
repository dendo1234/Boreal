/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();

if (!instance_exists(obj_aurora)) return

// Declarar a variável de perseguição global
if (_is_pursuing) {
    _is_pursuing = false;
}

//girar dependendo do x da aurora
if (x < obj_aurora.x){
	image_xscale = 1; // Inverte a imagem horizontalmente

}else{
	image_xscale = -1
}

var _offset_x = random_range(-20, 20);
var _offset_y = random_range(-20, 20);
var _target_x = obj_aurora.x + _offset_x;
var _target_y = obj_aurora.y + _offset_y;

// Calcular a distância até a Aurora
var _distance = point_distance(x, y, obj_aurora.x, obj_aurora.y);

// Ativar perseguição se a distância for menor que 100 pixels ou se já estiver perseguindo
if (_distance < 200 || _is_pursuing) {
    _is_pursuing = true;

    // Calcular nova posição
    var _next_x = x + lengthdir_x(spd, point_direction(x, y, _target_x, _target_y));
    var _next_y = y + lengthdir_y(spd, point_direction(x, y, _target_x, _target_y));

	var _dx = lengthdir_x(spd, point_direction(x, y, _target_x, _target_y))
	var _dy = lengthdir_y(spd, point_direction(x, y, _target_x, _target_y))

	move_and_collide(_dx,_dy, _colisao)
	
    // Verificar colisão
    //if (!place_meeting(_next_x, _next_y, _colisao)) {
        //move_and_collide(_dx,_dy, _colisao)
    //} else {
        // Inicializar _found_path
        //var _found_path = false;
        //var _attempt_directions = 8; // Tentativas de encontrar um novo caminho

        //for (var _i = 0; _i < _attempt_directions; _i++) {
            //var _angle = random(360);
            //var _new_target_x = x + lengthdir_x(spd, _angle);
            //var _new_target_y = y + lengthdir_y(spd, _angle);

            //if (!place_meeting(_new_target_x, _new_target_y, _colisao)) {
                //move_and_collide(_dx, _dy, _colisao)
                //_found_path = true;
                //break;
            //}
        //}

        //if (!_found_path) {
            // Parar movimento se nenhum caminho for encontrado
            //spd = 0;
        //}
    //}
}

// Tomando dano
if (previous_hp > hp) {
    // Guardar o sprite original
    _original_sprite = sprite_index;
	audio_play_sound(dano_inimigo,0,false)
    
    // Trocar para o sprite de dano
    sprite_index = spr_aranha_dano;
    _damage_sprite_timer = _damage_animation_length; // Duração em frames da animação de dano
}

previous_hp = hp; // Atualizar o valor de hp anterior

// Redefinir sprite após o temporizador expirar
if (_damage_sprite_timer > 0) {
    _damage_sprite_timer -= 1;
    if (_damage_sprite_timer == 0) {
        sprite_index = _original_sprite; // Retornar ao sprite original
    }
}


