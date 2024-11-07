/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


var _vx = camera_get_view_x(view_camera[0]);
var _vy = camera_get_view_y(view_camera[0]);
if (colour == c_red and colour_timer <= 0) {
	colour = c_white
	colour_timer = 7
} else if (colour_timer <= 0) {
	colour = c_red
	colour_timer = 7
}
draw_text_transformed_color(_vx+400, _vy+30, "GAME\nOVER",16,16,0,colour,colour,colour,colour,1)
colour_timer--