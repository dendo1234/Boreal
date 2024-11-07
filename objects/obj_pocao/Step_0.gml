if (instance_exists(obj_pocao)) {
    // Calcula a distância entre Aurora e a poção
    var _distancia_ao_objeto = point_distance(x, y, obj_aurora.x, obj_aurora.y);
    
    // Verifica se Aurora está próxima o suficiente e a tecla 'E' foi pressionada
    if (_distancia_ao_objeto <= global._distancia_interacao && keyboard_check_pressed(69)) {
        // Cria a instância do objeto que exibe a imagem
		global.aurora_x = obj_aurora.x;
		global.aurora_y = obj_aurora.y;
		global.proxima_sala = Aranha;
		
		obj_cutscene_pocao.visible = true;
		
        //room_goto(rm_cutscene_pocao); // Troca para a sala da cutscene
    }
}