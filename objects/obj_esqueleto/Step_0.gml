/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();



if (!instance_exists(obj_aurora)) {
	return
}

var _aurora_x = obj_aurora.x
var _aurora_y = obj_aurora.y
	
if (action_wait <= 0) {
	_aurora_x = obj_aurora.x
	_aurora_y = obj_aurora.y
	if (distance_to_point(_aurora_x, _aurora_y) < 400) {
		var _direction = point_direction(x, y, _aurora_x, _aurora_y)
		var _atributes = {
			direction : _direction,
			image_angle : _direction,
			speed : 3
		}
		instance_create_depth(x, y, -1, obj_bone, _atributes)
		//audio_play_sound(snd_bone_throw, 0, false,1, 0, 0.9 + random(0.2))
		audio_play_sound_at(snd_bone_throw,_aurora_x-x,_aurora_y-y,0, 100,400,1, false,1, 1, 0, 0.9 + random(0.2))
	}
	action_wait = 90 + random(20)
}

var _aurora_distance = point_distance(center_x, center_y, _aurora_x,_aurora_y)
if (_aurora_distance < radius+30) {
	var _target_angle = (180 + point_direction(center_x, center_y, _aurora_x, _aurora_y)) % 360
	var _current_angle = angle
	
	//show_debug_message("target " + string(_target_angle))
	//show_debug_message("current " + string(_current_angle))
	//show_debug_message("Deg turn " + string(deg_turn_speed))
	
	if (abs(_target_angle - _current_angle) < 5) {
		deg_turn_speed = 0
		speed = 0
	} else {
		var _circumference = radius*2*pi
		speed = 3*target_speed
		deg_turn_speed = 360*speed/_circumference
	}
	
	if (sin(degtorad(_target_angle - _current_angle)) > 0) { 
		deg_turn_speed = abs(deg_turn_speed)
	} else {
		deg_turn_speed = -abs(deg_turn_speed)
	}
	
} else {
	var _circumference = radius*2*pi
	speed = target_speed
	deg_turn_speed = 360*speed/_circumference
}


angle += deg_turn_speed
angle = (360 + angle) % 360
direction = angle + 90*sign(deg_turn_speed)
action_wait--
	
