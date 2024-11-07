/// @description Insert description here
// You can write your code in this editor

if tilemap_get_at_pixel(layer_tilemap_get_id("tm_collision"), x, y) {
	instance_destroy()
}