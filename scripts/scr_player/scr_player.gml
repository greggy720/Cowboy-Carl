
function scr_playerCreate(){

	jumpLong = true;
	jumpHeightLong = global.maxJumpHeight;
	jumpHeightShort = global.shortJumpHeight;
	jumpEnd = false;
	
	dead = false;
	hurt = false;

	
	canShoot = true;
	canJump = true;
	canDuck = true;

	isLasso = false;
	canLasso = true;
	isDuck = false;
	invincible = false;
	isShoot = false;
	isJump = false;
	canDoubleJump = true;
	isDoubleJump = false;
	
	depth = -10;
	hits = global.playerHitsStart
	
	bullets = 0;
	totalBullets = global.playerStartAmmoMax
	sprite_index = spr_walk_1
	image_speed=1
	
	parryDefenderCreate();
	if (room != Room3){
	instance_create_layer(0,0, "Instances", obj_shadow)
	}

	
}


function scr_playerStep(){

	playerPosition();
	scr_playerDuck();
	checkAmmo();
	
	playerLasso(); 
	
	if (hurt == true){hurt1()}

	if (canLasso == false && alarm[3]==-1) {alarm_set(3,600)}
	
	if (isJump == true) {canShoot = false
			if (!instance_exists(obj_horse)){instance_create_layer(0,0, "Instances", obj_horse)}
		}
	if (isDuck == true) {canShoot = false}
	
	
	if(keyboard_check(vk_down)){isDuck = true canShoot= false } else {isDuck = false}
	if(keyboard_check_pressed(vk_down)){parry = true; alarm_set(5,global.parryTimerSteps)}
	
	if(keyboard_check(vk_left) && isJump == false && canLasso==true &&room != Room1){
			isLasso = true; 
			spawnLasso() 
			canShoot =false;} 

	if (keyboard_check_released(vk_left)){if (instance_exists(obj_lasso)){if(obj_lasso.lassoGrab == true){canLasso = false}} isLasso = false; destroyLasso()}

	if (keyboard_check_pressed(vk_space)){ scr_playerJump() }			
	if(keyboard_check(vk_space) && jumpEnd == false ){ jumpLong = true;} else {jumpLong = false}
	if(keyboard_check_pressed(vk_up)){scr_playerShoot("up")}
	if(keyboard_check_pressed(vk_right)){scr_playerShoot("right")}
	
	if (keyboard_check_pressed(vk_space)&&isJump == true && canJump ==false && canDoubleJump == true){doubleJump();}

	playerDie()
}

function playerAlarm3(){
	canLasso = true
}

function playerAlarm8(){
	hurt = false;
	invincible = false;
}

function touchArrow(){
scr_damage()
parryArrow()

}



function playerDraw(){
	
	if (isJump == true && isDuck ==false &&room = Room2 && hurt ==false){draw_sprite_ext(global.playerJump, -1, x,y,1,1,(-y*global.gravModifier/19)+169,c_white,1)image_speed=.69}
	else if (isJump == true &&isDuck == true && room = Room2 && hurt == false){draw_sprite_ext(global.playerJumpShield, -1, x,y,1,1,(-y*global.gravModifier/19)+169,c_white,1)image_speed=.69}
	else if (isJump == true &&isDuck == true && hurt = false){draw_sprite(global.playerJumpShield, -1, x,y)}
	else if (isJump == true && isDuck ==false && hurt = false ){draw_sprite_ext(global.playerJump, -1, x,y,1,1,0,c_white,1)image_speed=1}
	else if (isJump == false &&isDuck == true && hurt = false){draw_sprite(global.playerShield, -1, x,y)}
	else if (hurt==true){draw_sprite(spr_hurt_1, -1, x,y)}
	else if (dead = true) {}
	else { draw_sprite(global.playerWalk, -1, x,y) }
		
	
	//if (isDuck == true){ 
	//draw_set_alpha(.4)
	//draw_circle_colour(x,y,64, c_aqua,c_teal,false)
	//draw_set_alpha(1)
	
	}
	

	



