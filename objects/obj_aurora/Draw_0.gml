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

if (global.difficulty == DIFFICULTY.HARD) {
	var _vx = camera_get_view_x(view_camera[0])
	var _vy = camera_get_view_y(view_camera[0])
	
	draw_text_color(_vx, _vy, "HARD MODE", c_red, c_red, c_red, c_red, 1)	
}

draw_self()