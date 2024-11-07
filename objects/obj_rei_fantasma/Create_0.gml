/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

melee_dmg = 17
move_accel = 2.0	// Const
attack_speed = 550.0	// Const
attack_time = 0.25	// Const
detect_radius = 120.0	// Const
prev_hp = hp

for (i = 0; i < trail_count; i++)
	trail_array[i].sprite_index = spr_fantasma_boss

prev_state = state
fade_timer = 0
fade_time = 1
