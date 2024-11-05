/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();

enum SKELETON_STATES {
	IDLE,
	MOOVING,
	SHOOTING,
	MELEE		
}

center_x = x // const
center_y = y // const


state = SKELETON_STATES.IDLE
action_wait = 100
speed = 1

var _start_angle = random(360)
direction = _start_angle
var _radius = 16 // const
var _circumference = _radius*2*pi
deg_turn_speed = 360*speed/_circumference


x = x + cos(_start_angle)*_radius
y = y + sin(_start_angle)*_radius

