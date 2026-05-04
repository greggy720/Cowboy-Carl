function ufoShieldCreate(){
if (instance_exists(obj_ufo)){
	x= obj_ufo.x;
	y = obj_ufo.y;
}
hits = global.ufoShieldHits;
depth = -200;
invincible = false;
damage = 10;
parry = true;
alarm_set(0, global.parryTimerSteps+2000)
}


function ufoShieldStep(){
checkDie()

}

function ufoShieldAlarm(){

	parry = false;
}


function ufoShieldDeath(){

	obj_ufo.alarm[6]=global.timerLong
}