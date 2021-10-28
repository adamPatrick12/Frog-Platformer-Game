 key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);   // Controls for character
key_jump = keyboard_check_pressed(vk_space);
 
var move = key_right - key_left;

hsp = move * walksp;
vsp = vsp + grv;

if (place_meeting(x,+y+1,oWall) || (place_meeting(x,y + vsp,oPlatform)))
{
	
	if (key_jump) vsp = -4;   //Jump command
	
}


// Horizontal
if (place_meeting(x+hsp,y,oWall))
{
	 while (!place_meeting(x+sign(hsp),y,oWall)) // Collision checking and movement
	 {
		x = x + sign(hsp);
	 }
	 hsp = 0;
}

x = x + hsp;
 
 // Vertical
if (place_meeting(x,y+vsp,oWall))
{
	 while (!place_meeting(x,y+sign(vsp),oWall))  // Collision checking and movement
	 {
		y = y + sign(vsp);
	 }
	 vsp = 0;
}

y = y + vsp;

// Animation

if (!place_meeting(x,+y+1,oWall)) 
{
	sprite_index = sPlayerJumping;
	image_speed = 0; 
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;  //Animation for jumping
	
}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = sPlayer;	
	}
	else
	{
		sprite_index = sPlayerRunning;  // Animation for running
	}
	
}


if (hsp != 0) image_xscale = sign(hsp)*2;  //To make character flip when direction is changed


//collision for platform
if(place_meeting(x+ hsp, y, oPlatform)) {
	while(! place_meeting(x + sign(hsp), y,oPlatform)){   //Moving platform collision check for horizontal
		x+= sign(hsp);
	}
	
	hsp = 0;
}

if(place_meeting(x,y + vsp,oPlatform)) {
	while(! place_meeting(x,y + sign(vsp),oPlatform)){  //Moving platform collision check for vertical
		y += sign(vsp);
	}
	
	vsp = 0;
	
	
}



if(place_meeting(x,y,oSpikes)){   //To check if player hits spikes
	oPlayer.life--;
	image_index = 0;
	
	oPlayer.x = 160;  //Respawn once spikes are hit
	oPlayer.y = 606;
 
}

if(place_meeting(x,y,oSaw)){   //To check if player hits Saw
	oPlayer.life--;
	image_index = 0;
	
	oPlayer.x = 200;  //Respawn
	oPlayer.y = 950;
}

if(place_meeting(x,y,oSaw1)){   //To check if player hits Saw
	oPlayer.life--;
	image_index = 0;
	
	oPlayer.x = 60;  //Respawn
	oPlayer.y = 640;
}

if(place_meeting(x,y,oFire)){   //To check if player hits Saw
	oPlayer.life--;
	image_index = 0;
	
	oPlayer.x = 30;  //Respawn
	oPlayer.y = 580;
}



if(fruit == 9){   //to check if user has collected all pineapples to advance to the next lvl
room_goto(WinScreen);
}

if(life == 0){  // Check if lives reach 0 so user is placed at the respawn scrren.
room_goto(Gameover);
}

if(fruit2 == 10){   //to check if user has collected all cherries to advance to win screen
room_goto(Level3);
}

if(fruit3 == 12){   //to check if user has collected all cherries to advance to win screen
room_goto(Level2);
}
