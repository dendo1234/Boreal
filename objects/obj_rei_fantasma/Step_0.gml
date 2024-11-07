/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

var _dt = delta_time / 1000000

fade_timer -= _dt
fade_timer = max(0, fade_timer)

if (prev_state == STATES.ATTACK and state == STATES.IDLE and random_range(0,1)  < 0.50) {
	fade_timer = fade_time
	
	var _offset_x = 0
	var _offset_y = 0
	while(
		point_distance(_offset_x, _offset_y, 0, 0 ) <= attack_radius or
		point_distance(_offset_x, _offset_y, 0, 0 ) > detect_radius or
		point_distance(x, y, obj_aurora.x + _offset_x, obj_aurora.y + _offset_y) <= attack_radius
	) {
		var _r = attack_radius * 1.25
		_offset_x = random_range(-_r, _r)
		_offset_y = random_range(-_r, _r)
	}
	x = obj_aurora.x + _offset_x
	y = obj_aurora.y + _offset_y
}

prev_state = state

var _fade_pct = 1-(fade_timer/fade_time)
image_alpha = _fade_pct
for (i = 0; i < trail_count; i++) {
	trail_array[i].image_alpha = (1 - (i / trail_count)) * 0.5 * _fade_pct
}
