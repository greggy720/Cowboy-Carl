
function changeToBullet(){
	
	var _spr = sprite_index;
	var _img = image_index;
	var _x = x;
	var _y = y;
	var _direction = direction;
	
	if (room = Room2){ blend = c_gray }
		else {blend = c_white}

	instance_create_layer(_x, _y, "Instances", obj_bullet, {
	
	sprite_index: _spr,
	image_index: _img,
	direction: _direction,
	
	image_blend: blend
	
	});
	
	instance_destroy();

}

function isSpinning(){
	
	image_angle += 16;

	if (object_index == obj_card){
	
	if(!cardMove){

		x = (x-8)+random(160);
		y = (y-5)-random(80);

		cardMove=true;
	}
	}
}

function cardSpawnX(){
	
	spawnX = inst_3.x + random(120);
	return spawnX;
	
}

function cardSpawnY(){
	
	spawnY = (inst_3.y-120) + random(20);
	return spawnY;
}

function cardSpread(){
	
	x = (x-40)+random(80);
	y = (y-40)+random(80);
}
