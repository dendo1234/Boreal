/// @description Insert description here
// You can write your code in this editor

tempo_cut_final += speed_cutscene_final;
image_speed = speed_cutscene_final * 0.5;

// tecla H
if (tempo_cut_final >= 5000 || keyboard_check_pressed(72)){
	audio_stop_sound(musica)
	room_goto(rm_menu_principal)
}

if (keyboard_check_pressed(75) && speed_cutscene_final < 3){
    speed_cutscene_final += 1; // Aumenta a velocidade (ou ajuste conforme necessário)
}

//tecla J
if (keyboard_check_pressed(74) && speed_cutscene_final > 1){
    speed_cutscene_final -= 1; // Aumenta a velocidade (ou ajuste conforme necessário)
}

if (speed_cutscene_final == 1) {
    obj_cutscene_accel_final.image_index = 0; // Mostra a primeira subimagem do sprite
} else if (speed_cutscene_final == 2) {
    obj_cutscene_accel_final.image_index = 1; // Mostra a segunda subimagem do sprite
} else if (speed_cutscene_final == 3) {
    obj_cutscene_accel_final.image_index = 2; // Mostra a terceira subimagem do sprite
}