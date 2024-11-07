/// @description Insert description here
// You can write your code in this editor

switch (global.proxima_sala) {
    case Aranha:
        global.aurora_x = 46;
        global.aurora_y = 46;
        break;
    default:
        break;
}

room_goto(global.proxima_sala);

instance_create_depth(global.aurora_x, global.aurora_y, 0, obj_aurora);