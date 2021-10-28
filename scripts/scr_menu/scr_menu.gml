function scr_menu() {
	switch (menu_index)  //Script to check what the player is selecting in the menu
	{
	   case 0:
	   {
		  room_goto(Level1)
		  break;
	   }
	   case 1:
	   {
		   room_goto(How2Play)
		   break;
	   }
	   case 2:
	   {
		   game_end();
		   break;
	   }

	}


}
