/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(!instance_exists(obj_aurora)) return

var _dt = delta_time / 1000000
var _ct = get_timer() / 1000000

// Apply damping
velocity_x *= move_damping
velocity_y *= move_damping

var _target_x = target.x
var _target_y = target.y
var _target_dir_x = _target_x - x
var _target_dir_y = _target_y - y
var _target_len = sqrt(sqr(_target_dir_x) + sqr(_target_dir_y))
_target_dir_x /= _target_len 
_target_dir_y /= _target_len 

// Timer countdown
if (state != STATES.IDLE) {
	state_timer -= _dt	
}

// IDLE -> MOVE
if (state == STATES.IDLE and _target_len < detect_radius) {
	state = STATES.MOVE
	state_timer = cooldown_time
}

// MOVE -> CHARGE
if (state == STATES.MOVE and _target_len < attack_radius and  state_timer < 0) {
	state = STATES.CHARGE
	state_timer = charge_time
}

// CHARGE -> ATTACK
if (state == STATES.CHARGE and state_timer < 0) {
	audio_play_sound(snd_boo,1,false,1,0,1 + random(0.6))
	state = STATES.ATTACK
	state_timer = attack_time
}

// ATTACK -> IDLE
if (state == STATES.ATTACK and state_timer < 0) {
	state = STATES.IDLE
	state_timer = 0
	velocity_x *= 0.25
	velocity_y *= 0.25
}

if (state != STATES.ATTACK and state != STATES.CHARGE) {
	attack_dir_x = _target_dir_x
	attack_dir_y = _target_dir_y
}

if (state == STATES.IDLE or state == STATES.MOVE) {
	// Apply wobble
	var _wobble_dir_x = -_target_dir_y
	var _wobble_dir_y = _target_dir_x
	var _wobble = wobble_amp * sin(wobble_freq * _ct)
	if (state == STATES.MOVE)	_wobble *= 2.5;
	if (state == STATES.IDLE) {
		_wobble_dir_x = 0.0
		_wobble_dir_y = 1.0
	}
	x += _wobble_dir_x * _wobble * _dt	
	y += _wobble_dir_y * _wobble * _dt	
}

if (state == STATES.MOVE) {
	// Apply move towards player
	// Avoid getting too close
	var _accel = move_accel
	if (_target_len < attack_radius*0.9) _accel *= -0.5
	velocity_x += _target_dir_x * _accel
	velocity_y += _target_dir_y * _accel
}

if (state == STATES.CHARGE) {
	velocity_x = 0
	velocity_y = 0
}

if (state == STATES.ATTACK) {
	velocity_x = attack_speed * attack_dir_x
	velocity_y = attack_speed * attack_dir_y
}

x += velocity_x * _dt
y += velocity_y * _dt

