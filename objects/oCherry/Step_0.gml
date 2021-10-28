if(place_meeting(x,y,oPlayer) and !collected2){
	oPlayer.fruit2++;
	image_index = 0;
	collected2 = true;
}

if(collected2){
	sprite_index = sfruitEffect;
	
	if(floor(image_index) >=image_number -1){
		instance_destroy();
	}
}