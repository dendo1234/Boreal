/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if (is_debug_overlay_open()) {
	var _direction = arctan2(y - mouse_y, mouse_x - x)
		var _target = {
			_x : x - 25*sign(sin(_direction-90)),
			_y : y - 15
		}
	draw_rectangle(x,y+sprite_height/2,_target._x,_target._y, false)
}

draw_self()