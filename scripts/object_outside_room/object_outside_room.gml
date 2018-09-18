/// object_outside_room
/// @param:object

var obj = argument0;

if(instance_exists(obj)){
	if obj.bbox_right < 0 || obj.bbox_left > room_width
		return true;
	if obj.bbox_bottom < 0 || obj.bbox_top > room_height
		return true;
}

return false;