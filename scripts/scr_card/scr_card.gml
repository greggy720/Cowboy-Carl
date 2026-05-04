function cardCreate(){
image_speed =0;
image_index= irandom(52)
isSpinning = false;
cardMove = false;
isAce=false


if (image_index > 47) {isAce = true; global.aceCount +=1}

startAngle = (-30)+random(50);
image_angle = startAngle;

startX = x;
startY = y;

		if (room = Room2){ blend = c_gray }
		else {blend = c_white}

image_blend = blend



alarm_set(0,global.cardLaunchSteps);

}

function cardStep(){

	if (obj_player.isJump ==true){ isSpin= true }

	else { isSpin= false image_angle=startAngle x= startX y= startY cardMove = false; }
	
	if (global.aceCount == 1){spawnMessage("ACE!")}
	if (global.aceCount == 2){spawnMessage("2 ACES!")}
	if (global.aceCount == 3){spawnMessage("3 ACES!")}
	if (global.aceCount == 2){spawnMessage("4 ACES!")}
	 
	
	}
	
function cardDestroy(){

	if (isAce == true){global.aceCount -= 1}
}