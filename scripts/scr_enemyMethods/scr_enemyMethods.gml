function setDirectionPlayer(){
	_dir = point_direction(inst_2.x,inst_2.y, inst_3.x+16, inst_3.y-16)
	return _dir
	
}

function scr_damage(){
	if (invincible == false){
	hits -= other.damage;
	hurt = true;
	instance_create_layer(x,y,"Instances", obj_explosion)
	}
	instance_destroy(other)
	
}

function scr_damageCard(){
	if (invincible == false){
	instance_create_layer(x,y,"Instances", obj_explosion)
	hits -= other.damage;
	hurt=true
	instance_destroy(other)
	}
	
}



function checkDie() { 
	if (hits <= 0){
		instance_create_layer(x,y,"Instances", obj_explosion);
		instance_destroy();
		
	
		} 
}


function parryCollision() {

	if (parry == true) { other.hits -= global.parryDamage} 
}

function playerCollision(){ 
	 parryDefenderCollision();
		
}

function shieldCollision(){ 
		
		if (invincible == true && parryCount <2){
		parryCount +=1
		direction = point_direction(x,y, inst_3.x, inst_3.y)
		image_angle = direction;
		speed = global.parryReturnSpeed
		
		}
		
}



function arrowCollision(){ scr_damage()
	
	instance_create_layer(x,y,"Instances", obj_explosion)
	}