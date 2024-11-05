/// @description Codigo de Update
// Você pode escrever seu código neste editor

if (hp <= 0) instance_destroy()

// Movimento
var _directionx = keyboard_check(vk_right) - keyboard_check(vk_left)
var _directiony = keyboard_check(vk_up) - keyboard_check(vk_down)

direction = radtodeg(arctan2(_directiony, _directionx))
speed = _directionx != 0 or _directiony != 0 ? spd : 0

if (direction >= 180 or direction == 0) {
	sprite_index = spr_aurora_running_front_left
} else {
	sprite_index = spr_aurora_running_back_left
}

if (direction > 270 or direction < 90) {
	image_xscale = -1
} else {
	image_xscale = 1
}

x = clamp(x, 0, room_width-sprite_width)
y = clamp(y, 0, room_height-sprite_height)


// Audio
if (speed != 0) {
	// Caso esteja movendo
	if (fade_wait != 50) {
		audio_stop_sound(running_audio_id)
	}
	if (!audio_is_playing(running_audio_id)) {	
		var _audio_offeset = random(audio_sound_length(snd_running))
		var _pitch = 0.95 + random(0.1)
		running_audio_id = audio_play_sound(snd_running, 0, true, 10, _audio_offeset, _pitch)
		fade_wait = 50
	}
} else {
	// Caso parado
	if (fade_wait == 50) {
		audio_sound_gain(running_audio_id, -10, 200)
	}
	if (fade_wait == 0) {
		audio_stop_sound(running_audio_id)
	}
	fade_wait -= 1
}

if (mouse_check_button_pressed(mb_left) and attack_wait <= 0) {
	var _direction = radtodeg(arctan2(y - mouse_y, mouse_x - x))
	var _speed = 20
	var _atribute = {
		speed : 10,
		direction : _direction,
		image_angle : _direction,
		image_xscale : 2,
		image_yscale : 2
	}
	instance_create_depth(x+sprite_width/2, y+sprite_height/2, -10, obj_bullet, _atribute)
	audio_play_sound(snd_pistol_shot, 1, false, 0.3, 0, 0.9+random(0.2))
	
	attack_wait = 20
	image_xscale = -image_xscale
}

attack_wait -= 1