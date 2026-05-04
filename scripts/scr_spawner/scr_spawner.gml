function spawnerCreate(){
	x=inst_2.x;
	y = inst_2.y;
	
}

//function spawnerStep(){

//	if (alarm[2]==-1){alarm_set(2,global.timerMedium);}
//	if (alarm[4]==-1){alarm_set(4,global.timerLong);}
	
//}

function spawnerAlarm0(){

}

function spawnerAlarm1(){

}

function spawnerAlarm2(){
	var _roll = irandom(9);
		spawnCluster(_roll);
		alarm[2]=-1
}

function spawnerAlarm4(){
	
	
		var _roll = irandom(9);
		spawnCluster(_roll);
		alarm[4]=-1
}

function spawnCluster(cluster){
		if (cluster == 0){
			spawnHazard()
		}
		if (cluster==1){
			if(!instance_exists(obj_baller)){
			spawnEnemy("baller")
			
			}
		}
		
		
		else if (cluster==2){
			
			if (!instance_exists(obj_chopper)){
			spawnEnemy("chopper")
			}
		
		}
		
		else if (cluster ==3){
			cluster(1);
			cluster(2);
		
		}
		
		else if (cluster == 4){
			if (!instance_exists(obj_hazard)){spawnHazard()}
		}
			
		else if (cluster == 5){
			spawnHazard()
		}	
		
		else if (cluster == 6){
			spawnEnemy("chopper")
		}
		else if (cluster == 7){
			if (!instance_exists(obj_chopper))spawnEnemy("baller")
		}
		
		else if (cluster == 8){
			spawnUpgrade()
		}
		
		else if (cluster == 9){
			if (instance_exists(obj_chopper)){spawnEnemy("baller")}
		}

		
			
		

}



