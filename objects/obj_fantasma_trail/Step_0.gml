/// @description Insert description here
// You can write your code in this editor

if (!instance_exists(fantasma_pai)) {
	instance_destroy()
	return
}

x = lerp(x, following.x, lerp_t)
y = lerp(y, following.y, lerp_t)


