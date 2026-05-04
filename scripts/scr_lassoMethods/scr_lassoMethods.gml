

function spawnLasso(){
	if (!instance_exists(obj_lasso) && isLasso == true){
		instance_create_layer(inst_1.x,inst_1.y,"Instances", obj_lasso)
		snd_start = choose(snd_lassoCreate,snd_lassoCreate2)
		audio_play_sound(snd_start, 1, 0, 3)
		audio_play_sound(snd_lassoSwing2, 1, 0, 4)
		audio_play_sound(snd_lassoHum, 1, 1, 4)
	
	}
	
	

	
}
function destroyLasso(){
	if (instance_exists(obj_lasso)){
		obj_player.canLasso = false; instance_destroy(obj_lasso);
		audio_stop_sound(snd_lassoHum)

		
	}
}




function lassoShoot(lassoShootDirection){
	
		if (keyboard_check_pressed(vk_right)){
			x = inst_4.x-16 y = obj_player.y-64
			audio_play_sound(snd_lassoSwing3, 1, 0, 5)
			}
		if (keyboard_check_released(vk_right)){x=spawnX y = spawnY }
		
	
	if (lassoShootDirection == "up" && lassoGrab==false){
		
		move_towards_point(inst_2.x, inst_2.y, sqrt(.08*obj_lasso.x*obj_lasso.y))
		if (lassoGrab == true && hasReturned == false){speed = 0}


	}
	
}

function lassoCollision(){
		if (lassoGrab == false){
		lassoGrab = true;
		sprite_index = other.sprite_index;
		instance_destroy(other);
		}
	
		else if(lassoGrab == true){instance_destroy(other) destroyLasso() }

		
}
function lassoUfoCollision() {if(lassoGrab == true && hasReturned == true){other.hits -= 50 destroyLasso()}}