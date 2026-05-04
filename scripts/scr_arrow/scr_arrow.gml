function arrowCreate(){
	parry = false;
	isParried=false;
	spawnX = x
	spawnY = y
	damage = 1;
	invincible = false
	depth = -20
	hits = 10
	image_angle = direction
	parryCount =0
	hurt =false
}

function arrowStep(){
	checkDie()
	if (speed == global.arrowSpeed-0.8){invincible=true}
}


function arrowDraw(){
	
	image_angle = direction
	if (invincible == true){draw_sprite_ext(spr_arrowIron, 0, x,y,1,1,direction, c_white, 1)}
	else if (invincible == false && room == Room2){draw_sprite_ext(spr_arrow_2, 0,x,y,1,1,direction, c_white, 1)}
	else {draw_sprite_ext(spr_arrow, 0,x,y,1,1,direction, c_white, 1)}

}