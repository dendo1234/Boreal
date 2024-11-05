/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();


direction += deg_turn_speed
action_wait--

if (!instance_exists(obj_aurora)) {
	return
}

var _aurora_x = obj_aurora.x
var _aurora_y = obj_aurora.y
	
if (action_wait <= 0) {
	var _aurora_x = obj_aurora.x
	var _aurora_y = obj_aurora.y
	var _direction = point_direction(x, y, _aurora_x, _aurora_y)
	var _atributes = {
		direction : _direction,
		image_angle : _direction,
		speed : 10
	}
	instance_create_depth(x, y, -1, obj_bone, _atributes)
	action_wait = 100
}

if (distance_to_point(_aurora_x,_aurora_y) < 100) {
	//var _distant_point = 
}