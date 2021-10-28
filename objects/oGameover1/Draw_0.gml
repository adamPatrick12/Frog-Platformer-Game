
var i = 0;
repeat(buttons){
	
	draw_set_font(Menu_font);
	draw_set_halign(fa_center);
	draw_set_color(c_black);
	
	
	if(menu_index == i) draw_set_color(c_black);
	
	draw_text(menu_x + 40, menu_y + button_h * i+150, button[i]);
	i++;
}