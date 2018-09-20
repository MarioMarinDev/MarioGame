/// @desc: Red Star

if active draw_self();

if(global.dev){
	draw_set_color(c_red);
	draw_rectangle(bbox_left - width, bbox_top - width, bbox_right + width, bbox_bottom + width, true)
}