/// scr_block_question_create

if !created {
	created = true;
	switch(contains){
	
		case obj_coin:
			var new_coin = instance_create_depth(x, y, depth + 10, obj_coin);
			new_coin.type = BLOCK;
			new_coin.dir = -hit_dir;
		break;
	
	}
}