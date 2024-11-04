/// @description Codigo de Update
// Você pode escrever seu código neste editor

var _spd = 10

var _directionx = keyboard_check(vk_right) - keyboard_check(vk_left)
var _directiony = keyboard_check(vk_up) - keyboard_check(vk_down)

direction = radtodeg(arctan2(_directiony, _directionx))
speed = _directionx != 0 or _directiony != 0 ? _spd : 0

x = clamp(x, 0, room_width-sprite_width)
y = clamp(y, 0, room_height-sprite_height)
