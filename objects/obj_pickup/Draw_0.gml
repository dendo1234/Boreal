/// @description Insert description here
// You can write your code in this editor

draw_self()

var _ct = get_timer() / 1000000
var _off_y = sin(_ct * seta_freq) * seta_amp - 20

draw_sprite(spr_seta, 0, x - 25, y + _off_y)

