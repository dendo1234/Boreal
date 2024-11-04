/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

var _spd = 5

var _directionx = keyboard_check(vk_right) - keyboard_check(vk_left)
var _directiony = keyboard_check(vk_down) - keyboard_check(vk_up)

x += _directionx * _spd
y += _directiony * _spd
