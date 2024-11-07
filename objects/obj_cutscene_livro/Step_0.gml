/// @description Insert description here
// You can write your code in this editor

if (visible == true){
	tempo += global.cutscene_speed;
	image_speed = global.cutscene_speed * 0.5;
}

//tecla H 
if (tempo >= 180 || (visible == true && keyboard_check_pressed(72))){
	obj_aurora.x = global.aurora_x;
	obj_aurora.y = global.aurora_y;
	visible = false;
	tempo = 0; // pode ver de novo
}