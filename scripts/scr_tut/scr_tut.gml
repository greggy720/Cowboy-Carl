function tutCreate(){
	x=160
	y=90
	image_index = 0;
	image_speed=0;
	alarm_set(0,120)
	
	if(room == Room1){
		tutMessage = [
			[0, vk_tab, 0,],
			[1, vk_up, 0],
			[2, vk_right, "baller"],
			[3, vk_down, "chopper"],
			[4, vk_space, 0],
			[5, vk_tab, 0 ]
	
		]
	}
	
	else if(room == Room2){
		spawnUfo()
		tutMessage = [
			[0, vk_tab, 0],
			[1, vk_left, "chopper"],
			[2, vk_up, 0],
			[3, vk_tab, 0]
	
		]
	}
		else if(room == Room3){
		spawnUfo()
	}
	
	count = 0;
	pressCount =0;
	

}

function tutStep(){
	
	
	if (room=Room1){
		if (alarm[0]==-1){alarm_set(0,4*global.second)}
		if(count < array_length(tutMessage)){
		if (count >= 1 && keyboard_check_pressed(tutMessage[count-1][1])&& count !=4){ 
			if(alarm[0]>90){alarm_set(0,90)}
			}
		}
		else if (count == 8){instance_destroy()}
	}
	else if (room == Room2){
		if (alarm[0]==-1){alarm_set(0,3.5*global.second)}
		if (count == 4){instance_destroy()}
	}
	
	else if (room == Room3){
		if (alarm[0]==-1){alarm_set(0,4*global.second)}
		if (count == 4){instance_destroy()}
		if (count>0 && alarm[1] = -1){alarm_set(1, 3*global.second)}
	}
}


function tutAlarm0(){
if (room == Room1){
	image_index=count;
	if (count = 0){alarm_set(0,90)}
	pressCount = 0;

	if (count == 0){spawnUfo()}
	else if (count == 2 || count == 3){spawnEnemy(tutMessage[count][2])}
	if (count == 3){alarm_set(0,6*global.second)}
	if (count == 5){ spawnUpgrade()}
}
if (room == Room2){
	image_index = count+7;
	if (count == 1){spawnEnemy(tutMessage[count][2])}
}
if (room == Room3){
	image_index=11+count;
	if (count==1){spawnArrow(2,"iron"); alarm_set(1,5*global.second)}
}


count++
}
function tutAlarm1(){spawnArrow(2,"iron")}

function  tutDestroy(){
	obj_manager.alarm[0] = 1; 
	obj_manager.alarm[1] = 1600;
}
