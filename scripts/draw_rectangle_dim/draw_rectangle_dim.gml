/// draw_rectangle_dimm
/// @param: x1,y1,x2,y2,alpha,color,outline

// Arguments
var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;
var alpha = argument4;
var color = argument5;
var outline = argument6;

// Local variables
var last_color = draw_get_color();
var last_alpha = draw_get_alpha();

// Draw the rectangle
draw_set_color(color);
draw_set_alpha(alpha);
draw_rectangle(x1, y1, x2, y2, outline);

// Return to last used settings
draw_set_color(last_color);
draw_set_alpha(last_alpha);