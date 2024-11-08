/// @description Insert description here
// You can write your code in this editor

if (visible == true && global.leu_o_livro == true){
	tempo++;
}

if (tempo>= 360){
	visible = false;
	room_goto(rm_fantasma);
	tempo = 0;
}
