/// @description Insert description here
// You can write your code in this editor

if (visible == true){
	tempo_cut_livro += speed_cutscene_livro;
	image_speed = speed_cutscene_livro * 0.5;	
}

//tecla H 
if (tempo_cut_livro >= 2156 || (visible == true && keyboard_check_pressed(72))){
	obj_aurora.x = global.aurora_x;
	obj_aurora.y = global.aurora_y;
	visible = false;
	tempo_cut_livro = 0; // pode ver de novo
}

if (keyboard_check_pressed(75) && speed_cutscene_livro < 3){
    speed_cutscene_livro += 1; // Aumenta a velocidade (ou ajuste conforme necessário)
}

//tecla J
if (keyboard_check_pressed(74) && speed_cutscene_livro > 1){
    speed_cutscene_livro -= 1; // Aumenta a velocidade (ou ajuste conforme necessário)
}