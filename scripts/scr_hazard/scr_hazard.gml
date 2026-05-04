function scr_hazard(){
	damage = 1;
	invincible = true;
	depth = -20
	hits = 10
	x= inst_4.x+24
	y= inst_4.y
	hspeed = -global.hazardSpeed;
	image_speed=1
}


function scr_hazardDraw(){
	draw_sprite(global.hazardSprite, -1, x,y)
	image_speed=1
	

}