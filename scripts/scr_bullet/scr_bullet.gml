function bulletCreate(){
	damage = global.cardDamage;
	
 image_blend = c_grey
	speed = global.cardSpeed * global.cardSpeedModifier;
	
	y = inst_3.y-32;
	
	
	if (global.aceCount==1){global.cardDamage +=5}
	else if (global.aceCount ==2){global.cardDamage +=10}
	else if (global.aceCount ==3){global.cardDamage +=20}
	else if (global.aceCount ==4){global.cardDamage +=30}
	else if (global.aceCount ==0){global.cardDamage = 10}
}

function bulletStep(){
	
	isSpinning();

}