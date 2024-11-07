/// @description Insert description here
// You can write your code in this editor

if (visible == true){
	tempo++;
	
}

if (tempo >= 180){
	obj_aurora.x = global.aurora_x;
	obj_aurora.y = global.aurora_y;
	visible = false;
	
	room_goto(global.proxima_sala);
	
	tempo = 0;
	
}

