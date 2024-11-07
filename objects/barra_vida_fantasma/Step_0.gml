/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// barra de vida

if (!instance_exists(obj_rei_fantasma)){
	instance_destroy()
return
}
if (obj_rei_fantasma.hp < 22 and obj_rei_fantasma.hp >= 15){
	sprite_index = Sprite30_1
	
}
if (obj_rei_fantasma.hp < 15 and obj_rei_fantasma.hp >= 10){
	sprite_index = Sprite30_2
	
}
if (obj_rei_fantasma.hp < 10 and obj_rei_fantasma.hp >= 4){
	sprite_index = Sprite30_3
	
}
if (obj_rei_fantasma.hp < 4 and obj_rei_fantasma.hp >= 0){
	sprite_index = Sprite30_4
	
}

x = obj_rei_fantasma.x - 20
y = obj_rei_fantasma.y - 40

