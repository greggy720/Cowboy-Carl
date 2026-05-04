///Parry system: I re-wrote it cleanly here because I accidentally broke it and got lost.

// attacker parry = false
// if defender parry = true && collision with defender (attacker isparried = true; deflect)
// if attacker parry = true {deflect is doubleparried = true}
function parryDefenderCreate(){ parry = false}


function parryAttackerCreate(){ isParried = false}

function parryDefenderCollision(){	
	if (other.parry == true){
		isParried = true; 
		direction = point_direction(x,y, spawnX, spawnY)
		image_angle = direction;
		speed = global.parryReturnSpeed
	}
	else{
		if (other.invincible != true &&global.godMode==false){
		other.hits-=1;
		other.hurt=true
		
		}
		instance_destroy(self)
	}
}

function parryAttackerCollision(){	
	if (isParried = true) { scr_damage();}
	
}

function parrySelfCollision(){
	if (isParried = true){ instance_destroy(other); instance_destroy(self) }
}


