

if (instance_exists(obj_player) && instance_exists(obj_lasso)){
	
	if (obj_lasso.image_index < 3){
	draw_set_alpha(.6)
	draw_triangle_colour(
	obj_player.x, obj_player.y-45,
	obj_lasso.x-32, obj_lasso.y+16,
	obj_lasso.x+32, obj_lasso.y+16,
	c_white, c_aqua, c_aqua, false
	)
	draw_set_alpha(1)
	}
	

	
	if (obj_lasso.image_index >= 3){
	
	draw_set_alpha(.6)
	draw_triangle_colour(
	
	obj_player.x, obj_player.y-50,
	obj_lasso.x-28, obj_lasso.y+16,
	obj_lasso.x+28, obj_lasso.y+16,
	c_white, c_aqua, c_aqua, false
	)
	draw_set_alpha(1)
	}


	
}