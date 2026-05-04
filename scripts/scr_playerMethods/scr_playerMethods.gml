function scr_playerDuck(){
	if(isDuck == true){ invincible = true; }
	if(isDuck == false){invincible = false}
}

function scr_playerJump(){
	

		if (canJump == true){
			isJump = true; 
			vspeed = -global.jumpSpeed*(y/global.jumpSpeedModifier)*global.grav
			}

}

function doubleJump(){
	

		if (canDoubleJump == true && y>=jumpHeightLong+(20*1.5)){
			isDoubleJump = true;
			isJump = true; 
			vspeed = -global.jumpSpeed*(y/global.jumpSpeedModifier)
			canDoubleJump = false;
			isDoubleJump = true;
			jumpLong =true
			}
			

}



function scr_playerShoot(dir){
	if (canShoot == true){
	if (bullets < totalBullets){ bullets ++}
	
	var _card = instance_create_layer(cardSpawnX(),cardSpawnY(), "Instances", obj_card)
	
	if(dir == "up" ){_card.direction = point_direction(inst_3.x,inst_3.y-16,inst_2.x, inst_2.y) }
	else { _card.direction = point_direction(inst_3.x, inst_3.y-16,inst_4.x, inst_4.y) }
	}
}

function playerLasso(){
	if (instance_exists(obj_lasso)) {canShoot = false}
}

function playerPosition(){	
		
	if (y <= jumpHeightShort && jumpLong == false){
		y = jumpHeightShort- 1
		vspeed= global.grav * (y/100);
		isJump=true 
		canJump=false
	
	}
		
	if (jumpLong == true){
		if (y<= jumpHeightLong){
				y = jumpHeightLong - 1
				vspeed = global.grav *(y/100);
				isJump = true;
				canJump = false;
			
		}
	}
	//if (y == jumpHeightLong-1 && alarm[1]==-1){alarm_set(1,10)}
			
	if (obj_player.y >= inst_3.y+2){
		vspeed = 0 
		obj_player.y = inst_3.y
		isJump = false;
		canJump=true 
		jumpEnd= false;
		isDoubleJump = false;
		canDoubleJump = true;
		jumpLong =false;
	
		
	}
	
	if (obj_player.y ==inst_3.y) {canShoot = true;}
}

function checkAmmo(){
 if (bullets >= totalBullets){canShoot = false}


if (bullets > 0 && alarm[2] == -1 ){alarm_set(2, 100)}

}


function parryArrow(){

	if (parry == true){other.parry = true;}

}


function hurtDraw (){
	 draw_sprite_ext(sprite_index, -1,x,y,1,1,0,c_red,0.9)  
}


function hurt1(){ 
	invincible = true
	audio_play_sound(snd_playerHit, 1,0,0.4,0,1)
	if (alarm[8] == -1){  alarm_set(8, global.second/2) }
	
}





function playerDie(){
	if (hits <= 0 && alarm[7] == -1){audio_stop_all() dead = true; alarm_set(7,1.8*global.second)}
}

function playerAlarm7() { room_goto(RoomDeath)}
