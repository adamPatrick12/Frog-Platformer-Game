
x +=horizontal_speed * dir;

if(x <= position_from || x >= position_to){  //Setting speed and platform to and from position
	dir *= -1;
}
