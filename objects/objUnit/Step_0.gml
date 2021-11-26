movement_vector = sb_seek(movement_vector, mouse_x, mouse_y, movement_speed, mass);

x += movement_vector.X;
y += movement_vector.Y;

image_angle = point_direction(0, 0, movement_vector.X, movement_vector.Y);
