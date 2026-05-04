function lassoCreate(placement){
	depth = -200;
	if(placement == "up"){x = inst_1.x; y = inst_1.y; }
	
	if (placement =="right"){x = inst_4.x; y = inst_4.y}
	else{};
	spawnX= x
	spawnY = y
	lassoShooting=false;
	
	lassoCooldown = 900;
	
	lassoGrab = false;

	lassoHits = 0;
	
	hasReturned = true;
	isThrow= false
	
	image_speed = 1;
	
	instance_create_layer(0,0,"Instances", obj_rope);


}




function lassoStep(){
	if (x= spawnX && y=spawnY){hasReturned = true;}
	
	if (keyboard_check(vk_right) && instance_exists(obj_lasso) && lassoGrab==false){
		obj_lasso.lassoShooting = true;
		x = inst_4.x-16 y = obj_player.y-64;
		}
	
	if (keyboard_check(vk_right) && instance_exists(obj_lasso) && lassoGrab==true){
		direction = point_direction(spawnX,spawnY,inst_4.x,inst_4.y); speed = sqrt(x*10); isThrow=true
	}
	if (keyboard_check_pressed(vk_right)){
		if(lassoGrab == true){audio_play_sound(snd_lassoSwing3, 1, 0, 6,0,2)}
		else{
			audio_play_sound(snd_lassoSwing2, 1, 0, 4);}
	}
	if (keyboard_check_pressed(vk_up)){
		if (keyboard_check_pressed(vk_up)){
		if(lassoGrab == true){audio_play_sound(snd_lassoSwing3, 1, 0, 6,0,2)}
		else{
			audio_play_sound(snd_lassoSwing, 1, 0, 4);
			}
		}
	}
	
	if (keyboard_check_released(vk_right)){x=spawnX y = spawnY; audio_play_sound(snd_lassoSwing, 1, 0, 4)}
	
	
	if (keyboard_check(vk_up)&& instance_exists(obj_lasso) && lassoGrab == false){
		obj_lasso.lassoShooting = true;
		x = inst_2.x-64 y = inst_2.y
		}
	if (keyboard_check_released(vk_up)){x=spawnX y = spawnY; audio_play_sound(snd_lassoSwing2, 1, 0, 4)}
	
	if (keyboard_check_pressed(vk_up) && instance_exists(obj_lasso) && lassoGrab==true){
		direction = point_direction(spawnX,spawnY,inst_2.x,inst_2.y); speed = sqrt(x*10); isThrow=true
	
	}

	
	if(lassoGrab == true){image_speed = 0;} else if(lassoGrab == false){image_speed =1}
	if (keyboard_check_released(vk_left)){audio_play_sound(snd_lassoEnd, 1, 0, 4)}

}

function lassoAlarm0(){
	if(obj_player.isLasso == true){
		x = inst_1.x;
		y = inst_1.y;
		
	}
	obj_lasso.lassoShooting = false;
}

function lassoAlarm1(){
	
}

function lassoDestroy(){
	if (lassoGrab == true){
	instance_create_layer(x+ 100,y,"Instances", obj_explosionLasso)
	alarm_set(0, global.lassoCooldown)
	audio_play_sound(snd_lassoExplosion, 1, 0, 6)
	}
	else if(lassoGrab==false){obj_player.canLasso=true;}


}
		
		
