function ballerCreate(){
	uniqueX = irandom(24)-12;
	uniqueY= irandom(16)-8;
	x = inst_4.x +200;
	y = inst_4.y -16 + uniqueY;
	hspeed = -global.ballerEnterSpeed
	invincible = false;
	hits = global.ballerHits
	damage = 10;
	depth = -100;
	image_speed = 1;
	image_index = -1;
	hurt = false
	
}

function ballerAlarm0(){
	if (global.ballerFastAttack == false){
	spawnArrow(4,"slow")
	}
	else {
		var _chance = irandom(1);
		if (_chance == 0){spawnArrow(4,"slow")}
		else {spawnArrow(4,"fast")}
	
	}
}

function ballerStep(){
	checkDie()
	
	if (alarm[0] == -1){alarm_set(0,global.ballerAttackTimer)}
	
	if (x<=inst_4.x + uniqueX){hspeed = 0;}
	
}