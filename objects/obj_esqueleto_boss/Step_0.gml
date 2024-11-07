/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();

if (!instance_exists(obj_aurora)) {
	return
}


if (hp <= 0) {
	instance_destroy()
}

if (last_hp != hp) {
	sprite_index = spr_esqueleto_boss_hurt
	hurt_timer = 10
	last_hp = hp
}

if (hurt_timer <= 0) {
	sprite_index = spr_esqueleto_boss
}

hurt_timer--

if (distance_to_point(obj_aurora.x, obj_aurora.y) > 600) return

switch (state) {
	case SKELETON_BOSS_STATES.SPIN_ATTACK_CHARGE:
		state_timer--
		var _progresso = (1 - state_timer/(state_total_timer))
		var _progresso_ease = _progresso * _progresso * (3 - 2*_progresso)
		image_angle = 360*_progresso_ease
		if (state_timer <= 0) {
			state_total_timer = 100
			state_timer = state_total_timer
			image_angle = 0
			state = SKELETON_BOSS_STATES.SPIN_ATTACK_SHOOT
		}
	break
	case SKELETON_BOSS_STATES.SPIN_ATTACK_SHOOT:
		if (state_timer % 15+(hp/3) == 0) {
			
			var _bullet_number = 20 - hp/3
			for (var _i = 0; _i < _bullet_number; _i++) {
				var _atributes = {
					direction : _i*(360/_bullet_number),
					speed : 3
				}
				instance_create_depth(x,y,0,obj_esqueleto_boss_bullet,_atributes)
			}
		}
		audio_play_sound(snd_fire, -1, false, 1, 0, 0.9 + random(0.2))
		state_timer--
		if (state_timer <= 0) {
			state_total_timer = 50 + random(100) + 20/hp
			state_timer = state_total_timer
			state = SKELETON_BOSS_STATES.IDLE
		}
	break
	case SKELETON_BOSS_STATES.IDLE:
		state_timer--
		if (state_timer <= 0) {
			state = SKELETON_BOSS_STATES.MOVE
			state_total_timer = 100
			state_timer = state_total_timer
		}
	break
	case SKELETON_BOSS_STATES.MOVE:
		if (state_timer == state_total_timer) {
			target_x = home_x + random(200) - 100
			target_y = home_y + random(200) - 100
			
		}
		
		if (point_distance(x, y,target_x, target_y) > 5) {
			move_towards_point(target_x, target_y, 2)
		} else {
			speed = 0
		}
		
		
		state_timer--
		if (state_timer <= 0) {
			audio_play_sound(snd_bone_throw, 0, false, 1, 0, 0.5)
			state = SKELETON_BOSS_STATES.SPIN_ATTACK_CHARGE
			state_total_timer = 50
			state_timer = state_total_timer
		}
	break
		
	
}