function spawnScreen(screen){
	
	if (screen = "start"){ global.setScreen = spr_screenStart}
	else if (screen = "die"){ global.setScreen = spr_screenDie}
	else if (screen = "end"){ global.setScreen = spr_screenEnd}
	else if (screen = "room1"){ global.setScreen = spr_screenRoom1}
	else if (screen = "room2"){ global.setScreen = spr_screenRoom2}
	else if (screen = "room3"){ global.setScreen = spr_screenRoom3}
	
	instance_create_layer(0,0, "Background", obj_screen){
	}
}

function screenCreate(){ 
	if (room == Room1){	draw_texture_flush() sprite_prefetch(spr_walk_1)}
	if (room == Room2){	draw_texture_flush() sprite_prefetch(spr_walk_2)}
	if (room == Room3){	draw_texture_flush() sprite_prefetch(spr_walk_3)}
	if (room!=Room1){audio_stop_all()}
	if(global.audioOn==true && global.setScreen == spr_screenRoom2) {audio_play_sound(snd_spaceTheme,1,0,5)}
	if (global.setScreen == spr_screenRoom3 )
	audio_play_sound(global.screenSound, 1, 0, 5);
	sprite_index = global.setScreen;
	depth = -500;

}
function screenStep(){
	if (keyboard_check_pressed(vk_space)){
		
		
		instance_create_layer(0,0, "Instances", obj_startLevel);
	
		
		instance_destroy(self)}
}


