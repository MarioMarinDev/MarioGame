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
			}
		}else{
			if alpha > 0 alpha -= spd;
			else instance_destroy();
		}
	break;
}