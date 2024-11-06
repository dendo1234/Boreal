/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();

if (!instance_exists(obj_aurora)) return

var _offset_x = random_range(-20, 20);
var _offset_y = random_range(-20, 20);
var _target_x = obj_aurora.x + _offset_x;
var _target_y = obj_aurora.y + _offset_y;

// calcular nova posição
var _next_x = x + lengthdir_x(spd, point_direction(x, y, _target_x, _target_y));
var _next_y = y + lengthdir_y(spd, point_direction(x, y, _target_x, _target_y));

// verificar colisão
if (!place_meeting(_next_x, _next_y, _colisao)) {
    move_towards_point(_target_x, _target_y, spd);
} else {
    // opção para lidar com colisão, como parar ou tentar outro caminho
    // por enquanto, vamos parar o movimento
    speed = 0;
}
