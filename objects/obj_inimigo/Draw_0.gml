/// @description Insert description here
// You can write your code in this editor

draw_self()

var _bar_w = 8*log2(max_hp+1)

if (hp != max_hp) {
	var _beg_x = x-(_bar_w/2)
	var _beg_y = y-(sprite_height/2)-5
	var _end_x = x+(_bar_w/2) 
	var _end_y = y-(sprite_height/2)

	draw_set_color(c_black)
	draw_rectangle(
		_beg_x -1, 
		_beg_y -1, 
		_end_x +1,
		_end_y +1,
		false)
	var _hp_pct = hp/max_hp
	draw_set_color(c_red)	
	draw_rectangle(
		_beg_x, 
		_beg_y, 
		_beg_x + (_end_x-_beg_x)*_hp_pct,
		_end_y,
		false)
}
