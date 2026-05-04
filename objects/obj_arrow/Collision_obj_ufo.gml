if (isParried == true){
	
	if (invincible == true){
		other.hits = other.hits - 100;
		instance_destroy(self)
	}
	else{
		other.hits = other.hits - 50
		instance_destroy(self)
	}
}