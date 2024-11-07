/// @description Código de Update
// Você pode escrever seu código neste editor

if (hp <= 0) instance_destroy()

// Movimento
var _directionx = (keyboard_check(vk_right) or keyboard_check(ord("D"))) - (keyboard_check(vk_left) or keyboard_check(ord("A")))
var _directiony = (keyboard_check(vk_up) or keyboard_check(ord("W"))) - (keyboard_check(vk_down) or keyboard_check(ord("S")))

var _direction = arctan2(_directiony, _directionx)
var _dx = cos(_direction) * spd
var _dy = -sin(_direction) * spd
direction = radtodeg(_direction)

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

if (_directionx != 0 or _directiony != 0) {
    if (collision_tile_map != -1) {
        move_and_collide(_dx, _dy, collision_tile_map)
    } else {
        speed = 5
    }
} else {
    speed = 0
}

x = clamp(x, 0, room_width - sprite_width)
y = clamp(y, 0, room_height - sprite_height)

// Áudio
if (speed != 0) {
    // Caso esteja movendo
    if (fade_wait != 50) {
        audio_stop_sound(running_audio_id)
    }
    if (!audio_is_playing(running_audio_id)) {  
        var _audio_offset = random(audio_sound_length(snd_running))
        var _pitch = 0.95 + random(0.1)
        running_audio_id = audio_play_sound(snd_running, 0, true, 10, _audio_offset, _pitch)
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
    _direction = radtodeg(arctan2(y - mouse_y, mouse_x - x))
    var _speed = 20
    var _attribute = {
        speed: 10,
        direction: _direction,
        image_angle: _direction,
        image_xscale: 2,
        image_yscale: 2
    }
    instance_create_depth(x - 10 , y, -10, obj_bullet, _attribute) // Ajuste para que a bala saia 3 pixels à direita do centro do corpo
    audio_play_sound(snd_pistol_shot, 1, false, 0.3, 0, 0.9 + random(0.2))
    
    attack_wait = 20
    image_xscale = -image_xscale
}

attack_wait -= 1
