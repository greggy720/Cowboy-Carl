function scr_managerCreate(){
	audio_master_gain(1)
	scr_level_variables()
	roomPositions()
	instance_create_layer(0,0, "Debug", obj_debug);
	roomChecker();
	instance_create_layer(0,0, "Instances", obj_ui);
	if (!room = Room0){spawnScreen(screen)}
	else{instance_create_layer(0,0, "Instances", obj_startLevel)}
	
	
}


function managerStep(){
	
	guaranteeSpawn()
	if(alarm[1]==0){alarm_set(1,1600)}

	if (keyboard_check_pressed(ord("N"))){
		if (room !=RoomWin){room_goto_next()} 
		else{room_goto(0)}
	}
	if (keyboard_check_pressed(ord("P"))){
		if (room !=Room0){room_goto_previous()} 
		else{room_goto(RoomWin)}
	}
	if (keyboard_check_pressed(ord("L"))){
		if (global.godMode=false){global.godMode=true} 
		else{global.godMode=false;}
	}
	
		if (keyboard_check_pressed(ord("R"))){
		room_restart()
		}
	
	if (room == Room1 || room == Room2 ||room = Room3){
	if (keyboard_check_pressed(ord("V"))){
		if (!instance_exists(global.specialCamera)){
			instance_create_layer(0,0, "Camera", global.specialCamera)
			}
			else{ instance_destroy(global.specialCamera)  }
	} 
	}
	
		
	if (keyboard_check_pressed(ord("M"))){
		if (audio_master_gain(1)){
			audio_master_gain(0)
			}
			else{ audio_master_gain(1) }
	} 
	
	

}

function managerAlarm0(){
	spawnMethod()
	
}

function managerAlarm1(){
	obj_manager.alarm[1] = -1;
}

function managerAlarm2(){
	obj_manager.alarm[2] = -1;
}
function managerAlarm3(){
	obj_manager.alarm[3] = -1;
}
function managerAlarm4(){
	obj_manager.alarm[4] = -1;
	
}

