function bulletUpCreate(){
x = inst_4.x+40;
y= inst_3.y-130
hspeed = -7;

}


function bulletUpCollision(){

if (obj_player.totalBullets <=12){
obj_player.totalBullets += 2;
spawnMessage("+ 2  Cards !")
}else{spawnMessage("Card  MAX !")}
instance_destroy();
}


function bulletUpOutsideBoundary(){

	instance_destroy();
}