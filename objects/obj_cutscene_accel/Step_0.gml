/// @description Insert description here
// You can write your code in this editor

if (obj_cutscene_inicial.visible == false && obj_cutscene_livro.visible == false) {
	obj_cutscene_accel.visible = false;
}

if (obj_cutscene_inicial.visible == true || obj_cutscene_livro.visible == true) {
	obj_cutscene_accel.visible = true;
}