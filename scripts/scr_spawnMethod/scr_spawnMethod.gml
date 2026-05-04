function spawnMethod(){
ufoShield = true
ufoArrow = true
ufoHide = false
ballerSpawn = true
chopperSpawn = true
hazardSpawn = true

ironArrowSpawn = true 
fastArrowSpawn = true
powerUpSpawn = true


	allEvents = [ 
	"ufoArrow",
	"ufoShield",
	"ufoHide",
	"ballerSpawn",
	"chopperSpawn",
	"hazardSpawn",
	"ironArrowSpawn",
	"fastArrowSpawn",
	"powerUpSpawn"
	];
	
	if (instance_exists(obj_ufoShield)){ufoShield = false}
	//if (global.ufoHide == true){ufoShield = false; ufoArrow = false}
	if (instance_number(obj_baller) >= global.ballerSpawnMax){ ballerSpawn = false }
	if (instance_number(obj_chopper) >= global.chopperSpawnMax){chopperSpawn = false}
	if (global.fastArrows == false){fastArrowSpawn=false}
	if (global.ironArrows == false){ironArrowSpawn=false}
	if (obj_manager.alarm[1] > -1) {hazardSpawn = false}
	if (obj_manager.alarm[2] > -1) {ironArrowSpawn = false}
	if (obj_manager.alarm[3] > -1) {fastArrowSpawn = false}
	if (obj_manager.alarm[4] > -1) {powerUpSpawn = false}
	
	trueEvents = [];
	
	//if (ufoHide == false){array_push(trueEvents, allEvents[2])}
	if (ufoArrow == true) {array_push(trueEvents, allEvents[0])}
	if (ufoShield == true) {array_push(trueEvents, allEvents[1])}
	if (ballerSpawn == true) {array_push(trueEvents, allEvents[3])}
	if (ballerSpawn == true) {array_push(trueEvents, allEvents[3])}
	if (chopperSpawn == true) {array_push(trueEvents, allEvents[4])}
	if (hazardSpawn == true) {array_push(trueEvents, allEvents[5])}
	if (hazardSpawn == true) {array_push(trueEvents, allEvents[5])}
	if (ironArrowSpawn == true) {array_push(trueEvents, allEvents[6])}
	if (fastArrowSpawn == true) {array_push(trueEvents, allEvents[7])}
	if (powerUpSpawn == true) {array_push(trueEvents, allEvents[8])}
	
	
	event = irandom(array_length(trueEvents)-1);

	
	if (trueEvents[event] == "ufoArrow"){spawnArrow(2,"slow")}
	else if (trueEvents[event] == "ufoShield"){instance_create_layer(0,0,"Instances", obj_ufoShield)}
	//else if (trueEvents[event] == "ufoHide"){ufoHide();}
	else if (trueEvents[event] == "ballerSpawn"){spawnEnemy("baller")}
	else if (trueEvents[event] == "ballerSpawn"){spawnEnemy("baller")}
	else if (trueEvents[event] == "chopperSpawn"){spawnEnemy("chopper")}
	else if (trueEvents[event] == "chopperSpawn"){spawnEnemy("chopper")}
	else if (trueEvents[event] == "hazardSpawn"){spawnHazard(); obj_manager.alarm[1] = global.hazardCooldown;}
	else if (trueEvents[event] == "ironArrowSpawn"){spawnArrow(2,"iron")obj_manager.alarm[2] = global.ironArrowCooldown;}
	else if (trueEvents[event] == "fastArrowSpawn"){spawnArrow(2,"fast")obj_manager.alarm[3] = global.fastArrowCooldown;}
	else if (trueEvents[event] == "powerUpSpawn"){spawnUpgrade(); obj_manager.alarm[4] = global.powerUpCooldown;}
	

	obj_manager.alarm[0] = global.eventTimer;
}

function spawnEnemy(_type){
	
	var _obj = _type
	var _spawn 
	
	
		if(_obj == "baller"){_spawn = obj_baller}
		else if (_obj == "chopper"){_spawn = obj_chopper}
	
		instance_create_layer(0, 0, "Instances", _spawn)
	
}

function spawnArrow(_quad, _spd){
	var _x, _y;
	var spd = _spd;
	var dir = 180
	
	
	
	if(_quad ==1) { _x = inst_1.x; _y = inst_1.y; dir = 270;  }
	else if (_quad ==2) { _x = inst_2.x; _y = inst_2.y; dir = setDirectionPlayer() }
	else if (_quad ==3) { _x = inst_3.x _y = inst_3.y; dir = obj_card.direction }
	else if (_quad ==4) {_x = inst_4.x; _y = inst_4.y-16; dir = 180}
	
	if (_spd == "slow") {spd = global.arrowSpeed }
	else if (_spd == "fast") {spd = global.arrowSpeed * global.arrowSpeedModifier}
	else if (_spd == "iron") {spd = global.arrowSpeed-0.8}
	
	instance_create_layer(_x, _y, "Instances", obj_arrow, {
		direction: dir,
		speed: spd,
	
	})
}

function spawnUfo(){ 
	instance_create_layer(inst_2.x, inst_2.y, "Instances", obj_ufo)
}


function createSpawner(spawner){
	if (spawner == "spawner") {instance_create_layer(0,0, "Instances", obj_spawner);}
	else if (spawner =="spawnerTutorial" ){instance_create_layer(0,0, "Instances", obj_tut);}
	else if (spawner =="spawnerTutorial2" ){instance_create_layer(0,0, "Instances", obj_tutorial2);}
	
}

function spawnUpgrade(){	
	upgrade = choose(obj_ammoUp, obj_healthUp, obj_healthUp, obj_ammoUp, obj_ammoUp);
	

	instance_create_layer(0,0, "Instances", upgrade);
}

function ufoItemSpawner(){
	var _roll = irandom(global.mediumChance);
	if (_roll ==1) {spawnArrow(2, "slow")}
	if (_roll ==2 && !instance_exists(obj_ufoShield) && obj_ufo.alarm[6] == -1) {
		instance_create_layer(x,y, "Instances", obj_ufoShield)
		}
	if (_roll ==3 && room != Room1) {spawnArrow(2,"iron")}
	
}

function spawnHazard(){
	instance_create_layer(0,0,"Instances", obj_hazard)
	}
	
	
function guaranteeSpawn(){
	if (obj_manager.alarm[1] == 1600 ){spawnArrow(2,"slow")}
	else if (obj_manager.alarm[1] == 1400 ){spawnHazard()}
	else if (obj_manager.alarm[1] == 1200 ){spawnEnemy("chopper")}
	else if (obj_manager.alarm[1] == 1000 ){spawnEnemy("baller")}
	else if (obj_manager.alarm[1] == 800){spawnArrow(2,"slow")}
	else if (obj_manager.alarm[1] == 600){spawnHazard()}
	else if (obj_manager.alarm[1] == 400 ){spawnEnemy("chopper")}
	else if (obj_manager.alarm[1] == 360 ){instance_create_layer(0,0,"Instances",obj_ammoUp)}

}