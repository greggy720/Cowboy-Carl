function tutMessageCreate(){
	sprite_index = 0;
	image_speed=0;
	key = global.key;
	Message = global.tutMessage
	count = 0;
	x= global.width - (2*(global.width/3)) - 200
	y= global.height - (2*(global.height/3))+120
}

function tutMessageStep(){
	if (key = "up") { if (keyboard_check_pressed(vk_up)){count += 1} }
	if (key = "space") { if (keyboard_check_pressed(vk_space)){count += 3} }	
	if (key = "right") { if (keyboard_check_pressed(vk_right)){count += 1} }	
	if (key = "down") {if( keyboard_check_pressed(vk_down)){count += 3} }	
	if (key = "left") { if (keyboard_check_pressed(vk_left)){count += 1} }
	
	if (count >= 3){ 
		global.key = ""; 
		global.tutMessage = "done"; 
		
		instance_destroy() 
	}
}


function spawntutMessage(Message, key){

	global.tutMessage = Message;
	global.key = key;
	instance_create_layer(0,0,"Instances",obj_tutMessage)
	
}


function tutMessageDraw(){
	
	draw_set_colour(c_teal)
	draw_text(x,y,Message)
	

}