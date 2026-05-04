function spawnerTutorialAlarm1(){

	spawntutMessage(tutMessage[count], tutKey[count]);
	count++
}

function spawnerTutorialAlarm2(){
	spawnEnemy("baller");
	alarm_set(1,20)
}

function spawnerTutorialAlarm3(){
	spawnEnemy("chopper")
	alarm_set(1,30)
	chopperSection = true;
	if(canDestroy==true){instance_destroy()}

}

function spawnerTutorialAlarm4(){
	alarm_set(1,30)
	spawnEnemy("baller")
	
	
}

function spawnerTutorialAlarm5(){
	alarm_set(1,30)
	alarm_set(6,120)
	global.ufoStart = true;
	chopperSection = false;
	
}

function spawnerTutorialAlarm6(){
	instance_create_layer(0,0,"Instances",obj_ammoUp)
	alarm_set(3,40)
	canDestroy = true;
	tutDone=true;
	
}

function tutorialDestroy(){
	obj_manager.alarm[0]= 2*global.second
}


function spawnerTutorialStep(){
	if (tutDone == true && alarm[3] == -1){alarm_set(3,60)}
	
	if (chopperSection == true && tutDone ==false && room == Room1 ){
		
		if (!instance_exists(obj_chopper)){spawnEnemy("chopper")}
	}
	
}


function tutMessageDestroy(){
	if (obj_tut.count <6){
		obj_tut.alarm[obj_tut.count+1] = 65;
	}
}
