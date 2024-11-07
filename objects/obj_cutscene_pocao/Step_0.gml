/// @description Insert description here
// You can write your code in this editor

if (visible == true && global.leu_o_livro == true){
	tempo++;
}

if (tempo>= 60){
	visible = false;
	room_goto(global.proxima_sala);
	tempo = 0;
}

