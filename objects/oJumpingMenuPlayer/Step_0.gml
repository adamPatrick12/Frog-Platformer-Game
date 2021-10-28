key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);
key_jump = true; // To make sure chracter is always jumping in the HowTo screen

var move = key_right - key_left;   // Changed oPlayer code so user can't move jumping chracter 


vsp = vsp + grv;

if (place_meeting(x,+y+1,oWall) || (place_meeting(x,y + vsp,oPlatform)))
{
	
	if (key_jump) vsp = -4;
	
}


// Horizontal
if (place_meeting(x+hsp,y,oWall))
{
	 while (!place_meeting(x+sign(hsp),y,oWall))
	 {
		x = x + sign(hsp);
	 }
	 hsp = 0;
}

x = x + hsp;
 
 // Vertical
if (place_meeting(x,y+vsp,oWall))
{
	 while (!place_meeting(x,y+sign(vsp),oWall))
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
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
	
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
		sprite_index = sPlayerRunning;
	}
	
}