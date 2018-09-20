/// @desc: Transition Control

switch(state){
	case NULL:
		alpha = 0;
		fade_state = FADE_IN;
		state = START;
	break;
	case START:
		if(fade_state == FADE_IN){
			if alpha < 1 alpha += spd;
			else{ 
				fade_state = FADE_OUT
				room_goto(next_room);
				alarm[0] = fade_delay;
			}
		}else{
			if alpha > 0 && alarm[0] <= 0
				alpha -= spd;
			else if alpha <= 0 instance_destroy();
		}
	break;
}