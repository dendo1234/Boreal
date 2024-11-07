/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();
if (!instance_exists(obj_aurora)) return
//movimentação
if (tempo > 0 and tempo <= 300 ){
	y = y + 0.7
}

if (tempo > 300 and tempo <= 340 ){
	if(tempo%2 = 0){
		x = x - 3
	}else{
		x = x + 3
	}
}
if (tempo > 340 and tempo <= 380 ){
	y = y + 2
}
if (tempo > 380 and tempo <= 540 ){
	y = y - 2.4
}


//
var _atribute = {
		speed : 6,
		direction : point_direction(x, y, obj_aurora.x, obj_aurora.y),
		image_angle : point_direction(x, y, obj_aurora.x, obj_aurora.y),
		image_xscale : 1,
		image_yscale : 1
	}
if ( tempo > 340 and tempo <= 540 ){
	
	var _atribute2= {
		speed : 6,
		direction : point_direction(x, y, obj_aurora.x, obj_aurora.y) + random_range(10,25),
		image_angle : point_direction(x, y, obj_aurora.x, obj_aurora.y),
		image_xscale : 1,
		image_yscale : 1

		
	}
	if ( tempo%30 = 0 ){
	instance_create_depth(x, y, -10, obj_veneno, _atribute)
	instance_create_depth(x, y, -10, obj_veneno, _atribute2)
	instance_create_depth(x, y, -10, obj_veneno, _atribute2)
	instance_create_depth(x, y, -10, obj_veneno, _atribute2)

}
}

if (tempo > 0 and tempo <= 300  ){
	if (tempo%30 = 0){
	instance_create_depth(x, y, -10, obj_veneno, _atribute)
	}
}

// verificar colisão com movimento em direção ao alvo
tempo += 1
if (tempo = 540) {
	tempo = 0
}

