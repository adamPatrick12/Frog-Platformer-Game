var draw_x = 50
var draw_y = 40





draw_set_font(fruit_count);

var _w = display_get_gui_width();

draw_set_halign(fa_left);
draw_text(_w - draw_x*2, draw_y, life);
draw_set_halign(fa_left);
