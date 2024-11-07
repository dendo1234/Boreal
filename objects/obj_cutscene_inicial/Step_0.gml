if (visible == true){
	tempo_cut_inicial += speed_cutscene;
	image_speed = speed_cutscene * 0.5;
}

if (visible == false && obj_cutscene_livro.visible == false){
	image_speed = 1
}

// tecla H
if (tempo_cut_inicial >= 2500 || (visible == true && keyboard_check_pressed(72))){
	visible = false;
}

if (keyboard_check_pressed(75) && speed_cutscene < 3){
    speed_cutscene += 1; // Aumenta a velocidade (ou ajuste conforme necessário)
}

//tecla J
if (keyboard_check_pressed(74) && speed_cutscene > 1){
    speed_cutscene -= 1; // Aumenta a velocidade (ou ajuste conforme necessário)
}