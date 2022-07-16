image_index = HP -1;
// if player exist
if(!instance_exists(obj_ship)) exit;
// if player is inside range
if(point_distance(x,y,obj_ship.x,obj_ship.y) < 250){
	// turn to look at player ship
	var new_angle = point_direction(x,y,obj_ship.x,obj_ship.y);
	new_angle = image_angle - angle_difference(image_angle,new_angle);
	image_angle = lerp( new_angle, image_angle,0.1);
	direction = image_angle;
	
	speed += 0.02;
	
}else{
	// other wise no change
	speed = lerp(speed,originalSpeed,0.1);	
}