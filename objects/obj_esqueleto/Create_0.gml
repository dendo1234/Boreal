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


state = SKELETON_STATES.IDLE
action_wait = 100
speed = 5

var _angle = random(360)
var _radius = 100

x = x + cos(_angle)*_radius
y = y + sin(_angle)*_radius

