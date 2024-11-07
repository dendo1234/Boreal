/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();

if (!instance_exists(obj_aurora)) return

// Declarar a variável de perseguição global
if (_is_pursuing) {
    _is_pursuing = false;
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

    // Verificar colisão
    if (!place_meeting(_next_x, _next_y, _colisao)) {
        move_towards_point(_target_x, _target_y, spd);
    } else {
        // Inicializar _found_path
        var _found_path = false;
        var _attempt_directions = 8; // Tentativas de encontrar um novo caminho

        for (var _i = 0; _i < _attempt_directions; _i++) {
            var _angle = random(360);
            var _new_target_x = x + lengthdir_x(spd, _angle);
            var _new_target_y = y + lengthdir_y(spd, _angle);

            if (!place_meeting(_new_target_x, _new_target_y, _colisao)) {
                move_towards_point(_new_target_x, _new_target_y, spd);
                _found_path = true;
                break;
            }
        }

        if (!_found_path) {
            // Parar movimento se nenhum caminho for encontrado
            spd = 0;
        }
    }
}


