function scr_ufoCreate(){
	enum ufoState{start, stage1, stage2, stage3, run, die, caught }
	spawnX = global.width + 300;
	x = spawnX;
	speed = -global.ufoSpeed;
	spins = 0;
	spinMax = global.spinCount;
	state = ufoState.start;
	hurt = false
	invincible = false;
	hits = global.bossHealth;
	damage = 10

	state = ufoState.start;
	
	
}

function scr_ufoStep(){
	switch (state){
	case ufoState.start :
		if (x < -300){
			x = spawnX;
			speed += 20
			spins +=1;
			}
		if (spins >= spinMax){
			x = spawnX;
			state = ufoState.stage1;
		}
		break;
		
	case ufoState.stage1 :
		if (x <= inst_2.x){
			speed = 0;
		
			}
		if(hits < (global.bossHealth-global.bossHealth/3)&& hits > global.bossHealth/3){ 
			state = ufoState.stage2;
			}
		break;
		
		case ufoState.stage2 :
		if (x <= inst_2.x){
			speed = 0;
		
			}
		if(hits < (global.bossHealth/3)){ 
			state = ufoState.stage3;
			}
		break;
		
		case ufoState.stage3 :
		

	
		
			
			

	}
	
	//if (x < -300){x = spawnX; if (speed < -20) speed += 5}
	//if(hits < (global.bossHealth-global.bossHealth/3)&& hits > global.bossHealth/3){ staging = true; stage = 2; size = "medium" y= inst_2.y+16}
	//if(hits < (global.bossHealth/3)){staging = true; stage = 3; size = "large" y= inst_2.y+72 x= inst_2.x-64}

	ufoCheckDie()

	
}

function ufoDraw(){
if (state == ufoState.start){ draw_sprite(spr_ufo1, -1,x,y)}
if (state == ufoState.stage2){ draw_sprite(spr_ufo_medium, -1,x,y)}
if (state == ufoState.stage3){ draw_sprite(spr_ufoLarge, -1,x,y)}



else if (state == ufoState.stage1){draw_sprite(spr_ufoMe, -1, x,y)}
//else if (size == "large"){draw_sprite(spr_ufoLarge, -1, x,y)}
//hurtDraw()

}

function ufoAlarm1(){

}


function ufoAlarm6(){
	alarm_set(6,-1);
}



function ufoMovementStep(){
	while (i < 3){
		if (x < -300){
			x = spawnX;
			i++
		}
	}
	if(hits < (global.bossHealth-global.bossHealth/3)&& hits > global.bossHealth/3){ staging = true; stage = 2; size = "medium" y= inst_2.y+16}
	if(hits < (global.bossHealth/3)){staging = true; stage = 3; size = "large" y= inst_2.y+72 x= inst_2.x-64}
}

