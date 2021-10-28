var draw_x = 50
var draw_y = 20 //Setting draw position



//fruit count

draw_set_font(fruit_count);

var _w = display_get_gui_width();

//drawing pineapple
draw_sprite(sPineapple, 0, _w - draw_x*2-7, draw_y);


//drawing score for pineapple
draw_set_halign(fa_left);
draw_text(_w - draw_x*2, draw_y, fruit);
draw_set_halign(fa_left);

draw_set_font(fruit_count);

//drawing cherry
draw_sprite(sCherry, 0, _w - draw_x*3-15, draw_y-10);

//drawing score for cherry
draw_set_halign(fa_left);
draw_text(_w - draw_x*3, draw_y, fruit2);
draw_set_halign(fa_left);

draw_set_font(fruit_count);

//drawing Banana
draw_sprite(sBanana, 0, _w - draw_x*3-75, draw_y-13);

//drawing score for Banana
draw_set_halign(fa_left);
draw_text(_w - draw_x*4, draw_y, fruit3);
draw_set_halign(fa_left);

draw_set_font(fruit_count);








var _w = display_get_gui_width();

draw_set_halign(fa_left);
draw_text(_w - draw_x*19-4, draw_y+10, life);
draw_set_halign(fa_left);
draw_sprite(sHealth, 0, _w - draw_x*18-22, draw_y+10);