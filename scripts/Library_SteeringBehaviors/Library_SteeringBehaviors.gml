function sb_seek(movement_vector, target_x, target_y, max_speed, mass)
{
	var desired_vector = new Vector2(target_x - x, target_y - y);
	desired_vector = desired_vector.normalized();
	desired_vector = vector_mult(desired_vector, max_speed);

	var steering_vector = vector_sub(desired_vector, movement_vector);
	steering_vector = vector_mult(steering_vector, 1 / mass);
	
	var final_vector = vector_sum(movement_vector, steering_vector);

	final_vector = final_vector.normalized();
	final_vector = vector_mult(final_vector, max_speed);
	
	return final_vector;
}

function sb_flee(movement_vector, target_x, target_y, max_speed, mass)
{
	var desired_vector = new Vector2(x - target_x, y - target_y);
	desired_vector = desired_vector.normalized();
	desired_vector = vector_mult(desired_vector, max_speed);
	
	var steering_vector = vector_sub(desired_vector, movement_vector);
	steering_vector = vector_mult(steering_vector, 1 / mass);
	
	var final_vector = vector_sum(movement_vector, steering_vector);
	
	final_vector = final_vector.normalized();
	final_vector = vector_mult(final_vector, max_speed);
	
	return final_vector;
}

function sb_arrive(movement_vector, target_x, target_y, max_speed, mass, slowing_radius)
{
	var desired_vector = new Vector2(target_x - x, target_y - y);
	desired_vector = desired_vector.normalized();
	
	var distance_to_target = distance_to_point(target_x, target_y);
	if (distance_to_target < slowing_radius)
		desired_vector = vector_mult(desired_vector, max_speed * (distance_to_target / slowing_radius));
	else
	    desired_vector = vector_mult(desired_vector, max_speed);

	var steering_vector = vector_sub(desired_vector, movement_vector);
	
	steering_vector = vector_mult(steering_vector, 1 / mass);
	
	var final_vector = vector_sum(movement_vector, steering_vector);
	
	return final_vector;
}
