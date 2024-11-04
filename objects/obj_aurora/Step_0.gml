/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

var _spd = 5

var _directionx = keyboard_check(vk_right) - keyboard_check(vk_left)
var _directiony = keyboard_check(vk_up) - keyboard_check(vk_down)

direction = radtodeg(arctan2(_directiony, _directionx))
speed = _directionx != 0 or _directiony != 0 ? _spd : 0