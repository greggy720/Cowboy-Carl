function roomChecker(){
	if (room == Room0){}
	else if (room == Room1){screen = "room1"}
	else if (room == Room2){screen = "room2"}
	else if (room == Room3){screen = "room3"}

}



function endLevel(){
	room_goto_next()
}

function roomPositions(){
	if(instance_exists(inst_1pos) && room != Room0){
		global.quad1X = inst_1pos.x
		global.quad1Y = inst_1pos.y
		global.quad2X = inst_2pos.x
		global.quad2Y = inst_2pos.y
		global.quad3X = inst_3pos.x
		global.quad3Y = inst_3pos.y 
		global.quad4X = inst_4pos.x
		global.quad4Y = inst_4pos.y
	}
	

}

function startLevelCreate(){
if (room == Room0){
		audio_stop_all()
		if(global.audioOn==true){audio_play_sound(snd_menu,1,0,9)}
		instance_create_layer(0,0,"Instances", obj_logo)
	}
	
else if (room == Room1){
		audio_stop_all()
		if(global.audioOn==true){audio_play_sound(snd_westTheme,1,1,9)}
		instance_create_layer(inst_3.x, inst_3.y, "Instances", obj_player);
		

		instance_create_layer(160,90, "Instances", obj_tut)
	}
else if (room ==Room2){

		instance_create_layer(inst_3.x, inst_3.y, "Instances", obj_player);
		instance_create_layer(160,90, "Instances", obj_tut)
		
	}
	
else if (room == Room3){
		audio_stop_all()
		if(global.audioOn==true) {audio_play_sound(snd_retroTheme,1,0,3.5)}
		if(global.audioOn==true) {audio_play_sound(snd_retroTheme2,2,1,0.001)}
		//instance_create_layer(0,0, "Instances", obj_spawnerTutorial2)
		instance_create_layer(inst_3.x, inst_3.y, "Instances", obj_player);
		instance_create_layer(0,0, "Instances", obj_tut)
	}

}