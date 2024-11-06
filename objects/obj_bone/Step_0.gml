/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

image_angle += turn_speed


if (tm_collision != -1) {
	if (tilemap_get_at_pixel(tm_collision, x, y) == 1) instance_destroy()
}