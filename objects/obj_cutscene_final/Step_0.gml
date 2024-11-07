/// @description Insert description here
// You can write your code in this editor

tempo += global.cutscene_speed;
image_speed = global.cutscene_speed * 0.5;

// tecla H
if (tempo >= 300 || keyboard_check_pressed(72)){
	room_goto(rm_menu_principal)
}