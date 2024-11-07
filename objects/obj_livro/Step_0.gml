/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_livro)) {
    // Calcula a distância entre Aurora e a poção
    var _distancia_ao_objeto = point_distance(x, y, obj_aurora.x, obj_aurora.y);
    
    // Verifica se Aurora está próxima o suficiente e a tecla 'E' foi pressionada
    if (_distancia_ao_objeto <= global._distancia_interacao && keyboard_check_pressed(69)) {
        // Cria a instância do objeto que exibe a imagem
		show_message("Funcionou.")
    }
}