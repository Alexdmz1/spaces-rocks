// if player exist
if(!instance_exists(obj_ship)) exit;
// if player is inside range
if(point_distance(x,y,obj_ship.x,obj_ship.y) < 250){
	// turn to look at player ship
	var new_angle = point_direction(x,y,obj_ship.x,obj_ship.y);
	new_angle = image_angle - angle_difference(image_angle,new_angle);
	image_angle = lerp( new_angle, image_angle,0.1);

	// fire biullet
	bulletCounter++;
	if(bulletCounter >= 60){
	create_bullet(image_angle,4,faction);
	bulletCounter =0;
	}
}else{
	// other wise no change
	image_angle = lerp(image_angle,direction,0.1);	
}