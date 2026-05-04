
function scr_uiDraw() {
	
	//draw_set_font(font_mgs);

	if (instance_exists(obj_screen)){ 
		draw_set_colour(c_white);
		roomChecker()
		draw_text(64, 64, obj_manager.screen)
		draw_set_colour(c_black)
	}
	
	else{
	draw_set_colour(c_black)
	draw_rectangle(-20, global.height-50, global.width+20, global.height+20, false)
	draw_set_colour(c_blue)
	}

	if (instance_exists(obj_player)){

		draw_set_colour(c_gray); draw_text(48, global.height-30, "HEALTH")
		draw_text(70, global.height-46, obj_player.hits)
		;draw_text(124, global.height-30, "CARDS")
		draw_text(134, global.height-46, obj_player.bullets)
		draw_text(145, global.height-46, "/");
		draw_text(156, global.height-46, obj_player.totalBullets)
		if (global.godMode == true){draw_text(380, global.height-40, "INVINCIBLE MODE: ON")}
		
		//draw_rectangle(250, room_height-64, 258, room_height-8, true)
	if (room != Room1){
		if (!instance_exists(obj_lasso)){
			if (obj_player.alarm[3] == -1){
		draw_text(196, global.height-40, "LASSO READY!")}
			else {
				draw_text(196, global.height-30, "LASSO RELOADING")
			 	draw_text(220, global.height-46, ceil(obj_player.alarm[3]/60))
				}
			
		}
			
	}
		


	if (instance_exists(obj_ufo)){
		draw_text(900, global.height-28, "UFO"); 
		 draw_text(902, global.height-46, obj_ufo.hits); 
		}
	draw_set_colour(c_blue);
	
}}