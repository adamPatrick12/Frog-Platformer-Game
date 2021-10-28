menu_move = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);

menu_index += menu_move;
if (menu_index < 0) menu_index = buttons =1;
if(menu_index > buttons -1) menu_index = 0;

if (menu_index != last_selected) audio_play_sound(MenuSound,1,false);

var push;
push = max (keyboard_check_released(vk_enter),0);
if (push == 1) scr_menu2();

last_selected = menu_index;
