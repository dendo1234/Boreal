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

melee_dmg = 25
melee_cooldown = 1

center_x = x // const
center_y = y // const
target_speed = 1
speed = target_speed


state = SKELETON_STATES.IDLE
action_wait = 100

angle = random(360)
direction = angle + 90
radius = 48 // const
var _circumference = radius*2*pi
deg_turn_speed = 360*speed/_circumference



x = x + cos(degtorad(angle))*radius
y = y - sin(degtorad(angle))*radius



