 if(place_meeting(x,y,oPlayer) and !collected){
	oPlayer.fruit++;
	image_index = 0; //Checking if player collected pineapple and adding to score
	collected = true;
	 

    instance_change(oChange2, true);
    exit;


}

if(collected){
	sprite_index = sfruitEffect; //Fruit pickup animation and deleting the fruit once touched
	
	if(floor(image_index) >=image_number -1){
		instance_destroy();
	}
}