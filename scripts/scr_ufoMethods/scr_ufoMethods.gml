function ufohide(){
if (staging == true){x += global.ufoSpeed}
if (staging == true && x > global.width + global.ufoDistance){
	staging = false; x-= global.ufoSpeed }
}




function ufoCheckDie(){
	if (hits <= 0){
		endLevel()
	}
	

}
