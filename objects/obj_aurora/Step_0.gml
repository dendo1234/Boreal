/// @description Codigo de Update
// Você pode escrever seu código neste editor



// Movimento
var _directionx = keyboard_check(vk_right) - keyboard_check(vk_left)
var _directiony = keyboard_check(vk_up) - keyboard_check(vk_down)

direction = radtodeg(arctan2(_directiony, _directionx))
speed = _directionx != 0 or _directiony != 0 ? spd : 0

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



