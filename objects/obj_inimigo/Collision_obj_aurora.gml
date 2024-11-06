/// @description Insert description here
// You can write your code in this editor

if (melee_timer <= 0) {
	melee_timer = melee_cooldown
	other.hp -= melee_dmg
}
