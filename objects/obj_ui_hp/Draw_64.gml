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
	

draw_self()

draw_text_transformed_color( 
	x + 25,
	y + 35,
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
