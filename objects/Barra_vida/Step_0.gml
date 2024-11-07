/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// barra de vida

if (!instance_exists(Boss)){
	instance_destroy()
return
}
if (Boss.hp < 22 and Boss.hp >= 15){
	sprite_index = Sprite30_1
	
}
if (Boss.hp < 15 and Boss.hp >= 10){
	sprite_index = Sprite30_2
	
}
if (Boss.hp < 10 and Boss.hp >= 4){
	sprite_index = Sprite30_3
	
}
if (Boss.hp < 4 and Boss.hp >= 0){
	sprite_index = Sprite30_4
	
}

x = Boss.x - 20
y = Boss.y - 40
