function scr_chopperCreate(){
	hits = 10
	x= inst_2.x - 40
	y = inst_2.y-24
	if(room==Room3){y=inst_2.y}
	hspeed = -global.chopperEnterSpeed;
	invincible = false;
	alarm[0] = -1
	attackNumber = global.chopperAttackNumber;
	attack = 0;
	depth = -100;
	hurt = false
	damage = 10;
	chopperDone = false;
	
}

function scr_chopperStep(){
	if (x <= inst_1.x+32 && chopperDone == false){hspeed = 0}


	if (hspeed = 0 ){
		invincible = false;
		if (alarm[0]==-1){alarm_set(0, global.chopperArrowSpawnSteps)}
		
		}
	if (attack >= attackNumber){
		chopperDone=true;
		if (alarm[1]==-1){alarm_set(1, global.chopperLeaveSteps);
		}
	}
}
	


function chopperAlarm0(){
	if (attack < attackNumber){
	spawnArrow(1, "slow")
	attack++;
	}
}

function chopperAlarm1(){

	 hspeed = -global.chopperLeaveSpeed;

}