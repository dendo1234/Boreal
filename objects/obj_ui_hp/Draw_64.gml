/// @description Insert description here
// You can write your code in this editor

if (!instance_exists(obj_aurora))	{
	image_alpha = 0
	return
}

var _max_hp = obj_aurora.max_hp
var _current_hp = obj_aurora.hp
var _ratio_hp = _current_hp / _max_hp

if (_ratio_hp > 0.75)
	image_index = 0
else if (_ratio_hp > 0.3)
	image_index = 1
else
	image_index = 2
	
var _vx = camera_get_view_x(view_camera[0]) + 30
var _vy = camera_get_view_y(view_camera[0]) + 30

var _bx = 40
var _by = browser_height - 120
	
draw_sprite_ext(spr_vida,image_index, _bx, _by, 6, 6, 0, c_white, 1)


draw_text_transformed_color( 
	
	_bx+24,
	_by+32,
	_current_hp, 
	2,
	2, 
	0,
	c_black,
	c_black,
	c_black,
	c_black,
	1	
)
