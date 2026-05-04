function debugCreate(){
	
if (room != Room0){
	layerDebug = layer_get_id("Debug");
	layer_set_visible(layerDebug, false);
	debug = false
	
	if (room == Room3){
	instance_create_layer(inst_1three.x, inst_1three.y, "Debug", inst_1);
	instance_create_layer(inst_2three.x, inst_2three.y, "Debug", inst_2);
	instance_create_layer(inst_3three.x, inst_3three.y, "Debug", inst_3);
	instance_create_layer(inst_4three.x, inst_4three.y, "Debug", inst_4);
	}
	else{
	instance_create_layer(global.quad1X, global.quad1Y, "Debug", inst_1);
	instance_create_layer(global.quad2X, global.quad2Y, "Debug", inst_2);
	instance_create_layer(global.quad3X, global.quad3Y, "Debug", inst_3);
	instance_create_layer(global.quad4X, global.quad4Y, "Debug", inst_4);
	}
}

}


function debugDraw(){
	if (room != Room0){
	draw_text(16,16, "isJump = " + string(obj_player.isJump))
	draw_text(16,32, "canShoot = " + string(obj_player.canShoot))
	draw_text(16,48, "isDuck = " + string(obj_player.isDuck))
	draw_text(16,64, "hits = " + string(obj_player.hits))
	
	
	draw_text(16,72, "ballerCount = " + string(instance_number(obj_baller) ))
	}

}