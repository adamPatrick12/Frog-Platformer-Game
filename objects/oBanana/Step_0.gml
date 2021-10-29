if(place_meeting(x,y,oPlayer) and !collected3){
	oPlayer.fruit3++;
	image_index = 0;
	collected3 = true;
	
	 
}

if(collected3){
	sprite_index = sfruitEffect;
	
	if(floor(image_index) >=image_number -1){
		instance_destroy();
	}
}