if (variable_global_exists("difficulty")) {
	if (global.difficulty == DIFFICULTY.NORMAL) instance_destroy(self, false)
} else {
	instance_destroy(self, false)
}
