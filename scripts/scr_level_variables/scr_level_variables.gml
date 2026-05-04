function scr_level_variables(){

	global.godMode=false;
	global.setScreen = spr_screenStart
	global.screenSound = snd_screen;
	global.message = "";
	global.tutMessage = "";
	global.key = "";
	global.specialCamera = obj_cinematicCamera

	
	global.height = 720;
	global.width = 1280;
	global.audioOn = true;
	
	
////timersettings
global.second = 60
global.eventTimer = 3*global.second;
global.chopperSpawnMax = 2;
global.ballerSpawnMax = 1;
global.ufoHide = false;



global.fastArrows = false;
global.ironArrows = false;

global.hazardCooldown = 2*global.second;
global.ironArrowCooldown = 6*global.second;
global.fastArrowCooldown = 6*global.second;
global.powerUpCooldown = 6*global.second;


/////


//level settings
global.tutorial = true;

//gravity
global.grav = 2
global.gravModifier = 5


//player sprites
global.playerWalk = spr_walk_1
global.playerShield= spr_walk_shield_1
global.playerJump = spr_jump_1
global.playerJumpShield = spr_jump_shield_1
global.horse = spr_horse_1

//player health
global.playerHitsStart = 3
global.playerHitsMax = 6

//player jump
global.maxJumpHeight = global.height - (global.height/2)
global.shortJumpHeight = global.height - (global.height/2.5)

global.jumpSpeed = 40 / global.gravModifier
global.jumpSpeedModifier=1000

//player bullet
global.cardDamage = 10;
global.cardSpeed = 6;
global.cardSpeedModifier = sqrt(18)
global.cardLaunchSteps = 40;
global.playerStartAmmoMax = 2

global.aceCount = 0;

// player lasso

global.lassoCooldown = 5*global.second

// enemy bullet
global.arrowSpeed = 4
global.arrowSpeedModifier = 2

//player parry
global.parryDamage = 30
global.parryReturnSpeed = global.arrowSpeed*1.5
global.parryTimerSteps = 14

//ufo
global.ufoShieldHits = 50
global.bossHealth = 1500;
global.ufoStart = false
global.ufoSpeed = 80;
global.ufoDistance=global.width+600;
global.spinCount= 3;


//enemies

	//hazard
	global.hazardSprite = spr_hazard
	global.hazardSpeed = 10;
	
	//chopper
	global.chopperSprite = spr_chopper1
	global.chopperLeaveSteps = 120
	global.chopperLeaveSpeed = 12
	global.chopperArrowSpawnSteps = 120
	global.chopperEnterSpeed = 4
	global.chopperAttackNumber =1
	
	//baller
	global.ballerSprite = spr_baller
	global.ballerEnterSpeed = 12
	global.ballerHits = 10
	global.ballerAttackTimer = 150
	global.ballerFastAttack = false


//spawnTimers

global.timerShort = 80
global.timerMedium = 150
global.timerLong = 300

global.smallChance = 600
global.mediumChance = 250
global.largeChance = 150

if(room == Room0) {

}
if(room ==Room1){
global.currentLevel = Room1;
}

if (room == Room2){
global.currentLevel=Room2;
global.grav = global.grav / 3;
global.playerStartAmmoMax= 4
	
global.playerWalk = spr_walk_2
global.playerShield= spr_walk_shield_2
global.playerJump = spr_jump_2
global.playerJumpShield = spr_jump_shield_2
global.horse = spr_horse_2
	
	global.eventTimer = 1.2*global.second;
	
	global.bossHealth += 1000;
	global.ufoShieldHits = 60;
	
	global.fastArrows = true;

	
	global.chopperSpawnMax = 3;
	global.ballerSpawnMax = 2;

	global.ballerSprite = spr_baller
	global.ballerFastAttack = true
	
	
	global.chopperSprite = spr_chopper1
	global.chopperLeaveSteps = 60
	global.chopperLeaveSpeed = 24
	global.chopperArrowSpawnSteps = 60
	global.chopperEnterSpeed = 6
	global.chopperAttackNumber = irandom(1)+1;

	global.hazardSprite = spr_hazard_2
	global.hazardSpeed = 8;

	global.hazardCooldown = 2*global.second;
	global.fastArrowCooldown = 3*global.second;
	global.powerUpCooldown = 8*global.second;
	
	


}

if (room == Room3){
global.currentLevel=Room3;	

global.playerWalk = spr_walk_3;
global.playerJump = spr_walk_3;
global.playerJumpShield = spr_walk_shield_3;
global.playerShield = spr_walk_shield_3;

global.specialCamera = obj_retroCamera

	global.eventTimer = global.second;
	global.chopperSpawnMax = 4;
	global.ballerSpawnMax = 3;

	global.playerStartAmmoMax = 6
	global.bossHealth += 2000;
	global.ufoShieldHits = 80
	global.spinCount = 3
	//global.ufoStart = true;

	global.hazardCooldown = global.second;
	global.ironArrowCooldown = 3*global.second;
	global.fastArrowCooldown = 3*global.second;
	global.powerUpCooldown = 8*global.second;

	global.hazardSprite = spr_hazard_3
	global.hazardSpeed = 12;

	global.ballerSprite = spr_baller
	global.ballerFastAttack = true

	global.chopperSprite = spr_chopper1
	global.chopperLeaveSteps = 60
	global.chopperLeaveSpeed = 24
	global.chopperArrowSpawnSteps = 60
	global.chopperEnterSpeed = 8
	global.chopperAttackNumber = irandom(2)+1
	
	global.fastArrows = true;
	global.ironArrows = true;

}
}



