/// @description Insert description here
// You can write your code in this editor

tempo_cut_final += speed_cutscene_final;
image_speed = speed_cutscene_final * 0.5;

// tecla H
if (tempo_cut_final >= 5000 || keyboard_check_pressed(72)){
	room_goto(rm_menu_principal)
}

if (keyboard_check_pressed(75) && speed_cutscene_final < 3){
    speed_cutscene_inicial += 1; // Aumenta a velocidade (ou ajuste conforme necessário)
}

//tecla J
if (keyboard_check_pressed(74) && speed_cutscene_final > 1){
    speed_cutscene_final -= 1; // Aumenta a velocidade (ou ajuste conforme necessário)
}