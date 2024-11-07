/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// barra de vida

if (!instance_exists(obj_esqueleto_boss)){
	instance_destroy()
return
}
if (obj_esqueleto_boss.hp < 22 and obj_esqueleto_boss.hp >= 15){
	sprite_index = Sprite30_1
	
}
if (obj_esqueleto_boss.hp < 15 and obj_esqueleto_boss.hp >= 10){
	sprite_index = Sprite30_2
	
}
if (obj_esqueleto_boss.hp < 10 and obj_esqueleto_boss.hp >= 4){
	sprite_index = Sprite30_3
	
}
if (obj_esqueleto_boss.hp < 4 and obj_esqueleto_boss.hp >= 0){
	sprite_index = Sprite30_4
	
}

x = obj_esqueleto_boss.x - 25
y = obj_esqueleto_boss.y - 45

