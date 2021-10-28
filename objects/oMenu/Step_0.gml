menu_move = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up); //Menu Control

menu_index += menu_move;
if (menu_index < 0) menu_index = buttons =1;  // To check user doesn't go past options on screen
if(menu_index > buttons -1) menu_index = 0;

if (menu_index != last_selected) audio_play_sound(MenuSound,1,false); // sound

var push;
push = max (keyboard_check_released(vk_enter),0); // Check if user pressed "Enter"
if (push == 1) scr_menu(); //script to bring the user to Room they selected

last_selected = menu_index;
