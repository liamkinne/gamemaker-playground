// Spawn obsticles at random inervals
if (round(random_range(0, 5)) == 0) {
	instance_create_layer(room_width + 64, random_range(64, room_height - 64), layer_get_id("Instances"), obj_hay);
}