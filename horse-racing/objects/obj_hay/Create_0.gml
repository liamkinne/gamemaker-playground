image_index = round(random_range(0, sprite_get_number(sprite_index))); // Choose a random sprite index
image_speed = 0; // Stop animation from changing the image index

// Pseudo z-axis scaling
image_xscale = 0.2 + (y / room_height);
image_yscale = 0.2 + (y / room_height);