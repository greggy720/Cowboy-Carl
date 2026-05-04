function healthUpCreate(){
x = inst_4.x+40;
y= inst_3.y-130
hspeed = -7;

}


function healthUpCollision(){

if (obj_player.hits <=global.playerHitsMax){
obj_player.hits += 1;
spawnMessage("+ 1  Health !")
}else{spawnMessage("Health  MAX !")}
instance_destroy();
}


function healthUpOutsideBoundary(){

	instance_destroy();
}