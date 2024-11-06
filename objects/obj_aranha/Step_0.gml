/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();

if (!instance_exists(obj_aurora)) return

var _offset_x = random_range(-20, 20);
var _offset_y = random_range(-20, 20);
var _target_x = obj_aurora.x + _offset_x;
var _target_y = obj_aurora.y + _offset_y;
move_towards_point(_target_x, _target_y, 1);

 
