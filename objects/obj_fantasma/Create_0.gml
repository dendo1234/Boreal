/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

enum STATES {
	IDLE,
	MOVE,
	CHARGE,
	ATTACK
}

state = STATES.IDLE

move_accel = 5.0	// Const
move_damping = 0.975	// Const
attack_speed = 750.0	// Const

detect_radius = 500.0	// Const
attack_radius = 300.0	// Const

wobble_freq = 3.0	// Const
wobble_amp = 50	// Const

charge_time = 0.8	// Const
attack_time = 0.3	// Const
cooldown_time = 2.5	// Const
state_timer = cooldown_time

attack_dir_x = 0.0
attack_dir_y = 0.0

velocity_x = 0.0
velocity_y = 0.0

target = obj_aurora	// Const

trail_count = 5
trail_array = []

for(i = 0; i < trail_count; i++) {
	var _trail = instance_create_depth(x, y, +1, obj_fantasma_trail)
	_trail.image_xscale = image_xscale
	_trail.image_yscale = image_yscale	
	_trail.image_alpha = (1 - (i / trail_count)) * 0.5
	_trail.fantasma_pai = id
	array_push(trail_array, _trail)
}

trail_array[0].following = self
for (i = 1; i < trail_count; i++) {
	trail_array[i].following = trail_array[i-1]
}
