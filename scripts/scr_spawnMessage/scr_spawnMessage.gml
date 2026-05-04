function spawnMessage(Message){
	global.message = Message
	if (instance_exists(obj_message)){instance_destroy(obj_message)}
	instance_create_layer(0,0, "Instances",obj_message)
	
	}


function messageCreate(){
	alarm_set(0,60)
	x = (room_width - (room_width/2))
	y = (room_height - (room_height/2))
	angle = (irandom(120)-80)/10
}

function messageDraw(){
	
	draw_text_transformed(x-290, y-60, global.message,1.3,1.3,angle);

}

function messageAlarm0(){
	global.message = "";
	instance_destroy();

}