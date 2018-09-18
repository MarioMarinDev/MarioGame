/// @desc: Fire Cannon Ball

var ball = instance_create_depth(x, y, depth + 1, obj_cannon_ball);
ball.dir = dir;
ball.alarm[1] = room_speed / 2;