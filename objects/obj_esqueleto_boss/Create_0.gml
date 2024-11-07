/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();

hp = 30
last_hp = hp
hurt_timer = 0

enum SKELETON_BOSS_STATES {
	IDLE,
	SPIN_ATTACK_CHARGE,
	SPIN_ATTACK_SHOOT,
	MOVE
}

state = SKELETON_BOSS_STATES.IDLE

state_total_timer = 100
state_timer = state_total_timer

home_x = x
home_y = y
target_x = 0
target_y = 0

