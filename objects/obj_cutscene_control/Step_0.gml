/// @description Insert description here
// You can write your code in this editor

//tecla K
if (keyboard_check_pressed(75) && global.cutscene_speed < 3){
    global.cutscene_speed += 1; // Aumenta a velocidade (ou ajuste conforme necessário)
}

//tecla J
if (keyboard_check_pressed(74) && global.cutscene_speed > 1){
    global.cutscene_speed -= 1; // Aumenta a velocidade (ou ajuste conforme necessário)
}