/// @description Insert description here
// You can write your code in this editor

if (visible == true){
	tempo_pocao++;
	
}

if (tempo_pocao>= 60){
	obj_aurora.x = global.aurora_x;
	obj_aurora.y = global.aurora_y;
	visible = false;
	
	room_goto(global.proxima_sala);
	
	tempo_pocao = 0;
	
}

