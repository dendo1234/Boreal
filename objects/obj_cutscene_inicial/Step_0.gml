if (visible == true){
	tempo += global.cutscene_speed;
	image_speed = global.cutscene_speed * 0.5;
}

// tecla H
if (tempo >= 180 || (visible == true && keyboard_check_pressed(72))){
	visible = false;
}